.class Landroid/net/CaptivePortalTracker$ActiveNetworkState;
.super Lcom/android/internal/util/State;
.source "CaptivePortalTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/CaptivePortalTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActiveNetworkState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/CaptivePortalTracker;


# direct methods
.method private constructor <init>(Landroid/net/CaptivePortalTracker;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Landroid/net/CaptivePortalTracker$ActiveNetworkState;->this$0:Landroid/net/CaptivePortalTracker;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/CaptivePortalTracker;Landroid/net/CaptivePortalTracker$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p2, "x1"    # Landroid/net/CaptivePortalTracker$1;

    .prologue
    .line 235
    invoke-direct {p0, p1}, Landroid/net/CaptivePortalTracker$ActiveNetworkState;-><init>(Landroid/net/CaptivePortalTracker;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 239
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 255
    const/4 v1, 0x0

    .line 257
    :goto_0
    return v1

    .line 241
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkInfo;

    .line 242
    .local v0, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    iget-object v2, p0, Landroid/net/CaptivePortalTracker$ActiveNetworkState;->this$0:Landroid/net/CaptivePortalTracker;

    # getter for: Landroid/net/CaptivePortalTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Landroid/net/CaptivePortalTracker;->access$1000(Landroid/net/CaptivePortalTracker;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 244
    iget-object v1, p0, Landroid/net/CaptivePortalTracker$ActiveNetworkState;->this$0:Landroid/net/CaptivePortalTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disconnected from active network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/net/CaptivePortalTracker;->access$1600(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V

    .line 245
    iget-object v1, p0, Landroid/net/CaptivePortalTracker$ActiveNetworkState;->this$0:Landroid/net/CaptivePortalTracker;

    iget-object v2, p0, Landroid/net/CaptivePortalTracker$ActiveNetworkState;->this$0:Landroid/net/CaptivePortalTracker;

    # getter for: Landroid/net/CaptivePortalTracker;->mNoActiveNetworkState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/CaptivePortalTracker;->access$1700(Landroid/net/CaptivePortalTracker;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Landroid/net/CaptivePortalTracker;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/net/CaptivePortalTracker;->access$1800(Landroid/net/CaptivePortalTracker;Lcom/android/internal/util/IState;)V

    .line 257
    :cond_0
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 246
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    iget-object v2, p0, Landroid/net/CaptivePortalTracker$ActiveNetworkState;->this$0:Landroid/net/CaptivePortalTracker;

    # getter for: Landroid/net/CaptivePortalTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Landroid/net/CaptivePortalTracker;->access$1000(Landroid/net/CaptivePortalTracker;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/CaptivePortalTracker$ActiveNetworkState;->this$0:Landroid/net/CaptivePortalTracker;

    # invokes: Landroid/net/CaptivePortalTracker;->isActiveNetwork(Landroid/net/NetworkInfo;)Z
    invoke-static {v1, v0}, Landroid/net/CaptivePortalTracker;->access$1200(Landroid/net/CaptivePortalTracker;Landroid/net/NetworkInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    iget-object v1, p0, Landroid/net/CaptivePortalTracker$ActiveNetworkState;->this$0:Landroid/net/CaptivePortalTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Active network switched "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/net/CaptivePortalTracker;->access$1900(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V

    .line 250
    iget-object v1, p0, Landroid/net/CaptivePortalTracker$ActiveNetworkState;->this$0:Landroid/net/CaptivePortalTracker;

    # invokes: Landroid/net/CaptivePortalTracker;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Landroid/net/CaptivePortalTracker;->access$2000(Landroid/net/CaptivePortalTracker;Landroid/os/Message;)V

    .line 251
    iget-object v1, p0, Landroid/net/CaptivePortalTracker$ActiveNetworkState;->this$0:Landroid/net/CaptivePortalTracker;

    iget-object v2, p0, Landroid/net/CaptivePortalTracker$ActiveNetworkState;->this$0:Landroid/net/CaptivePortalTracker;

    # getter for: Landroid/net/CaptivePortalTracker;->mNoActiveNetworkState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/CaptivePortalTracker;->access$1700(Landroid/net/CaptivePortalTracker;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Landroid/net/CaptivePortalTracker;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/net/CaptivePortalTracker;->access$2100(Landroid/net/CaptivePortalTracker;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 239
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
