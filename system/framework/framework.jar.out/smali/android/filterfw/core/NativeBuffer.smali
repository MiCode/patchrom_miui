.class public Landroid/filterfw/core/NativeBuffer;
.super Ljava/lang/Object;
.source "NativeBuffer.java"


# instance fields
.field private mAttachedFrame:Landroid/filterfw/core/Frame;

.field private mDataPointer:J

.field private mOwnsData:Z

.field private mRefCount:I

.field private mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    const-string v0, "filterfw"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/filterfw/core/NativeBuffer;->mDataPointer:J

    .line 29
    iput v2, p0, Landroid/filterfw/core/NativeBuffer;->mSize:I

    .line 33
    iput-boolean v2, p0, Landroid/filterfw/core/NativeBuffer;->mOwnsData:Z

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Landroid/filterfw/core/NativeBuffer;->mRefCount:I

    .line 37
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .param p1, "count"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/filterfw/core/NativeBuffer;->mDataPointer:J

    .line 29
    iput v2, p0, Landroid/filterfw/core/NativeBuffer;->mSize:I

    .line 33
    iput-boolean v2, p0, Landroid/filterfw/core/NativeBuffer;->mOwnsData:Z

    .line 34
    iput v3, p0, Landroid/filterfw/core/NativeBuffer;->mRefCount:I

    .line 40
    invoke-virtual {p0}, Landroid/filterfw/core/NativeBuffer;->getElementSize()I

    move-result v0

    mul-int/2addr v0, p1

    invoke-direct {p0, v0}, Landroid/filterfw/core/NativeBuffer;->allocate(I)Z

    .line 41
    iput-boolean v3, p0, Landroid/filterfw/core/NativeBuffer;->mOwnsData:Z

    .line 42
    return-void
.end method

.method private native allocate(I)Z
.end method

.method private native deallocate(Z)Z
.end method

.method private native nativeCopyTo(Landroid/filterfw/core/NativeBuffer;)Z
.end method


# virtual methods
.method protected assertReadable()V
    .locals 4

    .prologue
    .line 114
    iget-wide v0, p0, Landroid/filterfw/core/NativeBuffer;->mDataPointer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/filterfw/core/NativeBuffer;->mSize:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/filterfw/core/NativeBuffer;->mAttachedFrame:Landroid/filterfw/core/Frame;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/filterfw/core/NativeBuffer;->mAttachedFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->hasNativeAllocation()Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Attempting to read from null data frame!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_1
    return-void
.end method

.method protected assertWritable()V
    .locals 2

    .prologue
    .line 121
    invoke-virtual {p0}, Landroid/filterfw/core/NativeBuffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Attempting to modify read-only native (structured) data!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    return-void
.end method

.method attachToFrame(Landroid/filterfw/core/Frame;)V
    .locals 0
    .param p1, "frame"    # Landroid/filterfw/core/Frame;

    .prologue
    .line 110
    iput-object p1, p0, Landroid/filterfw/core/NativeBuffer;->mAttachedFrame:Landroid/filterfw/core/Frame;

    .line 111
    return-void
.end method

.method public count()I
    .locals 4

    .prologue
    .line 64
    iget-wide v0, p0, Landroid/filterfw/core/NativeBuffer;->mDataPointer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/filterfw/core/NativeBuffer;->mSize:I

    invoke-virtual {p0}, Landroid/filterfw/core/NativeBuffer;->getElementSize()I

    move-result v1

    div-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getElementSize()I
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Landroid/filterfw/core/NativeBuffer;->mAttachedFrame:Landroid/filterfw/core/Frame;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/filterfw/core/NativeBuffer;->mAttachedFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->isReadOnly()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mutableCopy()Landroid/filterfw/core/NativeBuffer;
    .locals 6

    .prologue
    .line 45
    const/4 v2, 0x0

    .line 47
    .local v2, "result":Landroid/filterfw/core/NativeBuffer;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 48
    .local v1, "myClass":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "result":Landroid/filterfw/core/NativeBuffer;
    check-cast v2, Landroid/filterfw/core/NativeBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .restart local v2    # "result":Landroid/filterfw/core/NativeBuffer;
    iget v3, p0, Landroid/filterfw/core/NativeBuffer;->mSize:I

    if-lez v3, :cond_0

    invoke-direct {p0, v2}, Landroid/filterfw/core/NativeBuffer;->nativeCopyTo(Landroid/filterfw/core/NativeBuffer;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 54
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Failed to copy NativeBuffer to mutable instance!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 49
    .end local v1    # "myClass":Ljava/lang/Class;
    .end local v2    # "result":Landroid/filterfw/core/NativeBuffer;
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to allocate a copy of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "! Make "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "sure the class has a default constructor!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 56
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "myClass":Ljava/lang/Class;
    .restart local v2    # "result":Landroid/filterfw/core/NativeBuffer;
    :cond_0
    return-object v2
.end method

.method public release()Landroid/filterfw/core/NativeBuffer;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, "doDealloc":Z
    iget-object v3, p0, Landroid/filterfw/core/NativeBuffer;->mAttachedFrame:Landroid/filterfw/core/Frame;

    if-eqz v3, :cond_3

    .line 84
    iget-object v3, p0, Landroid/filterfw/core/NativeBuffer;->mAttachedFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    move-result-object v3

    if-nez v3, :cond_2

    move v0, v1

    .line 91
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 92
    iget-boolean v1, p0, Landroid/filterfw/core/NativeBuffer;->mOwnsData:Z

    invoke-direct {p0, v1}, Landroid/filterfw/core/NativeBuffer;->deallocate(Z)Z

    .line 93
    const/4 p0, 0x0

    .line 95
    .end local p0    # "this":Landroid/filterfw/core/NativeBuffer;
    :cond_1
    return-object p0

    .restart local p0    # "this":Landroid/filterfw/core/NativeBuffer;
    :cond_2
    move v0, v2

    .line 84
    goto :goto_0

    .line 85
    :cond_3
    iget-boolean v3, p0, Landroid/filterfw/core/NativeBuffer;->mOwnsData:Z

    if-eqz v3, :cond_0

    .line 86
    iget v3, p0, Landroid/filterfw/core/NativeBuffer;->mRefCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/filterfw/core/NativeBuffer;->mRefCount:I

    .line 87
    iget v3, p0, Landroid/filterfw/core/NativeBuffer;->mRefCount:I

    if-nez v3, :cond_4

    move v0, v1

    :goto_1
    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public retain()Landroid/filterfw/core/NativeBuffer;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Landroid/filterfw/core/NativeBuffer;->mAttachedFrame:Landroid/filterfw/core/Frame;

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Landroid/filterfw/core/NativeBuffer;->mAttachedFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->retain()Landroid/filterfw/core/Frame;

    .line 77
    :cond_0
    :goto_0
    return-object p0

    .line 74
    :cond_1
    iget-boolean v0, p0, Landroid/filterfw/core/NativeBuffer;->mOwnsData:Z

    if-eqz v0, :cond_0

    .line 75
    iget v0, p0, Landroid/filterfw/core/NativeBuffer;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/filterfw/core/NativeBuffer;->mRefCount:I

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Landroid/filterfw/core/NativeBuffer;->mSize:I

    return v0
.end method
