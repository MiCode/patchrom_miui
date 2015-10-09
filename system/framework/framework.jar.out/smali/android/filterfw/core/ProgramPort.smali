.class public Landroid/filterfw/core/ProgramPort;
.super Landroid/filterfw/core/FieldPort;
.source "ProgramPort.java"


# instance fields
.field protected mVarName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/filterfw/core/Filter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Z)V
    .locals 0
    .param p1, "filter"    # Landroid/filterfw/core/Filter;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "varName"    # Ljava/lang/String;
    .param p4, "field"    # Ljava/lang/reflect/Field;
    .param p5, "hasDefault"    # Z

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p4, p5}, Landroid/filterfw/core/FieldPort;-><init>(Landroid/filterfw/core/Filter;Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 35
    iput-object p3, p0, Landroid/filterfw/core/ProgramPort;->mVarName:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Program "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Landroid/filterfw/core/FieldPort;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized transfer(Landroid/filterfw/core/FilterContext;)V
    .locals 7
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Landroid/filterfw/core/ProgramPort;->mValueWaiting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 47
    :try_start_1
    iget-object v4, p0, Landroid/filterfw/core/ProgramPort;->mField:Ljava/lang/reflect/Field;

    iget-object v5, p0, Landroid/filterfw/core/ProgramPort;->mFilter:Landroid/filterfw/core/Filter;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 48
    .local v2, "fieldValue":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 49
    move-object v0, v2

    check-cast v0, Landroid/filterfw/core/Program;

    move-object v3, v0

    .line 50
    .local v3, "program":Landroid/filterfw/core/Program;
    iget-object v4, p0, Landroid/filterfw/core/ProgramPort;->mVarName:Ljava/lang/String;

    iget-object v5, p0, Landroid/filterfw/core/ProgramPort;->mValue:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/filterfw/core/ProgramPort;->mValueWaiting:Z
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    .end local v2    # "fieldValue":Ljava/lang/Object;
    .end local v3    # "program":Landroid/filterfw/core/Program;
    :cond_0
    monitor-exit p0

    return-void

    .line 53
    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Ljava/lang/IllegalAccessException;
    :try_start_2
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Access to program field \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/filterfw/core/ProgramPort;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' was denied!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 56
    :catch_1
    move-exception v1

    .line 57
    .local v1, "e":Ljava/lang/ClassCastException;
    :try_start_3
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Non Program field \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/filterfw/core/ProgramPort;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' annotated with ProgramParameter!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method
