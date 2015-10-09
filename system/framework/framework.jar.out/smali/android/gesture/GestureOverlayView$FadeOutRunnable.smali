.class Landroid/gesture/GestureOverlayView$FadeOutRunnable;
.super Ljava/lang/Object;
.source "GestureOverlayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/gesture/GestureOverlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FadeOutRunnable"
.end annotation


# instance fields
.field fireActionPerformed:Z

.field resetMultipleStrokes:Z

.field final synthetic this$0:Landroid/gesture/GestureOverlayView;


# direct methods
.method private constructor <init>(Landroid/gesture/GestureOverlayView;)V
    .locals 0

    .prologue
    .line 733
    iput-object p1, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/gesture/GestureOverlayView;Landroid/gesture/GestureOverlayView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/gesture/GestureOverlayView;
    .param p2, "x1"    # Landroid/gesture/GestureOverlayView$1;

    .prologue
    .line 733
    invoke-direct {p0, p1}, Landroid/gesture/GestureOverlayView$FadeOutRunnable;-><init>(Landroid/gesture/GestureOverlayView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0xff

    const/4 v8, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 738
    iget-object v5, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    # getter for: Landroid/gesture/GestureOverlayView;->mIsFadingOut:Z
    invoke-static {v5}, Landroid/gesture/GestureOverlayView;->access$100(Landroid/gesture/GestureOverlayView;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 739
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    .line 740
    .local v3, "now":J
    iget-object v5, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    # getter for: Landroid/gesture/GestureOverlayView;->mFadingStart:J
    invoke-static {v5}, Landroid/gesture/GestureOverlayView;->access$200(Landroid/gesture/GestureOverlayView;)J

    move-result-wide v5

    sub-long v0, v3, v5

    .line 742
    .local v0, "duration":J
    iget-object v5, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    # getter for: Landroid/gesture/GestureOverlayView;->mFadeDuration:J
    invoke-static {v5}, Landroid/gesture/GestureOverlayView;->access$300(Landroid/gesture/GestureOverlayView;)J

    move-result-wide v5

    cmp-long v5, v0, v5

    if-lez v5, :cond_1

    .line 743
    iget-boolean v5, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->fireActionPerformed:Z

    if-eqz v5, :cond_0

    .line 744
    iget-object v5, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    # invokes: Landroid/gesture/GestureOverlayView;->fireOnGesturePerformed()V
    invoke-static {v5}, Landroid/gesture/GestureOverlayView;->access$400(Landroid/gesture/GestureOverlayView;)V

    .line 747
    :cond_0
    iget-object v5, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    # setter for: Landroid/gesture/GestureOverlayView;->mPreviousWasGesturing:Z
    invoke-static {v5, v7}, Landroid/gesture/GestureOverlayView;->access$502(Landroid/gesture/GestureOverlayView;Z)Z

    .line 748
    iget-object v5, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    # setter for: Landroid/gesture/GestureOverlayView;->mIsFadingOut:Z
    invoke-static {v5, v7}, Landroid/gesture/GestureOverlayView;->access$102(Landroid/gesture/GestureOverlayView;Z)Z

    .line 749
    iget-object v5, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    # setter for: Landroid/gesture/GestureOverlayView;->mFadingHasStarted:Z
    invoke-static {v5, v7}, Landroid/gesture/GestureOverlayView;->access$602(Landroid/gesture/GestureOverlayView;Z)Z

    .line 750
    iget-object v5, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    # getter for: Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;
    invoke-static {v5}, Landroid/gesture/GestureOverlayView;->access$700(Landroid/gesture/GestureOverlayView;)Landroid/graphics/Path;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    .line 751
    iget-object v5, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    # setter for: Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;
    invoke-static {v5, v11}, Landroid/gesture/GestureOverlayView;->access$802(Landroid/gesture/GestureOverlayView;Landroid/gesture/Gesture;)Landroid/gesture/Gesture;

    .line 752
    iget-object v5, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    # invokes: Landroid/gesture/GestureOverlayView;->setPaintAlpha(I)V
    invoke-static {v5, v10}, Landroid/gesture/GestureOverlayView;->access$900(Landroid/gesture/GestureOverlayView;I)V

    .line 773
    .end local v0    # "duration":J
    .end local v3    # "now":J
    :goto_0
    iget-object v5, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    invoke-virtual {v5}, Landroid/gesture/GestureOverlayView;->invalidate()V

    .line 774
    return-void

    .line 754
    .restart local v0    # "duration":J
    .restart local v3    # "now":J
    :cond_1
    iget-object v5, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    # setter for: Landroid/gesture/GestureOverlayView;->mFadingHasStarted:Z
    invoke-static {v5, v8}, Landroid/gesture/GestureOverlayView;->access$602(Landroid/gesture/GestureOverlayView;Z)Z

    .line 755
    const/4 v5, 0x0

    long-to-float v6, v0

    iget-object v7, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    # getter for: Landroid/gesture/GestureOverlayView;->mFadeDuration:J
    invoke-static {v7}, Landroid/gesture/GestureOverlayView;->access$300(Landroid/gesture/GestureOverlayView;)J

    move-result-wide v7

    long-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v9, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 757
    .local v2, "interpolatedTime":F
    iget-object v5, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    iget-object v6, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    # getter for: Landroid/gesture/GestureOverlayView;->mInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;
    invoke-static {v6}, Landroid/gesture/GestureOverlayView;->access$1100(Landroid/gesture/GestureOverlayView;)Landroid/view/animation/AccelerateDecelerateInterpolator;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;->getInterpolation(F)F

    move-result v6

    sub-float v6, v9, v6

    # setter for: Landroid/gesture/GestureOverlayView;->mFadingAlpha:F
    invoke-static {v5, v6}, Landroid/gesture/GestureOverlayView;->access$1002(Landroid/gesture/GestureOverlayView;F)F

    .line 758
    iget-object v5, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    const/high16 v6, 0x437f0000    # 255.0f

    iget-object v7, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    # getter for: Landroid/gesture/GestureOverlayView;->mFadingAlpha:F
    invoke-static {v7}, Landroid/gesture/GestureOverlayView;->access$1000(Landroid/gesture/GestureOverlayView;)F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    # invokes: Landroid/gesture/GestureOverlayView;->setPaintAlpha(I)V
    invoke-static {v5, v6}, Landroid/gesture/GestureOverlayView;->access$900(Landroid/gesture/GestureOverlayView;I)V

    .line 759
    iget-object v5, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    const-wide/16 v6, 0x10

    invoke-virtual {v5, p0, v6, v7}, Landroid/gesture/GestureOverlayView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 761
    .end local v0    # "duration":J
    .end local v2    # "interpolatedTime":F
    .end local v3    # "now":J
    :cond_2
    iget-boolean v5, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->resetMultipleStrokes:Z

    if-eqz v5, :cond_3

    .line 762
    iget-object v5, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    # setter for: Landroid/gesture/GestureOverlayView;->mResetGesture:Z
    invoke-static {v5, v8}, Landroid/gesture/GestureOverlayView;->access$1202(Landroid/gesture/GestureOverlayView;Z)Z

    goto :goto_0

    .line 764
    :cond_3
    iget-object v5, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    # invokes: Landroid/gesture/GestureOverlayView;->fireOnGesturePerformed()V
    invoke-static {v5}, Landroid/gesture/GestureOverlayView;->access$400(Landroid/gesture/GestureOverlayView;)V

    .line 766
    iget-object v5, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    # setter for: Landroid/gesture/GestureOverlayView;->mFadingHasStarted:Z
    invoke-static {v5, v7}, Landroid/gesture/GestureOverlayView;->access$602(Landroid/gesture/GestureOverlayView;Z)Z

    .line 767
    iget-object v5, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    # getter for: Landroid/gesture/GestureOverlayView;->mPath:Landroid/graphics/Path;
    invoke-static {v5}, Landroid/gesture/GestureOverlayView;->access$700(Landroid/gesture/GestureOverlayView;)Landroid/graphics/Path;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    .line 768
    iget-object v5, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    # setter for: Landroid/gesture/GestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;
    invoke-static {v5, v11}, Landroid/gesture/GestureOverlayView;->access$802(Landroid/gesture/GestureOverlayView;Landroid/gesture/Gesture;)Landroid/gesture/Gesture;

    .line 769
    iget-object v5, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    # setter for: Landroid/gesture/GestureOverlayView;->mPreviousWasGesturing:Z
    invoke-static {v5, v7}, Landroid/gesture/GestureOverlayView;->access$502(Landroid/gesture/GestureOverlayView;Z)Z

    .line 770
    iget-object v5, p0, Landroid/gesture/GestureOverlayView$FadeOutRunnable;->this$0:Landroid/gesture/GestureOverlayView;

    # invokes: Landroid/gesture/GestureOverlayView;->setPaintAlpha(I)V
    invoke-static {v5, v10}, Landroid/gesture/GestureOverlayView;->access$900(Landroid/gesture/GestureOverlayView;I)V

    goto :goto_0
.end method
