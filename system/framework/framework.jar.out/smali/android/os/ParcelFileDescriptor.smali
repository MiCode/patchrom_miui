.class public Landroid/os/ParcelFileDescriptor;
.super Ljava/lang/Object;
.source "ParcelFileDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ParcelFileDescriptor$ListenerBridge;,
        Landroid/os/ParcelFileDescriptor$Status;,
        Landroid/os/ParcelFileDescriptor$FileDescriptorDetachedException;,
        Landroid/os/ParcelFileDescriptor$OnCloseListener;,
        Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;,
        Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_STATUS:I = 0x400

.field public static final MODE_APPEND:I = 0x2000000

.field public static final MODE_CREATE:I = 0x8000000

.field public static final MODE_READ_ONLY:I = 0x10000000

.field public static final MODE_READ_WRITE:I = 0x30000000

.field public static final MODE_TRUNCATE:I = 0x4000000

.field public static final MODE_WORLD_READABLE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MODE_WORLD_WRITEABLE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MODE_WRITE_ONLY:I = 0x20000000

.field private static final TAG:Ljava/lang/String; = "ParcelFileDescriptor"


# instance fields
.field private volatile mClosed:Z

.field private mCommFd:Ljava/io/FileDescriptor;

.field private final mFd:Ljava/io/FileDescriptor;

.field private final mGuard:Ldalvik/system/CloseGuard;

.field private mStatus:Landroid/os/ParcelFileDescriptor$Status;

