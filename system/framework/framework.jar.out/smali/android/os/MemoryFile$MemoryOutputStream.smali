.class Landroid/os/MemoryFile$MemoryOutputStream;
.super Ljava/io/OutputStream;
.source "MemoryFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/MemoryFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MemoryOutputStream"
.end annotation


# instance fields
.field private mOffset:I

.field private mSingleByte:[B

.field final synthetic this$0:Landroid/os/MemoryFile;


# direct methods
.method private constructor <init>(Landroid/os/MemoryFile;)V
    .locals 1

    .prologue
    .line 325
    iput-object p1, p0, Landroid/os/MemoryFile$MemoryOutputStream;->this$0:Landroid/os/MemoryFile;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 327
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/MemoryFile$MemoryOutputStream;->mOffset:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/MemoryFile;Landroid/os/MemoryFile$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/MemoryFile;
    .param p2, "x1"    # Landroid/os/MemoryFile$1;

    .prologue
    .line 325
    invoke-direct {p0, p1}, Landroid/os/MemoryFile$MemoryOutputStream;-><init>(Landroid/os/MemoryFile;)V

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 4
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 338
    iget-object v0, p0, Landroid/os/MemoryFile$MemoryOutputStream;->mSingleByte:[B

    if-nez v0, :cond_0

    .line 339
    new-array v0, v3, [B

    iput-object v0, p0, Landroid/os/MemoryFile$MemoryOutputStream;->mSingleByte:[B

    .line 341
    :cond_0
    iget-object v0, p0, Landroid/os/MemoryFile$MemoryOutputStream;->mSingleByte:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    .line 342
    iget-object v0, p0, Landroid/os/MemoryFile$MemoryOutputStream;->mSingleByte:[B

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/MemoryFile$MemoryOutputStream;->write([BII)V

    .line 343
    return-void
.end method

.method public write([BII)V
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 332
    iget-object v0, p0, Landroid/os/MemoryFile$MemoryOutputStream;->this$0:Landroid/os/MemoryFile;

    iget v1, p0, Landroid/os/MemoryFile$MemoryOutputStream;->mOffset:I

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    .line 333
    iget v0, p0, Landroid/os/MemoryFile$MemoryOutputStream;->mOffset:I

    add-int/2addr v0, p3

    iput v0, p0, Landroid/os/MemoryFile$MemoryOutputStream;->mOffset:I

    .line 334
    return-void
.end method
