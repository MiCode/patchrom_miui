.class public Landroid/hardware/usb/UsbRequest;
.super Ljava/lang/Object;
.source "UsbRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbRequest"


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mClientData:Ljava/lang/Object;

.field private mEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field private mLength:I

.field private mNativeContext:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method private native native_cancel()Z
.end method

.method private native native_close()V
.end method

.method private native native_dequeue_array([BIZ)I
.end method

.method private native native_dequeue_direct()I
.end method

.method private native native_init(Landroid/hardware/usb/UsbDeviceConnection;IIII)Z
.end method

.method private native native_queue_array([BIZ)Z
.end method

.method private native native_queue_direct(Ljava/nio/ByteBuffer;IZ)Z
.end method


# virtual methods
.method public cancel()Z
    .locals 1

    .prologue
    .line 174
    invoke-direct {p0}, Landroid/hardware/usb/UsbRequest;->native_cancel()Z

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/usb/UsbRequest;->mEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 72
    invoke-direct {p0}, Landroid/hardware/usb/UsbRequest;->native_close()V

    .line 73
    return-void
.end method

.method dequeue()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 154
    iget-object v3, p0, Landroid/hardware/usb/UsbRequest;->mEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x1

    .line 156
    .local v1, "out":Z
    :goto_0
    iget-object v3, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 157
    invoke-direct {p0}, Landroid/hardware/usb/UsbRequest;->native_dequeue_direct()I

    move-result v0

    .line 161
    .local v0, "bytesRead":I
    :goto_1
    if-ltz v0, :cond_0

    .line 162
    iget-object v3, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    iget v4, p0, Landroid/hardware/usb/UsbRequest;->mLength:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 164
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    .line 165
    iput v2, p0, Landroid/hardware/usb/UsbRequest;->mLength:I

    .line 166
    return-void

    .end local v0    # "bytesRead":I
    .end local v1    # "out":Z
    :cond_1
    move v1, v2

    .line 154
    goto :goto_0

    .line 159
    .restart local v1    # "out":Z
    :cond_2
    iget-object v3, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    iget v4, p0, Landroid/hardware/usb/UsbRequest;->mLength:I

    invoke-direct {p0, v3, v4, v1}, Landroid/hardware/usb/UsbRequest;->native_dequeue_array([BIZ)I

    move-result v0

    .restart local v0    # "bytesRead":I
    goto :goto_1
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 78
    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbRequest;->mEndpoint:Landroid/hardware/usb/UsbEndpoint;

    if-eqz v0, :cond_0

    .line 79
    const-string v0, "UsbRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endpoint still open in finalize(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {p0}, Landroid/hardware/usb/UsbRequest;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 85
    return-void

    .line 83
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getClientData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Landroid/hardware/usb/UsbRequest;->mClientData:Ljava/lang/Object;

    return-object v0
.end method

.method public getEndpoint()Landroid/hardware/usb/UsbEndpoint;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Landroid/hardware/usb/UsbRequest;->mEndpoint:Landroid/hardware/usb/UsbEndpoint;

    return-object v0
.end method

.method public initialize(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;)Z
    .locals 6
    .param p1, "connection"    # Landroid/hardware/usb/UsbDeviceConnection;
    .param p2, "endpoint"    # Landroid/hardware/usb/UsbEndpoint;

    .prologue
    .line 62
    iput-object p2, p0, Landroid/hardware/usb/UsbRequest;->mEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 63
    invoke-virtual {p2}, Landroid/hardware/usb/UsbEndpoint;->getAddress()I

    move-result v2

    invoke-virtual {p2}, Landroid/hardware/usb/UsbEndpoint;->getAttributes()I

    move-result v3

    invoke-virtual {p2}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result v4

    invoke-virtual {p2}, Landroid/hardware/usb/UsbEndpoint;->getInterval()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/hardware/usb/UsbRequest;->native_init(Landroid/hardware/usb/UsbDeviceConnection;IIII)Z

    move-result v0

    return v0
.end method

.method public queue(Ljava/nio/ByteBuffer;I)Z
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "length"    # I

    .prologue
    .line 136
    iget-object v2, p0, Landroid/hardware/usb/UsbRequest;->mEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 138
    .local v0, "out":Z
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 139
    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/usb/UsbRequest;->native_queue_direct(Ljava/nio/ByteBuffer;IZ)Z

    move-result v1

    .line 145
    .local v1, "result":Z
    :goto_1
    if-eqz v1, :cond_0

    .line 147
    iput-object p1, p0, Landroid/hardware/usb/UsbRequest;->mBuffer:Ljava/nio/ByteBuffer;

    .line 148
    iput p2, p0, Landroid/hardware/usb/UsbRequest;->mLength:I

    .line 150
    :cond_0
    return v1

    .line 136
    .end local v0    # "out":Z
    .end local v1    # "result":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 140
    .restart local v0    # "out":Z
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 141
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {p0, v2, p2, v0}, Landroid/hardware/usb/UsbRequest;->native_queue_array([BIZ)Z

    move-result v1

    .restart local v1    # "result":Z
    goto :goto_1

    .line 143
    .end local v1    # "result":Z
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "buffer is not direct and has no array"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setClientData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 119
    iput-object p1, p0, Landroid/hardware/usb/UsbRequest;->mClientData:Ljava/lang/Object;

    .line 120
    return-void
.end method
