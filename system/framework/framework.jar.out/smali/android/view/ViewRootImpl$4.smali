.class Landroid/view/ViewRootImpl$4;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewRootImpl;->loadSystemProperties()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 0

    .prologue
    .line 5348
    iput-object p1, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v4, 0x17

    const/4 v3, 0x0

    .line 5352
    iget-object v1, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    const-string/jumbo v2, "viewroot.profile_rendering"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    # setter for: Landroid/view/ViewRootImpl;->mProfileRendering:Z
    invoke-static {v1, v2}, Landroid/view/ViewRootImpl;->access$1802(Landroid/view/ViewRootImpl;Z)Z

    .line 5353
    iget-object v1, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    # invokes: Landroid/view/ViewRootImpl;->profileRendering(Z)V
    invoke-static {v1, v2}, Landroid/view/ViewRootImpl;->access$300(Landroid/view/ViewRootImpl;Z)V

    .line 5356
    iget-object v1, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    const-string v2, "config.disable_media"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    # setter for: Landroid/view/ViewRootImpl;->mMediaDisabled:Z
    invoke-static {v1, v2}, Landroid/view/ViewRootImpl;->access$1902(Landroid/view/ViewRootImpl;Z)Z

    .line 5359
    iget-object v1, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v1, :cond_0

    .line 5360
    iget-object v1, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    iget-object v2, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    # getter for: Landroid/view/ViewRootImpl;->mHolder:Landroid/view/SurfaceHolder;
    invoke-static {v2}, Landroid/view/ViewRootImpl;->access$600(Landroid/view/ViewRootImpl;)Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/HardwareRenderer;->loadSystemProperties(Landroid/view/Surface;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5361
    iget-object v1, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 5366
    :cond_0
    const-string v1, "debug.layout"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 5367
    .local v0, "layout":Z
    iget-object v1, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mDebugLayout:Z

    if-eq v0, v1, :cond_1

    .line 5368
    iget-object v1, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mDebugLayout:Z

    .line 5369
    iget-object v1, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v4}, Landroid/view/ViewRootImpl$ViewRootHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5370
    iget-object v1, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v4, v2, v3}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 5373
    :cond_1
    return-void
.end method
