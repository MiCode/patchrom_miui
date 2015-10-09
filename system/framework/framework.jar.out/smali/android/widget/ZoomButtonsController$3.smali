.class Landroid/widget/ZoomButtonsController$3;
.super Ljava/lang/Object;
.source "ZoomButtonsController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/ZoomButtonsController;->createContainer()Landroid/widget/FrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ZoomButtonsController;


# direct methods
.method constructor <init>(Landroid/widget/ZoomButtonsController;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Landroid/widget/ZoomButtonsController$3;->this$0:Landroid/widget/ZoomButtonsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 268
    iget-object v0, p0, Landroid/widget/ZoomButtonsController$3;->this$0:Landroid/widget/ZoomButtonsController;

    # getter for: Landroid/widget/ZoomButtonsController;->ZOOM_CONTROLS_TIMEOUT:I
    invoke-static {}, Landroid/widget/ZoomButtonsController;->access$400()I

    move-result v1

    # invokes: Landroid/widget/ZoomButtonsController;->dismissControlsDelayed(I)V
    invoke-static {v0, v1}, Landroid/widget/ZoomButtonsController;->access$500(Landroid/widget/ZoomButtonsController;I)V

    .line 269
    iget-object v0, p0, Landroid/widget/ZoomButtonsController$3;->this$0:Landroid/widget/ZoomButtonsController;

    # getter for: Landroid/widget/ZoomButtonsController;->mCallback:Landroid/widget/ZoomButtonsController$OnZoomListener;
    invoke-static {v0}, Landroid/widget/ZoomButtonsController;->access$600(Landroid/widget/ZoomButtonsController;)Landroid/widget/ZoomButtonsController$OnZoomListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ZoomButtonsController$3;->this$0:Landroid/widget/ZoomButtonsController;

    # getter for: Landroid/widget/ZoomButtonsController;->mCallback:Landroid/widget/ZoomButtonsController$OnZoomListener;
    invoke-static {v0}, Landroid/widget/ZoomButtonsController;->access$600(Landroid/widget/ZoomButtonsController;)Landroid/widget/ZoomButtonsController$OnZoomListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/widget/ZoomButtonsController$OnZoomListener;->onZoom(Z)V

    .line 270
    :cond_0
    return-void
.end method
