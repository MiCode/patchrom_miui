.class Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;
.super Lcom/android/internal/util/State;
.source "CaptivePortalTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/CaptivePortalTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DelayedCaptiveCheckState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/CaptivePortalTracker;


# direct methods
.method private constructor <init>(Landroid/net/CaptivePortalTracker;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/CaptivePortalTracker;Landroid/net/CaptivePortalTracker$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p2, "x1"    # Landroid/net/CaptivePortalTracker$1;

    .prologue
    .line 263
    invoke-direct {p0, p1}, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;-><init>(Landroid/net/CaptivePortalTracker;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    .line 266
    iget-object v1, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    const/4 v2, 0x2

    iget-object v3, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    # ++operator for: Landroid/net/CaptivePortalTracker;->mDelayedCheckToken:I
    invoke-static {v3}, Landroid/net/CaptivePortalTracker;->access$2204(Landroid/net/CaptivePortalTracker;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/CaptivePortalTracker;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 267
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    # getter for: Landroid/net/CaptivePortalTracker;->mDeviceProvisioned:Z
    invoke-static {v1}, Landroid/net/CaptivePortalTracker;->access$500(Landroid/net/CaptivePortalTracker;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    iget-object v1, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Landroid/net/CaptivePortalTracker;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 272
    :goto_0
    return-void

    .line 270
    :cond_0
    iget-object v1, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    invoke-virtual {v1, v0}, Landroid/net/CaptivePortalTracker;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 10
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 276
    iget-object v6, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Landroid/net/CaptivePortalTracker;->access$2300(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V

    .line 277
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    move v4, v5

    .line 317
    :cond_0
    :goto_0
    return v4

    .line 279
    :pswitch_0
    iget-object v6, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    # invokes: Landroid/net/CaptivePortalTracker;->setNotificationOff()V
    invoke-static {v6}, Landroid/net/CaptivePortalTracker;->access$900(Landroid/net/CaptivePortalTracker;)V

    .line 281
    iget v6, p1, Landroid/os/Message;->arg1:I

    iget-object v7, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    # getter for: Landroid/net/CaptivePortalTracker;->mDelayedCheckToken:I
    invoke-static {v7}, Landroid/net/CaptivePortalTracker;->access$2200(Landroid/net/CaptivePortalTracker;)I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 282
    iget-object v6, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    iget-object v7, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    # getter for: Landroid/net/CaptivePortalTracker;->mServer:Ljava/lang/String;
    invoke-static {v7}, Landroid/net/CaptivePortalTracker;->access$2400(Landroid/net/CaptivePortalTracker;)Ljava/lang/String;

    move-result-object v7

    # invokes: Landroid/net/CaptivePortalTracker;->lookupHost(Ljava/lang/String;)Ljava/net/InetAddress;
    invoke-static {v6, v7}, Landroid/net/CaptivePortalTracker;->access$2500(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    .line 283
    .local v3, "server":Ljava/net/InetAddress;
    if-eqz v3, :cond_3

    iget-object v6, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    # invokes: Landroid/net/CaptivePortalTracker;->isCaptivePortal(Ljava/net/InetAddress;)Z
    invoke-static {v6, v3}, Landroid/net/CaptivePortalTracker;->access$2600(Landroid/net/CaptivePortalTracker;Ljava/net/InetAddress;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v0, v4

    .line 284
    .local v0, "captive":Z
    :goto_1
    if-eqz v0, :cond_4

    .line 285
    iget-object v5, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Captive network "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    # getter for: Landroid/net/CaptivePortalTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v7}, Landroid/net/CaptivePortalTracker;->access$1000(Landroid/net/CaptivePortalTracker;)Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Landroid/net/CaptivePortalTracker;->access$2700(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V

    .line 289
    :goto_2
    iget-object v5, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    iget-object v6, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    # getter for: Landroid/net/CaptivePortalTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v6}, Landroid/net/CaptivePortalTracker;->access$1000(Landroid/net/CaptivePortalTracker;)Landroid/net/NetworkInfo;

    move-result-object v6

    # invokes: Landroid/net/CaptivePortalTracker;->notifyPortalCheckCompleted(Landroid/net/NetworkInfo;Z)V
    invoke-static {v5, v6, v0}, Landroid/net/CaptivePortalTracker;->access$2900(Landroid/net/CaptivePortalTracker;Landroid/net/NetworkInfo;Z)V

    .line 292
    iget-object v5, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    # getter for: Landroid/net/CaptivePortalTracker;->mDeviceProvisioned:Z
    invoke-static {v5}, Landroid/net/CaptivePortalTracker;->access$500(Landroid/net/CaptivePortalTracker;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    # getter for: Landroid/net/CaptivePortalTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v5}, Landroid/net/CaptivePortalTracker;->access$1000(Landroid/net/CaptivePortalTracker;)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-ne v5, v4, :cond_5

    .line 293
    :cond_1
    if-eqz v0, :cond_2

    .line 297
    :try_start_0
    iget-object v5, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    # getter for: Landroid/net/CaptivePortalTracker;->mConnService:Landroid/net/IConnectivityManager;
    invoke-static {v5}, Landroid/net/CaptivePortalTracker;->access$3100(Landroid/net/CaptivePortalTracker;)Landroid/net/IConnectivityManager;

    move-result-object v5

    const/4 v6, 0x1

    iget-object v7, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    # getter for: Landroid/net/CaptivePortalTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v7}, Landroid/net/CaptivePortalTracker;->access$1000(Landroid/net/CaptivePortalTracker;)Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    iget-object v8, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    # getter for: Landroid/net/CaptivePortalTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v8}, Landroid/net/CaptivePortalTracker;->access$1000(Landroid/net/CaptivePortalTracker;)Landroid/net/NetworkInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    # getter for: Landroid/net/CaptivePortalTracker;->mUrl:Ljava/lang/String;
    invoke-static {v9}, Landroid/net/CaptivePortalTracker;->access$3000(Landroid/net/CaptivePortalTracker;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v6, v7, v8, v9}, Landroid/net/IConnectivityManager;->setProvisioningNotificationVisible(ZILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :cond_2
    :goto_3
    iget-object v5, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    iget-object v6, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    # getter for: Landroid/net/CaptivePortalTracker;->mActiveNetworkState:Lcom/android/internal/util/State;
    invoke-static {v6}, Landroid/net/CaptivePortalTracker;->access$3200(Landroid/net/CaptivePortalTracker;)Lcom/android/internal/util/State;

    move-result-object v6

    # invokes: Landroid/net/CaptivePortalTracker;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v6}, Landroid/net/CaptivePortalTracker;->access$3300(Landroid/net/CaptivePortalTracker;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .end local v0    # "captive":Z
    :cond_3
    move v0, v5

    .line 283
    goto :goto_1

    .line 287
    .restart local v0    # "captive":Z
    :cond_4
    iget-object v5, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not captive network "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    # getter for: Landroid/net/CaptivePortalTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v7}, Landroid/net/CaptivePortalTracker;->access$1000(Landroid/net/CaptivePortalTracker;)Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Landroid/net/CaptivePortalTracker;->access$2800(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V

    goto :goto_2

    .line 299
    :catch_0
    move-exception v1

    .line 300
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 304
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_5
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.net.conn.CAPTIVE_PORTAL_TEST_COMPLETED"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 306
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "captivePortal"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 307
    const-string v5, "com.google.android.setupwizard"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    iget-object v5, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    # getter for: Landroid/net/CaptivePortalTracker;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/net/CaptivePortalTracker;->access$400(Landroid/net/CaptivePortalTracker;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_3

    .line 277
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
