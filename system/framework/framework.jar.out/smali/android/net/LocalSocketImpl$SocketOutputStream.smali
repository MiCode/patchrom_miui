.class Landroid/net/LocalSocketImpl$SocketOutputStream;
.super Ljava/io/OutputStream;
.source "LocalSocketImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/LocalSocketImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SocketOutputStream"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/LocalSocketImpl;


# direct methods
.method constructor <init>(Landroid/net/LocalSocketImpl;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    invoke-virtual {v0}, Landroid/net/LocalSocketImpl;->close()V

    .line 114
    return-void
.end method

.method public flush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    iget-object v2, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    # getter for: Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;
    invoke-static {v2}, Landroid/net/LocalSocketImpl;->access$000(Landroid/net/LocalSocketImpl;)Ljava/io/FileDescriptor;

    move-result-object v1

    .line 155
    .local v1, "myFd":Ljava/io/FileDescriptor;
    if-nez v1, :cond_0

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "socket closed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 156
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    # invokes: Landroid/net/LocalSocketImpl;->pending_native(Ljava/io/FileDescriptor;)I
    invoke-static {v2, v1}, Landroid/net/LocalSocketImpl;->access$800(Landroid/net/LocalSocketImpl;Ljava/io/FileDescriptor;)I

    move-result v2

    if-lez v2, :cond_1

    .line 158
    const-wide/16 v2, 0xa

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 163
    :cond_1
    return-void
.end method

.method public write(I)V
    .locals 4
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    iget-object v1, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    # getter for: Landroid/net/LocalSocketImpl;->writeMonitor:Ljava/lang/Object;
    invoke-static {v1}, Landroid/net/LocalSocketImpl;->access$500(Landroid/net/LocalSocketImpl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 140
    :try_start_0
    iget-object v1, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    # getter for: Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;
    invoke-static {v1}, Landroid/net/LocalSocketImpl;->access$000(Landroid/net/LocalSocketImpl;)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 141
    .local v0, "myFd":Ljava/io/FileDescriptor;
    if-nez v0, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v3, "socket closed"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    .end local v0    # "myFd":Ljava/io/FileDescriptor;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 142
    .restart local v0    # "myFd":Ljava/io/FileDescriptor;
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    # invokes: Landroid/net/LocalSocketImpl;->write_native(ILjava/io/FileDescriptor;)V
    invoke-static {v1, p1, v0}, Landroid/net/LocalSocketImpl;->access$700(Landroid/net/LocalSocketImpl;ILjava/io/FileDescriptor;)V

    .line 143
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/net/LocalSocketImpl$SocketOutputStream;->write([BII)V

    .line 120
    return-void
.end method

.method public write([BII)V
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    iget-object v1, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    # getter for: Landroid/net/LocalSocketImpl;->writeMonitor:Ljava/lang/Object;
    invoke-static {v1}, Landroid/net/LocalSocketImpl;->access$500(Landroid/net/LocalSocketImpl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 126
    :try_start_0
    iget-object v1, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    # getter for: Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;
    invoke-static {v1}, Landroid/net/LocalSocketImpl;->access$000(Landroid/net/LocalSocketImpl;)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 127
    .local v0, "myFd":Ljava/io/FileDescriptor;
    if-nez v0, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v3, "socket closed"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 133
    .end local v0    # "myFd":Ljava/io/FileDescriptor;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 129
    .restart local v0    # "myFd":Ljava/io/FileDescriptor;
    :cond_0
    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v1, p2, p3

    :try_start_1
    array-length v3, p1

    if-le v1, v3, :cond_2

    .line 130
    :cond_1
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 132
    :cond_2
    iget-object v1, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    # invokes: Landroid/net/LocalSocketImpl;->writeba_native([BIILjava/io/FileDescriptor;)V
    invoke-static {v1, p1, p2, p3, v0}, Landroid/net/LocalSocketImpl;->access$600(Landroid/net/LocalSocketImpl;[BIILjava/io/FileDescriptor;)V

    .line 133
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    return-void
.end method
