.class Landroid/animation/Keyframe$IntKeyframe;
.super Landroid/animation/Keyframe;
.source "Keyframe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/Keyframe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IntKeyframe"
.end annotation


# instance fields
.field mValue:I


# direct methods
.method constructor <init>(F)V
    .locals 1
    .param p1, "fraction"    # F

    .prologue
    .line 287
    invoke-direct {p0}, Landroid/animation/Keyframe;-><init>()V

    .line 288
    iput p1, p0, Landroid/animation/Keyframe$IntKeyframe;->mFraction:F

    .line 289
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Landroid/animation/Keyframe$IntKeyframe;->mValueType:Ljava/lang/Class;

    .line 290
    return-void
.end method

.method constructor <init>(FI)V
    .locals 1
    .param p1, "fraction"    # F
    .param p2, "value"    # I

    .prologue
    .line 280
    invoke-direct {p0}, Landroid/animation/Keyframe;-><init>()V

    .line 281
    iput p1, p0, Landroid/animation/Keyframe$IntKeyframe;->mFraction:F

    .line 282
    iput p2, p0, Landroid/animation/Keyframe$IntKeyframe;->mValue:I

    .line 283
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Landroid/animation/Keyframe$IntKeyframe;->mValueType:Ljava/lang/Class;

    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/Keyframe$IntKeyframe;->mHasValue:Z

    .line 285
    return-void
.end method


# virtual methods
.method public clone()Landroid/animation/Keyframe$IntKeyframe;
    .locals 3

    .prologue
    .line 309
    iget-boolean v1, p0, Landroid/animation/Keyframe$IntKeyframe;->mHasValue:Z

    if-eqz v1, :cond_0

    new-instance v0, Landroid/animation/Keyframe$IntKeyframe;

    invoke-virtual {p0}, Landroid/animation/Keyframe$IntKeyframe;->getFraction()F

    move-result v1

    iget v2, p0, Landroid/animation/Keyframe$IntKeyframe;->mValue:I

    invoke-direct {v0, v1, v2}, Landroid/animation/Keyframe$IntKeyframe;-><init>(FI)V

    .line 312
    .local v0, "kfClone":Landroid/animation/Keyframe$IntKeyframe;
    :goto_0
    invoke-virtual {p0}, Landroid/animation/Keyframe$IntKeyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/Keyframe$IntKeyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 313
    return-object v0

    .line 309
    .end local v0    # "kfClone":Landroid/animation/Keyframe$IntKeyframe;
    :cond_0
    new-instance v0, Landroid/animation/Keyframe$IntKeyframe;

    invoke-virtual {p0}, Landroid/animation/Keyframe$IntKeyframe;->getFraction()F

    move-result v1

    invoke-direct {v0, v1}, Landroid/animation/Keyframe$IntKeyframe;-><init>(F)V

    goto :goto_0
.end method

.method public bridge synthetic clone()Landroid/animation/Keyframe;
    .locals 1

    .prologue
    .line 273
    invoke-virtual {p0}, Landroid/animation/Keyframe$IntKeyframe;->clone()Landroid/animation/Keyframe$IntKeyframe;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 273
    invoke-virtual {p0}, Landroid/animation/Keyframe$IntKeyframe;->clone()Landroid/animation/Keyframe$IntKeyframe;

    move-result-object v0

    return-object v0
.end method

.method public getIntValue()I
    .locals 1

    .prologue
    .line 293
    iget v0, p0, Landroid/animation/Keyframe$IntKeyframe;->mValue:I

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Landroid/animation/Keyframe$IntKeyframe;->mValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 301
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_0

    .line 302
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/animation/Keyframe$IntKeyframe;->mValue:I

    .line 303
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/Keyframe$IntKeyframe;->mHasValue:Z

    .line 305
    :cond_0
    return-void
.end method
