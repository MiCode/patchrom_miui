.class public final Landroid/bluetooth/BluetoothServerSocket;
.super Ljava/lang/Object;
.source "BluetoothServerSocket.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final mChannel:I

.field private mHandler:Landroid/os/Handler;

.field private mMessage:I

.field final mSocket:Landroid/bluetooth/BluetoothSocket;


# direct methods
.method constructor <init>(IZZI)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "auth"    # Z
    .param p3, "encrypt"    # Z
    .param p4, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput p4, p0, Landroid/bluetooth/BluetoothServerSocket;->mChannel:I

    .line 87
    new-instance v0, Landroid/bluetooth/BluetoothSocket;

    const/4 v2, -0x1

    move v1, p1

    move v3, p2

    move v4, p3

    move v6, p4

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    .line 88
    return-void
.end method

.method constructor <init>(IZZLandroid/os/ParcelUuid;)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "auth"    # Z
    .param p3, "encrypt"    # Z
    .param p4, "uuid"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Landroid/bluetooth/BluetoothSocket;

    const/4 v5, 0x0

    move v1, p1

    move v3, p2

    move v4, p3

    move v6, v2

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    .line 102
    iget-object v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getPort()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mChannel:I

    .line 103
    return-void
.end method


# virtual methods
.method public accept()Landroid/bluetooth/BluetoothSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothServerSocket;->accept(I)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    return-object v0
.end method

.method public accept(I)Landroid/bluetooth/BluetoothSocket;
    .locals 1
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothSocket;->accept(I)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    monitor-enter p0

    .line 143
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mHandler:Landroid/os/Handler;

    iget v1, p0, Landroid/bluetooth/BluetoothServerSocket;->mMessage:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 146
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    iget-object v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V

    .line 148
    return-void

    .line 146
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getChannel()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mChannel:I

    return v0
.end method

.method declared-synchronized setCloseHandler(Landroid/os/Handler;I)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "message"    # I

    .prologue
    .line 151
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroid/bluetooth/BluetoothServerSocket;->mHandler:Landroid/os/Handler;

    .line 152
    iput p2, p0, Landroid/bluetooth/BluetoothServerSocket;->mMessage:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    monitor-exit p0

    return-void

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setServiceName(Ljava/lang/String;)V
    .locals 1
    .param p1, "ServiceName"    # Ljava/lang/String;

    .prologue
    .line 155
    iget-object v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothSocket;->setServiceName(Ljava/lang/String;)V

    .line 156
    return-void
.end method
