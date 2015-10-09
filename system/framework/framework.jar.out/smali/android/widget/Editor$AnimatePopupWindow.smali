.class Landroid/widget/Editor$AnimatePopupWindow;
.super Landroid/widget/PopupWindow;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatePopupWindow"
.end annotation


# static fields
.field private static final DURATION:I = 0x64


# instance fields
.field private mShowAnimator:Landroid/view/ViewPropertyAnimator;

.field private mShowAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mShowInterpolator:Landroid/view/animation/Interpolator;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method private constructor <init>(Landroid/widget/Editor;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 2509
    iput-object p1, p0, Landroid/widget/Editor$AnimatePopupWindow;->this$0:Landroid/widget/Editor;

    .line 2510
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2498
    new-instance v0, Landroid/widget/Editor$AnimatePopupWindow$1;

    invoke-direct {v0, p0}, Landroid/widget/Editor$AnimatePopupWindow$1;-><init>(Landroid/widget/Editor$AnimatePopupWindow;)V

    iput-object v0, p0, Landroid/widget/Editor$AnimatePopupWindow;->mShowAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 2505
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$AnimatePopupWindow;->mShowInterpolator:Landroid/view/animation/Interpolator;

    .line 2511
    const v0, 0x110c0004

    invoke-virtual {p0, v0}, Landroid/widget/Editor$AnimatePopupWindow;->setAnimationStyle(I)V

    .line 2512
    return-void
.end method

.method public constructor <init>(Landroid/widget/Editor;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyle"    # I

    .prologue
    .line 2514
    iput-object p1, p0, Landroid/widget/Editor$AnimatePopupWindow;->this$0:Landroid/widget/Editor;

    .line 2515
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2498
    new-instance v0, Landroid/widget/Editor$AnimatePopupWindow$1;

    invoke-direct {v0, p0}, Landroid/widget/Editor$AnimatePopupWindow$1;-><init>(Landroid/widget/Editor$AnimatePopupWindow;)V

    iput-object v0, p0, Landroid/widget/Editor$AnimatePopupWindow;->mShowAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 2505
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$AnimatePopupWindow;->mShowInterpolator:Landroid/view/animation/Interpolator;

    .line 2516
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/content/Context;Landroid/widget/Editor$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Editor;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Landroid/widget/Editor$1;

    .prologue
    .line 2494
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor$AnimatePopupWindow;-><init>(Landroid/widget/Editor;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1702(Landroid/widget/Editor$AnimatePopupWindow;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor$AnimatePopupWindow;
    .param p1, "x1"    # Landroid/view/ViewPropertyAnimator;

    .prologue
    .line 2494
    iput-object p1, p0, Landroid/widget/Editor$AnimatePopupWindow;->mShowAnimator:Landroid/view/ViewPropertyAnimator;

    return-object p1
.end method


# virtual methods
.method public showAtLocation(Landroid/view/View;III)V
    .locals 4
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 2520
    iget-object v1, p0, Landroid/widget/Editor$AnimatePopupWindow;->mShowAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v1, :cond_0

    .line 2531
    :goto_0
    return-void

    .line 2523
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 2525
    invoke-virtual {p0}, Landroid/widget/Editor$AnimatePopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 2526
    .local v0, "contentView":Landroid/view/View;
    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2527
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 2528
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/Editor$AnimatePopupWindow;->mShowAnimator:Landroid/view/ViewPropertyAnimator;

    .line 2529
    iget-object v1, p0, Landroid/widget/Editor$AnimatePopupWindow;->mShowAnimator:Landroid/view/ViewPropertyAnimator;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Editor$AnimatePopupWindow;->mShowInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Editor$AnimatePopupWindow;->mShowAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method
