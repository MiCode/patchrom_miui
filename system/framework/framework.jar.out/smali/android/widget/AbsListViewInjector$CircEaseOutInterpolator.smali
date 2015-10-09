.class public Landroid/widget/AbsListViewInjector$CircEaseOutInterpolator;
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
    name = "CircEaseOutInterpolator"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2
    .param p1, "input"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 214
    sub-float/2addr p1, v1

    .line 215
    mul-float v0, p1, p1

    sub-float v0, v1, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method
