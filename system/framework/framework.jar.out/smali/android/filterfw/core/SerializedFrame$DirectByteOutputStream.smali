.class Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;
.super Ljava/io/OutputStream;
.source "SerializedFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/filterfw/core/SerializedFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DirectByteOutputStream"
.end annotation


# instance fields
.field private mBuffer:[B

.field private mDataOffset:I

.field private mOffset:I

.field final synthetic this$0:Landroid/filterfw/core/SerializedFrame;


# direct methods
.method public constructor <init>(Landroid/filterfw/core/SerializedFrame;I)V
    .locals 2
    .param p2, "size"    # I

    .prologue
    const/4 v1, 0x0

    .line 66
    iput-object p1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->this$0:Landroid/filterfw/core/SerializedFrame;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mBuffer:[B

    .line 63
    iput v1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mOffset:I

    .line 64
    iput v1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mDataOffset:I

    .line 67
    new-array v0, p2, [B

    iput-object v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mBuffer:[B

    .line 68
    return-void
.end method

.method private final ensureFit(I)V
    .locals 4
    .param p1, "bytesToWrite"    # I

    .prologue
    const/4 v3, 0x0

    .line 71
    iget v1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mOffset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mBuffer:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 72
    iget-object v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mBuffer:[B

    .line 73
    .local v0, "oldBuffer":[B
    iget v1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mOffset:I

    add-int/2addr v1, p1

    iget-object v2, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mBuffer:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mBuffer:[B

    .line 74
    iget-object v1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mBuffer:[B

    iget v2, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mOffset:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    .end local v0    # "oldBuffer":[B
    :cond_0
    return-void
.end method


# virtual methods
.method public getByteArray()[B
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mBuffer:[B

    return-object v0
.end method

.method public final getInputStream()Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;
    .locals 4

    .prologue
    .line 114
    new-instance v0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;

    iget-object v1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->this$0:Landroid/filterfw/core/SerializedFrame;

    iget-object v2, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mBuffer:[B

    iget v3, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mOffset:I

    invoke-direct {v0, v1, v2, v3}, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;-><init>(Landroid/filterfw/core/SerializedFrame;[BI)V

    return-object v0
.end method

.method public final getSize()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mOffset:I

    return v0
.end method

.method public final markHeaderEnd()V
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mOffset:I

    iput v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mDataOffset:I

    .line 81
    return-void
.end method

.method public final reset()V
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mDataOffset:I

    iput v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mOffset:I

    .line 111
    return-void
.end method

.method public final write(I)V
    .locals 3
    .param p1, "b"    # I

    .prologue
    .line 105
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->ensureFit(I)V

    .line 106
    iget-object v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mBuffer:[B

    iget v1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mOffset:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 107
    return-void
.end method

.method public final write([B)V
    .locals 2
    .param p1, "b"    # [B

    .prologue
    .line 93
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->write([BII)V

    .line 94
    return-void
.end method

.method public final write([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 98
    invoke-direct {p0, p3}, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->ensureFit(I)V

    .line 99
    iget-object v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mBuffer:[B

    iget v1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mOffset:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    iget v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mOffset:I

    add-int/2addr v0, p3

    iput v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->mOffset:I

    .line 101
    return-void
.end method
