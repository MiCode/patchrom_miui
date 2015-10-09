.class public abstract Landroid/hardware/ICameraService$Stub;
.super Landroid/os/Binder;
.source "ICameraService.java"

# interfaces
.implements Landroid/hardware/ICameraService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ICameraService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/ICameraService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.ICameraService"

.field static final TRANSACTION_addListener:I = 0x6

.field static final TRANSACTION_connect:I = 0x3

.field static final TRANSACTION_connectDevice:I = 0x5

.field static final TRANSACTION_connectPro:I = 0x4

.field static final TRANSACTION_getCameraCharacteristics:I = 0x8

.field static final TRANSACTION_getCameraInfo:I = 0x2

.field static final TRANSACTION_getNumberOfCameras:I = 0x1

.field static final TRANSACTION_removeListener:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.hardware.ICameraService"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/ICameraService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraService;
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
    const-string v1, "android.hardware.ICameraService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/ICameraService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/hardware/ICameraService;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Landroid/hardware/ICameraService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/hardware/ICameraService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 9
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
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 188
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 43
    :sswitch_0
    const-string v0, "android.hardware.ICameraService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v7

    .line 44
    goto :goto_0

    .line 48
    :sswitch_1
    const-string v0, "android.hardware.ICameraService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Landroid/hardware/ICameraService$Stub;->getNumberOfCameras()I

    move-result v6

    .line 50
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 52
    goto :goto_0

    .line 56
    .end local v6    # "_result":I
    :sswitch_2
    const-string v0, "android.hardware.ICameraService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 60
    .local v1, "_arg0":I
    new-instance v2, Landroid/hardware/CameraInfo;

    invoke-direct {v2}, Landroid/hardware/CameraInfo;-><init>()V

    .line 61
    .local v2, "_arg1":Landroid/hardware/CameraInfo;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/ICameraService$Stub;->getCameraInfo(ILandroid/hardware/CameraInfo;)I

    move-result v6

    .line 62
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    if-eqz v2, :cond_0

    .line 65
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    invoke-virtual {v2, p3, v7}, Landroid/hardware/CameraInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    move v0, v7

    .line 71
    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 75
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/hardware/CameraInfo;
    .end local v6    # "_result":I
    :sswitch_3
    const-string v0, "android.hardware.ICameraService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/ICameraClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraClient;

    move-result-object v1

    .line 79
    .local v1, "_arg0":Landroid/hardware/ICameraClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 81
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 85
    .local v4, "_arg3":I
    new-instance v5, Landroid/hardware/camera2/utils/BinderHolder;

    invoke-direct {v5}, Landroid/hardware/camera2/utils/BinderHolder;-><init>()V

    .local v5, "_arg4":Landroid/hardware/camera2/utils/BinderHolder;
    move-object v0, p0

    .line 86
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/ICameraService$Stub;->connect(Landroid/hardware/ICameraClient;ILjava/lang/String;ILandroid/hardware/camera2/utils/BinderHolder;)I

    move-result v6

    .line 87
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    if-eqz v5, :cond_1

    .line 90
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    invoke-virtual {v5, p3, v7}, Landroid/hardware/camera2/utils/BinderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    move v0, v7

    .line 96
    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 100
    .end local v1    # "_arg0":Landroid/hardware/ICameraClient;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Landroid/hardware/camera2/utils/BinderHolder;
    .end local v6    # "_result":I
    :sswitch_4
    const-string v0, "android.hardware.ICameraService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/IProCameraCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/IProCameraCallbacks;

    move-result-object v1

    .line 104
    .local v1, "_arg0":Landroid/hardware/IProCameraCallbacks;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 106
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 108
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 110
    .restart local v4    # "_arg3":I
    new-instance v5, Landroid/hardware/camera2/utils/BinderHolder;

    invoke-direct {v5}, Landroid/hardware/camera2/utils/BinderHolder;-><init>()V

    .restart local v5    # "_arg4":Landroid/hardware/camera2/utils/BinderHolder;
    move-object v0, p0

    .line 111
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/ICameraService$Stub;->connectPro(Landroid/hardware/IProCameraCallbacks;ILjava/lang/String;ILandroid/hardware/camera2/utils/BinderHolder;)I

    move-result v6

    .line 112
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    if-eqz v5, :cond_2

    .line 115
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    invoke-virtual {v5, p3, v7}, Landroid/hardware/camera2/utils/BinderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_3
    move v0, v7

    .line 121
    goto/16 :goto_0

    .line 119
    :cond_2
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 125
    .end local v1    # "_arg0":Landroid/hardware/IProCameraCallbacks;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Landroid/hardware/camera2/utils/BinderHolder;
    .end local v6    # "_result":I
    :sswitch_5
    const-string v0, "android.hardware.ICameraService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/ICameraDeviceCallbacks;

    move-result-object v1

    .line 129
    .local v1, "_arg0":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 131
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 133
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 135
    .restart local v4    # "_arg3":I
    new-instance v5, Landroid/hardware/camera2/utils/BinderHolder;

    invoke-direct {v5}, Landroid/hardware/camera2/utils/BinderHolder;-><init>()V

    .restart local v5    # "_arg4":Landroid/hardware/camera2/utils/BinderHolder;
    move-object v0, p0

    .line 136
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/ICameraService$Stub;->connectDevice(Landroid/hardware/camera2/ICameraDeviceCallbacks;ILjava/lang/String;ILandroid/hardware/camera2/utils/BinderHolder;)I

    move-result v6

    .line 137
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    if-eqz v5, :cond_3

    .line 140
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    invoke-virtual {v5, p3, v7}, Landroid/hardware/camera2/utils/BinderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_4
    move v0, v7

    .line 146
    goto/16 :goto_0

    .line 144
    :cond_3
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 150
    .end local v1    # "_arg0":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Landroid/hardware/camera2/utils/BinderHolder;
    .end local v6    # "_result":I
    :sswitch_6
    const-string v0, "android.hardware.ICameraService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/ICameraServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraServiceListener;

    move-result-object v1

    .line 153
    .local v1, "_arg0":Landroid/hardware/ICameraServiceListener;
    invoke-virtual {p0, v1}, Landroid/hardware/ICameraService$Stub;->addListener(Landroid/hardware/ICameraServiceListener;)I

    move-result v6

    .line 154
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 156
    goto/16 :goto_0

    .line 160
    .end local v1    # "_arg0":Landroid/hardware/ICameraServiceListener;
    .end local v6    # "_result":I
    :sswitch_7
    const-string v0, "android.hardware.ICameraService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/ICameraServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraServiceListener;

    move-result-object v1

    .line 163
    .restart local v1    # "_arg0":Landroid/hardware/ICameraServiceListener;
    invoke-virtual {p0, v1}, Landroid/hardware/ICameraService$Stub;->removeListener(Landroid/hardware/ICameraServiceListener;)I

    move-result v6

    .line 164
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 166
    goto/16 :goto_0

    .line 170
    .end local v1    # "_arg0":Landroid/hardware/ICameraServiceListener;
    .end local v6    # "_result":I
    :sswitch_8
    const-string v0, "android.hardware.ICameraService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 174
    .local v1, "_arg0":I
    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    .line 175
    .local v2, "_arg1":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/ICameraService$Stub;->getCameraCharacteristics(ILandroid/hardware/camera2/impl/CameraMetadataNative;)I

    move-result v6

    .line 176
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    if-eqz v2, :cond_4

    .line 179
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    invoke-virtual {v2, p3, v7}, Landroid/hardware/camera2/impl/CameraMetadataNative;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_5
    move v0, v7

    .line 185
    goto/16 :goto_0

    .line 183
    :cond_4
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
