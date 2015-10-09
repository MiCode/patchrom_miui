.class Landroid/widget/ViewFlipper$1;
.super Landroid/content/BroadcastReceiver;
.source "ViewFlipper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ViewFlipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ViewFlipper;


# direct methods
.method constructor <init>(Landroid/widget/ViewFlipper;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Landroid/widget/ViewFlipper$1;->this$0:Landroid/widget/ViewFlipper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 74
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    iget-object v1, p0, Landroid/widget/ViewFlipper$1;->this$0:Landroid/widget/ViewFlipper;

    # setter for: Landroid/widget/ViewFlipper;->mUserPresent:Z
    invoke-static {v1, v3}, Landroid/widget/ViewFlipper;->access$002(Landroid/widget/ViewFlipper;Z)Z

    .line 77
    iget-object v1, p0, Landroid/widget/ViewFlipper$1;->this$0:Landroid/widget/ViewFlipper;

    # invokes: Landroid/widget/ViewFlipper;->updateRunning()V
    invoke-static {v1}, Landroid/widget/ViewFlipper;->access$100(Landroid/widget/ViewFlipper;)V

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Landroid/widget/ViewFlipper$1;->this$0:Landroid/widget/ViewFlipper;

    const/4 v2, 0x1

    # setter for: Landroid/widget/ViewFlipper;->mUserPresent:Z
    invoke-static {v1, v2}, Landroid/widget/ViewFlipper;->access$002(Landroid/widget/ViewFlipper;Z)Z

    .line 80
    iget-object v1, p0, Landroid/widget/ViewFlipper$1;->this$0:Landroid/widget/ViewFlipper;

    # invokes: Landroid/widget/ViewFlipper;->updateRunning(Z)V
    invoke-static {v1, v3}, Landroid/widget/ViewFlipper;->access$200(Landroid/widget/ViewFlipper;Z)V

    goto :goto_0
.end method
