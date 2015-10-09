.class Landroid/animation/LayoutTransition$3;
.super Ljava/lang/Object;
.source "LayoutTransition.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/animation/LayoutTransition;->setupChangeAnimation(Landroid/view/ViewGroup;ILandroid/animation/Animator;JLandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/animation/LayoutTransition;

.field final synthetic val$anim:Landroid/animation/Animator;

.field final synthetic val$changeReason:I

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$duration:J

.field final synthetic val$parent:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/animation/LayoutTransition;Landroid/animation/Animator;IJLandroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 890
    iput-object p1, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    iput-object p2, p0, Landroid/animation/LayoutTransition$3;->val$anim:Landroid/animation/Animator;

    iput p3, p0, Landroid/animation/LayoutTransition$3;->val$changeReason:I

    iput-wide p4, p0, Landroid/animation/LayoutTransition$3;->val$duration:J

    iput-object p6, p0, Landroid/animation/LayoutTransition$3;->val$child:Landroid/view/View;

    iput-object p7, p0, Landroid/animation/LayoutTransition$3;->val$parent:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 14
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
    .line 895
    iget-object v10, p0, Landroid/animation/LayoutTransition$3;->val$anim:Landroid/animation/Animator;

    invoke-virtual {v10}, Landroid/animation/Animator;->setupEndValues()V

    .line 896
    iget-object v10, p0, Landroid/animation/LayoutTransition$3;->val$anim:Landroid/animation/Animator;

    instance-of v10, v10, Landroid/animation/ValueAnimator;

    if-eqz v10, :cond_3

    .line 897
    const/4 v9, 0x0

    .line 898
    .local v9, "valuesDiffer":Z
    iget-object v8, p0, Landroid/animation/LayoutTransition$3;->val$anim:Landroid/animation/Animator;

    check-cast v8, Landroid/animation/ValueAnimator;

    .line 899
    .local v8, "valueAnim":Landroid/animation/ValueAnimator;
    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 900
    .local v2, "oldValues":[Landroid/animation/PropertyValuesHolder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v10, v2

    if-ge v0, v10, :cond_2

    .line 901
    aget-object v5, v2, v0

    .line 902
    .local v5, "pvh":Landroid/animation/PropertyValuesHolder;
    iget-object v1, v5, Landroid/animation/PropertyValuesHolder;->mKeyframeSet:Landroid/animation/KeyframeSet;

    .line 903
    .local v1, "keyframeSet":Landroid/animation/KeyframeSet;
    iget-object v10, v1, Landroid/animation/KeyframeSet;->mFirstKeyframe:Landroid/animation/Keyframe;

    if-eqz v10, :cond_0

    iget-object v10, v1, Landroid/animation/KeyframeSet;->mLastKeyframe:Landroid/animation/Keyframe;

    if-eqz v10, :cond_0

    iget-object v10, v1, Landroid/animation/KeyframeSet;->mFirstKeyframe:Landroid/animation/Keyframe;

    invoke-virtual {v10}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v10

    iget-object v11, v1, Landroid/animation/KeyframeSet;->mLastKeyframe:Landroid/animation/Keyframe;

    invoke-virtual {v11}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 907
    :cond_0
    const/4 v9, 0x1

    .line 900
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 910
    .end local v1    # "keyframeSet":Landroid/animation/KeyframeSet;
    .end local v5    # "pvh":Landroid/animation/PropertyValuesHolder;
    :cond_2
    if-nez v9, :cond_3

    .line 960
    .end local v0    # "i":I
    .end local v2    # "oldValues":[Landroid/animation/PropertyValuesHolder;
    .end local v8    # "valueAnim":Landroid/animation/ValueAnimator;
    .end local v9    # "valuesDiffer":Z
    :goto_1
    return-void

    .line 915
    :cond_3
    const-wide/16 v6, 0x0

    .line 916
    .local v6, "startDelay":J
    iget v10, p0, Landroid/animation/LayoutTransition$3;->val$changeReason:I

    packed-switch v10, :pswitch_data_0

    .line 940
    :cond_4
    :goto_2
    iget-object v10, p0, Landroid/animation/LayoutTransition$3;->val$anim:Landroid/animation/Animator;

    invoke-virtual {v10, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 941
    iget-object v10, p0, Landroid/animation/LayoutTransition$3;->val$anim:Landroid/animation/Animator;

    iget-wide v11, p0, Landroid/animation/LayoutTransition$3;->val$duration:J

    invoke-virtual {v10, v11, v12}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 943
    iget-object v10, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    # getter for: Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;
    invoke-static {v10}, Landroid/animation/LayoutTransition;->access$1500(Landroid/animation/LayoutTransition;)Ljava/util/LinkedHashMap;

    move-result-object v10

    iget-object v11, p0, Landroid/animation/LayoutTransition$3;->val$child:Landroid/view/View;

    invoke-virtual {v10, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    .line 944
    .local v4, "prevAnimation":Landroid/animation/Animator;
    if-eqz v4, :cond_5

    .line 945
    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    .line 947
    :cond_5
    iget-object v10, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    # getter for: Landroid/animation/LayoutTransition;->pendingAnimations:Ljava/util/HashMap;
    invoke-static {v10}, Landroid/animation/LayoutTransition;->access$100(Landroid/animation/LayoutTransition;)Ljava/util/HashMap;

    move-result-object v10

    iget-object v11, p0, Landroid/animation/LayoutTransition$3;->val$child:Landroid/view/View;

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    .line 948
    .local v3, "pendingAnimation":Landroid/animation/Animator;
    if-eqz v3, :cond_6

    .line 949
    iget-object v10, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    # getter for: Landroid/animation/LayoutTransition;->pendingAnimations:Ljava/util/HashMap;
    invoke-static {v10}, Landroid/animation/LayoutTransition;->access$100(Landroid/animation/LayoutTransition;)Ljava/util/HashMap;

    move-result-object v10

    iget-object v11, p0, Landroid/animation/LayoutTransition$3;->val$child:Landroid/view/View;

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    :cond_6
    iget-object v10, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    # getter for: Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;
    invoke-static {v10}, Landroid/animation/LayoutTransition;->access$1500(Landroid/animation/LayoutTransition;)Ljava/util/LinkedHashMap;

    move-result-object v10

    iget-object v11, p0, Landroid/animation/LayoutTransition$3;->val$child:Landroid/view/View;

    iget-object v12, p0, Landroid/animation/LayoutTransition$3;->val$anim:Landroid/animation/Animator;

    invoke-virtual {v10, v11, v12}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    iget-object v10, p0, Landroid/animation/LayoutTransition$3;->val$parent:Landroid/view/ViewGroup;

    iget-object v11, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->requestTransitionStart(Landroid/animation/LayoutTransition;)V

    .line 958
    iget-object v10, p0, Landroid/animation/LayoutTransition$3;->val$child:Landroid/view/View;

    invoke-virtual {v10, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 959
    iget-object v10, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    # getter for: Landroid/animation/LayoutTransition;->layoutChangeListenerMap:Ljava/util/HashMap;
    invoke-static {v10}, Landroid/animation/LayoutTransition;->access$000(Landroid/animation/LayoutTransition;)Ljava/util/HashMap;

    move-result-object v10

    iget-object v11, p0, Landroid/animation/LayoutTransition$3;->val$child:Landroid/view/View;

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 918
    .end local v3    # "pendingAnimation":Landroid/animation/Animator;
    .end local v4    # "prevAnimation":Landroid/animation/Animator;
    :pswitch_0
    iget-object v10, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    # getter for: Landroid/animation/LayoutTransition;->mChangingAppearingDelay:J
    invoke-static {v10}, Landroid/animation/LayoutTransition;->access$200(Landroid/animation/LayoutTransition;)J

    move-result-wide v10

    iget-object v12, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    # getter for: Landroid/animation/LayoutTransition;->staggerDelay:J
    invoke-static {v12}, Landroid/animation/LayoutTransition;->access$300(Landroid/animation/LayoutTransition;)J

    move-result-wide v12

    add-long v6, v10, v12

    .line 919
    iget-object v10, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    iget-object v11, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    # getter for: Landroid/animation/LayoutTransition;->mChangingAppearingStagger:J
    invoke-static {v11}, Landroid/animation/LayoutTransition;->access$400(Landroid/animation/LayoutTransition;)J

    move-result-wide v11

    # += operator for: Landroid/animation/LayoutTransition;->staggerDelay:J
    invoke-static {v10, v11, v12}, Landroid/animation/LayoutTransition;->access$314(Landroid/animation/LayoutTransition;J)J

    .line 920
    iget-object v10, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    # getter for: Landroid/animation/LayoutTransition;->mChangingAppearingInterpolator:Landroid/animation/TimeInterpolator;
    invoke-static {v10}, Landroid/animation/LayoutTransition;->access$500(Landroid/animation/LayoutTransition;)Landroid/animation/TimeInterpolator;

    move-result-object v10

    # getter for: Landroid/animation/LayoutTransition;->sChangingAppearingInterpolator:Landroid/animation/TimeInterpolator;
    invoke-static {}, Landroid/animation/LayoutTransition;->access$600()Landroid/animation/TimeInterpolator;

    move-result-object v11

    if-eq v10, v11, :cond_4

    .line 921
    iget-object v10, p0, Landroid/animation/LayoutTransition$3;->val$anim:Landroid/animation/Animator;

    iget-object v11, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    # getter for: Landroid/animation/LayoutTransition;->mChangingAppearingInterpolator:Landroid/animation/TimeInterpolator;
    invoke-static {v11}, Landroid/animation/LayoutTransition;->access$500(Landroid/animation/LayoutTransition;)Landroid/animation/TimeInterpolator;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/16 :goto_2

    .line 925
    :pswitch_1
    iget-object v10, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    # getter for: Landroid/animation/LayoutTransition;->mChangingDisappearingDelay:J
    invoke-static {v10}, Landroid/animation/LayoutTransition;->access$700(Landroid/animation/LayoutTransition;)J

    move-result-wide v10

    iget-object v12, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    # getter for: Landroid/animation/LayoutTransition;->staggerDelay:J
    invoke-static {v12}, Landroid/animation/LayoutTransition;->access$300(Landroid/animation/LayoutTransition;)J

    move-result-wide v12

    add-long v6, v10, v12

    .line 926
    iget-object v10, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    iget-object v11, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    # getter for: Landroid/animation/LayoutTransition;->mChangingDisappearingStagger:J
    invoke-static {v11}, Landroid/animation/LayoutTransition;->access$800(Landroid/animation/LayoutTransition;)J

    move-result-wide v11

    # += operator for: Landroid/animation/LayoutTransition;->staggerDelay:J
    invoke-static {v10, v11, v12}, Landroid/animation/LayoutTransition;->access$314(Landroid/animation/LayoutTransition;J)J

    .line 927
    iget-object v10, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    # getter for: Landroid/animation/LayoutTransition;->mChangingDisappearingInterpolator:Landroid/animation/TimeInterpolator;
    invoke-static {v10}, Landroid/animation/LayoutTransition;->access$900(Landroid/animation/LayoutTransition;)Landroid/animation/TimeInterpolator;

    move-result-object v10

    # getter for: Landroid/animation/LayoutTransition;->sChangingDisappearingInterpolator:Landroid/animation/TimeInterpolator;
    invoke-static {}, Landroid/animation/LayoutTransition;->access$1000()Landroid/animation/TimeInterpolator;

    move-result-object v11

    if-eq v10, v11, :cond_4

    .line 929
    iget-object v10, p0, Landroid/animation/LayoutTransition$3;->val$anim:Landroid/animation/Animator;

    iget-object v11, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    # getter for: Landroid/animation/LayoutTransition;->mChangingDisappearingInterpolator:Landroid/animation/TimeInterpolator;
    invoke-static {v11}, Landroid/animation/LayoutTransition;->access$900(Landroid/animation/LayoutTransition;)Landroid/animation/TimeInterpolator;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/16 :goto_2

    .line 933
    :pswitch_2
    iget-object v10, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    # getter for: Landroid/animation/LayoutTransition;->mChangingDelay:J
    invoke-static {v10}, Landroid/animation/LayoutTransition;->access$1100(Landroid/animation/LayoutTransition;)J

    move-result-wide v10

    iget-object v12, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    # getter for: Landroid/animation/LayoutTransition;->staggerDelay:J
    invoke-static {v12}, Landroid/animation/LayoutTransition;->access$300(Landroid/animation/LayoutTransition;)J

    move-result-wide v12

    add-long v6, v10, v12

    .line 934
    iget-object v10, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    iget-object v11, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    # getter for: Landroid/animation/LayoutTransition;->mChangingStagger:J
    invoke-static {v11}, Landroid/animation/LayoutTransition;->access$1200(Landroid/animation/LayoutTransition;)J

    move-result-wide v11

    # += operator for: Landroid/animation/LayoutTransition;->staggerDelay:J
    invoke-static {v10, v11, v12}, Landroid/animation/LayoutTransition;->access$314(Landroid/animation/LayoutTransition;J)J

    .line 935
    iget-object v10, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    # getter for: Landroid/animation/LayoutTransition;->mChangingInterpolator:Landroid/animation/TimeInterpolator;
    invoke-static {v10}, Landroid/animation/LayoutTransition;->access$1300(Landroid/animation/LayoutTransition;)Landroid/animation/TimeInterpolator;

    move-result-object v10

    # getter for: Landroid/animation/LayoutTransition;->sChangingInterpolator:Landroid/animation/TimeInterpolator;
    invoke-static {}, Landroid/animation/LayoutTransition;->access$1400()Landroid/animation/TimeInterpolator;

    move-result-object v11

    if-eq v10, v11, :cond_4

    .line 936
    iget-object v10, p0, Landroid/animation/LayoutTransition$3;->val$anim:Landroid/animation/Animator;

    iget-object v11, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    # getter for: Landroid/animation/LayoutTransition;->mChangingInterpolator:Landroid/animation/TimeInterpolator;
    invoke-static {v11}, Landroid/animation/LayoutTransition;->access$1300(Landroid/animation/LayoutTransition;)Landroid/animation/TimeInterpolator;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/16 :goto_2

    .line 916
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
