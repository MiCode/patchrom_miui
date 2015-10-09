.class public final Landroid/view/VelocityTracker$Estimator;
.super Ljava/lang/Object;
.source "VelocityTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/VelocityTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Estimator"
.end annotation


# static fields
.field private static final MAX_DEGREE:I = 0x4


# instance fields
.field public confidence:F

.field public degree:I

.field public final xCoeff:[F

.field public final yCoeff:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/view/VelocityTracker$Estimator;->xCoeff:[F

    .line 243
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/view/VelocityTracker$Estimator;->yCoeff:[F

    return-void
.end method

.method private estimate(F[F)F
    .locals 4
    .param p1, "time"    # F
    .param p2, "c"    # [F

    .prologue
    .line 292
    const/4 v0, 0x0

    .line 293
    .local v0, "a":F
    const/high16 v2, 0x3f800000    # 1.0f

    .line 294
    .local v2, "scale":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Landroid/view/VelocityTracker$Estimator;->degree:I

    if-gt v1, v3, :cond_0

    .line 295
    aget v3, p2, v1

    mul-float/2addr v3, v2

    add-float/2addr v0, v3

    .line 296
    mul-float/2addr v2, p1

    .line 294
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 298
    :cond_0
    return v0
.end method


# virtual methods
.method public estimateX(F)F
    .locals 1
    .param p1, "time"    # F

    .prologue
    .line 261
    iget-object v0, p0, Landroid/view/VelocityTracker$Estimator;->xCoeff:[F

    invoke-direct {p0, p1, v0}, Landroid/view/VelocityTracker$Estimator;->estimate(F[F)F

    move-result v0

    return v0
.end method

.method public estimateY(F)F
    .locals 1
    .param p1, "time"    # F

    .prologue
    .line 270
    iget-object v0, p0, Landroid/view/VelocityTracker$Estimator;->yCoeff:[F

    invoke-direct {p0, p1, v0}, Landroid/view/VelocityTracker$Estimator;->estimate(F[F)F

    move-result v0

    return v0
.end method

.method public getXCoeff(I)F
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 279
    iget v0, p0, Landroid/view/VelocityTracker$Estimator;->degree:I

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Landroid/view/VelocityTracker$Estimator;->xCoeff:[F

    aget v0, v0, p1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getYCoeff(I)F
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 288
    iget v0, p0, Landroid/view/VelocityTracker$Estimator;->degree:I

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Landroid/view/VelocityTracker$Estimator;->yCoeff:[F

    aget v0, v0, p1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
