.class public Lcom/android/settings/UsbShareNetService;
.super Landroid/app/Service;
.source "UsbShareNetService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/UsbShareNetService$1;,
        Lcom/android/settings/UsbShareNetService$UsbShareNetReceiver;
    }
.end annotation


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mLastState:Landroid/net/NetworkInfo$State;

.field private mUsbShareNetReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 36
    iput-object v1, p0, Lcom/android/settings/UsbShareNetService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 37
    iput-object v1, p0, Lcom/android/settings/UsbShareNetService;->mUsbShareNetReceiver:Landroid/content/BroadcastReceiver;

    .line 38
    sget-object v0, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    iput-object v0, p0, Lcom/android/settings/UsbShareNetService;->mLastState:Landroid/net/NetworkInfo$State;

    .line 39
    iput-object v1, p0, Lcom/android/settings/UsbShareNetService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 221
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/UsbShareNetService;)Landroid/net/NetworkInfo$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/settings/UsbShareNetService;->mLastState:Landroid/net/NetworkInfo$State;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/UsbShareNetService;Landroid/net/NetworkInfo$State;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 29
    invoke-direct/range {p0 .. p6}, Lcom/android/settings/UsbShareNetService;->notifyConnectState(Landroid/net/NetworkInfo$State;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/UsbShareNetService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/settings/UsbShareNetService;->restoreOtherConnectState()V

    return-void
.end method

.method private disableOtherConnect()V
    .locals 3

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/android/settings/UsbShareNetService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 170
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/settings/UsbShareNetService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/android/settings/UsbShareNetService;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 172
    const-string v1, "wifi_saved_state"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 174
    :cond_0
    return-void
.end method

.method private notifyConnectState(Landroid/net/NetworkInfo$State;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "state"
    .parameter "gateway"
    .parameter "hostIpaddr"
    .parameter "prefixLength"
    .parameter "dns1"
    .parameter "dns2"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 112
    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq p1, v3, :cond_0

    sget-object v3, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq p1, v3, :cond_0

    .line 113
    const-string v3, "UsbShareNetService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error unsupport usb share net state, state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :goto_0
    return-void

    .line 117
    :cond_0
    iput-object p1, p0, Lcom/android/settings/UsbShareNetService;->mLastState:Landroid/net/NetworkInfo$State;

    .line 119
    new-instance v1, Landroid/content/Intent;

    const-string v3, "miui.intent.action.USB_SHARE_NET_STATE_CHANGE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 121
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/net/NetworkInfo;

    const/16 v3, 0xe

    const-string v4, "USB_SHARE_NET"

    const-string v5, ""

    invoke-direct {v0, v3, v7, v4, v5}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 124
    .local v0, info:Landroid/net/NetworkInfo;
    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne p1, v3, :cond_2

    .line 125
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 126
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v3, v6, v6}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v3, "networkinfo"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 130
    new-instance v2, Landroid/net/LinkProperties;

    invoke-direct {v2}, Landroid/net/LinkProperties;-><init>()V

    .line 131
    .local v2, linkProperties:Landroid/net/LinkProperties;
    const-string v3, "rndis0"

    invoke-virtual {v2, v3}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 132
    new-instance v3, Landroid/net/LinkAddress;

    invoke-static {p3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-direct {v3, v4, p4}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v2, v3}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)V

    .line 134
    invoke-static {p5}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    .line 135
    invoke-static {p6}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    .line 136
    new-instance v3, Landroid/net/RouteInfo;

    invoke-static {p2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    invoke-virtual {v2, v3}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    .line 138
    const-string v3, "linkProperties"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 149
    .end local v2           #linkProperties:Landroid/net/LinkProperties;
    :cond_1
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/settings/UsbShareNetService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 139
    :cond_2
    sget-object v3, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne p1, v3, :cond_1

    .line 140
    invoke-virtual {v0, v7}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 141
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v3, v6, v6}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v3, "networkinfo"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 145
    new-instance v2, Landroid/net/LinkProperties;

    invoke-direct {v2}, Landroid/net/LinkProperties;-><init>()V

    .line 146
    .restart local v2       #linkProperties:Landroid/net/LinkProperties;
    const-string v3, "linkProperties"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1
.end method

