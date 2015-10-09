.class public abstract Landroid/view/DisplayList;
.super Ljava/lang/Object;
.source "DisplayList.java"


# static fields
.field public static final FLAG_CLIP_CHILDREN:I = 0x1

.field public static final STATUS_DONE:I = 0x0

.field public static final STATUS_DRAW:I = 0x1

.field public static final STATUS_DREW:I = 0x4

.field public static final STATUS_INVOKE:I = 0x2


# instance fields
.field private mDirty:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract clear()V
.end method

.method protected clearDirty()V
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/DisplayList;->mDirty:Z

    .line 251
    return-void
.end method

.method public abstract end()V
.end method

.method public abstract getAlpha()F
.end method

.method public abstract getBottom()F
.end method

.method public abstract getCameraDistance()F
.end method

.method public abstract getLeft()F
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 326
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/DisplayList;->getMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public abstract getMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
.end method

.method public abstract getPivotX()F
.end method

.method public abstract getPivotY()F
.end method

.method public abstract getRight()F
.end method

.method public abstract getRotation()F
.end method

.method public abstract getRotationX()F
.end method

.method public abstract getRotationY()F
.end method

.method public abstract getScaleX()F
.end method

.method public abstract getScaleY()F
.end method

.method public abstract getSize()I
.end method

.method public abstract getTop()F
.end method

.method public abstract getTranslationX()F
.end method

.method public abstract getTranslationY()F
.end method

.method public abstract hasOverlappingRendering()Z
.end method

.method public isDirty()Z
    .locals 1

    .prologue
    .line 262
    iget-boolean v0, p0, Landroid/view/DisplayList;->mDirty:Z

    return v0
.end method

.method public abstract isValid()Z
.end method

.method public markDirty()V
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/DisplayList;->mDirty:Z

    .line 238
    return-void
.end method

.method public abstract offsetLeftAndRight(F)V
.end method

.method public abstract offsetTopAndBottom(F)V
.end method

.method public abstract reset()V
.end method

.method public abstract setAlpha(F)V
.end method

.method public abstract setAnimationMatrix(Landroid/graphics/Matrix;)V
.end method

.method public abstract setBottom(I)V
.end method

.method public abstract setCaching(Z)V
.end method

.method public abstract setCameraDistance(F)V
.end method

.method public abstract setClipToBounds(Z)V
.end method

.method public abstract setHasOverlappingRendering(Z)V
.end method

.method public abstract setLeft(I)V
.end method

.method public abstract setLeftTopRightBottom(IIII)V
.end method

.method public abstract setMatrix(Landroid/graphics/Matrix;)V
.end method

.method public abstract setPivotX(F)V
.end method

.method public abstract setPivotY(F)V
.end method

.method public abstract setRight(I)V
.end method

.method public abstract setRotation(F)V
.end method

.method public abstract setRotationX(F)V
.end method

.method public abstract setRotationY(F)V
.end method

.method public abstract setScaleX(F)V
.end method

.method public abstract setScaleY(F)V
.end method

.method public abstract setTop(I)V
.end method

.method public abstract setTransformationInfo(FFFFFFFF)V
.end method

.method public abstract setTranslationX(F)V
.end method

.method public abstract setTranslationY(F)V
.end method

.method public abstract start(II)Landroid/view/HardwareCanvas;
.end method
