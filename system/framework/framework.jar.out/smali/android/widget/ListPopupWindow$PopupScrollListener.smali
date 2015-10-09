.class Landroid/widget/ListPopupWindow$PopupScrollListener;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Landroid/widget/ListPopupWindow;)V
    .locals 0

    .prologue
    .line 1679
    iput-object p1, p0, Landroid/widget/ListPopupWindow$PopupScrollListener;->this$0:Landroid/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ListPopupWindow;Landroid/widget/ListPopupWindow$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/ListPopupWindow;
    .param p2, "x1"    # Landroid/widget/ListPopupWindow$1;

    .prologue
    .line 1679
    invoke-direct {p0, p1}, Landroid/widget/ListPopupWindow$PopupScrollListener;-><init>(Landroid/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 1683
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 1686
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Landroid/widget/ListPopupWindow$PopupScrollListener;->this$0:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isInputMethodNotNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/ListPopupWindow$PopupScrollListener;->this$0:Landroid/widget/ListPopupWindow;

    # getter for: Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
    invoke-static {v0}, Landroid/widget/ListPopupWindow;->access$900(Landroid/widget/ListPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1688
    iget-object v0, p0, Landroid/widget/ListPopupWindow$PopupScrollListener;->this$0:Landroid/widget/ListPopupWindow;

    # getter for: Landroid/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/widget/ListPopupWindow;->access$1100(Landroid/widget/ListPopupWindow;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/ListPopupWindow$PopupScrollListener;->this$0:Landroid/widget/ListPopupWindow;

    # getter for: Landroid/widget/ListPopupWindow;->mResizePopupRunnable:Landroid/widget/ListPopupWindow$ResizePopupRunnable;
    invoke-static {v1}, Landroid/widget/ListPopupWindow;->access$1000(Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow$ResizePopupRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1689
    iget-object v0, p0, Landroid/widget/ListPopupWindow$PopupScrollListener;->this$0:Landroid/widget/ListPopupWindow;

    # getter for: Landroid/widget/ListPopupWindow;->mResizePopupRunnable:Landroid/widget/ListPopupWindow$ResizePopupRunnable;
    invoke-static {v0}, Landroid/widget/ListPopupWindow;->access$1000(Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow$ResizePopupRunnable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow$ResizePopupRunnable;->run()V

    .line 1691
    :cond_0
    return-void
.end method
