.class Landroid/util/TypedValueInjector;
.super Ljava/lang/Object;
.source "TypedValueInjector.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static miuiScale(FLandroid/util/DisplayMetrics;)F
    .locals 1
    .param p0, "value"    # F
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 5
    iget v0, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v0, p0

    return v0
.end method
