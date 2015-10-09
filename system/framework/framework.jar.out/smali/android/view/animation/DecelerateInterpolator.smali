.class public Landroid/view/animation/DecelerateInterpolator;
.super Ljava/lang/Object;
.source "DecelerateInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private mFactor:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/animation/DecelerateInterpolator;->mFactor:F

    .line 30
    return-void
.end method

.method public constructor <init>(F)V
    .locals 1
    .param p1, "factor"    # F

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/animation/DecelerateInterpolator;->mFactor:F

    .line 40
    iput p1, p0, Landroid/view/animation/DecelerateInterpolator;->mFactor:F

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput v2, p0, Landroid/view/animation/DecelerateInterpolator;->mFactor:F

    .line 44
    sget-object v1, Lcom/android/internal/R$styleable;->DecelerateInterpolator:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 47
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/view/animation/DecelerateInterpolator;->mFactor:F

    .line 49
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 7
    .param p1, "input"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 54
    iget v1, p0, Landroid/view/animation/DecelerateInterpolator;->mFactor:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    .line 55
    sub-float v1, v3, p1

    sub-float v2, v3, p1

    mul-float/2addr v1, v2

    sub-float v0, v3, v1

    .line 59
    .local v0, "result":F
    :goto_0
    return v0

    .line 57
    .end local v0    # "result":F
    :cond_0
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    sub-float/2addr v3, p1

    float-to-double v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    iget v6, p0, Landroid/view/animation/DecelerateInterpolator;->mFactor:F

    mul-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    sub-double/2addr v1, v3

    double-to-float v0, v1

    .restart local v0    # "result":F
    goto :goto_0
.end method
