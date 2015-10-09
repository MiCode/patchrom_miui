.class Landroid/widget/ListPopupWindow$PopupTouchInterceptor;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupTouchInterceptor"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Landroid/widget/ListPopupWindow;)V
    .locals 0

    .prologue
    .line 1662
    iput-object p1, p0, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroid/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ListPopupWindow;Landroid/widget/ListPopupWindow$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/ListPopupWindow;
    .param p2, "x1"    # Landroid/widget/ListPopupWindow$1;

    .prologue
    .line 1662
    invoke-direct {p0, p1}, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;-><init>(Landroid/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1664
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1665
    .local v0, "action":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 1666
    .local v1, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 1668
    .local v2, "y":I
    if-nez v0, :cond_1

    iget-object v3, p0, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroid/widget/ListPopupWindow;

    # getter for: Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
    invoke-static {v3}, Landroid/widget/ListPopupWindow;->access$900(Landroid/widget/ListPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroid/widget/ListPopupWindow;

    # getter for: Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
    invoke-static {v3}, Landroid/widget/ListPopupWindow;->access$900(Landroid/widget/ListPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    if-ltz v1, :cond_1

    iget-object v3, p0, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroid/widget/ListPopupWindow;

    # getter for: Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
    invoke-static {v3}, Landroid/widget/ListPopupWindow;->access$900(Landroid/widget/ListPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    if-ge v1, v3, :cond_1

    if-ltz v2, :cond_1

    iget-object v3, p0, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroid/widget/ListPopupWindow;

    # getter for: Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
    invoke-static {v3}, Landroid/widget/ListPopupWindow;->access$900(Landroid/widget/ListPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1671
    iget-object v3, p0, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroid/widget/ListPopupWindow;

    # getter for: Landroid/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Landroid/widget/ListPopupWindow;->access$1100(Landroid/widget/ListPopupWindow;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroid/widget/ListPopupWindow;

    # getter for: Landroid/widget/ListPopupWindow;->mResizePopupRunnable:Landroid/widget/ListPopupWindow$ResizePopupRunnable;
    invoke-static {v4}, Landroid/widget/ListPopupWindow;->access$1000(Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow$ResizePopupRunnable;

    move-result-object v4

    const-wide/16 v5, 0xfa

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1675
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 1672
    :cond_1
    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 1673
    iget-object v3, p0, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroid/widget/ListPopupWindow;

    # getter for: Landroid/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Landroid/widget/ListPopupWindow;->access$1100(Landroid/widget/ListPopupWindow;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroid/widget/ListPopupWindow;

    # getter for: Landroid/widget/ListPopupWindow;->mResizePopupRunnable:Landroid/widget/ListPopupWindow$ResizePopupRunnable;
    invoke-static {v4}, Landroid/widget/ListPopupWindow;->access$1000(Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow$ResizePopupRunnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
