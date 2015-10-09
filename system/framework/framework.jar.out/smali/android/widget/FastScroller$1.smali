.class Landroid/widget/FastScroller$1;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/FastScroller;


# direct methods
.method constructor <init>(Landroid/widget/FastScroller;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Landroid/widget/FastScroller$1;->this$0:Landroid/widget/FastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 217
    iget-object v1, p0, Landroid/widget/FastScroller$1;->this$0:Landroid/widget/FastScroller;

    # getter for: Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;
    invoke-static {v1}, Landroid/widget/FastScroller;->access$000(Landroid/widget/FastScroller;)Landroid/widget/AbsListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AbsListView;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    iget-object v1, p0, Landroid/widget/FastScroller$1;->this$0:Landroid/widget/FastScroller;

    # invokes: Landroid/widget/FastScroller;->beginDrag()V
    invoke-static {v1}, Landroid/widget/FastScroller;->access$100(Landroid/widget/FastScroller;)V

    .line 220
    iget-object v1, p0, Landroid/widget/FastScroller$1;->this$0:Landroid/widget/FastScroller;

    iget-object v2, p0, Landroid/widget/FastScroller$1;->this$0:Landroid/widget/FastScroller;

    # getter for: Landroid/widget/FastScroller;->mInitialTouchY:F
    invoke-static {v2}, Landroid/widget/FastScroller;->access$200(Landroid/widget/FastScroller;)F

    move-result v2

    # invokes: Landroid/widget/FastScroller;->getPosFromMotionEvent(F)F
    invoke-static {v1, v2}, Landroid/widget/FastScroller;->access$300(Landroid/widget/FastScroller;F)F

    move-result v0

    .line 221
    .local v0, "pos":F
    iget-object v1, p0, Landroid/widget/FastScroller$1;->this$0:Landroid/widget/FastScroller;

    # invokes: Landroid/widget/FastScroller;->scrollTo(F)V
    invoke-static {v1, v0}, Landroid/widget/FastScroller;->access$400(Landroid/widget/FastScroller;F)V

    .line 224
    .end local v0    # "pos":F
    :cond_0
    iget-object v1, p0, Landroid/widget/FastScroller$1;->this$0:Landroid/widget/FastScroller;

    const/4 v2, 0x0

    # setter for: Landroid/widget/FastScroller;->mHasPendingDrag:Z
    invoke-static {v1, v2}, Landroid/widget/FastScroller;->access$502(Landroid/widget/FastScroller;Z)Z

    .line 225
    return-void
.end method
