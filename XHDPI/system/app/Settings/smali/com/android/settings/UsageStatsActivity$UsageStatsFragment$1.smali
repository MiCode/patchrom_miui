.class Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$1;
.super Landroid/os/Handler;
.source "UsageStatsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 135
    iput-object p1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$1;->this$0:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$1;->this$0:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;

    #getter for: Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->MSG_SCROLL_STOP:I
    invoke-static {v0}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->access$100(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;)I

    move-result v0

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$1;->this$0:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;

    #getter for: Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mIsTouchMove:Z
    invoke-static {v0}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->access$200(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$1;->this$0:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;

    iget-boolean v0, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mIsScroll:Z

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$1;->this$0:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;

    #getter for: Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->mTimerView:Lcom/android/settings/TimerView;
    invoke-static {v0}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->access$300(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;)Lcom/android/settings/TimerView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/settings/TimerView;->setVisibility(I)V

    .line 142
    :cond_0
    return-void
.end method
