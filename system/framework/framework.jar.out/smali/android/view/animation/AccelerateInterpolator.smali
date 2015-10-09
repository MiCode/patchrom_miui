.class public Landroid/view/animation/AccelerateInterpolator;
.super Ljava/lang/Object;
.source "AccelerateInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private final mDoubleFactor:D

.field private final mFactor:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/animation/AccelerateInterpolator;->mFactor:F

    .line 34
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    iput-wide v0, p0, Landroid/view/animation/AccelerateInterpolator;->mDoubleFactor:D

    .line 35
    return-void
.end method

.method public constructor <init>(F)V
    .locals 2
    .param p1, "factor"    # F

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Landroid/view/animation/AccelerateInterpolator;->mFactor:F

    .line 47
    const/high16 v0, 0x40000000    # 2.0f

    iget v1, p0, Landroid/view/animation/AccelerateInterpolator;->mFactor:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    iput-wide v0, p0, Landroid/view/animation/AccelerateInterpolator;->mDoubleFactor:D

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget-object v1, Lcom/android/internal/R$styleable;->AccelerateInterpolator:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 54
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/view/animation/AccelerateInterpolator;->mFactor:F

    .line 55
    const/high16 v1, 0x40000000    # 2.0f

    iget v2, p0, Landroid/view/animation/AccelerateInterpolator;->mFactor:F

    mul-float/2addr v1, v2

    float-to-double v1, v1

    iput-wide v1, p0, Landroid/view/animation/AccelerateInterpolator;->mDoubleFactor:D

    .line 57
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4
    .param p1, "input"    # F

    .prologue
    .line 61
    iget v0, p0, Landroid/view/animation/AccelerateInterpolator;->mFactor:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 62
    mul-float v0, p1, p1

    .line 64
    :goto_0
    return v0

    :cond_0
    float-to-double v0, p1

    iget-wide v2, p0, Landroid/view/animation/AccelerateInterpolator;->mDoubleFactor:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_0
.end method
