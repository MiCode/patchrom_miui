.class final Lcom/android/settings/bluetooth/FtpProfile;
.super Ljava/lang/Object;
.source "FtpProfile.java"

# interfaces
.implements Lcom/android/settings/bluetooth/LocalBluetoothProfile;


# static fields
.field static final UUIDS:[Landroid/os/ParcelUuid;

.field private static mFtpClient:Landroid/bluetooth/BluetoothFtp$Client;

.field private static mService:Landroid/bluetooth/BluetoothProfileManager;

.field private static profile:Landroid/bluetooth/BluetoothProfileManager$Profile;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/os/ParcelUuid;

    const/4 v1, 0x0

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->ObexFileTransfer:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/bluetooth/FtpProfile;->UUIDS:[Landroid/os/ParcelUuid;

    .line 54
    sget-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_FTP_Client:Landroid/bluetooth/BluetoothProfileManager$Profile;

    sput-object v0, Lcom/android/settings/bluetooth/FtpProfile;->profile:Landroid/bluetooth/BluetoothProfileManager$Profile;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v0, "FtpProfile"

    const-string v1, "[BT][FTP] Constructor of FtpProfile in Settings."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    sget-object v0, Lcom/android/settings/bluetooth/FtpProfile;->mFtpClient:Landroid/bluetooth/BluetoothFtp$Client;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Landroid/bluetooth/BluetoothFtp$Client;

    invoke-direct {v0, p1}, Landroid/bluetooth/BluetoothFtp$Client;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/bluetooth/FtpProfile;->mFtpClient:Landroid/bluetooth/BluetoothFtp$Client;

    .line 61
    :cond_0
    return-void
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 72
    sget-object v0, Lcom/android/settings/bluetooth/FtpProfile;->mFtpClient:Landroid/bluetooth/BluetoothFtp$Client;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothFtp$Client;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 76
    sget-object v0, Lcom/android/settings/bluetooth/FtpProfile;->mFtpClient:Landroid/bluetooth/BluetoothFtp$Client;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothFtp$Client;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .parameter "device"

    .prologue
    .line 80
    sget-object v1, Lcom/android/settings/bluetooth/FtpProfile;->mFtpClient:Landroid/bluetooth/BluetoothFtp$Client;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothFtp$Client;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 81
    .local v0, state:I
    if-ltz v0, :cond_0

    const/4 v1, 0x5

    if-le v0, v1, :cond_1

    .line 82
    :cond_0
    const/4 v0, 0x5

    .line 85
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 93
    :goto_0
    return v0

    .line 87
    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    .line 88
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 89
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 90
    :pswitch_3
    const/4 v0, 0x0

    goto :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 1
    .parameter "btClass"

    .prologue
    .line 134
    const v0, 0x7f0200a2

    return v0
.end method

.method public getNameResource(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "device"

    .prologue
    .line 121
    const v0, 0x7f0c097f

    return v0
.end method

.method public getOrdinal()I
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x5

    return v0
.end method

.method public getPreferred(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "device"

    .prologue
    .line 102
    const/4 v0, -0x1

    return v0
.end method

.method public getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .parameter "device"

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/FtpProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 126
    .local v0, state:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 127
    const v1, 0x7f0c0981

    .line 129
    :goto_0
    return v1

    :cond_0
    const v1, 0x7f0c0980

    goto :goto_0
.end method

.method public isAutoConnectable()Z
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public isConnectable()Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter "device"

    .prologue
    const/4 v1, 0x1

    .line 97
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/FtpProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 98
    .local v0, state:I
    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isProfileReady()Z
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/settings/bluetooth/FtpProfile;->mService:Landroid/bluetooth/BluetoothProfileManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 0
    .parameter "device"
    .parameter "preferred"

    .prologue
    .line 106
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    const-string v0, "FTP"

    return-object v0
.end method
