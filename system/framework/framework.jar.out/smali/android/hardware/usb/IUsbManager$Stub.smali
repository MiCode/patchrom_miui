.class public abstract Landroid/hardware/usb/IUsbManager$Stub;
.super Landroid/os/Binder;
.source "IUsbManager.java"

# interfaces
.implements Landroid/hardware/usb/IUsbManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/IUsbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/usb/IUsbManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.usb.IUsbManager"

.field static final TRANSACTION_allowUsbDebugging:I = 0x11

.field static final TRANSACTION_clearDefaults:I = 0xe

.field static final TRANSACTION_clearUsbDebuggingKeys:I = 0x13

.field static final TRANSACTION_denyUsbDebugging:I = 0x12

.field static final TRANSACTION_getCurrentAccessory:I = 0x3

.field static final TRANSACTION_getDeviceList:I = 0x1

.field static final TRANSACTION_grantAccessoryPermission:I = 0xc

.field static final TRANSACTION_grantDevicePermission:I = 0xb

.field static final TRANSACTION_hasAccessoryPermission:I = 0x8

.field static final TRANSACTION_hasDefaults:I = 0xd

.field static final TRANSACTION_hasDevicePermission:I = 0x7

.field static final TRANSACTION_openAccessory:I = 0x4

.field static final TRANSACTION_openDevice:I = 0x2

.field static final TRANSACTION_requestAccessoryPermission:I = 0xa

.field static final TRANSACTION_requestDevicePermission:I = 0x9

.field static final TRANSACTION_setAccessoryPackage:I = 0x6

.field static final TRANSACTION_setCurrentFunction:I = 0xf

.field static final TRANSACTION_setDevicePackage:I = 0x5

