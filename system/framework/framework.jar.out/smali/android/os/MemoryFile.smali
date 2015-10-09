.class public Landroid/os/MemoryFile;
.super Ljava/lang/Object;
.source "MemoryFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/MemoryFile$1;,
        Landroid/os/MemoryFile$MemoryOutputStream;,
        Landroid/os/MemoryFile$MemoryInputStream;
    }
.end annotation


# static fields
.field private static final PROT_READ:I = 0x1

.field private static final PROT_WRITE:I = 0x2

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAddress:I

.field private mAllowPurging:Z

.field private mFD:Ljava/io/FileDescriptor;

.field private mLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "MemoryFile"

    sput-object v0, Landroid/os/MemoryFile;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-boolean v1, p0, Landroid/os/MemoryFile;->mAllowPurging:Z

    .line 70
    iput p2, p0, Landroid/os/MemoryFile;->mLength:I

    .line 71
    invoke-static {p1, p2}, Landroid/os/MemoryFile;->native_open(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroid/os/MemoryFile;->mFD:Ljava/io/FileDescriptor;

    .line 72
    if-lez p2, :cond_0

    .line 73
    iget-object v0, p0, Landroid/os/MemoryFile;->mFD:Ljava/io/FileDescriptor;

    const/4 v1, 0x3

    invoke-static {v0, p2, v1}, Landroid/os/MemoryFile;->native_mmap(Ljava/io/FileDescriptor;II)I

    move-result v0

    iput v0, p0, Landroid/os/MemoryFile;->mAddress:I

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    iput v1, p0, Landroid/os/MemoryFile;->mAddress:I

    goto :goto_0
.end method

.method static synthetic access$200(Landroid/os/MemoryFile;)I
    .locals 1
    .param p0, "x0"    # Landroid/os/MemoryFile;

    .prologue
    .line 36
    iget v0, p0, Landroid/os/MemoryFile;->mLength:I

    return v0
.end method

.method public static getSize(Ljava/io/FileDescriptor;)I
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    invoke-static {p0}, Landroid/os/MemoryFile;->native_get_size(Ljava/io/FileDescriptor;)I

    move-result v0

    return v0
.end method

.method private isClosed()Z
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Landroid/os/MemoryFile;->mFD:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDeactivated()Z
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Landroid/os/MemoryFile;->mAddress:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static native native_close(Ljava/io/FileDescriptor;)V
.end method

.method private static native native_get_size(Ljava/io/FileDescriptor;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native native_mmap(Ljava/io/FileDescriptor;II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native native_munmap(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native native_open(Ljava/lang/String;I)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native native_pin(Ljava/io/FileDescriptor;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native native_read(Ljava/io/FileDescriptor;I[BIIIZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native native_write(Ljava/io/FileDescriptor;I[BIIIZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method public declared-synchronized allowPurging(Z)Z
    .locals 3
    .param p1, "allowPurging"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/os/MemoryFile;->mAllowPurging:Z

    .line 157
    .local v0, "oldValue":Z
    if-eq v0, p1, :cond_0

    .line 158
    iget-object v2, p0, Landroid/os/MemoryFile;->mFD:Ljava/io/FileDescriptor;

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v1}, Landroid/os/MemoryFile;->native_pin(Ljava/io/FileDescriptor;Z)V

    .line 159
    iput-boolean p1, p0, Landroid/os/MemoryFile;->mAllowPurging:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :cond_0
    monitor-exit p0

    return v0

    .line 158
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 156
    .end local v0    # "oldValue":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public close()V
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Landroid/os/MemoryFile;->deactivate()V

    .line 85
    invoke-direct {p0}, Landroid/os/MemoryFile;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Landroid/os/MemoryFile;->mFD:Ljava/io/FileDescriptor;

    invoke-static {v0}, Landroid/os/MemoryFile;->native_close(Ljava/io/FileDescriptor;)V

    .line 88
    :cond_0
    return-void
.end method

.method deactivate()V
    .locals 3

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/os/MemoryFile;->isDeactivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    :try_start_0
    iget v1, p0, Landroid/os/MemoryFile;->mAddress:I

    iget v2, p0, Landroid/os/MemoryFile;->mLength:I

    invoke-static {v1, v2}, Landroid/os/MemoryFile;->native_munmap(II)V

    .line 101
    const/4 v1, 0x0

    iput v1, p0, Landroid/os/MemoryFile;->mAddress:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "ex":Ljava/io/IOException;
    sget-object v1, Landroid/os/MemoryFile;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 124
    invoke-direct {p0}, Landroid/os/MemoryFile;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    sget-object v0, Landroid/os/MemoryFile;->TAG:Ljava/lang/String;

    const-string v1, "MemoryFile.finalize() called while ashmem still open"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {p0}, Landroid/os/MemoryFile;->close()V

    .line 128
    :cond_0
    return-void
.end method

.method public getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    iget-object v0, p0, Landroid/os/MemoryFile;->mFD:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 170
    new-instance v0, Landroid/os/MemoryFile$MemoryInputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/os/MemoryFile$MemoryInputStream;-><init>(Landroid/os/MemoryFile;Landroid/os/MemoryFile$1;)V

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2

    .prologue
    .line 179
    new-instance v0, Landroid/os/MemoryFile$MemoryOutputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/os/MemoryFile$MemoryOutputStream;-><init>(Landroid/os/MemoryFile;Landroid/os/MemoryFile$1;)V

    return-object v0
.end method

.method public isPurgingAllowed()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Landroid/os/MemoryFile;->mAllowPurging:Z

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Landroid/os/MemoryFile;->mLength:I

    return v0
.end method

.method public readBytes([BIII)I
    .locals 7
    .param p1, "buffer"    # [B
    .param p2, "srcOffset"    # I
    .param p3, "destOffset"    # I
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    invoke-direct {p0}, Landroid/os/MemoryFile;->isDeactivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Can\'t read from deactivated memory file."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_0
    if-ltz p3, :cond_1

    array-length v0, p1

    if-gt p3, v0, :cond_1

    if-ltz p4, :cond_1

    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p4, v0, :cond_1

    if-ltz p2, :cond_1

    iget v0, p0, Landroid/os/MemoryFile;->mLength:I

    if-gt p2, v0, :cond_1

    iget v0, p0, Landroid/os/MemoryFile;->mLength:I

    sub-int/2addr v0, p2

    if-le p4, v0, :cond_2

    .line 202
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 204
    :cond_2
    iget-object v0, p0, Landroid/os/MemoryFile;->mFD:Ljava/io/FileDescriptor;

    iget v1, p0, Landroid/os/MemoryFile;->mAddress:I

    iget-boolean v6, p0, Landroid/os/MemoryFile;->mAllowPurging:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v6}, Landroid/os/MemoryFile;->native_read(Ljava/io/FileDescriptor;I[BIIIZ)I

    move-result v0

    return v0
.end method

.method public writeBytes([BIII)V
    .locals 7
    .param p1, "buffer"    # [B
    .param p2, "srcOffset"    # I
    .param p3, "destOffset"    # I
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    invoke-direct {p0}, Landroid/os/MemoryFile;->isDeactivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Can\'t write to deactivated memory file."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_0
    if-ltz p2, :cond_1

    array-length v0, p1

    if-gt p2, v0, :cond_1

    if-ltz p4, :cond_1

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p4, v0, :cond_1

    if-ltz p3, :cond_1

    iget v0, p0, Landroid/os/MemoryFile;->mLength:I

    if-gt p3, v0, :cond_1

    iget v0, p0, Landroid/os/MemoryFile;->mLength:I

    sub-int/2addr v0, p3

    if-le p4, v0, :cond_2

    .line 226
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 228
    :cond_2
    iget-object v0, p0, Landroid/os/MemoryFile;->mFD:Ljava/io/FileDescriptor;

    iget v1, p0, Landroid/os/MemoryFile;->mAddress:I

    iget-boolean v6, p0, Landroid/os/MemoryFile;->mAllowPurging:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v6}, Landroid/os/MemoryFile;->native_write(Ljava/io/FileDescriptor;I[BIIIZ)V

    .line 229
    return-void
.end method
