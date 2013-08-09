.class Lcom/android/settings/UsbShareNetService$UsbShareNetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UsbShareNetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UsbShareNetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsbShareNetReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/UsbShareNetService;


# direct methods
.method private constructor <init>(Lcom/android/settings/UsbShareNetService;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/settings/UsbShareNetService$UsbShareNetReceiver;->this$0:Lcom/android/settings/UsbShareNetService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/UsbShareNetService;Lcom/android/settings/UsbShareNetService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 221
    invoke-direct {p0, p1}, Lcom/android/settings/UsbShareNetService$UsbShareNetReceiver;-><init>(Lcom/android/settings/UsbShareNetService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 224
    const-string v0, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/settings/UsbShareNetService$UsbShareNetReceiver;->this$0:Lcom/android/settings/UsbShareNetService;

    #getter for: Lcom/android/settings/UsbShareNetService;->mLastState:Landroid/net/NetworkInfo$State;
    invoke-static {v0}, Lcom/android/settings/UsbShareNetService;->access$100(Lcom/android/settings/UsbShareNetService;)Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/settings/UsbShareNetService$UsbShareNetReceiver;->this$0:Lcom/android/settings/UsbShareNetService;

    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    const/4 v4, 0x0

    move-object v3, v2

    move-object v5, v2

    move-object v6, v2

    #calls: Lcom/android/settings/UsbShareNetService;->notifyConnectState(Landroid/net/NetworkInfo$State;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v0 .. v6}, Lcom/android/settings/UsbShareNetService;->access$200(Lcom/android/settings/UsbShareNetService;Landroid/net/NetworkInfo$State;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/android/settings/UsbShareNetService$UsbShareNetReceiver;->this$0:Lcom/android/settings/UsbShareNetService;

    #calls: Lcom/android/settings/UsbShareNetService;->restoreOtherConnectState()V
    invoke-static {v0}, Lcom/android/settings/UsbShareNetService;->access$300(Lcom/android/settings/UsbShareNetService;)V

    .line 229
    const-string v0, "sys.usbsharenet.state"

    const-string v1, "disconnected"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_0
    return-void
.end method
