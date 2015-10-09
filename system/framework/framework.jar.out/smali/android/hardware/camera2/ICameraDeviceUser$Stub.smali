.class public abstract Landroid/hardware/camera2/ICameraDeviceUser$Stub;
.super Landroid/os/Binder;
.source "ICameraDeviceUser.java"

# interfaces
.implements Landroid/hardware/camera2/ICameraDeviceUser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/ICameraDeviceUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.camera2.ICameraDeviceUser"

.field static final TRANSACTION_cancelRequest:I = 0x3

.field static final TRANSACTION_createDefaultRequest:I = 0x6

.field static final TRANSACTION_createStream:I = 0x5

.field static final TRANSACTION_deleteStream:I = 0x4

.field static final TRANSACTION_disconnect:I = 0x1

.field static final TRANSACTION_flush:I = 0x9

.field static final TRANSACTION_getCameraInfo:I = 0x7

.field static final TRANSACTION_submitRequest:I = 0x2

.field static final TRANSACTION_waitUntilIdle:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.hardware.camera2.ICameraDeviceUser"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/ICameraDeviceUser;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "android.hardware.camera2.ICameraDeviceUser"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/camera2/ICameraDeviceUser;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/hardware/camera2/ICameraDeviceUser;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 164
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 43
    :sswitch_0
    const-string v6, "android.hardware.camera2.ICameraDeviceUser"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v6, "android.hardware.camera2.ICameraDeviceUser"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->disconnect()V

    .line 50
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 55
    :sswitch_2
    const-string v7, "android.hardware.camera2.ICameraDeviceUser"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_0

    .line 58
    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureRequest;

    .line 64
    .local v0, "_arg0":Landroid/hardware/camera2/CaptureRequest;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1

    move v1, v5

    .line 65
    .local v1, "_arg1":Z
    :goto_2
    invoke-virtual {p0, v0, v1}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->submitRequest(Landroid/hardware/camera2/CaptureRequest;Z)I

    move-result v4

    .line 66
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 61
    .end local v0    # "_arg0":Landroid/hardware/camera2/CaptureRequest;
    .end local v1    # "_arg1":Z
    .end local v4    # "_result":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/hardware/camera2/CaptureRequest;
    goto :goto_1

    :cond_1
    move v1, v6

    .line 64
    goto :goto_2

    .line 72
    .end local v0    # "_arg0":Landroid/hardware/camera2/CaptureRequest;
    :sswitch_3
    const-string v6, "android.hardware.camera2.ICameraDeviceUser"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 75
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->cancelRequest(I)I

    move-result v4

    .line 76
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 82
    .end local v0    # "_arg0":I
    .end local v4    # "_result":I
    :sswitch_4
    const-string v6, "android.hardware.camera2.ICameraDeviceUser"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 85
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->deleteStream(I)I

    move-result v4

    .line 86
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 92
    .end local v0    # "_arg0":I
    .end local v4    # "_result":I
    :sswitch_5
    const-string v6, "android.hardware.camera2.ICameraDeviceUser"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 96
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 98
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 100
    .local v2, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    .line 101
    sget-object v6, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Surface;

    .line 106
    .local v3, "_arg3":Landroid/view/Surface;
    :goto_3
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->createStream(IIILandroid/view/Surface;)I

    move-result v4

    .line 107
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 104
    .end local v3    # "_arg3":Landroid/view/Surface;
    .end local v4    # "_result":I
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "_arg3":Landroid/view/Surface;
    goto :goto_3

    .line 113
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Landroid/view/Surface;
    :sswitch_6
    const-string v7, "android.hardware.camera2.ICameraDeviceUser"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 117
    .restart local v0    # "_arg0":I
    new-instance v1, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    .line 118
    .local v1, "_arg1":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {p0, v0, v1}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->createDefaultRequest(ILandroid/hardware/camera2/impl/CameraMetadataNative;)I

    move-result v4

    .line 119
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    if-eqz v1, :cond_3

    .line 122
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    invoke-virtual {v1, p3, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 126
    :cond_3
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 132
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v4    # "_result":I
    :sswitch_7
    const-string v7, "android.hardware.camera2.ICameraDeviceUser"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    .line 135
    .local v0, "_arg0":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->getCameraInfo(Landroid/hardware/camera2/impl/CameraMetadataNative;)I

    move-result v4

    .line 136
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    if-eqz v0, :cond_4

    .line 139
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    invoke-virtual {v0, p3, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 143
    :cond_4
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 149
    .end local v0    # "_arg0":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v4    # "_result":I
    :sswitch_8
    const-string v6, "android.hardware.camera2.ICameraDeviceUser"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->waitUntilIdle()I

    move-result v4

    .line 151
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 157
    .end local v4    # "_result":I
    :sswitch_9
    const-string v6, "android.hardware.camera2.ICameraDeviceUser"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->flush()I

    move-result v4

    .line 159
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 39
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