.field static final TRANSACTION_setMassStorageBackingFile:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.hardware.usb.IUsbManager"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/usb/IUsbManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;
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
    const-string v1, "android.hardware.usb.IUsbManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/usb/IUsbManager;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/hardware/usb/IUsbManager;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Landroid/hardware/usb/IUsbManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/hardware/usb/IUsbManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 7
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
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 326
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 43
    :sswitch_0
    const-string v4, "android.hardware.usb.IUsbManager"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v6, "android.hardware.usb.IUsbManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 51
    .local v0, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Landroid/hardware/usb/IUsbManager$Stub;->getDeviceList(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    invoke-virtual {v0, p3, v5}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 64
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :sswitch_2
    const-string v6, "android.hardware.usb.IUsbManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/hardware/usb/IUsbManager$Stub;->openDevice(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 68
    .local v3, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    if-eqz v3, :cond_1

    .line 70
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    invoke-virtual {v3, p3, v5}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 80
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_3
    const-string v6, "android.hardware.usb.IUsbManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;

    move-result-object v3

    .line 82
    .local v3, "_result":Landroid/hardware/usb/UsbAccessory;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    if-eqz v3, :cond_2

    .line 84
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    invoke-virtual {v3, p3, v5}, Landroid/hardware/usb/UsbAccessory;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 88
    :cond_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 94
    .end local v3    # "_result":Landroid/hardware/usb/UsbAccessory;
    :sswitch_4
    const-string v6, "android.hardware.usb.IUsbManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    .line 97
    sget-object v6, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbAccessory;

    .line 102
    .local v0, "_arg0":Landroid/hardware/usb/UsbAccessory;
    :goto_1
    invoke-virtual {p0, v0}, Landroid/hardware/usb/IUsbManager$Stub;->openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 103
    .local v3, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    if-eqz v3, :cond_4

    .line 105
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    invoke-virtual {v3, p3, v5}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 100
    .end local v0    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    .end local v3    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    goto :goto_1

    .line 109
    .restart local v3    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_4
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 115
    .end local v0    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    .end local v3    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_5
    const-string v4, "android.hardware.usb.IUsbManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    .line 118
    sget-object v4, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 124
    .local v0, "_arg0":Landroid/hardware/usb/UsbDevice;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 127
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/usb/IUsbManager$Stub;->setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)V

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 121
    .end local v0    # "_arg0":Landroid/hardware/usb/UsbDevice;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/hardware/usb/UsbDevice;
    goto :goto_2

    .line 133
    .end local v0    # "_arg0":Landroid/hardware/usb/UsbDevice;
    :sswitch_6
    const-string v4, "android.hardware.usb.IUsbManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    .line 136
    sget-object v4, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbAccessory;

    .line 142
    .local v0, "_arg0":Landroid/hardware/usb/UsbAccessory;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 144
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 145
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/usb/IUsbManager$Stub;->setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;I)V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 139
    .end local v0    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    goto :goto_3

    .line 151
    .end local v0    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    :sswitch_7
    const-string v6, "android.hardware.usb.IUsbManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8

    .line 154
    sget-object v6, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 159
    .local v0, "_arg0":Landroid/hardware/usb/UsbDevice;
    :goto_4
    invoke-virtual {p0, v0}, Landroid/hardware/usb/IUsbManager$Stub;->hasDevicePermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v3

    .line 160
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    if-eqz v3, :cond_7

    move v4, v5

    :cond_7
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 157
    .end local v0    # "_arg0":Landroid/hardware/usb/UsbDevice;
    .end local v3    # "_result":Z
    :cond_8
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/hardware/usb/UsbDevice;
    goto :goto_4

    .line 166
    .end local v0    # "_arg0":Landroid/hardware/usb/UsbDevice;
    :sswitch_8
    const-string v6, "android.hardware.usb.IUsbManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a

    .line 169
    sget-object v6, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbAccessory;

    .line 174
    .local v0, "_arg0":Landroid/hardware/usb/UsbAccessory;
    :goto_5
    invoke-virtual {p0, v0}, Landroid/hardware/usb/IUsbManager$Stub;->hasAccessoryPermission(Landroid/hardware/usb/UsbAccessory;)Z

    move-result v3

    .line 175
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    if-eqz v3, :cond_9

    move v4, v5

    :cond_9
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 172
    .end local v0    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    .end local v3    # "_result":Z
    :cond_a
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    goto :goto_5

    .line 181
    .end local v0    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    :sswitch_9
    const-string v4, "android.hardware.usb.IUsbManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b

    .line 184
    sget-object v4, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 190
    .local v0, "_arg0":Landroid/hardware/usb/UsbDevice;
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 192
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c

    .line 193
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 198
    .local v2, "_arg2":Landroid/app/PendingIntent;
    :goto_7
    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/usb/IUsbManager$Stub;->requestDevicePermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 187
    .end local v0    # "_arg0":Landroid/hardware/usb/UsbDevice;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/app/PendingIntent;
    :cond_b
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/hardware/usb/UsbDevice;
    goto :goto_6

    .line 196
    .restart local v1    # "_arg1":Ljava/lang/String;
    :cond_c
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Landroid/app/PendingIntent;
    goto :goto_7

    .line 204
    .end local v0    # "_arg0":Landroid/hardware/usb/UsbDevice;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/app/PendingIntent;
    :sswitch_a
    const-string v4, "android.hardware.usb.IUsbManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d

    .line 207
    sget-object v4, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbAccessory;

    .line 213
    .local v0, "_arg0":Landroid/hardware/usb/UsbAccessory;
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 215
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e

    .line 216
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 221
    .restart local v2    # "_arg2":Landroid/app/PendingIntent;
    :goto_9
    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/usb/IUsbManager$Stub;->requestAccessoryPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 210
    .end local v0    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/app/PendingIntent;
    :cond_d
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    goto :goto_8

    .line 219
    .restart local v1    # "_arg1":Ljava/lang/String;
    :cond_e
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Landroid/app/PendingIntent;
    goto :goto_9

    .line 227
    .end local v0    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/app/PendingIntent;
    :sswitch_b
    const-string v4, "android.hardware.usb.IUsbManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f

    .line 230
    sget-object v4, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 236
    .local v0, "_arg0":Landroid/hardware/usb/UsbDevice;
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 237
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/hardware/usb/IUsbManager$Stub;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V

    .line 238
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 233
    .end local v0    # "_arg0":Landroid/hardware/usb/UsbDevice;
    .end local v1    # "_arg1":I
    :cond_f
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/hardware/usb/UsbDevice;
    goto :goto_a

    .line 243
    .end local v0    # "_arg0":Landroid/hardware/usb/UsbDevice;
    :sswitch_c
    const-string v4, "android.hardware.usb.IUsbManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_10

    .line 246
    sget-object v4, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbAccessory;

    .line 252
    .local v0, "_arg0":Landroid/hardware/usb/UsbAccessory;
    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 253
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/hardware/usb/IUsbManager$Stub;->grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V

    .line 254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 249
    .end local v0    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    .end local v1    # "_arg1":I
    :cond_10
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    goto :goto_b

    .line 259
    .end local v0    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    :sswitch_d
    const-string v6, "android.hardware.usb.IUsbManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 264
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/hardware/usb/IUsbManager$Stub;->hasDefaults(Ljava/lang/String;I)Z

    move-result v3

    .line 265
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    if-eqz v3, :cond_11

    move v4, v5

    :cond_11
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 271
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v3    # "_result":Z
    :sswitch_e
    const-string v4, "android.hardware.usb.IUsbManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 275
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 276
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/hardware/usb/IUsbManager$Stub;->clearDefaults(Ljava/lang/String;I)V

    .line 277
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 282
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :sswitch_f
    const-string v6, "android.hardware.usb.IUsbManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 286
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_12

    move v1, v5

    .line 287
    .local v1, "_arg1":Z
    :goto_c
    invoke-virtual {p0, v0, v1}, Landroid/hardware/usb/IUsbManager$Stub;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 288
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    :cond_12
    move v1, v4

    .line 286
    goto :goto_c

    .line 293
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_10
    const-string v4, "android.hardware.usb.IUsbManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 296
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/hardware/usb/IUsbManager$Stub;->setMassStorageBackingFile(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 302
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_11
    const-string v6, "android.hardware.usb.IUsbManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_13

    move v0, v5

    .line 306
    .local v0, "_arg0":Z
    :goto_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 307
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/hardware/usb/IUsbManager$Stub;->allowUsbDebugging(ZLjava/lang/String;)V

    .line 308
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Ljava/lang/String;
    :cond_13
    move v0, v4

    .line 304
    goto :goto_d

    .line 313
    :sswitch_12
    const-string v4, "android.hardware.usb.IUsbManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->denyUsbDebugging()V

    .line 315
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 320
    :sswitch_13
    const-string v4, "android.hardware.usb.IUsbManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->clearUsbDebuggingKeys()V

    .line 322
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 39
    nop

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
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
