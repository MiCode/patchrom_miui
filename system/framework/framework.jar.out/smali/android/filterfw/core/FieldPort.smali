.class public Landroid/filterfw/core/FieldPort;
.super Landroid/filterfw/core/InputPort;
.source "FieldPort.java"


# instance fields
.field protected mField:Ljava/lang/reflect/Field;

.field protected mHasFrame:Z

.field protected mValue:Ljava/lang/Object;

.field protected mValueWaiting:Z


# direct methods
.method public constructor <init>(Landroid/filterfw/core/Filter;Ljava/lang/String;Ljava/lang/reflect/Field;Z)V
    .locals 1
    .param p1, "filter"    # Landroid/filterfw/core/Filter;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "field"    # Ljava/lang/reflect/Field;
    .param p4, "hasDefault"    # Z

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/InputPort;-><init>(Landroid/filterfw/core/Filter;Ljava/lang/String;)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/filterfw/core/FieldPort;->mValueWaiting:Z

    .line 34
    iput-object p3, p0, Landroid/filterfw/core/FieldPort;->mField:Ljava/lang/reflect/Field;

    .line 35
    iput-boolean p4, p0, Landroid/filterfw/core/FieldPort;->mHasFrame:Z

    .line 36
    return-void
.end method


# virtual methods
.method public declared-synchronized acceptsFrame()Z
    .locals 1

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/filterfw/core/FieldPort;->mValueWaiting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clear()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public getTarget()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 55
    :try_start_0
    iget-object v1, p0, Landroid/filterfw/core/FieldPort;->mField:Ljava/lang/reflect/Field;

    iget-object v2, p0, Landroid/filterfw/core/FieldPort;->mFilter:Landroid/filterfw/core/Filter;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 57
    :goto_0
    return-object v1

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized hasFrame()Z
    .locals 1

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/filterfw/core/FieldPort;->mHasFrame:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pullFrame()Landroid/filterfw/core/Frame;
    .locals 3

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot pull frame on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public pushFrame(Landroid/filterfw/core/Frame;)V
    .locals 1
    .param p1, "frame"    # Landroid/filterfw/core/Frame;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/filterfw/core/FieldPort;->setFieldFrame(Landroid/filterfw/core/Frame;Z)V

    .line 45
    return-void
.end method

.method protected declared-synchronized setFieldFrame(Landroid/filterfw/core/Frame;Z)V
    .locals 2
    .param p1, "frame"    # Landroid/filterfw/core/Frame;
    .param p2, "isAssignment"    # Z

    .prologue
    .line 98
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/filterfw/core/FieldPort;->assertPortIsOpen()V

    .line 99
    invoke-virtual {p0, p1, p2}, Landroid/filterfw/core/FieldPort;->checkFrameType(Landroid/filterfw/core/Frame;Z)V

    .line 102
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getObjectValue()Ljava/lang/Object;

    move-result-object v0

    .line 103
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/filterfw/core/FieldPort;->mValue:Ljava/lang/Object;

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Landroid/filterfw/core/FieldPort;->mValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 104
    :cond_1
    iput-object v0, p0, Landroid/filterfw/core/FieldPort;->mValue:Ljava/lang/Object;

    .line 105
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/filterfw/core/FieldPort;->mValueWaiting:Z

    .line 109
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/filterfw/core/FieldPort;->mHasFrame:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    monitor-exit p0

    return-void

    .line 98
    .end local v0    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setFrame(Landroid/filterfw/core/Frame;)V
    .locals 1
    .param p1, "frame"    # Landroid/filterfw/core/Frame;

    .prologue
    .line 49
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/filterfw/core/FieldPort;->setFieldFrame(Landroid/filterfw/core/Frame;Z)V

    .line 50
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "field "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Landroid/filterfw/core/InputPort;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized transfer(Landroid/filterfw/core/FilterContext;)V
    .locals 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Landroid/filterfw/core/FieldPort;->mValueWaiting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 65
    :try_start_1
    iget-object v1, p0, Landroid/filterfw/core/FieldPort;->mField:Ljava/lang/reflect/Field;

    iget-object v2, p0, Landroid/filterfw/core/FieldPort;->mFilter:Landroid/filterfw/core/Filter;

    iget-object v3, p0, Landroid/filterfw/core/FieldPort;->mValue:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Landroid/filterfw/core/FieldPort;->mValueWaiting:Z

    .line 71
    if-eqz p1, :cond_0

    .line 72
    iget-object v1, p0, Landroid/filterfw/core/FieldPort;->mFilter:Landroid/filterfw/core/Filter;

    iget-object v2, p0, Landroid/filterfw/core/FieldPort;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/filterfw/core/Filter;->notifyFieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    :cond_0
    monitor-exit p0

    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/IllegalAccessException;
    :try_start_3
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Access to field \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/filterfw/core/FieldPort;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' was denied!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 63
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
