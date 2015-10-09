.class Landroid/widget/PopupWindow$1;
.super Ljava/lang/Object;
.source "PopupWindow.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/PopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Landroid/widget/PopupWindow;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Landroid/widget/PopupWindow$1;->this$0:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 9

    .prologue
    const/4 v6, -0x1

    .line 135
    iget-object v0, p0, Landroid/widget/PopupWindow$1;->this$0:Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Landroid/widget/PopupWindow;->access$000(Landroid/widget/PopupWindow;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/PopupWindow$1;->this$0:Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Landroid/widget/PopupWindow;->access$000(Landroid/widget/PopupWindow;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .line 136
    .local v1, "anchor":Landroid/view/View;
    :goto_0
    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow$1;->this$0:Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;
    invoke-static {v0}, Landroid/widget/PopupWindow;->access$100(Landroid/widget/PopupWindow;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Landroid/widget/PopupWindow$1;->this$0:Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;
    invoke-static {v0}, Landroid/widget/PopupWindow;->access$100(Landroid/widget/PopupWindow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 140
    .local v2, "p":Landroid/view/WindowManager$LayoutParams;
    iget-object v7, p0, Landroid/widget/PopupWindow$1;->this$0:Landroid/widget/PopupWindow;

    iget-object v0, p0, Landroid/widget/PopupWindow$1;->this$0:Landroid/widget/PopupWindow;

    iget-object v3, p0, Landroid/widget/PopupWindow$1;->this$0:Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/PopupWindow;->mAnchorXoff:I
    invoke-static {v3}, Landroid/widget/PopupWindow;->access$200(Landroid/widget/PopupWindow;)I

    move-result v3

    iget-object v4, p0, Landroid/widget/PopupWindow$1;->this$0:Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/PopupWindow;->mAnchorYoff:I
    invoke-static {v4}, Landroid/widget/PopupWindow;->access$300(Landroid/widget/PopupWindow;)I

    move-result v4

    iget-object v5, p0, Landroid/widget/PopupWindow$1;->this$0:Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/PopupWindow;->mAnchoredGravity:I
    invoke-static {v5}, Landroid/widget/PopupWindow;->access$400(Landroid/widget/PopupWindow;)I

    move-result v5

    # invokes: Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z
    invoke-static/range {v0 .. v5}, Landroid/widget/PopupWindow;->access$500(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result v0

    # invokes: Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V
    invoke-static {v7, v0}, Landroid/widget/PopupWindow;->access$600(Landroid/widget/PopupWindow;Z)V

    .line 142
    iget-object v3, p0, Landroid/widget/PopupWindow$1;->this$0:Landroid/widget/PopupWindow;

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v8, 0x1

    move v7, v6

    invoke-virtual/range {v3 .. v8}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 144
    .end local v2    # "p":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void

    .line 135
    .end local v1    # "anchor":Landroid/view/View;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
