.class Landroid/inputmethodservice/KeyboardView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "KeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/KeyboardView;->initGestureDetector()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/KeyboardView;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/KeyboardView;)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 15
    .param p1, "me1"    # Landroid/view/MotionEvent;
    .param p2, "me2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 388
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    # getter for: Landroid/inputmethodservice/KeyboardView;->mPossiblePoly:Z
    invoke-static {v0}, Landroid/inputmethodservice/KeyboardView;->access$500(Landroid/inputmethodservice/KeyboardView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 432
    :goto_0
    return v0

    .line 389
    :cond_0
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 390
    .local v6, "absX":F
    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 391
    .local v7, "absY":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float v8, v0, v1

    .line 392
    .local v8, "deltaX":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float v9, v0, v1

    .line 393
    .local v9, "deltaY":F
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    move-result v0

    div-int/lit8 v13, v0, 0x2

    .line 394
    .local v13, "travelX":I
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->getHeight()I

    move-result v0

    div-int/lit8 v14, v0, 0x2

    .line 395
    .local v14, "travelY":I
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    # getter for: Landroid/inputmethodservice/KeyboardView;->mSwipeTracker:Landroid/inputmethodservice/KeyboardView$SwipeTracker;
    invoke-static {v0}, Landroid/inputmethodservice/KeyboardView;->access$600(Landroid/inputmethodservice/KeyboardView;)Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->computeCurrentVelocity(I)V

    .line 396
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    # getter for: Landroid/inputmethodservice/KeyboardView;->mSwipeTracker:Landroid/inputmethodservice/KeyboardView$SwipeTracker;
    invoke-static {v0}, Landroid/inputmethodservice/KeyboardView;->access$600(Landroid/inputmethodservice/KeyboardView;)Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->getXVelocity()F

    move-result v10

    .line 397
    .local v10, "endingVelocityX":F
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    # getter for: Landroid/inputmethodservice/KeyboardView;->mSwipeTracker:Landroid/inputmethodservice/KeyboardView$SwipeTracker;
    invoke-static {v0}, Landroid/inputmethodservice/KeyboardView;->access$600(Landroid/inputmethodservice/KeyboardView;)Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->getYVelocity()F

    move-result v11

    .line 398
    .local v11, "endingVelocityY":F
    const/4 v12, 0x0

    .line 399
    .local v12, "sendDownKey":Z
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    # getter for: Landroid/inputmethodservice/KeyboardView;->mSwipeThreshold:I
    invoke-static {v0}, Landroid/inputmethodservice/KeyboardView;->access$700(Landroid/inputmethodservice/KeyboardView;)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_4

    cmpg-float v0, v7, v6

    if-gez v0, :cond_4

    int-to-float v0, v13

    cmpl-float v0, v8, v0

    if-lez v0, :cond_4

    .line 400
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    # getter for: Landroid/inputmethodservice/KeyboardView;->mDisambiguateSwipe:Z
    invoke-static {v0}, Landroid/inputmethodservice/KeyboardView;->access$800(Landroid/inputmethodservice/KeyboardView;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 v0, 0x40800000    # 4.0f

    div-float v0, p3, v0

    cmpg-float v0, v10, v0

    if-gez v0, :cond_3

    .line 401
    const/4 v12, 0x1

    .line 429
    :cond_1
    :goto_1
    if-eqz v12, :cond_2

    .line 430
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    # getter for: Landroid/inputmethodservice/KeyboardView;->mDownKey:I
    invoke-static {v1}, Landroid/inputmethodservice/KeyboardView;->access$900(Landroid/inputmethodservice/KeyboardView;)I

    move-result v1

    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    # getter for: Landroid/inputmethodservice/KeyboardView;->mStartX:I
    invoke-static {v2}, Landroid/inputmethodservice/KeyboardView;->access$1000(Landroid/inputmethodservice/KeyboardView;)I

    move-result v2

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    # getter for: Landroid/inputmethodservice/KeyboardView;->mStartY:I
    invoke-static {v3}, Landroid/inputmethodservice/KeyboardView;->access$1100(Landroid/inputmethodservice/KeyboardView;)I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    # invokes: Landroid/inputmethodservice/KeyboardView;->detectAndSendKey(IIIJ)V
    invoke-static/range {v0 .. v5}, Landroid/inputmethodservice/KeyboardView;->access$1200(Landroid/inputmethodservice/KeyboardView;IIIJ)V

    .line 432
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 403
    :cond_3
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->swipeRight()V

    .line 404
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 406
    :cond_4
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    # getter for: Landroid/inputmethodservice/KeyboardView;->mSwipeThreshold:I
    invoke-static {v0}, Landroid/inputmethodservice/KeyboardView;->access$700(Landroid/inputmethodservice/KeyboardView;)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_6

    cmpg-float v0, v7, v6

    if-gez v0, :cond_6

    neg-int v0, v13

    int-to-float v0, v0

    cmpg-float v0, v8, v0

    if-gez v0, :cond_6

    .line 407
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    # getter for: Landroid/inputmethodservice/KeyboardView;->mDisambiguateSwipe:Z
    invoke-static {v0}, Landroid/inputmethodservice/KeyboardView;->access$800(Landroid/inputmethodservice/KeyboardView;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/high16 v0, 0x40800000    # 4.0f

    div-float v0, p3, v0

    cmpl-float v0, v10, v0

    if-lez v0, :cond_5

    .line 408
    const/4 v12, 0x1

    goto :goto_1

    .line 410
    :cond_5
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->swipeLeft()V

    .line 411
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 413
    :cond_6
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    # getter for: Landroid/inputmethodservice/KeyboardView;->mSwipeThreshold:I
    invoke-static {v0}, Landroid/inputmethodservice/KeyboardView;->access$700(Landroid/inputmethodservice/KeyboardView;)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    cmpg-float v0, p4, v0

    if-gez v0, :cond_8

    cmpg-float v0, v6, v7

    if-gez v0, :cond_8

    neg-int v0, v14

    int-to-float v0, v0

    cmpg-float v0, v9, v0

    if-gez v0, :cond_8

    .line 414
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    # getter for: Landroid/inputmethodservice/KeyboardView;->mDisambiguateSwipe:Z
    invoke-static {v0}, Landroid/inputmethodservice/KeyboardView;->access$800(Landroid/inputmethodservice/KeyboardView;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/high16 v0, 0x40800000    # 4.0f

    div-float v0, p4, v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_7

    .line 415
    const/4 v12, 0x1

    goto :goto_1

    .line 417
    :cond_7
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->swipeUp()V

    .line 418
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 420
    :cond_8
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    # getter for: Landroid/inputmethodservice/KeyboardView;->mSwipeThreshold:I
    invoke-static {v0}, Landroid/inputmethodservice/KeyboardView;->access$700(Landroid/inputmethodservice/KeyboardView;)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p4, v0

    if-lez v0, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, v7, v0

    cmpg-float v0, v6, v0

    if-gez v0, :cond_1

    int-to-float v0, v14

    cmpl-float v0, v9, v0

    if-lez v0, :cond_1

    .line 421
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    # getter for: Landroid/inputmethodservice/KeyboardView;->mDisambiguateSwipe:Z
    invoke-static {v0}, Landroid/inputmethodservice/KeyboardView;->access$800(Landroid/inputmethodservice/KeyboardView;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/high16 v0, 0x40800000    # 4.0f

    div-float v0, p4, v0

    cmpg-float v0, v11, v0

    if-gez v0, :cond_9

    .line 422
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 424
    :cond_9
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->swipeDown()V

    .line 425
    const/4 v0, 0x1

    goto/16 :goto_0
.end method
