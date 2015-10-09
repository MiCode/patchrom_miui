.class Landroid/widget/MediaController$1;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/MediaController;


# direct methods
.method constructor <init>(Landroid/widget/MediaController;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Landroid/widget/MediaController$1;->this$0:Landroid/widget/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 187
    iget-object v0, p0, Landroid/widget/MediaController$1;->this$0:Landroid/widget/MediaController;

    # invokes: Landroid/widget/MediaController;->updateFloatingWindowLayout()V
    invoke-static {v0}, Landroid/widget/MediaController;->access$000(Landroid/widget/MediaController;)V

    .line 188
    iget-object v0, p0, Landroid/widget/MediaController$1;->this$0:Landroid/widget/MediaController;

    # getter for: Landroid/widget/MediaController;->mShowing:Z
    invoke-static {v0}, Landroid/widget/MediaController;->access$100(Landroid/widget/MediaController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Landroid/widget/MediaController$1;->this$0:Landroid/widget/MediaController;

    # getter for: Landroid/widget/MediaController;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Landroid/widget/MediaController;->access$400(Landroid/widget/MediaController;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/MediaController$1;->this$0:Landroid/widget/MediaController;

    # getter for: Landroid/widget/MediaController;->mDecor:Landroid/view/View;
    invoke-static {v1}, Landroid/widget/MediaController;->access$200(Landroid/widget/MediaController;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/MediaController$1;->this$0:Landroid/widget/MediaController;

    # getter for: Landroid/widget/MediaController;->mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v2}, Landroid/widget/MediaController;->access$300(Landroid/widget/MediaController;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    :cond_0
    return-void
.end method