.method private restoreOtherConnectState()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/UsbShareNetService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 154
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 157
    .local v1, wifiSavedState:I
    :try_start_0
    const-string v2, "wifi_saved_state"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 161
    :goto_0
    if-ne v1, v3, :cond_0

    .line 162
    iget-object v2, p0, Lcom/android/settings/UsbShareNetService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 163
    const-string v2, "wifi_saved_state"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 165
    :cond_0
    return-void

    .line 158
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private setHostIpAddr(Ljava/lang/String;I)V
    .locals 15
    .parameter "address"
    .parameter "prefixLength"

    .prologue
    .line 66
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 67
    :cond_0
    const-string v12, "UsbShareNetService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "setHostIpAddr para is invalid, address = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", prefixLength = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_1
    :goto_0
    return-void

    .line 72
    :cond_2
    const-string v12, "network_management"

    invoke-static {v12}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 73
    .local v3, b:Landroid/os/IBinder;
    invoke-static {v3}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v11

    .line 75
    .local v11, service:Landroid/os/INetworkManagementService;
    const/4 v12, 0x0

    new-array v5, v12, [Ljava/lang/String;

    .line 77
    .local v5, currentIfaces:[Ljava/lang/String;
    :try_start_0
    invoke-interface {v11}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 83
    const/4 v7, 0x0

    .line 84
    .local v7, found:Z
    move-object v2, v5

    .local v2, arr$:[Ljava/lang/String;
    array-length v10, v2

    .local v10, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_1
    if-ge v8, v10, :cond_3

    aget-object v4, v2, v8

    .line 85
    .local v4, currIface:Ljava/lang/String;
    const-string v12, "rndis0"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 86
    const/4 v7, 0x1

    .line 91
    .end local v4           #currIface:Ljava/lang/String;
    :cond_3
    if-nez v7, :cond_5

    .line 92
    const-string v12, "UsbShareNetService"

    const-string v13, "not found network interfacerndis0"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 78
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v7           #found:Z
    .end local v8           #i$:I
    .end local v10           #len$:I
    :catch_0
    move-exception v6

    .line 79
    .local v6, e:Ljava/lang/Exception;
    const-string v12, "UsbShareNetService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error listing Interfaces :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 84
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v2       #arr$:[Ljava/lang/String;
    .restart local v4       #currIface:Ljava/lang/String;
    .restart local v7       #found:Z
    .restart local v8       #i$:I
    .restart local v10       #len$:I
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 96
    .end local v4           #currIface:Ljava/lang/String;
    :cond_5
    const/4 v9, 0x0

    .line 98
    .local v9, ifcg:Landroid/net/InterfaceConfiguration;
    :try_start_1
    const-string v12, "rndis0"

    invoke-interface {v11, v12}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v9

    .line 99
    if-eqz v9, :cond_1

    .line 100
    invoke-static/range {p1 .. p1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 101
    .local v1, addr:Ljava/net/InetAddress;
    new-instance v12, Landroid/net/LinkAddress;

    move/from16 v0, p2

    invoke-direct {v12, v1, v0}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v9, v12}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 102
    const-string v12, "rndis0"

    invoke-interface {v11, v12, v9}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 104
    .end local v1           #addr:Ljava/net/InetAddress;
    :catch_1
    move-exception v6

    .line 105
    .restart local v6       #e:Ljava/lang/Exception;
    const-string v12, "UsbShareNetService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error configuring interface rndis0, :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 48
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 49
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 50
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    new-instance v1, Lcom/android/settings/UsbShareNetService$UsbShareNetReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/UsbShareNetService$UsbShareNetReceiver;-><init>(Lcom/android/settings/UsbShareNetService;Lcom/android/settings/UsbShareNetService$1;)V

    iput-object v1, p0, Lcom/android/settings/UsbShareNetService;->mUsbShareNetReceiver:Landroid/content/BroadcastReceiver;

    .line 53
    iget-object v1, p0, Lcom/android/settings/UsbShareNetService;->mUsbShareNetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/UsbShareNetService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 55
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/settings/UsbShareNetService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/settings/UsbShareNetService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 57
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/android/settings/UsbShareNetService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/settings/UsbShareNetService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 58
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 63
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 11
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 178
    if-eqz p1, :cond_1

    .line 179
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 180
    .local v7, action:Ljava/lang/String;
    const-string v0, "miui.intent.action.USB_SHARE_NET_ENABLE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 181
    const-string v0, "enable"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 182
    .local v9, enable:Z
    const/4 v8, 0x0

    .line 184
    .local v8, connectState:Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 185
    invoke-direct {p0}, Lcom/android/settings/UsbShareNetService;->disableOtherConnect()V

    .line 186
    const-string v8, "connecting"

    .line 192
    :goto_0
    const-string v0, "sys.usbsharenet.state"

    invoke-static {v0, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/android/settings/UsbShareNetService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v9}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    const-string v0, "UsbShareNetService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setUsbTethering failed, enable = "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_0
    if-nez v9, :cond_1

    .line 199
    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/UsbShareNetService;->notifyConnectState(Landroid/net/NetworkInfo$State;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 218
    .end local v7           #action:Ljava/lang/String;
    .end local v8           #connectState:Ljava/lang/String;
    .end local v9           #enable:Z
    :cond_1
    :goto_1
    const/4 v0, 0x2

    return v0

    .line 188
    .restart local v7       #action:Ljava/lang/String;
    .restart local v8       #connectState:Ljava/lang/String;
    .restart local v9       #enable:Z
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/UsbShareNetService;->restoreOtherConnectState()V

    .line 189
    const-string v8, "disconnected"

    goto :goto_0

    .line 203
    .end local v8           #connectState:Ljava/lang/String;
    .end local v9           #enable:Z
    :cond_3
    const-string v0, "miui.intent.action.USB_SHARE_NET_CONFIG"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    const-string v0, "hostip"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 205
    .local v3, hostIpAddr:Ljava/lang/String;
    const-string v0, "gateway"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, gateway:Ljava/lang/String;
    const-string v0, "dns1"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 207
    .local v5, dns1:Ljava/lang/String;
    const-string v0, "dns2"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 208
    .local v6, dns2:Ljava/lang/String;
    const-string v0, "masklen"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 210
    .local v4, prefixLength:I
    invoke-direct {p0, v3, v4}, Lcom/android/settings/UsbShareNetService;->setHostIpAddr(Ljava/lang/String;I)V

    .line 212
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/UsbShareNetService;->notifyConnectState(Landroid/net/NetworkInfo$State;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v0, "sys.usbsharenet.state"

    const-string v1, "connected"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
