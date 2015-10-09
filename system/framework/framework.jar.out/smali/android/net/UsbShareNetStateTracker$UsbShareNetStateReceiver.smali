.class Landroid/net/UsbShareNetStateTracker$UsbShareNetStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UsbShareNetStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/UsbShareNetStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsbShareNetStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/UsbShareNetStateTracker;


# direct methods
.method private constructor <init>(Landroid/net/UsbShareNetStateTracker;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Landroid/net/UsbShareNetStateTracker$UsbShareNetStateReceiver;->this$0:Landroid/net/UsbShareNetStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/UsbShareNetStateTracker;Landroid/net/UsbShareNetStateTracker$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/net/UsbShareNetStateTracker;
    .param p2, "x1"    # Landroid/net/UsbShareNetStateTracker$1;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/net/UsbShareNetStateTracker$UsbShareNetStateReceiver;-><init>(Landroid/net/UsbShareNetStateTracker;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 60
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "miui.intent.action.USB_SHARE_NET_STATE_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 62
    iget-object v4, p0, Landroid/net/UsbShareNetStateTracker$UsbShareNetStateReceiver;->this$0:Landroid/net/UsbShareNetStateTracker;

    const-string/jumbo v3, "networkinfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    iput-object v3, v4, Landroid/net/UsbShareNetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 64
    iget-object v3, p0, Landroid/net/UsbShareNetStateTracker$UsbShareNetStateReceiver;->this$0:Landroid/net/UsbShareNetStateTracker;

    iget-object v3, v3, Landroid/net/UsbShareNetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    .line 65
    .local v2, "state":Landroid/net/NetworkInfo$State;
    iget-object v3, p0, Landroid/net/UsbShareNetStateTracker$UsbShareNetStateReceiver;->this$0:Landroid/net/UsbShareNetStateTracker;

    # getter for: Landroid/net/UsbShareNetStateTracker;->mLastState:Landroid/net/NetworkInfo$State;
    invoke-static {v3}, Landroid/net/UsbShareNetStateTracker;->access$100(Landroid/net/UsbShareNetStateTracker;)Landroid/net/NetworkInfo$State;

    move-result-object v3

    if-ne v3, v2, :cond_1

    .line 66
    const-string v3, "UsbShareNetStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ignoring same state change, state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .end local v2    # "state":Landroid/net/NetworkInfo$State;
    :cond_0
    :goto_0
    return-void

    .line 69
    .restart local v2    # "state":Landroid/net/NetworkInfo$State;
    :cond_1
    iget-object v3, p0, Landroid/net/UsbShareNetStateTracker$UsbShareNetStateReceiver;->this$0:Landroid/net/UsbShareNetStateTracker;

    # setter for: Landroid/net/UsbShareNetStateTracker;->mLastState:Landroid/net/NetworkInfo$State;
    invoke-static {v3, v2}, Landroid/net/UsbShareNetStateTracker;->access$102(Landroid/net/UsbShareNetStateTracker;Landroid/net/NetworkInfo$State;)Landroid/net/NetworkInfo$State;

    .line 72
    iget-object v4, p0, Landroid/net/UsbShareNetStateTracker$UsbShareNetStateReceiver;->this$0:Landroid/net/UsbShareNetStateTracker;

    const-string v3, "linkProperties"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/LinkProperties;

    iput-object v3, v4, Landroid/net/UsbShareNetStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 73
    iget-object v3, p0, Landroid/net/UsbShareNetStateTracker$UsbShareNetStateReceiver;->this$0:Landroid/net/UsbShareNetStateTracker;

    iget-object v3, v3, Landroid/net/UsbShareNetStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    if-nez v3, :cond_2

    .line 74
    iget-object v3, p0, Landroid/net/UsbShareNetStateTracker$UsbShareNetStateReceiver;->this$0:Landroid/net/UsbShareNetStateTracker;

    new-instance v4, Landroid/net/LinkProperties;

    invoke-direct {v4}, Landroid/net/LinkProperties;-><init>()V

    iput-object v4, v3, Landroid/net/UsbShareNetStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 77
    :cond_2
    iget-object v3, p0, Landroid/net/UsbShareNetStateTracker$UsbShareNetStateReceiver;->this$0:Landroid/net/UsbShareNetStateTracker;

    iget-object v3, v3, Landroid/net/UsbShareNetStateTracker;->mCsHandler:Landroid/os/Handler;

    const v4, 0x70001

    iget-object v5, p0, Landroid/net/UsbShareNetStateTracker$UsbShareNetStateReceiver;->this$0:Landroid/net/UsbShareNetStateTracker;

    iget-object v5, v5, Landroid/net/UsbShareNetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 78
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 80
    iget-object v3, p0, Landroid/net/UsbShareNetStateTracker$UsbShareNetStateReceiver;->this$0:Landroid/net/UsbShareNetStateTracker;

    iget-object v3, v3, Landroid/net/UsbShareNetStateTracker;->mCsHandler:Landroid/os/Handler;

    const/high16 v4, 0x70000

    iget-object v5, p0, Landroid/net/UsbShareNetStateTracker$UsbShareNetStateReceiver;->this$0:Landroid/net/UsbShareNetStateTracker;

    iget-object v5, v5, Landroid/net/UsbShareNetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 81
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
