.class public Landroid/view/animation/BounceInterpolator;
.super Ljava/lang/Object;
.source "BounceInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method private static bounce(F)F
    .locals 2
    .param p0, "t"    # F

    .prologue
    .line 35
    mul-float v0, p0, p0

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2
    .param p1, "t"    # F

    .prologue
    .line 45
    const v0, 0x3f8fb15b    # 1.1226f

    mul-float/2addr p1, v0

    .line 46
    const v0, 0x3eb4fdf4    # 0.3535f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    invoke-static {p1}, Landroid/view/animation/BounceInterpolator;->bounce(F)F

    move-result v0

    .line 49
    :goto_0
    return v0

    .line 47
    :cond_0
    const v0, 0x3f3da512    # 0.7408f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    const v0, 0x3f0c14a5

    sub-float v0, p1, v0

    invoke-static {v0}, Landroid/view/animation/BounceInterpolator;->bounce(F)F

    move-result v0

    const v1, 0x3f333333    # 0.7f

    add-float/2addr v0, v1

    goto :goto_0

    .line 48
    :cond_1
    const v0, 0x3f76e2eb    # 0.9644f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    const v0, 0x3f5a43fe    # 0.8526f

    sub-float v0, p1, v0

    invoke-static {v0}, Landroid/view/animation/BounceInterpolator;->bounce(F)F

    move-result v0

    const v1, 0x3f666666    # 0.9f

    add-float/2addr v0, v1

    goto :goto_0

    .line 49
    :cond_2
    const v0, 0x3f859168    # 1.0435f

    sub-float v0, p1, v0

    invoke-static {v0}, Landroid/view/animation/BounceInterpolator;->bounce(F)F

    move-result v0

    const v1, 0x3f733333    # 0.95f

    add-float/2addr v0, v1

    goto :goto_0
.end method
