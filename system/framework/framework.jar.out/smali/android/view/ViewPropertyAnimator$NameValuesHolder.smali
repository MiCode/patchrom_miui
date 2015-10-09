.class Landroid/view/ViewPropertyAnimator$NameValuesHolder;
.super Ljava/lang/Object;
.source "ViewPropertyAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewPropertyAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameValuesHolder"
.end annotation


# instance fields
.field mDeltaValue:F

.field mFromValue:F

.field mNameConstant:I


# direct methods
.method constructor <init>(IFF)V
    .locals 0
    .param p1, "nameConstant"    # I
    .param p2, "fromValue"    # F
    .param p3, "deltaValue"    # F

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput p1, p0, Landroid/view/ViewPropertyAnimator$NameValuesHolder;->mNameConstant:I

    .line 234
    iput p2, p0, Landroid/view/ViewPropertyAnimator$NameValuesHolder;->mFromValue:F

    .line 235
    iput p3, p0, Landroid/view/ViewPropertyAnimator$NameValuesHolder;->mDeltaValue:F

    .line 236
    return-void
.end method
