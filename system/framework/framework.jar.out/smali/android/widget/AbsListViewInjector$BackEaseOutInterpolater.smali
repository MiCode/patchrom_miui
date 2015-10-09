.class public Landroid/widget/AbsListViewInjector$BackEaseOutInterpolater;
.super Ljava/lang/Object;
.source "AbsListViewInjector.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListViewInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BackEaseOutInterpolater"
.end annotation


# instance fields
.field public overshot:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListViewInjector$BackEaseOutInterpolater;->overshot:F

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4
    .param p1, "t"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 223
    iget v1, p0, Landroid/widget/AbsListViewInjector$BackEaseOutInterpolater;->overshot:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const v0, 0x3fd9cd60

    .line 224
    .local v0, "s":F
    :goto_0
    sub-float/2addr p1, v3

    mul-float v1, p1, p1

    add-float v2, v0, v3

    mul-float/2addr v2, p1

    add-float/2addr v2, v0

    mul-float/2addr v1, v2

    add-float/2addr v1, v3

    return v1

    .line 223
    .end local v0    # "s":F
    :cond_0
    iget v0, p0, Landroid/widget/AbsListViewInjector$BackEaseOutInterpolater;->overshot:F

    goto :goto_0
.end method