.field private mStatusBuf:[B

.field private final mWrapped:Landroid/os/ParcelFileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 896
    new-instance v0, Landroid/os/ParcelFileDescriptor$1;

    invoke-direct {v0}, Landroid/os/ParcelFileDescriptor$1;-><init>()V

    sput-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/ParcelFileDescriptor;)V
    .locals 2
    .param p1, "wrapped"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    const/4 v1, 0x0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/os/ParcelFileDescriptor;->mGuard:Ldalvik/system/CloseGuard;

    .line 160
    iput-object p1, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    .line 161
    iput-object v1, p0, Landroid/os/ParcelFileDescriptor;->mFd:Ljava/io/FileDescriptor;

    .line 162
    iput-object v1, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/ParcelFileDescriptor;->mClosed:Z

    .line 164
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 168
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    .line 169
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "commChannel"    # Ljava/io/FileDescriptor;

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/os/ParcelFileDescriptor;->mGuard:Ldalvik/system/CloseGuard;

    .line 173
    if-nez p1, :cond_0

    .line 174
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "FileDescriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    .line 177
    iput-object p1, p0, Landroid/os/ParcelFileDescriptor;->mFd:Ljava/io/FileDescriptor;

    .line 178
    iput-object p2, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    .line 179
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mGuard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method static synthetic access$000(Ljava/io/FileDescriptor;[B)Landroid/os/ParcelFileDescriptor$Status;
    .locals 1
    .param p0, "x0"    # Ljava/io/FileDescriptor;
    .param p1, "x1"    # [B

    .prologue
    .line 53
    invoke-static {p0, p1}, Landroid/os/ParcelFileDescriptor;->readCommStatus(Ljava/io/FileDescriptor;[B)Landroid/os/ParcelFileDescriptor$Status;

    move-result-object v0

    return-object v0
.end method

.method public static adoptFd(I)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .param p0, "fd"    # I

    .prologue
    .line 317
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    .line 318
    .local v0, "fdesc":Ljava/io/FileDescriptor;
    invoke-virtual {v0, p0}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 320
    new-instance v1, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v1, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    return-object v1
.end method

.method private closeWithStatus(ILjava/lang/String;)V
    .locals 1
    .param p1, "status"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 636
    iget-boolean v0, p0, Landroid/os/ParcelFileDescriptor;->mClosed:Z

    if-eqz v0, :cond_0

    .line 643
    :goto_0
    return-void

    .line 637
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/ParcelFileDescriptor;->mClosed:Z

    .line 638
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 640
    invoke-direct {p0, p1, p2}, Landroid/os/ParcelFileDescriptor;->writeCommStatusAndClose(ILjava/lang/String;)V

    .line 641
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mFd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 642
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->releaseResources()V

    goto :goto_0
.end method

.method private static createCommSocketPair()[Ljava/io/FileDescriptor;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 434
    :try_start_0
    new-instance v4, Ljava/io/FileDescriptor;

    invoke-direct {v4}, Ljava/io/FileDescriptor;-><init>()V

    .line 435
    .local v4, "comm1":Ljava/io/FileDescriptor;
    new-instance v5, Ljava/io/FileDescriptor;

    invoke-direct {v5}, Ljava/io/FileDescriptor;-><init>()V

    .line 436
    .local v5, "comm2":Ljava/io/FileDescriptor;
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v1, Llibcore/io/OsConstants;->AF_UNIX:I

    sget v2, Llibcore/io/OsConstants;->SOCK_STREAM:I

    const/4 v3, 0x0

    invoke-interface/range {v0 .. v5}, Llibcore/io/Os;->socketpair(IIILjava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    .line 437
    const/4 v0, 0x0

    invoke-static {v4, v0}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V

    .line 438
    const/4 v0, 0x0

    invoke-static {v5, v0}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V

    .line 439
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/io/FileDescriptor;

    const/4 v1, 0x0

    aput-object v4, v0, v1

    const/4 v1, 0x1

    aput-object v5, v0, v1
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 440
    .end local v5    # "comm2":Ljava/io/FileDescriptor;
    :catch_0
    move-exception v6

    .line 441
    .local v6, "e":Llibcore/io/ErrnoException;
    invoke-virtual {v6}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public static createPipe()[Landroid/os/ParcelFileDescriptor;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 361
    :try_start_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v2}, Llibcore/io/Os;->pipe()[Ljava/io/FileDescriptor;

    move-result-object v1

    .line 362
    .local v1, "fds":[Ljava/io/FileDescriptor;
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    new-instance v4, Landroid/os/ParcelFileDescriptor;

    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-direct {v4, v5}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Landroid/os/ParcelFileDescriptor;

    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-direct {v4, v5}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    aput-object v4, v2, v3
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 365
    :catch_0
    move-exception v0

    .line 366
    .local v0, "e":Llibcore/io/ErrnoException;
    invoke-virtual {v0}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    throw v2
.end method

.method public static createReliablePipe()[Landroid/os/ParcelFileDescriptor;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 382
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createCommSocketPair()[Ljava/io/FileDescriptor;

    move-result-object v0

    .line 383
    .local v0, "comm":[Ljava/io/FileDescriptor;
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v3}, Llibcore/io/Os;->pipe()[Ljava/io/FileDescriptor;

    move-result-object v2

    .line 384
    .local v2, "fds":[Ljava/io/FileDescriptor;
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/os/ParcelFileDescriptor;

    const/4 v4, 0x0

    new-instance v5, Landroid/os/ParcelFileDescriptor;

    const/4 v6, 0x0

    aget-object v6, v2, v6

    const/4 v7, 0x0

    aget-object v7, v0, v7

    invoke-direct {v5, v6, v7}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Landroid/os/ParcelFileDescriptor;

    const/4 v6, 0x1

    aget-object v6, v2, v6

    const/4 v7, 0x1

    aget-object v7, v0, v7

    invoke-direct {v5, v6, v7}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    aput-object v5, v3, v4
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 387
    .end local v2    # "fds":[Ljava/io/FileDescriptor;
    :catch_0
    move-exception v1

    .line 388
    .local v1, "e":Llibcore/io/ErrnoException;
    invoke-virtual {v1}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v3

    throw v3
.end method

.method public static createReliableSocketPair()[Landroid/os/ParcelFileDescriptor;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 420
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createCommSocketPair()[Ljava/io/FileDescriptor;

    move-result-object v6

    .line 421
    .local v6, "comm":[Ljava/io/FileDescriptor;
    new-instance v4, Ljava/io/FileDescriptor;

    invoke-direct {v4}, Ljava/io/FileDescriptor;-><init>()V

    .line 422
    .local v4, "fd0":Ljava/io/FileDescriptor;
    new-instance v5, Ljava/io/FileDescriptor;

    invoke-direct {v5}, Ljava/io/FileDescriptor;-><init>()V

    .line 423
    .local v5, "fd1":Ljava/io/FileDescriptor;
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v1, Llibcore/io/OsConstants;->AF_UNIX:I

    sget v2, Llibcore/io/OsConstants;->SOCK_STREAM:I

    const/4 v3, 0x0

    invoke-interface/range {v0 .. v5}, Llibcore/io/Os;->socketpair(IIILjava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    .line 424
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x0

    new-instance v2, Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v3, v6, v3

    invoke-direct {v2, v4, v3}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v3, v6, v3

    invoke-direct {v2, v5, v3}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    aput-object v2, v0, v1
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 427
    .end local v4    # "fd0":Ljava/io/FileDescriptor;
    .end local v5    # "fd1":Ljava/io/FileDescriptor;
    :catch_0
    move-exception v7

    .line 428
    .local v7, "e":Llibcore/io/ErrnoException;
    invoke-virtual {v7}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public static createSocketPair()[Landroid/os/ParcelFileDescriptor;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 398
    :try_start_0
    new-instance v4, Ljava/io/FileDescriptor;

    invoke-direct {v4}, Ljava/io/FileDescriptor;-><init>()V

    .line 399
    .local v4, "fd0":Ljava/io/FileDescriptor;
    new-instance v5, Ljava/io/FileDescriptor;

    invoke-direct {v5}, Ljava/io/FileDescriptor;-><init>()V

    .line 400
    .local v5, "fd1":Ljava/io/FileDescriptor;
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v1, Llibcore/io/OsConstants;->AF_UNIX:I

    sget v2, Llibcore/io/OsConstants;->SOCK_STREAM:I

    const/4 v3, 0x0

    invoke-interface/range {v0 .. v5}, Llibcore/io/Os;->socketpair(IIILjava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    .line 401
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x0

    new-instance v2, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v2, v4}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v2, v5}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    aput-object v2, v0, v1
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 404
    .end local v5    # "fd1":Ljava/io/FileDescriptor;
    :catch_0
    move-exception v6

    .line 405
    .local v6, "e":Llibcore/io/ErrnoException;
    invoke-virtual {v6}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public static dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .param p0, "orig"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 263
    :try_start_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v2, p0}, Llibcore/io/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v1

    .line 264
    .local v1, "fd":Ljava/io/FileDescriptor;
    new-instance v2, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v2, v1}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 265
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Llibcore/io/ErrnoException;
    invoke-virtual {v0}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    throw v2
.end method

.method public static fromData([BLjava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 5
    .param p0, "data"    # [B
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 457
    if-nez p0, :cond_1

    .line 464
    :cond_0
    :goto_0
    return-object v2

    .line 458
    :cond_1
    new-instance v1, Landroid/os/MemoryFile;

    array-length v3, p0

    invoke-direct {v1, p1, v3}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    .line 459
    .local v1, "file":Landroid/os/MemoryFile;
    array-length v3, p0

    if-lez v3, :cond_2

    .line 460
    array-length v3, p0

    invoke-virtual {v1, p0, v4, v4, v3}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    .line 462
    :cond_2
    invoke-virtual {v1}, Landroid/os/MemoryFile;->deactivate()V

    .line 463
    invoke-virtual {v1}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 464
    .local v0, "fd":Ljava/io/FileDescriptor;
    if-eqz v0, :cond_0

    new-instance v2, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    goto :goto_0
.end method

.method public static fromDatagramSocket(Ljava/net/DatagramSocket;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .param p0, "datagramSocket"    # Ljava/net/DatagramSocket;

    .prologue
    .line 350
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 351
    .local v0, "fd":Ljava/io/FileDescriptor;
    if-eqz v0, :cond_0

    new-instance v1, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v1, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static fromFd(I)Landroid/os/ParcelFileDescriptor;
    .locals 4
    .param p0, "fd"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 295
    new-instance v2, Ljava/io/FileDescriptor;

    invoke-direct {v2}, Ljava/io/FileDescriptor;-><init>()V

    .line 296
    .local v2, "original":Ljava/io/FileDescriptor;
    invoke-virtual {v2, p0}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 299
    :try_start_0
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v3, v2}, Llibcore/io/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 300
    .local v0, "dup":Ljava/io/FileDescriptor;
    new-instance v3, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v3, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 301
    .end local v0    # "dup":Ljava/io/FileDescriptor;
    :catch_0
    move-exception v1

    .line 302
    .local v1, "e":Llibcore/io/ErrnoException;
    invoke-virtual {v1}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v3

    throw v3
.end method

.method public static fromSocket(Ljava/net/Socket;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .param p0, "socket"    # Ljava/net/Socket;

    .prologue
    .line 336
    invoke-virtual {p0}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 337
    .local v0, "fd":Ljava/io/FileDescriptor;
    if-eqz v0, :cond_0

    new-instance v1, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v1, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getOrCreateStatusBuffer()[B
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mStatusBuf:[B

    if-nez v0, :cond_0

    .line 655
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/os/ParcelFileDescriptor;->mStatusBuf:[B

    .line 657
    :cond_0
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mStatusBuf:[B

    return-object v0
.end method

.method public static open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 198
    invoke-static {p0, p1}, Landroid/os/ParcelFileDescriptor;->openInternal(Ljava/io/File;I)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 199
    .local v0, "fd":Ljava/io/FileDescriptor;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 201
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v1, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    goto :goto_0
.end method

.method public static open(Ljava/io/File;ILandroid/os/Handler;Landroid/os/ParcelFileDescriptor$OnCloseListener;)Landroid/os/ParcelFileDescriptor;
    .locals 6
    .param p0, "file"    # Ljava/io/File;
    .param p1, "mode"    # I
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "listener"    # Landroid/os/ParcelFileDescriptor$OnCloseListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 224
    if-nez p2, :cond_0

    .line 225
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Handler must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 227
    :cond_0
    if-nez p3, :cond_1

    .line 228
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Listener must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 231
    :cond_1
    invoke-static {p0, p1}, Landroid/os/ParcelFileDescriptor;->openInternal(Ljava/io/File;I)Ljava/io/FileDescriptor;

    move-result-object v2

    .line 232
    .local v2, "fd":Ljava/io/FileDescriptor;
    if-nez v2, :cond_2

    const/4 v3, 0x0

    .line 242
    :goto_0
    return-object v3

    .line 234
    :cond_2
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createCommSocketPair()[Ljava/io/FileDescriptor;

    move-result-object v1

    .line 235
    .local v1, "comm":[Ljava/io/FileDescriptor;
    new-instance v3, Landroid/os/ParcelFileDescriptor;

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-direct {v3, v2, v4}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    .line 238
    .local v3, "pfd":Landroid/os/ParcelFileDescriptor;
    aget-object v4, v1, v5

    invoke-static {v4, v5}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V

    .line 239
    new-instance v0, Landroid/os/ParcelFileDescriptor$ListenerBridge;

    aget-object v4, v1, v5

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v0, v4, v5, p3}, Landroid/os/ParcelFileDescriptor$ListenerBridge;-><init>(Ljava/io/FileDescriptor;Landroid/os/Looper;Landroid/os/ParcelFileDescriptor$OnCloseListener;)V

    .line 240
    .local v0, "bridge":Landroid/os/ParcelFileDescriptor$ListenerBridge;
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor$ListenerBridge;->start()V

    goto :goto_0
.end method

.method private static openInternal(Ljava/io/File;I)Ljava/io/FileDescriptor;
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 246
    const/high16 v1, 0x30000000

    and-int/2addr v1, p1

    if-nez v1, :cond_0

    .line 247
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Must specify MODE_READ_ONLY, MODE_WRITE_ONLY, or MODE_READ_WRITE"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 251
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/os/Parcel;->openFileDescriptor(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    move-result-object v1

    return-object v1
.end method

.method public static parseMode(Ljava/lang/String;)I
    .locals 4
    .param p0, "mode"    # Ljava/lang/String;

    .prologue
    .line 477
    const-string/jumbo v1, "r"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 478
    const/high16 v0, 0x10000000

    .line 497
    .local v0, "modeBits":I
    :goto_0
    return v0

    .line 479
    .end local v0    # "modeBits":I
    :cond_0
    const-string/jumbo v1, "w"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "wt"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 480
    :cond_1
    const/high16 v0, 0x2c000000

    .restart local v0    # "modeBits":I
    goto :goto_0

    .line 483
    .end local v0    # "modeBits":I
    :cond_2
    const-string/jumbo v1, "wa"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 484
    const/high16 v0, 0x2a000000

    .restart local v0    # "modeBits":I
    goto :goto_0

    .line 487
    .end local v0    # "modeBits":I
    :cond_3
    const-string/jumbo v1, "rw"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 488
    const/high16 v0, 0x38000000

    .restart local v0    # "modeBits":I
    goto :goto_0

    .line 490
    .end local v0    # "modeBits":I
    :cond_4
    const-string/jumbo v1, "rwt"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 491
    const/high16 v0, 0x3c000000    # 0.0078125f

    .restart local v0    # "modeBits":I
    goto :goto_0

    .line 495
    .end local v0    # "modeBits":I
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad mode \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static readCommStatus(Ljava/io/FileDescriptor;[B)Landroid/os/ParcelFileDescriptor$Status;
    .locals 8
    .param p0, "comm"    # Ljava/io/FileDescriptor;
    .param p1, "buf"    # [B

    .prologue
    const/4 v7, -0x2

    .line 711
    :try_start_0
    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const/4 v5, 0x0

    array-length v6, p1

    invoke-interface {v4, p0, p1, v5, v6}, Llibcore/io/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v2

    .line 712
    .local v2, "n":I
    if-nez v2, :cond_0

    .line 714
    new-instance v4, Landroid/os/ParcelFileDescriptor$Status;

    const/4 v5, -0x2

    invoke-direct {v4, v5}, Landroid/os/ParcelFileDescriptor$Status;-><init>(I)V

    .line 729
    .end local v2    # "n":I
    :goto_0
    return-object v4

    .line 716
    .restart local v2    # "n":I
    :cond_0
    const/4 v4, 0x0

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {p1, v4, v5}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v3

    .line 717
    .local v3, "status":I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 718
    new-instance v1, Ljava/lang/String;

    const/4 v4, 0x4

    add-int/lit8 v5, v2, -0x4

    invoke-direct {v1, p1, v4, v5}, Ljava/lang/String;-><init>([BII)V

    .line 719
    .local v1, "msg":Ljava/lang/String;
    new-instance v4, Landroid/os/ParcelFileDescriptor$Status;

    invoke-direct {v4, v3, v1}, Landroid/os/ParcelFileDescriptor$Status;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 723
    .end local v1    # "msg":Ljava/lang/String;
    .end local v2    # "n":I
    .end local v3    # "status":I
    :catch_0
    move-exception v0

    .line 724
    .local v0, "e":Llibcore/io/ErrnoException;
    iget v4, v0, Llibcore/io/ErrnoException;->errno:I

    sget v5, Llibcore/io/OsConstants;->EAGAIN:I

    if-ne v4, v5, :cond_2

    .line 726
    const/4 v4, 0x0

    goto :goto_0

    .line 721
    .end local v0    # "e":Llibcore/io/ErrnoException;
    .restart local v2    # "n":I
    .restart local v3    # "status":I
    :cond_1
    :try_start_1
    new-instance v4, Landroid/os/ParcelFileDescriptor$Status;

    invoke-direct {v4, v3}, Landroid/os/ParcelFileDescriptor$Status;-><init>(I)V
    :try_end_1
    .catch Llibcore/io/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 728
    .end local v2    # "n":I
    .end local v3    # "status":I
    .restart local v0    # "e":Llibcore/io/ErrnoException;
    :cond_2
    const-string v4, "ParcelFileDescriptor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to read status; assuming dead: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    new-instance v4, Landroid/os/ParcelFileDescriptor$Status;

    invoke-direct {v4, v7}, Landroid/os/ParcelFileDescriptor$Status;-><init>(I)V

    goto :goto_0
.end method

.method private writeCommStatusAndClose(ILjava/lang/String;)V
    .locals 9
    .param p1, "status"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 661
    iget-object v5, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    if-nez v5, :cond_1

    .line 663
    if-eqz p2, :cond_0

    .line 664
    const-string v5, "ParcelFileDescriptor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to inform peer: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    :cond_0
    :goto_0
    return-void

    .line 669
    :cond_1
    const/4 v5, 0x2

    if-ne p1, v5, :cond_2

    .line 670
    const-string v5, "ParcelFileDescriptor"

    const-string v6, "Peer expected signal when closed; unable to deliver after detach"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :cond_2
    const/4 v5, -0x1

    if-ne p1, v5, :cond_3

    .line 704
    iget-object v5, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 705
    iput-object v8, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    goto :goto_0

    .line 678
    :cond_3
    :try_start_0
    iget-object v5, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    invoke-direct {p0}, Landroid/os/ParcelFileDescriptor;->getOrCreateStatusBuffer()[B

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/ParcelFileDescriptor;->readCommStatus(Ljava/io/FileDescriptor;[B)Landroid/os/ParcelFileDescriptor$Status;

    move-result-object v5

    iput-object v5, p0, Landroid/os/ParcelFileDescriptor;->mStatus:Landroid/os/ParcelFileDescriptor$Status;

    .line 681
    iget-object v5, p0, Landroid/os/ParcelFileDescriptor;->mStatus:Landroid/os/ParcelFileDescriptor$Status;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_4

    .line 704
    iget-object v5, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 705
    iput-object v8, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    goto :goto_0

    .line 684
    :cond_4
    :try_start_1
    invoke-direct {p0}, Landroid/os/ParcelFileDescriptor;->getOrCreateStatusBuffer()[B

    move-result-object v0

    .line 685
    .local v0, "buf":[B
    const/4 v4, 0x0

    .line 687
    .local v4, "writePtr":I
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v4, p1, v5}, Llibcore/io/Memory;->pokeInt([BIILjava/nio/ByteOrder;)V

    .line 688
    add-int/lit8 v4, v4, 0x4

    .line 690
    if-eqz p2, :cond_5

    .line 691
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 692
    .local v3, "rawMsg":[B
    array-length v5, v3

    array-length v6, v0

    add-int/lit8 v6, v6, -0x4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 693
    .local v2, "len":I
    const/4 v5, 0x0

    invoke-static {v3, v5, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 694
    add-int/lit8 v4, v2, 0x4

    .line 697
    .end local v2    # "len":I
    .end local v3    # "rawMsg":[B
    :cond_5
    sget-object v5, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v6, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    const/4 v7, 0x0

    invoke-interface {v5, v6, v0, v7, v4}, Llibcore/io/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_1
    .catch Llibcore/io/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 704
    .end local v0    # "buf":[B
    .end local v4    # "writePtr":I
    :goto_1
    iget-object v5, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 705
    iput-object v8, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    goto :goto_0

    .line 698
    :catch_0
    move-exception v1

    .line 700
    .local v1, "e":Llibcore/io/ErrnoException;
    :try_start_2
    const-string v5, "ParcelFileDescriptor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to report status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 704
    .end local v1    # "e":Llibcore/io/ErrnoException;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 705
    iput-object v8, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    throw v5
.end method


# virtual methods
.method public canDetectErrors()Z
    .locals 1

    .prologue
    .line 741
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->canDetectErrors()Z

    move-result v0

    .line 744
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkError()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 764
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1

    .line 765
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->checkError()V

    .line 785
    :cond_0
    :goto_0
    return-void

    .line 767
    :cond_1
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mStatus:Landroid/os/ParcelFileDescriptor$Status;

    if-nez v0, :cond_3

    .line 768
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    if-nez v0, :cond_2

    .line 769
    const-string v0, "ParcelFileDescriptor"

    const-string v1, "Peer didn\'t provide a comm channel; unable to check for errors"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 775
    :cond_2
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    invoke-direct {p0}, Landroid/os/ParcelFileDescriptor;->getOrCreateStatusBuffer()[B

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->readCommStatus(Ljava/io/FileDescriptor;[B)Landroid/os/ParcelFileDescriptor$Status;

    move-result-object v0

    iput-object v0, p0, Landroid/os/ParcelFileDescriptor;->mStatus:Landroid/os/ParcelFileDescriptor$Status;

    .line 778
    :cond_3
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mStatus:Landroid/os/ParcelFileDescriptor$Status;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mStatus:Landroid/os/ParcelFileDescriptor$Status;

    iget v0, v0, Landroid/os/ParcelFileDescriptor$Status;->status:I

    if-eqz v0, :cond_0

    .line 782
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mStatus:Landroid/os/ParcelFileDescriptor$Status;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor$Status;->asIOException()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 602
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 604
    :try_start_0
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 606
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->releaseResources()V

    .line 611
    :goto_0
    return-void

    .line 606
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->releaseResources()V

    throw v0

    .line 609
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/os/ParcelFileDescriptor;->closeWithStatus(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public closeWithError(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 621
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 623
    :try_start_0
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0, p1}, Landroid/os/ParcelFileDescriptor;->closeWithError(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 625
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->releaseResources()V

    .line 633
    :goto_0
    return-void

    .line 625
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->releaseResources()V

    throw v0

    .line 628
    :cond_0
    if-nez p1, :cond_1

    .line 629
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Message must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 631
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/os/ParcelFileDescriptor;->closeWithStatus(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 861
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->describeContents()I

    move-result v0

    .line 864
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public detachFd()I
    .locals 3

    .prologue
    .line 580
    iget-object v1, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    .line 581
    iget-object v1, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v0

    .line 589
    :goto_0
    return v0

    .line 583
    :cond_0
    iget-boolean v1, p0, Landroid/os/ParcelFileDescriptor;->mClosed:Z

    if-eqz v1, :cond_1

    .line 584
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 586
    :cond_1
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v0

    .line 587
    .local v0, "fd":I
    iget-object v1, p0, Landroid/os/ParcelFileDescriptor;->mFd:Ljava/io/FileDescriptor;

    invoke-static {v1}, Landroid/os/Parcel;->clearFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 588
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/os/ParcelFileDescriptor;->writeCommStatusAndClose(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public dup()Landroid/os/ParcelFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 280
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 844
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 845
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->releaseResources()V

    .line 847
    :cond_0
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_1

    .line 848
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 851
    :cond_1
    :try_start_0
    iget-boolean v0, p0, Landroid/os/ParcelFileDescriptor;->mClosed:Z

    if-nez v0, :cond_2

    .line 852
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/os/ParcelFileDescriptor;->closeWithStatus(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 855
    :cond_2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 857
    return-void

    .line 855
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getFd()I
    .locals 2

    .prologue
    .line 558
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v0

    .line 564
    :goto_0
    return v0

    .line 561
    :cond_0
    iget-boolean v0, p0, Landroid/os/ParcelFileDescriptor;->mClosed:Z

    if-eqz v0, :cond_1

    .line 562
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 564
    :cond_1
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mFd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    goto :goto_0
.end method

.method public getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 509
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mFd:Ljava/io/FileDescriptor;

    goto :goto_0
.end method

.method public getStatSize()J
    .locals 7

    .prologue
    const-wide/16 v2, -0x1

    .line 518
    iget-object v4, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    if-eqz v4, :cond_1

    .line 519
    iget-object v2, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v2

    .line 530
    :cond_0
    :goto_0
    return-wide v2

    .line 522
    :cond_1
    :try_start_0
    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v5, p0, Landroid/os/ParcelFileDescriptor;->mFd:Ljava/io/FileDescriptor;

    invoke-interface {v4, v5}, Llibcore/io/Os;->fstat(Ljava/io/FileDescriptor;)Llibcore/io/StructStat;

    move-result-object v1

    .line 523
    .local v1, "st":Llibcore/io/StructStat;
    iget v4, v1, Llibcore/io/StructStat;->st_mode:I

    invoke-static {v4}, Llibcore/io/OsConstants;->S_ISREG(I)Z

    move-result v4

    if-nez v4, :cond_2

    iget v4, v1, Llibcore/io/StructStat;->st_mode:I

    invoke-static {v4}, Llibcore/io/OsConstants;->S_ISLNK(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 524
    :cond_2
    iget-wide v2, v1, Llibcore/io/StructStat;->st_size:J
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 528
    .end local v1    # "st":Llibcore/io/StructStat;
    :catch_0
    move-exception v0

    .line 529
    .local v0, "e":Llibcore/io/ErrnoException;
    const-string v4, "ParcelFileDescriptor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fstat() failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public releaseResources()V
    .locals 0

    .prologue
    .line 651
    return-void
.end method

.method public seekTo(J)J
    .locals 4
    .param p1, "pos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 541
    iget-object v1, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    .line 542
    iget-object v1, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1, p1, p2}, Landroid/os/ParcelFileDescriptor;->seekTo(J)J

    move-result-wide v1

    .line 545
    :goto_0
    return-wide v1

    :cond_0
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Landroid/os/ParcelFileDescriptor;->mFd:Ljava/io/FileDescriptor;

    sget v3, Llibcore/io/OsConstants;->SEEK_SET:I

    invoke-interface {v1, v2, p1, p2, v3}, Llibcore/io/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    goto :goto_0

    .line 546
    :catch_0
    move-exception v0

    .line 547
    .local v0, "e":Llibcore/io/ErrnoException;
    invoke-virtual {v0}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 835
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->toString()Ljava/lang/String;

    move-result-object v0

    .line 838
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ParcelFileDescriptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/ParcelFileDescriptor;->mFd:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 875
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1

    .line 877
    :try_start_0
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0, p1, p2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 879
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->releaseResources()V

    .line 894
    :cond_0
    :goto_0
    return-void

    .line 879
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->releaseResources()V

    throw v0

    .line 882
    :cond_1
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mFd:Ljava/io/FileDescriptor;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 883
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_2

    .line 884
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 885
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 889
    :goto_1
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/os/ParcelFileDescriptor;->mClosed:Z

    if-nez v0, :cond_0

    .line 891
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/os/ParcelFileDescriptor;->closeWithStatus(ILjava/lang/String;)V

    goto :goto_0

    .line 887
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method
