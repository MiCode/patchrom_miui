.class public Landroid/hardware/usb/UsbDeviceConnection;
.super Ljava/lang/Object;
.source "UsbDeviceConnection.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbDeviceConnection"


# instance fields
.field private final mDevice:Landroid/hardware/usb/UsbDevice;

.field private mNativeContext:I


# direct methods
.method public constructor <init>(Landroid/hardware/usb/UsbDevice;)V
    .locals 0
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Landroid/hardware/usb/UsbDeviceConnection;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 43
    return-void
.end method

.method private static checkBounds([BII)V
    .locals 3
    .param p0, "buffer"    # [B
    .param p1, "start"    # I
    .param p2, "length"    # I

    .prologue
    .line 227
    if-eqz p0, :cond_1

    array-length v0, p0

    .line 228
    .local v0, "bufferLength":I
    :goto_0
    if-ltz p1, :cond_0

    add-int v1, p1, p2

    if-le v1, v0, :cond_2

    .line 229
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Buffer start or length out of bounds."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 227
    .end local v0    # "bufferLength":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 231
    .restart local v0    # "bufferLength":I
    :cond_2
    return-void
.end method

.method private native native_bulk_request(I[BIII)I
.end method

.method private native native_claim_interface(IZ)Z
.end method

.method private native native_close()V
.end method

.method private native native_control_request(IIII[BIII)I
.end method

.method private native native_get_desc()[B
.end method

.method private native native_get_fd()I
.end method

.method private native native_get_serial()Ljava/lang/String;
.end method

.method private native native_open(Ljava/lang/String;Ljava/io/FileDescriptor;)Z
.end method

.method private native native_release_interface(I)Z
.end method

.method private native native_request_wait()Landroid/hardware/usb/UsbRequest;
.end method


# virtual methods
.method public bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I
    .locals 6
    .param p1, "endpoint"    # Landroid/hardware/usb/UsbEndpoint;
    .param p2, "buffer"    # [B
    .param p3, "length"    # I
    .param p4, "timeout"    # I

    .prologue
    .line 177
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BIII)I

    move-result v0

    return v0
.end method

.method public bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BIII)I
    .locals 6
    .param p1, "endpoint"    # Landroid/hardware/usb/UsbEndpoint;
    .param p2, "buffer"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .param p5, "timeout"    # I

    .prologue
    .line 194
    invoke-static {p2, p3, p4}, Landroid/hardware/usb/UsbDeviceConnection;->checkBounds([BII)V

    .line 195
    invoke-virtual {p1}, Landroid/hardware/usb/UsbEndpoint;->getAddress()I

    move-result v1

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/hardware/usb/UsbDeviceConnection;->native_bulk_request(I[BIII)I

    move-result v0

    return v0
.end method

.method public claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z
    .locals 1
    .param p1, "intf"    # Landroid/hardware/usb/UsbInterface;
    .param p2, "force"    # Z

    .prologue
    .line 91
    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v0

    invoke-direct {p0, v0, p2}, Landroid/hardware/usb/UsbDeviceConnection;->native_claim_interface(IZ)Z

    move-result v0

    return v0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/hardware/usb/UsbDeviceConnection;->native_close()V

    .line 57
    return-void
.end method

.method public controlTransfer(IIII[BII)I
    .locals 9
    .param p1, "requestType"    # I
    .param p2, "request"    # I
    .param p3, "value"    # I
    .param p4, "index"    # I
    .param p5, "buffer"    # [B
    .param p6, "length"    # I
    .param p7, "timeout"    # I

    .prologue
    .line 129
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BIII)I

    move-result v0

    return v0
.end method

.method public controlTransfer(IIII[BIII)I
    .locals 1
    .param p1, "requestType"    # I
    .param p2, "request"    # I
    .param p3, "value"    # I
    .param p4, "index"    # I
    .param p5, "buffer"    # [B
    .param p6, "offset"    # I
    .param p7, "length"    # I
    .param p8, "timeout"    # I

    .prologue
    .line 154
    invoke-static {p5, p6, p7}, Landroid/hardware/usb/UsbDeviceConnection;->checkBounds([BII)V

    .line 155
    invoke-direct/range {p0 .. p8}, Landroid/hardware/usb/UsbDeviceConnection;->native_control_request(IIII[BIII)I

    move-result v0

    return v0
.end method

.method public getFileDescriptor()I
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/hardware/usb/UsbDeviceConnection;->native_get_fd()I

    move-result v0

    return v0
.end method

.method public getRawDescriptors()[B
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/hardware/usb/UsbDeviceConnection;->native_get_desc()[B

    move-result-object v0

    return-object v0
.end method

.method public getSerial()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    invoke-direct {p0}, Landroid/hardware/usb/UsbDeviceConnection;->native_get_serial()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method open(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "pfd"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 46
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/hardware/usb/UsbDeviceConnection;->native_open(Ljava/lang/String;Ljava/io/FileDescriptor;)Z

    move-result v0

    return v0
.end method

.method public releaseInterface(Landroid/hardware/usb/UsbInterface;)Z
    .locals 1
    .param p1, "intf"    # Landroid/hardware/usb/UsbInterface;

    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/hardware/usb/UsbDeviceConnection;->native_release_interface(I)Z

    move-result v0

    return v0
.end method

.method public requestWait()Landroid/hardware/usb/UsbRequest;
    .locals 1

    .prologue
    .line 209
    invoke-direct {p0}, Landroid/hardware/usb/UsbDeviceConnection;->native_request_wait()Landroid/hardware/usb/UsbRequest;

    move-result-object v0

    .line 210
    .local v0, "request":Landroid/hardware/usb/UsbRequest;
    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {v0}, Landroid/hardware/usb/UsbRequest;->dequeue()V

    .line 213
    :cond_0
    return-object v0
.end method
