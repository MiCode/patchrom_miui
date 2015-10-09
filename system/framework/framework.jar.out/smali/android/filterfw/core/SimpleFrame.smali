.class public Landroid/filterfw/core/SimpleFrame;
.super Landroid/filterfw/core/Frame;
.source "SimpleFrame.java"


# instance fields
.field private mObject:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V
    .locals 1
    .param p1, "format"    # Landroid/filterfw/core/FrameFormat;
    .param p2, "frameManager"    # Landroid/filterfw/core/FrameManager;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/Frame;-><init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V

    .line 39
    invoke-direct {p0, p1}, Landroid/filterfw/core/SimpleFrame;->initWithFormat(Landroid/filterfw/core/FrameFormat;)V

    .line 40
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/filterfw/core/SimpleFrame;->setReusable(Z)V

    .line 41
    return-void
.end method

.method private initWithFormat(Landroid/filterfw/core/FrameFormat;)V
    .locals 3
    .param p1, "format"    # Landroid/filterfw/core/FrameFormat;

    .prologue
    .line 51
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getLength()I

    move-result v1

    .line 52
    .local v1, "count":I
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getBaseType()I

    move-result v0

    .line 53
    .local v0, "baseType":I
    packed-switch v0, :pswitch_data_0

    .line 70
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    .line 73
    :goto_0
    return-void

    .line 55
    :pswitch_0
    new-array v2, v1, [B

    iput-object v2, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    goto :goto_0

    .line 58
    :pswitch_1
    new-array v2, v1, [S

    iput-object v2, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    goto :goto_0

    .line 61
    :pswitch_2
    new-array v2, v1, [I

    iput-object v2, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    goto :goto_0

    .line 64
    :pswitch_3
    new-array v2, v1, [F

    iput-object v2, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    goto :goto_0

    .line 67
    :pswitch_4
    new-array v2, v1, [D

    iput-object v2, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    goto :goto_0

    .line 53
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private setFormatObjectClass(Ljava/lang/Class;)V
    .locals 2
    .param p1, "objectClass"    # Ljava/lang/Class;

    .prologue
    .line 134
    invoke-virtual {p0}, Landroid/filterfw/core/SimpleFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 135
    .local v0, "format":Landroid/filterfw/core/MutableFrameFormat;
    invoke-virtual {v0, p1}, Landroid/filterfw/core/MutableFrameFormat;->setObjectClass(Ljava/lang/Class;)V

    .line 136
    invoke-virtual {p0, v0}, Landroid/filterfw/core/SimpleFrame;->setFormat(Landroid/filterfw/core/FrameFormat;)V

    .line 137
    return-void
.end method

.method static wrapObject(Ljava/lang/Object;Landroid/filterfw/core/FrameManager;)Landroid/filterfw/core/SimpleFrame;
    .locals 3
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "frameManager"    # Landroid/filterfw/core/FrameManager;

    .prologue
    .line 44
    const/4 v2, 0x1

    invoke-static {p0, v2}, Landroid/filterfw/format/ObjectFormat;->fromObject(Ljava/lang/Object;I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 45
    .local v0, "format":Landroid/filterfw/core/FrameFormat;
    new-instance v1, Landroid/filterfw/core/SimpleFrame;

    invoke-direct {v1, v0, p1}, Landroid/filterfw/core/SimpleFrame;-><init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V

    .line 46
    .local v1, "result":Landroid/filterfw/core/SimpleFrame;
    invoke-virtual {v1, p0}, Landroid/filterfw/core/SimpleFrame;->setObjectValue(Ljava/lang/Object;)V

    .line 47
    return-object v1
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    instance-of v0, v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getData()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    instance-of v0, v0, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFloats()[F
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    instance-of v0, v0, [F

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    check-cast v0, [F

    check-cast v0, [F

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInts()[I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    instance-of v0, v0, [I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getObjectValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method protected hasNativeAllocation()Z
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method protected releaseNativeAllocation()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 124
    invoke-virtual {p0}, Landroid/filterfw/core/SimpleFrame;->assertFrameMutable()V

    .line 125
    invoke-virtual {p0, p1}, Landroid/filterfw/core/SimpleFrame;->setGenericObjectValue(Ljava/lang/Object;)V

    .line 126
    return-void
.end method

.method public setData(Ljava/nio/ByteBuffer;II)V
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 113
    invoke-virtual {p0}, Landroid/filterfw/core/SimpleFrame;->assertFrameMutable()V

    .line 114
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/filterfw/core/SimpleFrame;->setGenericObjectValue(Ljava/lang/Object;)V

    .line 115
    return-void
.end method

.method public setFloats([F)V
    .locals 0
    .param p1, "floats"    # [F

    .prologue
    .line 102
    invoke-virtual {p0}, Landroid/filterfw/core/SimpleFrame;->assertFrameMutable()V

    .line 103
    invoke-virtual {p0, p1}, Landroid/filterfw/core/SimpleFrame;->setGenericObjectValue(Ljava/lang/Object;)V

    .line 104
    return-void
.end method

.method protected setGenericObjectValue(Ljava/lang/Object;)V
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 144
    invoke-virtual {p0}, Landroid/filterfw/core/SimpleFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    .line 145
    .local v0, "format":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getObjectClass()Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_1

    .line 146
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/filterfw/core/SimpleFrame;->setFormatObjectClass(Ljava/lang/Class;)V

    .line 154
    :cond_0
    iput-object p1, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    .line 155
    return-void

    .line 147
    :cond_1
    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getObjectClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to set object value of type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SimpleFrame of type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getObjectClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setInts([I)V
    .locals 0
    .param p1, "ints"    # [I

    .prologue
    .line 91
    invoke-virtual {p0}, Landroid/filterfw/core/SimpleFrame;->assertFrameMutable()V

    .line 92
    invoke-virtual {p0, p1}, Landroid/filterfw/core/SimpleFrame;->setGenericObjectValue(Ljava/lang/Object;)V

    .line 93
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SimpleFrame ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/filterfw/core/SimpleFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
