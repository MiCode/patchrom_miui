.class public final Landroid/mtp/MtpDevice;
.super Ljava/lang/Object;
.source "MtpDevice.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MtpDevice"


# instance fields
.field private final mDevice:Landroid/hardware/usb/UsbDevice;

.field private mNativeContext:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/hardware/usb/UsbDevice;)V
    .locals 0
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroid/mtp/MtpDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 47
    return-void
.end method

.method private native native_close()V
.end method

.method private native native_delete_object(I)Z
.end method

.method private native native_get_device_info()Landroid/mtp/MtpDeviceInfo;
.end method

.method private native native_get_object(II)[B
.end method

.method private native native_get_object_handles(III)[I
.end method

.method private native native_get_object_info(I)Landroid/mtp/MtpObjectInfo;
.end method

.method private native native_get_parent(I)J
.end method

.method private native native_get_storage_id(I)J
.end method

.method private native native_get_storage_ids()[I
.end method

.method private native native_get_storage_info(I)Landroid/mtp/MtpStorageInfo;
.end method

.method private native native_get_thumbnail(I)[B
.end method

.method private native native_import_file(ILjava/lang/String;)Z
.end method

.method private native native_open(Ljava/lang/String;I)Z
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/mtp/MtpDevice;->native_close()V

    .line 73
    return-void
.end method

.method public deleteObject(I)Z
    .locals 1
    .param p1, "objectHandle"    # I

    .prologue
    .line 201
    invoke-direct {p0, p1}, Landroid/mtp/MtpDevice;->native_delete_object(I)Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 78
    :try_start_0
    invoke-direct {p0}, Landroid/mtp/MtpDevice;->native_close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 82
    return-void

    .line 80
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getDeviceId()I
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Landroid/mtp/MtpDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v0

    return v0
.end method

.method public getDeviceInfo()Landroid/mtp/MtpDeviceInfo;
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Landroid/mtp/MtpDevice;->native_get_device_info()Landroid/mtp/MtpDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Landroid/mtp/MtpDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObject(II)[B
    .locals 1
    .param p1, "objectHandle"    # I
    .param p2, "objectSize"    # I

    .prologue
    .line 155
    invoke-direct {p0, p1, p2}, Landroid/mtp/MtpDevice;->native_get_object(II)[B

    move-result-object v0

    return-object v0
.end method

.method public getObjectHandles(III)[I
    .locals 1
    .param p1, "storageId"    # I
    .param p2, "format"    # I
    .param p3, "objectHandle"    # I

    .prologue
    .line 141
    invoke-direct {p0, p1, p2, p3}, Landroid/mtp/MtpDevice;->native_get_object_handles(III)[I

    move-result-object v0

    return-object v0
.end method

.method public getObjectInfo(I)Landroid/mtp/MtpObjectInfo;
    .locals 1
    .param p1, "objectHandle"    # I

    .prologue
    .line 189
    invoke-direct {p0, p1}, Landroid/mtp/MtpDevice;->native_get_object_info(I)Landroid/mtp/MtpObjectInfo;

    move-result-object v0

    return-object v0
.end method

.method public getParent(I)J
    .locals 2
    .param p1, "objectHandle"    # I

    .prologue
    .line 211
    invoke-direct {p0, p1}, Landroid/mtp/MtpDevice;->native_get_parent(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getStorageId(I)J
    .locals 2
    .param p1, "objectHandle"    # I

    .prologue
    .line 221
    invoke-direct {p0, p1}, Landroid/mtp/MtpDevice;->native_get_storage_id(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getStorageIds()[I
    .locals 1

    .prologue
    .line 127
    invoke-direct {p0}, Landroid/mtp/MtpDevice;->native_get_storage_ids()[I

    move-result-object v0

    return-object v0
.end method

.method public getStorageInfo(I)Landroid/mtp/MtpStorageInfo;
    .locals 1
    .param p1, "storageId"    # I

    .prologue
    .line 179
    invoke-direct {p0, p1}, Landroid/mtp/MtpDevice;->native_get_storage_info(I)Landroid/mtp/MtpStorageInfo;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnail(I)[B
    .locals 1
    .param p1, "objectHandle"    # I

    .prologue
    .line 169
    invoke-direct {p0, p1}, Landroid/mtp/MtpDevice;->native_get_thumbnail(I)[B

    move-result-object v0

    return-object v0
.end method

.method public importFile(ILjava/lang/String;)Z
    .locals 1
    .param p1, "objectHandle"    # I
    .param p2, "destPath"    # Ljava/lang/String;

    .prologue
    .line 236
    invoke-direct {p0, p1, p2}, Landroid/mtp/MtpDevice;->native_import_file(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public open(Landroid/hardware/usb/UsbDeviceConnection;)Z
    .locals 3
    .param p1, "connection"    # Landroid/hardware/usb/UsbDeviceConnection;

    .prologue
    .line 59
    iget-object v1, p0, Landroid/mtp/MtpDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDeviceConnection;->getFileDescriptor()I

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/mtp/MtpDevice;->native_open(Ljava/lang/String;I)Z

    move-result v0

    .line 60
    .local v0, "result":Z
    if-nez v0, :cond_0

    .line 61
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    .line 63
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Landroid/mtp/MtpDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
