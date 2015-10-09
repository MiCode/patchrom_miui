.class Landroid/view/ViewPropertyAnimator$AnimatorEventListener;
.super Ljava/lang/Object;
.source "ViewPropertyAnimator.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewPropertyAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatorEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewPropertyAnimator;


# direct methods
.method private constructor <init>(Landroid/view/ViewPropertyAnimator;)V
    .locals 0

    .prologue
    .line 986
    iput-object p1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/ViewPropertyAnimator;Landroid/view/ViewPropertyAnimator$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/ViewPropertyAnimator;
    .param p2, "x1"    # Landroid/view/ViewPropertyAnimator$1;

    .prologue
    .line 986
    invoke-direct {p0, p1}, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;-><init>(Landroid/view/ViewPropertyAnimator;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1011
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    # getter for: Landroid/view/ViewPropertyAnimator;->mListener:Landroid/animation/Animator$AnimatorListener;
    invoke-static {v0}, Landroid/view/ViewPropertyAnimator;->access$500(Landroid/view/ViewPropertyAnimator;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1012
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    # getter for: Landroid/view/ViewPropertyAnimator;->mListener:Landroid/animation/Animator$AnimatorListener;
    invoke-static {v0}, Landroid/view/ViewPropertyAnimator;->access$500(Landroid/view/ViewPropertyAnimator;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 1014
    :cond_0
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    # getter for: Landroid/view/ViewPropertyAnimator;->mAnimatorOnEndMap:Ljava/util/HashMap;
    invoke-static {v0}, Landroid/view/ViewPropertyAnimator;->access$600(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1015
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    # getter for: Landroid/view/ViewPropertyAnimator;->mAnimatorOnEndMap:Ljava/util/HashMap;
    invoke-static {v0}, Landroid/view/ViewPropertyAnimator;->access$600(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1028
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    # getter for: Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->access$200(Landroid/view/ViewPropertyAnimator;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setHasTransientState(Z)V

    .line 1029
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    # getter for: Landroid/view/ViewPropertyAnimator;->mListener:Landroid/animation/Animator$AnimatorListener;
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->access$500(Landroid/view/ViewPropertyAnimator;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1030
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    # getter for: Landroid/view/ViewPropertyAnimator;->mListener:Landroid/animation/Animator$AnimatorListener;
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->access$500(Landroid/view/ViewPropertyAnimator;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1032
    :cond_0
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    # getter for: Landroid/view/ViewPropertyAnimator;->mAnimatorOnEndMap:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->access$600(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1033
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    # getter for: Landroid/view/ViewPropertyAnimator;->mAnimatorOnEndMap:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->access$600(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 1034
    .local v0, "r":Ljava/lang/Runnable;
    if-eqz v0, :cond_1

    .line 1035
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1037
    :cond_1
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    # getter for: Landroid/view/ViewPropertyAnimator;->mAnimatorOnEndMap:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->access$600(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1039
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_2
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    # getter for: Landroid/view/ViewPropertyAnimator;->mAnimatorCleanupMap:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->access$700(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1040
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    # getter for: Landroid/view/ViewPropertyAnimator;->mAnimatorCleanupMap:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->access$700(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 1041
    .restart local v0    # "r":Ljava/lang/Runnable;
    if-eqz v0, :cond_3

    .line 1042
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1044
    :cond_3
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    # getter for: Landroid/view/ViewPropertyAnimator;->mAnimatorCleanupMap:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->access$700(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1046
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_4
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    # getter for: Landroid/view/ViewPropertyAnimator;->mAnimatorMap:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->access$800(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1021
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    # getter for: Landroid/view/ViewPropertyAnimator;->mListener:Landroid/animation/Animator$AnimatorListener;
    invoke-static {v0}, Landroid/view/ViewPropertyAnimator;->access$500(Landroid/view/ViewPropertyAnimator;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1022
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    # getter for: Landroid/view/ViewPropertyAnimator;->mListener:Landroid/animation/Animator$AnimatorListener;
    invoke-static {v0}, Landroid/view/ViewPropertyAnimator;->access$500(Landroid/view/ViewPropertyAnimator;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 1024
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 990
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    # getter for: Landroid/view/ViewPropertyAnimator;->mAnimatorSetupMap:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->access$300(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 991
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    # getter for: Landroid/view/ViewPropertyAnimator;->mAnimatorSetupMap:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->access$300(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 992
    .local v0, "r":Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 993
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 995
    :cond_0
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    # getter for: Landroid/view/ViewPropertyAnimator;->mAnimatorSetupMap:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->access$300(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_1
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    # getter for: Landroid/view/ViewPropertyAnimator;->mAnimatorOnStartMap:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->access$400(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 998
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    # getter for: Landroid/view/ViewPropertyAnimator;->mAnimatorOnStartMap:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->access$400(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 999
    .restart local v0    # "r":Ljava/lang/Runnable;
    if-eqz v0, :cond_2

    .line 1000
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1002
    :cond_2
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    # getter for: Landroid/view/ViewPropertyAnimator;->mAnimatorOnStartMap:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->access$400(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_3
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    # getter for: Landroid/view/ViewPropertyAnimator;->mListener:Landroid/animation/Animator$AnimatorListener;
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->access$500(Landroid/view/ViewPropertyAnimator;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1005
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    # getter for: Landroid/view/ViewPropertyAnimator;->mListener:Landroid/animation/Animator$AnimatorListener;
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->access$500(Landroid/view/ViewPropertyAnimator;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 1007
    :cond_4
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 14
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 1059
    iget-object v12, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    # getter for: Landroid/view/ViewPropertyAnimator;->mAnimatorMap:Ljava/util/HashMap;
    invoke-static {v12}, Landroid/view/ViewPropertyAnimator;->access$800(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewPropertyAnimator$PropertyBundle;

    .line 1060
    .local v4, "propertyBundle":Landroid/view/ViewPropertyAnimator$PropertyBundle;
    if-nez v4, :cond_1

    .line 1109
    :cond_0
    :goto_0
    return-void

    .line 1064
    :cond_1
    iget-object v12, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    # getter for: Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;
    invoke-static {v12}, Landroid/view/ViewPropertyAnimator;->access$200(Landroid/view/ViewPropertyAnimator;)Landroid/view/View;

    move-result-object v12

    iget-object v12, v12, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v12, :cond_4

    move v6, v10

    .line 1071
    .local v6, "useDisplayListProperties":Z
    :goto_1
    const/4 v0, 0x0

    .line 1072
    .local v0, "alphaHandled":Z
    if-nez v6, :cond_2

    .line 1073
    iget-object v12, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    # getter for: Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;
    invoke-static {v12}, Landroid/view/ViewPropertyAnimator;->access$200(Landroid/view/ViewPropertyAnimator;)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->invalidateParentCaches()V

    .line 1075
    :cond_2
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    .line 1076
    .local v2, "fraction":F
    iget v5, v4, Landroid/view/ViewPropertyAnimator$PropertyBundle;->mPropertyMask:I

    .line 1077
    .local v5, "propertyMask":I
    and-int/lit16 v12, v5, 0x1ff

    if-eqz v12, :cond_3

    .line 1078
    iget-object v12, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    # getter for: Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;
    invoke-static {v12}, Landroid/view/ViewPropertyAnimator;->access$200(Landroid/view/ViewPropertyAnimator;)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12, v11, v11}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 1080
    :cond_3
    iget-object v8, v4, Landroid/view/ViewPropertyAnimator$PropertyBundle;->mNameValuesHolder:Ljava/util/ArrayList;

    .line 1081
    .local v8, "valueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewPropertyAnimator$NameValuesHolder;>;"
    if-eqz v8, :cond_6

    .line 1082
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1083
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v1, :cond_6

    .line 1084
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/ViewPropertyAnimator$NameValuesHolder;

    .line 1085
    .local v9, "values":Landroid/view/ViewPropertyAnimator$NameValuesHolder;
    iget v12, v9, Landroid/view/ViewPropertyAnimator$NameValuesHolder;->mFromValue:F

    iget v13, v9, Landroid/view/ViewPropertyAnimator$NameValuesHolder;->mDeltaValue:F

    mul-float/2addr v13, v2

    add-float v7, v12, v13

    .line 1086
    .local v7, "value":F
    iget v12, v9, Landroid/view/ViewPropertyAnimator$NameValuesHolder;->mNameConstant:I

    const/16 v13, 0x200

    if-ne v12, v13, :cond_5

    .line 1087
    iget-object v12, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    # getter for: Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;
    invoke-static {v12}, Landroid/view/ViewPropertyAnimator;->access$200(Landroid/view/ViewPropertyAnimator;)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/view/View;->setAlphaNoInvalidation(F)Z

    move-result v0

    .line 1083
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v0    # "alphaHandled":Z
    .end local v1    # "count":I
    .end local v2    # "fraction":F
    .end local v3    # "i":I
    .end local v5    # "propertyMask":I
    .end local v6    # "useDisplayListProperties":Z
    .end local v7    # "value":F
    .end local v8    # "valueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewPropertyAnimator$NameValuesHolder;>;"
    .end local v9    # "values":Landroid/view/ViewPropertyAnimator$NameValuesHolder;
    :cond_4
    move v6, v11

    .line 1064
    goto :goto_1

    .line 1089
    .restart local v0    # "alphaHandled":Z
    .restart local v1    # "count":I
    .restart local v2    # "fraction":F
    .restart local v3    # "i":I
    .restart local v5    # "propertyMask":I
    .restart local v6    # "useDisplayListProperties":Z
    .restart local v7    # "value":F
    .restart local v8    # "valueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewPropertyAnimator$NameValuesHolder;>;"
    .restart local v9    # "values":Landroid/view/ViewPropertyAnimator$NameValuesHolder;
    :cond_5
    iget-object v12, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    iget v13, v9, Landroid/view/ViewPropertyAnimator$NameValuesHolder;->mNameConstant:I

    # invokes: Landroid/view/ViewPropertyAnimator;->setValue(IF)V
    invoke-static {v12, v13, v7}, Landroid/view/ViewPropertyAnimator;->access$900(Landroid/view/ViewPropertyAnimator;IF)V

    goto :goto_3

    .line 1093
    .end local v1    # "count":I
    .end local v3    # "i":I
    .end local v7    # "value":F
    .end local v9    # "values":Landroid/view/ViewPropertyAnimator$NameValuesHolder;
    :cond_6
    and-int/lit16 v12, v5, 0x1ff

    if-eqz v12, :cond_7

    .line 1094
    iget-object v12, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    # getter for: Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;
    invoke-static {v12}, Landroid/view/ViewPropertyAnimator;->access$200(Landroid/view/ViewPropertyAnimator;)Landroid/view/View;

    move-result-object v12

    iget-object v12, v12, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iput-boolean v10, v12, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 1095
    if-nez v6, :cond_7

    .line 1096
    iget-object v12, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    # getter for: Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;
    invoke-static {v12}, Landroid/view/ViewPropertyAnimator;->access$200(Landroid/view/ViewPropertyAnimator;)Landroid/view/View;

    move-result-object v12

    iget v13, v12, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v13, v13, 0x20

    iput v13, v12, Landroid/view/View;->mPrivateFlags:I

    .line 1101
    :cond_7
    if-eqz v0, :cond_8

    .line 1102
    iget-object v11, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    # getter for: Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;
    invoke-static {v11}, Landroid/view/ViewPropertyAnimator;->access$200(Landroid/view/ViewPropertyAnimator;)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/view/View;->invalidate(Z)V

    .line 1106
    :goto_4
    iget-object v10, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    # getter for: Landroid/view/ViewPropertyAnimator;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    invoke-static {v10}, Landroid/view/ViewPropertyAnimator;->access$1000(Landroid/view/ViewPropertyAnimator;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 1107
    iget-object v10, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    # getter for: Landroid/view/ViewPropertyAnimator;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    invoke-static {v10}, Landroid/view/ViewPropertyAnimator;->access$1000(Landroid/view/ViewPropertyAnimator;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v10

    invoke-interface {v10, p1}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_0

    .line 1104
    :cond_8
    iget-object v10, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    # getter for: Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;
    invoke-static {v10}, Landroid/view/ViewPropertyAnimator;->access$200(Landroid/view/ViewPropertyAnimator;)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v11, v11}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    goto :goto_4
.end method
