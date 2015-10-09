.class public Landroid/filterfw/format/ObjectFormat;
.super Ljava/lang/Object;
.source "ObjectFormat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bytesPerSampleForClass(Ljava/lang/Class;I)I
    .locals 4
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "target"    # I

    .prologue
    .line 59
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 60
    const-class v1, Landroid/filterfw/core/NativeBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Native object-based formats must be of a NativeBuffer subclass! (Received class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 65
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/NativeBuffer;

    invoke-virtual {v1}, Landroid/filterfw/core/NativeBuffer;->getElementSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 72
    :goto_0
    return v1

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not determine the size of an element in a native object-based frame of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "! Perhaps it is missing a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "default constructor?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 72
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;
    .locals 1
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "target"    # I

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    return-object v0
.end method

.method public static fromClass(Ljava/lang/Class;II)Landroid/filterfw/core/MutableFrameFormat;
    .locals 2
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "count"    # I
    .param p2, "target"    # I

    .prologue
    .line 31
    new-instance v0, Landroid/filterfw/core/MutableFrameFormat;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p2}, Landroid/filterfw/core/MutableFrameFormat;-><init>(II)V

    .line 32
    .local v0, "result":Landroid/filterfw/core/MutableFrameFormat;
    invoke-static {p0}, Landroid/filterfw/format/ObjectFormat;->getBoxedClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/filterfw/core/MutableFrameFormat;->setObjectClass(Ljava/lang/Class;)V

    .line 33
    if-eqz p1, :cond_0

    .line 34
    invoke-virtual {v0, p1}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(I)V

    .line 36
    :cond_0
    invoke-static {p0, p2}, Landroid/filterfw/format/ObjectFormat;->bytesPerSampleForClass(Ljava/lang/Class;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/filterfw/core/MutableFrameFormat;->setBytesPerSample(I)V

    .line 37
    return-object v0
.end method

.method public static fromObject(Ljava/lang/Object;I)Landroid/filterfw/core/MutableFrameFormat;
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "target"    # I

    .prologue
    .line 45
    if-nez p0, :cond_0

    new-instance v0, Landroid/filterfw/core/MutableFrameFormat;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p1}, Landroid/filterfw/core/MutableFrameFormat;-><init>(II)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    goto :goto_0
.end method

.method public static fromObject(Ljava/lang/Object;II)Landroid/filterfw/core/MutableFrameFormat;
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "count"    # I
    .param p2, "target"    # I

    .prologue
    .line 51
    if-nez p0, :cond_0

    new-instance v0, Landroid/filterfw/core/MutableFrameFormat;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p2}, Landroid/filterfw/core/MutableFrameFormat;-><init>(II)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    goto :goto_0
.end method

.method private static getBoxedClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 3
    .param p0, "type"    # Ljava/lang/Class;

    .prologue
    .line 78
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    .line 81
    const-class p0, Ljava/lang/Boolean;

    .line 102
    .end local p0    # "type":Ljava/lang/Class;
    :cond_0
    :goto_0
    return-object p0

    .line 82
    .restart local p0    # "type":Ljava/lang/Class;
    :cond_1
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    .line 83
    const-class p0, Ljava/lang/Byte;

    goto :goto_0

    .line 84
    :cond_2
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    .line 85
    const-class p0, Ljava/lang/Character;

    goto :goto_0

    .line 86
    :cond_3
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    .line 87
    const-class p0, Ljava/lang/Short;

    goto :goto_0

    .line 88
    :cond_4
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    .line 89
    const-class p0, Ljava/lang/Integer;

    goto :goto_0

    .line 90
    :cond_5
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    .line 91
    const-class p0, Ljava/lang/Long;

    goto :goto_0

    .line 92
    :cond_6
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    .line 93
    const-class p0, Ljava/lang/Float;

    goto :goto_0

    .line 94
    :cond_7
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_8

    .line 95
    const-class p0, Ljava/lang/Double;

    goto :goto_0

    .line 97
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown primitive type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
