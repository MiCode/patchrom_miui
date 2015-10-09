.class public Landroid/net/UsbShareNetStateTracker;
.super Landroid/net/EthernetDataTracker;
.source "UsbShareNetStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/UsbShareNetStateTracker$1;,
        Landroid/net/UsbShareNetStateTracker$UsbShareNetStateReceiver;
    }
.end annotation


# static fields
.field public static final EXTRA_LINK_PROPERTIES:Ljava/lang/String; = "linkProperties"

.field public static final EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkinfo"

.field private static final TAG:Ljava/lang/String; = "UsbShareNetStateTracker"

.field public static final USB_SHARE_NET_STATE_CHANGE:Ljava/lang/String; = "miui.intent.action.USB_SHARE_NET_STATE_CHANGE"


# instance fields
.field private mLastState:Landroid/net/NetworkInfo$State;

.field private mUsbShareNetStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/net/EthernetDataTracker;-><init>()V

    .line 40
    sget-object v0, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    iput-object v0, p0, Landroid/net/UsbShareNetStateTracker;->mLastState:Landroid/net/NetworkInfo$State;

    .line 57
    return-void
.end method

.method static synthetic access$100(Landroid/net/UsbShareNetStateTracker;)Landroid/net/NetworkInfo$State;
    .locals 1
    .param p0, "x0"    # Landroid/net/UsbShareNetStateTracker;

    .prologue
    .line 33
    iget-object v0, p0, Landroid/net/UsbShareNetStateTracker;->mLastState:Landroid/net/NetworkInfo$State;

    return-object v0
.end method

.method static synthetic access$102(Landroid/net/UsbShareNetStateTracker;Landroid/net/NetworkInfo$State;)Landroid/net/NetworkInfo$State;
    .locals 0
    .param p0, "x0"    # Landroid/net/UsbShareNetStateTracker;
    .param p1, "x1"    # Landroid/net/NetworkInfo$State;

    .prologue
    .line 33
    iput-object p1, p0, Landroid/net/UsbShareNetStateTracker;->mLastState:Landroid/net/NetworkInfo$State;

    return-object p1
.end method


# virtual methods
.method public startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "target"    # Landroid/os/Handler;

    .prologue
    .line 48
    invoke-super {p0, p1, p2}, Landroid/net/EthernetDataTracker;->startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V

    .line 50
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 51
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "miui.intent.action.USB_SHARE_NET_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    new-instance v1, Landroid/net/UsbShareNetStateTracker$UsbShareNetStateReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/net/UsbShareNetStateTracker$UsbShareNetStateReceiver;-><init>(Landroid/net/UsbShareNetStateTracker;Landroid/net/UsbShareNetStateTracker$1;)V

    iput-object v1, p0, Landroid/net/UsbShareNetStateTracker;->mUsbShareNetStateReceiver:Landroid/content/BroadcastReceiver;

    .line 54
    iget-object v1, p0, Landroid/net/UsbShareNetStateTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/net/UsbShareNetStateTracker;->mUsbShareNetStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 55
    return-void
.end method
