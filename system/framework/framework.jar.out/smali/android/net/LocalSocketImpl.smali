.class Landroid/net/LocalSocketImpl;
.super Ljava/lang/Object;
.source "LocalSocketImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/LocalSocketImpl$SocketOutputStream;,
        Landroid/net/LocalSocketImpl$SocketInputStream;
    }
.end annotation


# instance fields
.field private fd:Ljava/io/FileDescriptor;

.field private fis:Landroid/net/LocalSocketImpl$SocketInputStream;

.field private fos:Landroid/net/LocalSocketImpl$SocketOutputStream;

.field inboundFileDescriptors:[Ljava/io/FileDescriptor;

.field private mFdCreatedInternally:Z

.field outboundFileDescriptors:[Ljava/io/FileDescriptor;

.field private readMonitor:Ljava/lang/Object;

.field private writeMonitor:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/LocalSocketImpl;->readMonitor:Ljava/lang/Object;

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/LocalSocketImpl;->writeMonitor:Ljava/lang/Object;

    .line 207
    return-void
.end method

.method constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/LocalSocketImpl;->readMonitor:Ljava/lang/Object;

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/LocalSocketImpl;->writeMonitor:Ljava/lang/Object;

    .line 218
    iput-object p1, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 219
    return-void
.end method

.method private native accept(Ljava/io/FileDescriptor;Landroid/net/LocalSocketImpl;)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static synthetic access$000(Landroid/net/LocalSocketImpl;)Ljava/io/FileDescriptor;
    .locals 1
    .param p0, "x0"    # Landroid/net/LocalSocketImpl;

    .prologue
    .line 33
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method static synthetic access$100(Landroid/net/LocalSocketImpl;Ljava/io/FileDescriptor;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/LocalSocketImpl;
    .param p1, "x1"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/net/LocalSocketImpl;->available_native(Ljava/io/FileDescriptor;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/net/LocalSocketImpl;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/net/LocalSocketImpl;

    .prologue
    .line 33
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->readMonitor:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Landroid/net/LocalSocketImpl;Ljava/io/FileDescriptor;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/LocalSocketImpl;
    .param p1, "x1"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/net/LocalSocketImpl;->read_native(Ljava/io/FileDescriptor;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/net/LocalSocketImpl;[BIILjava/io/FileDescriptor;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/LocalSocketImpl;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/LocalSocketImpl;->readba_native([BIILjava/io/FileDescriptor;)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/net/LocalSocketImpl;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/net/LocalSocketImpl;

    .prologue
    .line 33
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->writeMonitor:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Landroid/net/LocalSocketImpl;[BIILjava/io/FileDescriptor;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/LocalSocketImpl;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/LocalSocketImpl;->writeba_native([BIILjava/io/FileDescriptor;)V

    return-void
.end method

.method static synthetic access$700(Landroid/net/LocalSocketImpl;ILjava/io/FileDescriptor;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/LocalSocketImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/net/LocalSocketImpl;->write_native(ILjava/io/FileDescriptor;)V

    return-void
.end method

.method static synthetic access$800(Landroid/net/LocalSocketImpl;Ljava/io/FileDescriptor;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/LocalSocketImpl;
    .param p1, "x1"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/net/LocalSocketImpl;->pending_native(Ljava/io/FileDescriptor;)I

    move-result v0

    return v0
.end method

.method private native available_native(Ljava/io/FileDescriptor;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native bindLocal(Ljava/io/FileDescriptor;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native connectLocal(Ljava/io/FileDescriptor;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native getOption_native(Ljava/io/FileDescriptor;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native getPeerCredentials_native(Ljava/io/FileDescriptor;)Landroid/net/Credentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native listen_native(Ljava/io/FileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native pending_native(Ljava/io/FileDescriptor;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native read_native(Ljava/io/FileDescriptor;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native readba_native([BIILjava/io/FileDescriptor;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native setOption_native(Ljava/io/FileDescriptor;III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native shutdown(Ljava/io/FileDescriptor;Z)V
.end method

.method private native write_native(ILjava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native writeba_native([BIILjava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method protected accept(Landroid/net/LocalSocketImpl;)V
    .locals 2
    .param p1, "s"    # Landroid/net/LocalSocketImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 324
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-nez v0, :cond_0

    .line 325
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "socket not created"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_0
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-direct {p0, v0, p1}, Landroid/net/LocalSocketImpl;->accept(Ljava/io/FileDescriptor;Landroid/net/LocalSocketImpl;)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p1, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 329
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/net/LocalSocketImpl;->mFdCreatedInternally:Z

    .line 330
    return-void
.end method

.method protected available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 382
    invoke-virtual {p0}, Landroid/net/LocalSocketImpl;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public bind(Landroid/net/LocalSocketAddress;)V
    .locals 3
    .param p1, "endpoint"    # Landroid/net/LocalSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-nez v0, :cond_0

    .line 300
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "socket not created"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_0
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Landroid/net/LocalSocketAddress;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/LocalSocketAddress;->getNamespace()Landroid/net/LocalSocketAddress$Namespace;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/LocalSocketAddress$Namespace;->getId()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/net/LocalSocketImpl;->bindLocal(Ljava/io/FileDescriptor;Ljava/lang/String;I)V

    .line 304
    return-void
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    monitor-enter p0

    .line 266
    :try_start_0
    iget-object v1, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/net/LocalSocketImpl;->mFdCreatedInternally:Z

    if-nez v1, :cond_1

    .line 267
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 268
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    :goto_0
    return-void

    .line 271
    :cond_1
    :try_start_1
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v1, v2}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Llibcore/io/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 275
    :goto_1
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 276
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Llibcore/io/ErrnoException;
    :try_start_3
    invoke-virtual {v0}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method protected connect(Landroid/net/LocalSocketAddress;I)V
    .locals 3
    .param p1, "address"    # Landroid/net/LocalSocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 283
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-nez v0, :cond_0

    .line 284
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "socket not created"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_0
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Landroid/net/LocalSocketAddress;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/LocalSocketAddress;->getNamespace()Landroid/net/LocalSocketAddress$Namespace;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/LocalSocketAddress$Namespace;->getId()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/net/LocalSocketImpl;->connectLocal(Ljava/io/FileDescriptor;Ljava/lang/String;I)V

    .line 288
    return-void
.end method

.method public create(I)V
    .locals 5
    .param p1, "sockType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    iget-object v2, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-nez v2, :cond_0

    .line 237
    packed-switch p1, :pswitch_data_0

    .line 248
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "unknown sockType"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 239
    :pswitch_0
    sget v1, Llibcore/io/OsConstants;->SOCK_DGRAM:I

    .line 251
    .local v1, "osType":I
    :goto_0
    :try_start_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v3, Llibcore/io/OsConstants;->AF_UNIX:I

    const/4 v4, 0x0

    invoke-interface {v2, v3, v1, v4}, Llibcore/io/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v2

    iput-object v2, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 252
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/net/LocalSocketImpl;->mFdCreatedInternally:Z
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    .end local v1    # "osType":I
    :cond_0
    :goto_1
    return-void

    .line 242
    :pswitch_1
    sget v1, Llibcore/io/OsConstants;->SOCK_STREAM:I

    .line 243
    .restart local v1    # "osType":I
    goto :goto_0

    .line 245
    .end local v1    # "osType":I
    :pswitch_2
    sget v1, Llibcore/io/OsConstants;->SOCK_SEQPACKET:I

    .line 246
    .restart local v1    # "osType":I
    goto :goto_0

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Llibcore/io/ErrnoException;
    invoke-virtual {v0}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    goto :goto_1

    .line 237
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 537
    invoke-virtual {p0}, Landroid/net/LocalSocketImpl;->close()V

    .line 538
    return-void
.end method

.method public getAncillaryFileDescriptors()[Ljava/io/FileDescriptor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 502
    iget-object v2, p0, Landroid/net/LocalSocketImpl;->readMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 503
    :try_start_0
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->inboundFileDescriptors:[Ljava/io/FileDescriptor;

    .line 505
    .local v0, "result":[Ljava/io/FileDescriptor;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/LocalSocketImpl;->inboundFileDescriptors:[Ljava/io/FileDescriptor;

    .line 506
    monitor-exit v2

    return-object v0

    .line 507
    .end local v0    # "result":[Ljava/io/FileDescriptor;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method protected getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 340
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-nez v0, :cond_0

    .line 341
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "socket not created"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    :cond_0
    monitor-enter p0

    .line 345
    :try_start_0
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fis:Landroid/net/LocalSocketImpl$SocketInputStream;

    if-nez v0, :cond_1

    .line 346
    new-instance v0, Landroid/net/LocalSocketImpl$SocketInputStream;

    invoke-direct {v0, p0}, Landroid/net/LocalSocketImpl$SocketInputStream;-><init>(Landroid/net/LocalSocketImpl;)V

    iput-object v0, p0, Landroid/net/LocalSocketImpl;->fis:Landroid/net/LocalSocketImpl$SocketInputStream;

    .line 349
    :cond_1
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fis:Landroid/net/LocalSocketImpl$SocketInputStream;

    monitor-exit p0

    return-object v0

    .line 350
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getOption(I)Ljava/lang/Object;
    .locals 3
    .param p1, "optID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 430
    iget-object v1, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-nez v1, :cond_0

    .line 431
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "socket not created"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 434
    :cond_0
    const/16 v1, 0x1006

    if-ne p1, v1, :cond_1

    .line 435
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 446
    :goto_0
    return-object v1

    .line 438
    :cond_1
    iget-object v1, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-direct {p0, v1, p1}, Landroid/net/LocalSocketImpl;->getOption_native(Ljava/io/FileDescriptor;I)I

    move-result v0

    .line 439
    .local v0, "value":I
    packed-switch p1, :pswitch_data_0

    .line 446
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 443
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 439
    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected getOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 361
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-nez v0, :cond_0

    .line 362
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "socket not created"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :cond_0
    monitor-enter p0

    .line 366
    :try_start_0
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fos:Landroid/net/LocalSocketImpl$SocketOutputStream;

    if-nez v0, :cond_1

    .line 367
    new-instance v0, Landroid/net/LocalSocketImpl$SocketOutputStream;

    invoke-direct {v0, p0}, Landroid/net/LocalSocketImpl$SocketOutputStream;-><init>(Landroid/net/LocalSocketImpl;)V

    iput-object v0, p0, Landroid/net/LocalSocketImpl;->fos:Landroid/net/LocalSocketImpl$SocketOutputStream;

    .line 370
    :cond_1
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fos:Landroid/net/LocalSocketImpl$SocketOutputStream;

    monitor-exit p0

    return-object v0

    .line 371
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPeerCredentials()Landroid/net/Credentials;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 519
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-direct {p0, v0}, Landroid/net/LocalSocketImpl;->getPeerCredentials_native(Ljava/io/FileDescriptor;)Landroid/net/Credentials;

    move-result-object v0

    return-object v0
.end method

.method public getSockAddress()Landroid/net/LocalSocketAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 530
    const/4 v0, 0x0

    return-object v0
.end method

.method protected listen(I)V
    .locals 2
    .param p1, "backlog"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-nez v0, :cond_0

    .line 309
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "socket not created"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_0
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-direct {p0, v0, p1}, Landroid/net/LocalSocketImpl;->listen_native(Ljava/io/FileDescriptor;I)V

    .line 313
    return-void
.end method

.method protected sendUrgentData(I)V
    .locals 2
    .param p1, "data"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 425
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "not impled"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFileDescriptorsForSend([Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "fds"    # [Ljava/io/FileDescriptor;

    .prologue
    .line 486
    iget-object v1, p0, Landroid/net/LocalSocketImpl;->writeMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 487
    :try_start_0
    iput-object p1, p0, Landroid/net/LocalSocketImpl;->outboundFileDescriptors:[Ljava/io/FileDescriptor;

    .line 488
    monitor-exit v1

    .line 489
    return-void

    .line 488
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOption(ILjava/lang/Object;)V
    .locals 5
    .param p1, "optID"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 458
    const/4 v0, -0x1

    .line 459
    .local v0, "boolValue":I
    const/4 v1, 0x0

    .line 461
    .local v1, "intValue":I
    iget-object v2, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-nez v2, :cond_0

    .line 462
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "socket not created"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 465
    :cond_0
    instance-of v2, p2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 466
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 473
    :goto_0
    iget-object v2, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-direct {p0, v2, p1, v0, v1}, Landroid/net/LocalSocketImpl;->setOption_native(Ljava/io/FileDescriptor;III)V

    .line 474
    return-void

    .line 467
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v2, p2, Ljava/lang/Boolean;

    if-eqz v2, :cond_3

    .line 468
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 470
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected shutdownInput()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 392
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-nez v0, :cond_0

    .line 393
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "socket not created"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :cond_0
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/net/LocalSocketImpl;->shutdown(Ljava/io/FileDescriptor;Z)V

    .line 397
    return-void
.end method

.method protected shutdownOutput()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 406
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-nez v0, :cond_0

    .line 407
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "socket not created"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :cond_0
    iget-object v0, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/net/LocalSocketImpl;->shutdown(Ljava/io/FileDescriptor;Z)V

    .line 411
    return-void
.end method

.method protected supportsUrgentData()Z
    .locals 1

    .prologue
    .line 420
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
