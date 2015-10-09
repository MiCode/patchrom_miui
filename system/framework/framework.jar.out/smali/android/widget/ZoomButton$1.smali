.class Landroid/widget/ZoomButton$1;
.super Ljava/lang/Object;
.source "ZoomButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ZoomButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ZoomButton;


# direct methods
.method constructor <init>(Landroid/widget/ZoomButton;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Landroid/widget/ZoomButton$1;->this$0:Landroid/widget/ZoomButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 34
    iget-object v0, p0, Landroid/widget/ZoomButton$1;->this$0:Landroid/widget/ZoomButton;

    invoke-virtual {v0}, Landroid/widget/ZoomButton;->hasOnClickListeners()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ZoomButton$1;->this$0:Landroid/widget/ZoomButton;

    # getter for: Landroid/widget/ZoomButton;->mIsInLongpress:Z
    invoke-static {v0}, Landroid/widget/ZoomButton;->access$000(Landroid/widget/ZoomButton;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ZoomButton$1;->this$0:Landroid/widget/ZoomButton;

    invoke-virtual {v0}, Landroid/widget/ZoomButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Landroid/widget/ZoomButton$1;->this$0:Landroid/widget/ZoomButton;

    invoke-virtual {v0}, Landroid/widget/ZoomButton;->callOnClick()Z

    .line 36
    iget-object v0, p0, Landroid/widget/ZoomButton$1;->this$0:Landroid/widget/ZoomButton;

    # getter for: Landroid/widget/ZoomButton;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/widget/ZoomButton;->access$200(Landroid/widget/ZoomButton;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/ZoomButton$1;->this$0:Landroid/widget/ZoomButton;

    # getter for: Landroid/widget/ZoomButton;->mZoomSpeed:J
    invoke-static {v1}, Landroid/widget/ZoomButton;->access$100(Landroid/widget/ZoomButton;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 38
    :cond_0
    return-void
.end method
