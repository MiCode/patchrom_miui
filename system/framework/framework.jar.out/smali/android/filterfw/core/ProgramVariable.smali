.class public Landroid/filterfw/core/ProgramVariable;
.super Ljava/lang/Object;
.source "ProgramVariable.java"


# instance fields
.field private mProgram:Landroid/filterfw/core/Program;

.field private mVarName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/filterfw/core/Program;Ljava/lang/String;)V
    .locals 0
    .param p1, "program"    # Landroid/filterfw/core/Program;
    .param p2, "varName"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Landroid/filterfw/core/ProgramVariable;->mProgram:Landroid/filterfw/core/Program;

    .line 30
    iput-object p2, p0, Landroid/filterfw/core/ProgramVariable;->mVarName:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public getProgram()Landroid/filterfw/core/Program;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Landroid/filterfw/core/ProgramVariable;->mProgram:Landroid/filterfw/core/Program;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Landroid/filterfw/core/ProgramVariable;->mProgram:Landroid/filterfw/core/Program;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to get program variable \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/filterfw/core/ProgramVariable;->mVarName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' but the program is null!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    iget-object v0, p0, Landroid/filterfw/core/ProgramVariable;->mProgram:Landroid/filterfw/core/Program;

    iget-object v1, p0, Landroid/filterfw/core/ProgramVariable;->mVarName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/filterfw/core/Program;->getHostValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getVariableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Landroid/filterfw/core/ProgramVariable;->mVarName:Ljava/lang/String;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 42
    iget-object v0, p0, Landroid/filterfw/core/ProgramVariable;->mProgram:Landroid/filterfw/core/Program;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to set program variable \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/filterfw/core/ProgramVariable;->mVarName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' but the program is null!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    iget-object v0, p0, Landroid/filterfw/core/ProgramVariable;->mProgram:Landroid/filterfw/core/Program;

    iget-object v1, p0, Landroid/filterfw/core/ProgramVariable;->mVarName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    return-void
.end method
