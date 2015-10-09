.class public Landroid/graphics/Camera;
.super Ljava/lang/Object;
.source "Camera.java"


# instance fields
.field private mMatrix:Landroid/graphics/Matrix;

.field native_instance:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-direct {p0}, Landroid/graphics/Camera;->nativeConstructor()V

    .line 32
    return-void
.end method

.method private native nativeApplyToCanvas(I)V
.end method

.method private native nativeConstructor()V
.end method

.method private native nativeDestructor()V
.end method

.method private native nativeGetMatrix(I)V
.end method


# virtual methods
.method public applyToCanvas(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 152
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Landroid/graphics/Camera;->mMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/graphics/Camera;->mMatrix:Landroid/graphics/Matrix;

    .line 154
    :cond_0
    iget-object v0, p0, Landroid/graphics/Camera;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 155
    iget-object v0, p0, Landroid/graphics/Camera;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_1
    iget v0, p1, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-direct {p0, v0}, Landroid/graphics/Camera;->nativeApplyToCanvas(I)V

    goto :goto_0
.end method

.method public native dotWithNormal(FFF)F
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 165
    :try_start_0
    invoke-direct {p0}, Landroid/graphics/Camera;->nativeDestructor()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 169
    return-void

    .line 167
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public native getLocationX()F
.end method

.method public native getLocationY()F
.end method

.method public native getLocationZ()F
.end method

.method public getMatrix(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 142
    iget v0, p1, Landroid/graphics/Matrix;->native_instance:I

    invoke-direct {p0, v0}, Landroid/graphics/Camera;->nativeGetMatrix(I)V

    .line 143
    return-void
.end method

.method public native restore()V
.end method

.method public native rotate(FFF)V
.end method

.method public native rotateX(F)V
.end method

.method public native rotateY(F)V
.end method

.method public native rotateZ(F)V
.end method

.method public native save()V
.end method

.method public native setLocation(FFF)V
.end method

.method public native translate(FFF)V
.end method
