.class Landroid/animation/Keyframe$ObjectKeyframe;
.super Landroid/animation/Keyframe;
.source "Keyframe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/Keyframe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ObjectKeyframe"
.end annotation


# instance fields
.field mValue:Ljava/lang/Object;


# direct methods
.method constructor <init>(FLjava/lang/Object;)V
    .locals 1
    .param p1, "fraction"    # F
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 246
    invoke-direct {p0}, Landroid/animation/Keyframe;-><init>()V

    .line 247
    iput p1, p0, Landroid/animation/Keyframe$ObjectKeyframe;->mFraction:F

    .line 248
    iput-object p2, p0, Landroid/animation/Keyframe$ObjectKeyframe;->mValue:Ljava/lang/Object;

    .line 249
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/animation/Keyframe$ObjectKeyframe;->mHasValue:Z

    .line 250
    iget-boolean v0, p0, Landroid/animation/Keyframe$ObjectKeyframe;->mHasValue:Z

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Landroid/animation/Keyframe$ObjectKeyframe;->mValueType:Ljava/lang/Class;

    .line 251
    return-void

    .line 249
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 250
    :cond_1
    const-class v0, Ljava/lang/Object;

    goto :goto_1
.end method


# virtual methods
.method public clone()Landroid/animation/Keyframe$ObjectKeyframe;
    .locals 3

    .prologue
    .line 264
    new-instance v0, Landroid/animation/Keyframe$ObjectKeyframe;

    invoke-virtual {p0}, Landroid/animation/Keyframe$ObjectKeyframe;->getFraction()F

    move-result v2

    iget-boolean v1, p0, Landroid/animation/Keyframe$ObjectKeyframe;->mHasValue:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/animation/Keyframe$ObjectKeyframe;->mValue:Ljava/lang/Object;

    :goto_0
    invoke-direct {v0, v2, v1}, Landroid/animation/Keyframe$ObjectKeyframe;-><init>(FLjava/lang/Object;)V

    .line 265
    .local v0, "kfClone":Landroid/animation/Keyframe$ObjectKeyframe;
    invoke-virtual {p0}, Landroid/animation/Keyframe$ObjectKeyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/Keyframe$ObjectKeyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 266
    return-object v0

    .line 264
    .end local v0    # "kfClone":Landroid/animation/Keyframe$ObjectKeyframe;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic clone()Landroid/animation/Keyframe;
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0}, Landroid/animation/Keyframe$ObjectKeyframe;->clone()Landroid/animation/Keyframe$ObjectKeyframe;

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
    .line 239
    invoke-virtual {p0}, Landroid/animation/Keyframe$ObjectKeyframe;->clone()Landroid/animation/Keyframe$ObjectKeyframe;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Landroid/animation/Keyframe$ObjectKeyframe;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 258
    iput-object p1, p0, Landroid/animation/Keyframe$ObjectKeyframe;->mValue:Ljava/lang/Object;

    .line 259
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/animation/Keyframe$ObjectKeyframe;->mHasValue:Z

    .line 260
    return-void

    .line 259
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
