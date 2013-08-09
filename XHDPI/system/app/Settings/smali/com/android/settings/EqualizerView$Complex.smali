.class Lcom/android/settings/EqualizerView$Complex;
.super Ljava/lang/Object;
.source "EqualizerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/EqualizerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Complex"
.end annotation


# instance fields
.field final im:F

.field final re:F


# direct methods
.method protected constructor <init>(FF)V
    .locals 0
    .parameter "re1"
    .parameter "im1"

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput p1, p0, Lcom/android/settings/EqualizerView$Complex;->re:F

    .line 242
    iput p2, p0, Lcom/android/settings/EqualizerView$Complex;->im:F

    .line 243
    return-void
.end method


# virtual methods
.method protected add(Lcom/android/settings/EqualizerView$Complex;)Lcom/android/settings/EqualizerView$Complex;
    .locals 4
    .parameter "other"

    .prologue
    .line 279
    new-instance v0, Lcom/android/settings/EqualizerView$Complex;

    iget v1, p0, Lcom/android/settings/EqualizerView$Complex;->re:F

    iget v2, p1, Lcom/android/settings/EqualizerView$Complex;->re:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/android/settings/EqualizerView$Complex;->im:F

    iget v3, p1, Lcom/android/settings/EqualizerView$Complex;->im:F

    add-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lcom/android/settings/EqualizerView$Complex;-><init>(FF)V

    return-object v0
.end method

.method protected con()Lcom/android/settings/EqualizerView$Complex;
    .locals 3

    .prologue
    .line 269
    new-instance v0, Lcom/android/settings/EqualizerView$Complex;

    iget v1, p0, Lcom/android/settings/EqualizerView$Complex;->re:F

    iget v2, p0, Lcom/android/settings/EqualizerView$Complex;->im:F

    neg-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/android/settings/EqualizerView$Complex;-><init>(FF)V

    return-object v0
.end method

.method protected div(F)Lcom/android/settings/EqualizerView$Complex;
    .locals 3
    .parameter "a"

    .prologue
    .line 320
    new-instance v0, Lcom/android/settings/EqualizerView$Complex;

    iget v1, p0, Lcom/android/settings/EqualizerView$Complex;->re:F

    div-float/2addr v1, p1

    iget v2, p0, Lcom/android/settings/EqualizerView$Complex;->im:F

    div-float/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/settings/EqualizerView$Complex;-><init>(FF)V

    return-object v0
.end method

.method protected div(Lcom/android/settings/EqualizerView$Complex;)Lcom/android/settings/EqualizerView$Complex;
    .locals 4
    .parameter "other"

    .prologue
    .line 309
    iget v1, p1, Lcom/android/settings/EqualizerView$Complex;->re:F

    iget v2, p1, Lcom/android/settings/EqualizerView$Complex;->re:F

    mul-float/2addr v1, v2

    iget v2, p1, Lcom/android/settings/EqualizerView$Complex;->im:F

    iget v3, p1, Lcom/android/settings/EqualizerView$Complex;->im:F

    mul-float/2addr v2, v3

    add-float v0, v1, v2

    .line 310
    .local v0, lengthSquared:F
    invoke-virtual {p1}, Lcom/android/settings/EqualizerView$Complex;->con()Lcom/android/settings/EqualizerView$Complex;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/EqualizerView$Complex;->mul(Lcom/android/settings/EqualizerView$Complex;)Lcom/android/settings/EqualizerView$Complex;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/EqualizerView$Complex;->div(F)Lcom/android/settings/EqualizerView$Complex;

    move-result-object v1

    return-object v1
.end method

.method protected mul(F)Lcom/android/settings/EqualizerView$Complex;
    .locals 3
    .parameter "a"

    .prologue
    .line 299
    new-instance v0, Lcom/android/settings/EqualizerView$Complex;

    iget v1, p0, Lcom/android/settings/EqualizerView$Complex;->re:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/android/settings/EqualizerView$Complex;->im:F

    mul-float/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/settings/EqualizerView$Complex;-><init>(FF)V

    return-object v0
.end method

.method protected mul(Lcom/android/settings/EqualizerView$Complex;)Lcom/android/settings/EqualizerView$Complex;
    .locals 5
    .parameter "other"

    .prologue
    .line 289
    new-instance v0, Lcom/android/settings/EqualizerView$Complex;

    iget v1, p0, Lcom/android/settings/EqualizerView$Complex;->re:F

    iget v2, p1, Lcom/android/settings/EqualizerView$Complex;->re:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/settings/EqualizerView$Complex;->im:F

    iget v3, p1, Lcom/android/settings/EqualizerView$Complex;->im:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/settings/EqualizerView$Complex;->re:F

    iget v3, p1, Lcom/android/settings/EqualizerView$Complex;->im:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/settings/EqualizerView$Complex;->im:F

    iget v4, p1, Lcom/android/settings/EqualizerView$Complex;->re:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lcom/android/settings/EqualizerView$Complex;-><init>(FF)V

    return-object v0
.end method

.method protected rho()F
    .locals 3

    .prologue
    .line 251
    iget v0, p0, Lcom/android/settings/EqualizerView$Complex;->re:F

    iget v1, p0, Lcom/android/settings/EqualizerView$Complex;->re:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/settings/EqualizerView$Complex;->im:F

    iget v2, p0, Lcom/android/settings/EqualizerView$Complex;->im:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method
