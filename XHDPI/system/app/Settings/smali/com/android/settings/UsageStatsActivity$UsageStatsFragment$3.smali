.class Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$3;
.super Ljava/util/TimerTask;
.source "UsageStatsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 520
    iput-object p1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$3;->this$0:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 523
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 524
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$3;->this$0:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;

    #getter for: Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->MSG_SCROLL_STOP:I
    invoke-static {v1}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->access$100(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 525
    iget-object v1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$3;->this$0:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;

    #getter for: Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->access$1000(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 526
    return-void
.end method
