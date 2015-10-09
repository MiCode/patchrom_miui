.class Landroid/view/GLES20DisplayList;
.super Landroid/view/DisplayList;
.source "GLES20DisplayList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/GLES20DisplayList$DisplayListFinalizer;
    }
.end annotation


# instance fields
.field private mCanvas:Landroid/view/GLES20RecordingCanvas;

.field private mChildDisplayLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/DisplayList;",
            ">;"
        }
    .end annotation
.end field

.field private mFinalizer:Landroid/view/GLES20DisplayList$DisplayListFinalizer;

.field private final mName:Ljava/lang/String;

.field private mValid:Z


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/view/DisplayList;-><init>()V

    .line 40
    iput-object p1, p0, Landroid/view/GLES20DisplayList;->mName:Ljava/lang/String;

    .line 41
    return-void
.end method

.method static synthetic access$000(I)V
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 26
    invoke-static {p0}, Landroid/view/GLES20DisplayList;->nDestroyDisplayList(I)V

    return-void
.end method

.method private static native nDestroyDisplayList(I)V
.end method

.method private static native nGetAlpha(I)F
.end method

.method private static native nGetBottom(I)F
.end method

.method private static native nGetCameraDistance(I)F
.end method

.method private static native nGetDisplayListSize(I)I
.end method

.method private static native nGetLeft(I)F
.end method

.method private static native nGetMatrix(II)V
.end method

.method private static native nGetPivotX(I)F
.end method

.method private static native nGetPivotY(I)F
.end method

.method private static native nGetRight(I)F
.end method

.method private static native nGetRotation(I)F
.end method

.method private static native nGetRotationX(I)F
.end method

.method private static native nGetRotationY(I)F
.end method

.method private static native nGetScaleX(I)F
.end method

.method private static native nGetScaleY(I)F
.end method

.method private static native nGetTop(I)F
.end method

.method private static native nGetTranslationX(I)F
.end method

.method private static native nGetTranslationY(I)F
.end method

.method private static native nHasOverlappingRendering(I)Z
.end method

.method private static native nOffsetLeftAndRight(IF)V
.end method

.method private static native nOffsetTopAndBottom(IF)V
.end method

.method private static native nReset(I)V
.end method

.method private static native nSetAlpha(IF)V
.end method

.method private static native nSetAnimationMatrix(II)V
.end method

.method private static native nSetBottom(II)V
.end method

.method private static native nSetCaching(IZ)V
.end method

.method private static native nSetCameraDistance(IF)V
.end method

.method private static native nSetClipToBounds(IZ)V
.end method

.method private static native nSetDisplayListName(ILjava/lang/String;)V
.end method

.method private static native nSetHasOverlappingRendering(IZ)V
.end method

.method private static native nSetLeft(II)V
.end method

.method private static native nSetLeftTopRightBottom(IIIII)V
.end method

.method private static native nSetPivotX(IF)V
.end method

.method private static native nSetPivotY(IF)V
.end method

.method private static native nSetRight(II)V
.end method

.method private static native nSetRotation(IF)V
.end method

.method private static native nSetRotationX(IF)V
.end method

.method private static native nSetRotationY(IF)V
.end method

.method private static native nSetScaleX(IF)V
.end method

.method private static native nSetScaleY(IF)V
.end method

.method private static native nSetStaticMatrix(II)V
.end method

.method private static native nSetTop(II)V
.end method

.method private static native nSetTransformationInfo(IFFFFFFFF)V
.end method

.method private static native nSetTranslationX(IF)V
.end method

.method private static native nSetTranslationY(IF)V
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Landroid/view/GLES20DisplayList;->clearDirty()V

    .line 74
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mCanvas:Landroid/view/GLES20RecordingCanvas;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mCanvas:Landroid/view/GLES20RecordingCanvas;

    invoke-virtual {v0}, Landroid/view/GLES20RecordingCanvas;->recycle()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/GLES20DisplayList;->mCanvas:Landroid/view/GLES20RecordingCanvas;

    .line 78
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/GLES20DisplayList;->mValid:Z

    .line 80
    invoke-virtual {p0}, Landroid/view/GLES20DisplayList;->clearReferences()V

    .line 81
    return-void
.end method

.method clearReferences()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mChildDisplayLists:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mChildDisplayLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 85
    :cond_0
    return-void
.end method

.method public end()V
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mCanvas:Landroid/view/GLES20RecordingCanvas;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mCanvas:Landroid/view/GLES20RecordingCanvas;

    invoke-virtual {v0}, Landroid/view/GLES20RecordingCanvas;->onPostDraw()V

    .line 109
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mFinalizer:Landroid/view/GLES20DisplayList$DisplayListFinalizer;

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mCanvas:Landroid/view/GLES20RecordingCanvas;

    iget-object v1, p0, Landroid/view/GLES20DisplayList;->mFinalizer:Landroid/view/GLES20DisplayList$DisplayListFinalizer;

    iget v1, v1, Landroid/view/GLES20DisplayList$DisplayListFinalizer;->mNativeDisplayList:I

    invoke-virtual {v0, v1}, Landroid/view/GLES20RecordingCanvas;->end(I)I

    .line 115
    :goto_0
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mCanvas:Landroid/view/GLES20RecordingCanvas;

    invoke-virtual {v0}, Landroid/view/GLES20RecordingCanvas;->recycle()V

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/GLES20DisplayList;->mCanvas:Landroid/view/GLES20RecordingCanvas;

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/GLES20DisplayList;->mValid:Z

    .line 119
    :cond_0
    return-void

    .line 112
    :cond_1
    new-instance v0, Landroid/view/GLES20DisplayList$DisplayListFinalizer;

    iget-object v1, p0, Landroid/view/GLES20DisplayList;->mCanvas:Landroid/view/GLES20RecordingCanvas;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/GLES20RecordingCanvas;->end(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/view/GLES20DisplayList$DisplayListFinalizer;-><init>(I)V

    iput-object v0, p0, Landroid/view/GLES20DisplayList;->mFinalizer:Landroid/view/GLES20DisplayList$DisplayListFinalizer;

    .line 113
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mFinalizer:Landroid/view/GLES20DisplayList$DisplayListFinalizer;

    iget v0, v0, Landroid/view/GLES20DisplayList$DisplayListFinalizer;->mNativeDisplayList:I

    iget-object v1, p0, Landroid/view/GLES20DisplayList;->mName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/view/GLES20DisplayList;->nSetDisplayListName(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p0}, Landroid/view/GLES20DisplayList;->hasNativeDisplayList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mFinalizer:Landroid/view/GLES20DisplayList$DisplayListFinalizer;

    iget v0, v0, Landroid/view/GLES20DisplayList$DisplayListFinalizer;->mNativeDisplayList:I

    invoke-static {v0}, Landroid/view/GLES20DisplayList;->nGetAlpha(I)F

    move-result v0

    .line 184
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getBottom()F
    .locals 1

    .prologue
    .line 416
    invoke-virtual {p0}, Landroid/view/GLES20DisplayList;->hasNativeDisplayList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mFinalizer:Landroid/view/GLES20DisplayList$DisplayListFinalizer;

    iget v0, v0, Landroid/view/GLES20DisplayList$DisplayListFinalizer;->mNativeDisplayList:I

    invoke-static {v0}, Landroid/view/GLES20DisplayList;->nGetBottom(I)F

    move-result v0

    .line 419
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCameraDistance()F
    .locals 1

    .prologue
    .line 356
    invoke-virtual {p0}, Landroid/view/GLES20DisplayList;->hasNativeDisplayList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mFinalizer:Landroid/view/GLES20DisplayList$DisplayListFinalizer;

    iget v0, v0, Landroid/view/GLES20DisplayList$DisplayListFinalizer;->mNativeDisplayList:I

    invoke-static {v0}, Landroid/view/GLES20DisplayList;->nGetCameraDistance(I)F

    move-result v0

    .line 359
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getChildDisplayLists()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/DisplayList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mChildDisplayLists:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/GLES20DisplayList;->mChildDisplayLists:Ljava/util/ArrayList;

    .line 89
    :cond_0
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mChildDisplayLists:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLeft()F
    .locals 1

    .prologue
    .line 371
    invoke-virtual {p0}, Landroid/view/GLES20DisplayList;->hasNativeDisplayList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mFinalizer:Landroid/view/GLES20DisplayList$DisplayListFinalizer;

    iget v0, v0, Landroid/view/GLES20DisplayList$DisplayListFinalizer;->mNativeDisplayList:I

    invoke-static {v0}, Landroid/view/GLES20DisplayList;->nGetLeft(I)F

    move-result v0

    .line 374
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 2
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 158
    invoke-virtual {p0}, Landroid/view/GLES20DisplayList;->hasNativeDisplayList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mFinalizer:Landroid/view/GLES20DisplayList$DisplayListFinalizer;

    iget v0, v0, Landroid/view/GLES20DisplayList$DisplayListFinalizer;->mNativeDisplayList:I

    iget v1, p1, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, v1}, Landroid/view/GLES20DisplayList;->nGetMatrix(II)V

    .line 161
    :cond_0
    return-object p1
.end method

.method getNativeDisplayList()I
    .locals 2

    .prologue
    .line 48
    iget-boolean v0, p0, Landroid/view/GLES20DisplayList;->mValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mFinalizer:Landroid/view/GLES20DisplayList$DisplayListFinalizer;

    if-nez v0, :cond_1

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The display list is not valid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_1
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mFinalizer:Landroid/view/GLES20DisplayList$DisplayListFinalizer;

    iget v0, v0, Landroid/view/GLES20DisplayList$DisplayListFinalizer;->mNativeDisplayList:I

    return v0
.end method

.method public getPivotX()F
    .locals 1

    .prologue
    .line 326
    invoke-virtual {p0}, Landroid/view/GLES20DisplayList;->hasNativeDisplayList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mFinalizer:Landroid/view/GLES20DisplayList$DisplayListFinalizer;

    iget v0, v0, Landroid/view/GLES20DisplayList$DisplayListFinalizer;->mNativeDisplayList:I

    invoke-static {v0}, Landroid/view/GLES20DisplayList;->nGetPivotX(I)F

    move-result v0

    .line 329
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPivotY()F
    .locals 1

    .prologue
    .line 341
    invoke-virtual {p0}, Landroid/view/GLES20DisplayList;->hasNativeDisplayList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mFinalizer:Landroid/view/GLES20DisplayList$DisplayListFinalizer;

    iget v0, v0, Landroid/view/GLES20DisplayList$DisplayListFinalizer;->mNativeDisplayList:I

    invoke-static {v0}, Landroid/view/GLES20DisplayList;->nGetPivotY(I)F

    move-result v0

    .line 344
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRight()F
    .locals 1

    .prologue
    .line 401
    invoke-virtual {p0}, Landroid/view/GLES20DisplayList;->hasNativeDisplayList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mFinalizer:Landroid/view/GLES20DisplayList$DisplayListFinalizer;

    iget v0, v0, Landroid/view/GLES20DisplayList$DisplayListFinalizer;->mNativeDisplayList:I

    invoke-static {v0}, Landroid/view/GLES20DisplayList;->nGetRight(I)F

    move-result v0

    .line 404
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 242
    invoke-virtual {p0}, Landroid/view/GLES20DisplayList;->hasNativeDisplayList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mFinalizer:Landroid/view/GLES20DisplayList$DisplayListFinalizer;

    iget v0, v0, Landroid/view/GLES20DisplayList$DisplayListFinalizer;->mNativeDisplayList:I

    invoke-static {v0}, Landroid/view/GLES20DisplayList;->nGetRotation(I)F

    move-result v0

    .line 245
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRotationX()F
    .locals 1

    .prologue
    .line 257
    invoke-virtual {p0}, Landroid/view/GLES20DisplayList;->hasNativeDisplayList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mFinalizer:Landroid/view/GLES20DisplayList$DisplayListFinalizer;

    iget v0, v0, Landroid/view/GLES20DisplayList$DisplayListFinalizer;->mNativeDisplayList:I

    invoke-static {v0}, Landroid/view/GLES20DisplayList;->nGetRotationX(I)F

    move-result v0

    .line 260
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRotationY()F
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0}, Landroid/view/GLES20DisplayList;->hasNativeDisplayList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mFinalizer:Landroid/view/GLES20DisplayList$DisplayListFinalizer;

    iget v0, v0, Landroid/view/GLES20DisplayList$DisplayListFinalizer;->mNativeDisplayList:I

    invoke-static {v0}, Landroid/view/GLES20DisplayList;->nGetRotationY(I)F

    move-result v0

    .line 275
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 287
    invoke-virtual {p0}, Landroid/view/GLES20DisplayList;->hasNativeDisplayList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mFinalizer:Landroid/view/GLES20DisplayList$DisplayListFinalizer;

    iget v0, v0, Landroid/view/GLES20DisplayList$DisplayListFinalizer;->mNativeDisplayList:I

    invoke-static {v0}, Landroid/view/GLES20DisplayList;->nGetScaleX(I)F

    move-result v0

    .line 290
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 302
    invoke-virtual {p0}, Landroid/view/GLES20DisplayList;->hasNativeDisplayList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mFinalizer:Landroid/view/GLES20DisplayList$DisplayListFinalizer;

    iget v0, v0, Landroid/view/GLES20DisplayList$DisplayListFinalizer;->mNativeDisplayList:I

    invoke-static {v0}, Landroid/view/GLES20DisplayList;->nGetScaleY(I)F

    move-result v0

    .line 305
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mFinalizer:Landroid/view/GLES20DisplayList$DisplayListFinalizer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 124
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mFinalizer:Landroid/view/GLES20DisplayList$DisplayListFinalizer;

    iget v0, v0, Landroid/view/GLES20DisplayList$DisplayListFinalizer;->mNativeDisplayList:I

    invoke-static {v0}, Landroid/view/GLES20DisplayList;->nGetDisplayListSize(I)I

    move-result v0

    goto :goto_0
.end method

.method public getTop()F
    .locals 1

    .prologue
    .line 386
    invoke-virtual {p0}, Landroid/view/GLES20DisplayList;->hasNativeDisplayList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mFinalizer:Landroid/view/GLES20DisplayList$DisplayListFinalizer;

    iget v0, v0, Landroid/view/GLES20DisplayList$DisplayListFinalizer;->mNativeDisplayList:I

    invoke-static {v0}, Landroid/view/GLES20DisplayList;->nGetTop(I)F

    move-result v0

    .line 389
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTranslationX()F
    .locals 1

    .prologue
    .line 212
    invoke-virtual {p0}, Landroid/view/GLES20DisplayList;->hasNativeDisplayList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mFinalizer:Landroid/view/GLES20DisplayList$DisplayListFinalizer;

    iget v0, v0, Landroid/view/GLES20DisplayList$DisplayListFinalizer;->mNativeDisplayList:I

    invoke-static {v0}, Landroid/view/GLES20DisplayList;->nGetTranslationX(I)F

    move-result v0

    .line 215
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTranslationY()F
    .locals 1

    .prologue
    .line 227
    invoke-virtual {p0}, Landroid/view/GLES20DisplayList;->hasNativeDisplayList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mFinalizer:Landroid/view/GLES20DisplayList$DisplayListFinalizer;

    iget v0, v0, Landroid/view/GLES20DisplayList$DisplayListFinalizer;->mNativeDisplayList:I

    invoke-static {v0}, Landroid/view/GLES20DisplayList;->nGetTranslationY(I)F

    move-result v0

    .line 230
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasNativeDisplayList()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Landroid/view/GLES20DisplayList;->mValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mFinalizer:Landroid/view/GLES20DisplayList$DisplayListFinalizer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 197
    invoke-virtual {p0}, Landroid/view/GLES20DisplayList;->hasNativeDisplayList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mFinalizer:Landroid/view/GLES20DisplayList$DisplayListFinalizer;

    iget v0, v0, Landroid/view/GLES20DisplayList$DisplayListFinalizer;->mNativeDisplayList:I

    invoke-static {v0}, Landroid/view/GLES20DisplayList;->nHasOverlappingRendering(I)Z

    move-result v0

    .line 200
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Landroid/view/GLES20DisplayList;->mValid:Z

    return v0
.end method

.method public offsetLeftAndRight(F)V
    .locals 1
    .param p1, "offset"    # F

    .prologue
    .line 431
    invoke-virtual {p0}, Landroid/view/GLES20DisplayList;->hasNativeDisplayList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mFinalizer:Landroid/view/GLES20DisplayList$DisplayListFinalizer;

    iget v0, v0, Landroid/view/GLES20DisplayList$DisplayListFinalizer;->mNativeDisplayList:I

    invoke-static {v0, p1}, Landroid/view/GLES20DisplayList;->nOffsetLeftAndRight(IF)V

    .line 434
    :cond_0
    return-void
.end method

.method public offsetTopAndBottom(F)V
    .locals 1
    .param p1, "offset"    # F

    .prologue
    .line 438
    invoke-virtual {p0}, Landroid/view/GLES20DisplayList;->hasNativeDisplayList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mFinalizer:Landroid/view/GLES20DisplayList$DisplayListFinalizer;

    iget v0, v0, Landroid/view/GLES20DisplayList$DisplayListFinalizer;->mNativeDisplayList:I

    invoke-static {v0, p1}, Landroid/view/GLES20DisplayList;->nOffsetTopAndBottom(IF)V

    .line 441
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, Landroid/view/GLES20DisplayList;->hasNativeDisplayList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mFinalizer:Landroid/view/GLES20DisplayList$DisplayListFinalizer;

    iget v0, v0, Landroid/view/GLES20DisplayList$DisplayListFinalizer;->mNativeDisplayList:I

    invoke-static {v0}, Landroid/view/GLES20DisplayList;->nReset(I)V

    .line 97
    :cond_0
    invoke-virtual {p0}, Landroid/view/GLES20DisplayList;->clear()V

    .line 98
    return-void
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 174
    invoke-virtual {p0}, Landroid/view/GLES20DisplayList;->hasNativeDisplayList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mFinalizer:Landroid/view/GLES20DisplayList$DisplayListFinalizer;

    iget v0, v0, Landroid/view/GLES20DisplayList$DisplayListFinalizer;->mNativeDisplayList:I

    invoke-static {v0, p1}, Landroid/view/GLES20DisplayList;->nSetAlpha(IF)V

    .line 177
    :cond_0
    return-void
.end method

.method public setAnimationMatrix(Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 166
    invoke-virtual {p0}, Landroid/view/GLES20DisplayList;->hasNativeDisplayList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mFinalizer:Landroid/view/GLES20DisplayList$DisplayListFinalizer;

    iget v1, v0, Landroid/view/GLES20DisplayList$DisplayListFinalizer;->mNativeDisplayList:I

    if-eqz p1, :cond_1

    iget v0, p1, Landroid/graphics/Matrix;->native_instance:I

    :goto_0
    invoke-static {v1, v0}, Landroid/view/GLES20DisplayList;->nSetAnimationMatrix(II)V

    .line 170
    :cond_0
    return-void

    .line 167
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBottom(I)V
    .locals 1
    .param p1, "bottom"    # I

    .prologue
    .line 409
    invoke-virtual {p0}, Landroid/view/GLES20DisplayList;->hasNativeDisplayList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mFinalizer:Landroid/view/GLES20DisplayList$DisplayListFinalizer;

    iget v0, v0, Landroid/view/GLES20DisplayList$DisplayListFinalizer;->mNativeDisplayList:I

    invoke-static {v0, p1}, Landroid/view/GLES20DisplayList;->nSetBottom(II)V

    .line 412
    :cond_0
    return-void
.end method

.method public setCaching(Z)V
    .locals 1
    .param p1, "caching"    # Z

    .prologue
    .line 137
    invoke-virtual {p0}, Landroid/view/GLES20DisplayList;->hasNativeDisplayList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mFinalizer:Landroid/view/GLES20DisplayList$DisplayListFinalizer;

    iget v0, v0, Landroid/view/GLES20DisplayList$DisplayListFinalizer;->mNativeDisplayList:I

    invoke-static {v0, p1}, Landroid/view/GLES20DisplayList;->nSetCaching(IZ)V

    .line 140
    :cond_0
    return-void
.end method

.method public setCameraDistance(F)V
    .locals 1
    .param p1, "distance"    # F

    .prologue
    .line 349
    invoke-virtual {p0}, Landroid/view/GLES20DisplayList;->hasNativeDisplayList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mFinalizer:Landroid/view/GLES20DisplayList$DisplayListFinalizer;

    iget v0, v0, Landroid/view/GLES20DisplayList$DisplayListFinalizer;->mNativeDisplayList:I

    invoke-static {v0, p1}, Landroid/view/GLES20DisplayList;->nSetCameraDistance(IF)V

    .line 352
    :cond_0
    return-void
.end method

.method public setClipToBounds(Z)V
    .locals 1
    .param p1, "clipToBounds"    # Z

    .prologue
    .line 144
    invoke-virtual {p0}, Landroid/view/GLES20DisplayList;->hasNativeDisplayList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mFinalizer:Landroid/view/GLES20DisplayList$DisplayListFinalizer;

    iget v0, v0, Landroid/view/GLES20DisplayList$DisplayListFinalizer;->mNativeDisplayList:I

    invoke-static {v0, p1}, Landroid/view/GLES20DisplayList;->nSetClipToBounds(IZ)V

    .line 147
    :cond_0
    return-void
.end method

.method public setHasOverlappingRendering(Z)V
    .locals 1
    .param p1, "hasOverlappingRendering"    # Z

    .prologue
    .line 189
    invoke-virtual {p0}, Landroid/view/GLES20DisplayList;->hasNativeDisplayList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mFinalizer:Landroid/view/GLES20DisplayList$DisplayListFinalizer;

    iget v0, v0, Landroid/view/GLES20DisplayList$DisplayListFinalizer;->mNativeDisplayList:I

    invoke-static {v0, p1}, Landroid/view/GLES20DisplayList;->nSetHasOverlappingRendering(IZ)V

    .line 192
    :cond_0
    return-void
.end method

.method public setLeft(I)V
    .locals 1
    .param p1, "left"    # I

    .prologue
    .line 364
    invoke-virtual {p0}, Landroid/view/GLES20DisplayList;->hasNativeDisplayList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mFinalizer:Landroid/view/GLES20DisplayList$DisplayListFinalizer;

    iget v0, v0, Landroid/view/GLES20DisplayList$DisplayListFinalizer;->mNativeDisplayList:I

    invoke-static {v0, p1}, Landroid/view/GLES20DisplayList;->nSetLeft(II)V

    .line 367
    :cond_0
    return-void
.end method

.method public setLeftTopRightBottom(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 424
    invoke-virtual {p0}, Landroid/view/GLES20DisplayList;->hasNativeDisplayList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mFinalizer:Landroid/view/GLES20DisplayList$DisplayListFinalizer;

    iget v0, v0, Landroid/view/GLES20DisplayList$DisplayListFinalizer;->mNativeDisplayList:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/view/GLES20DisplayList;->nSetLeftTopRightBottom(IIIII)V

    .line 427
    :cond_0
    return-void
.end method

.method public setMatrix(Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 151
    invoke-virtual {p0}, Landroid/view/GLES20DisplayList;->hasNativeDisplayList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mFinalizer:Landroid/view/GLES20DisplayList$DisplayListFinalizer;

    iget v0, v0, Landroid/view/GLES20DisplayList$DisplayListFinalizer;->mNativeDisplayList:I

    iget v1, p1, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, v1}, Landroid/view/GLES20DisplayList;->nSetStaticMatrix(II)V

    .line 154
    :cond_0
    return-void
.end method

.method public setPivotX(F)V
    .locals 1
    .param p1, "pivotX"    # F

    .prologue
    .line 319
    invoke-virtual {p0}, Landroid/view/GLES20DisplayList;->hasNativeDisplayList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mFinalizer:Landroid/view/GLES20DisplayList$DisplayListFinalizer;

    iget v0, v0, Landroid/view/GLES20DisplayList$DisplayListFinalizer;->mNativeDisplayList:I

    invoke-static {v0, p1}, Landroid/view/GLES20DisplayList;->nSetPivotX(IF)V

    .line 322
    :cond_0
    return-void
.end method

.method public setPivotY(F)V
    .locals 1
    .param p1, "pivotY"    # F

    .prologue
    .line 334
    invoke-virtual {p0}, Landroid/view/GLES20DisplayList;->hasNativeDisplayList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mFinalizer:Landroid/view/GLES20DisplayList$DisplayListFinalizer;

    iget v0, v0, Landroid/view/GLES20DisplayList$DisplayListFinalizer;->mNativeDisplayList:I

    invoke-static {v0, p1}, Landroid/view/GLES20DisplayList;->nSetPivotY(IF)V

    .line 337
    :cond_0
    return-void
.end method

.method public setRight(I)V
    .locals 1
    .param p1, "right"    # I

    .prologue
    .line 394
    invoke-virtual {p0}, Landroid/view/GLES20DisplayList;->hasNativeDisplayList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mFinalizer:Landroid/view/GLES20DisplayList$DisplayListFinalizer;

    iget v0, v0, Landroid/view/GLES20DisplayList$DisplayListFinalizer;->mNativeDisplayList:I

    invoke-static {v0, p1}, Landroid/view/GLES20DisplayList;->nSetRight(II)V

    .line 397
    :cond_0
    return-void
.end method

.method public setRotation(F)V
    .locals 1
    .param p1, "rotation"    # F

    .prologue
    .line 235
    invoke-virtual {p0}, Landroid/view/GLES20DisplayList;->hasNativeDisplayList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mFinalizer:Landroid/view/GLES20DisplayList$DisplayListFinalizer;

    iget v0, v0, Landroid/view/GLES20DisplayList$DisplayListFinalizer;->mNativeDisplayList:I

    invoke-static {v0, p1}, Landroid/view/GLES20DisplayList;->nSetRotation(IF)V

    .line 238
    :cond_0
    return-void
.end method

.method public setRotationX(F)V
    .locals 1
    .param p1, "rotationX"    # F

    .prologue
    .line 250
    invoke-virtual {p0}, Landroid/view/GLES20DisplayList;->hasNativeDisplayList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mFinalizer:Landroid/view/GLES20DisplayList$DisplayListFinalizer;

    iget v0, v0, Landroid/view/GLES20DisplayList$DisplayListFinalizer;->mNativeDisplayList:I

    invoke-static {v0, p1}, Landroid/view/GLES20DisplayList;->nSetRotationX(IF)V

    .line 253
    :cond_0
    return-void
.end method

.method public setRotationY(F)V
    .locals 1
    .param p1, "rotationY"    # F

    .prologue
    .line 265
    invoke-virtual {p0}, Landroid/view/GLES20DisplayList;->hasNativeDisplayList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mFinalizer:Landroid/view/GLES20DisplayList$DisplayListFinalizer;

    iget v0, v0, Landroid/view/GLES20DisplayList$DisplayListFinalizer;->mNativeDisplayList:I

    invoke-static {v0, p1}, Landroid/view/GLES20DisplayList;->nSetRotationY(IF)V

    .line 268
    :cond_0
    return-void
.end method

.method public setScaleX(F)V
    .locals 1
    .param p1, "scaleX"    # F

    .prologue
    .line 280
    invoke-virtual {p0}, Landroid/view/GLES20DisplayList;->hasNativeDisplayList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mFinalizer:Landroid/view/GLES20DisplayList$DisplayListFinalizer;

    iget v0, v0, Landroid/view/GLES20DisplayList$DisplayListFinalizer;->mNativeDisplayList:I

    invoke-static {v0, p1}, Landroid/view/GLES20DisplayList;->nSetScaleX(IF)V

    .line 283
    :cond_0
    return-void
.end method

.method public setScaleY(F)V
    .locals 1
    .param p1, "scaleY"    # F

    .prologue
    .line 295
    invoke-virtual {p0}, Landroid/view/GLES20DisplayList;->hasNativeDisplayList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mFinalizer:Landroid/view/GLES20DisplayList$DisplayListFinalizer;

    iget v0, v0, Landroid/view/GLES20DisplayList$DisplayListFinalizer;->mNativeDisplayList:I

    invoke-static {v0, p1}, Landroid/view/GLES20DisplayList;->nSetScaleY(IF)V

    .line 298
    :cond_0
    return-void
.end method

.method public setTop(I)V
    .locals 1
    .param p1, "top"    # I

    .prologue
    .line 379
    invoke-virtual {p0}, Landroid/view/GLES20DisplayList;->hasNativeDisplayList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mFinalizer:Landroid/view/GLES20DisplayList$DisplayListFinalizer;

    iget v0, v0, Landroid/view/GLES20DisplayList$DisplayListFinalizer;->mNativeDisplayList:I

    invoke-static {v0, p1}, Landroid/view/GLES20DisplayList;->nSetTop(II)V

    .line 382
    :cond_0
    return-void
.end method

.method public setTransformationInfo(FFFFFFFF)V
    .locals 9
    .param p1, "alpha"    # F
    .param p2, "translationX"    # F
    .param p3, "translationY"    # F
    .param p4, "rotation"    # F
    .param p5, "rotationX"    # F
    .param p6, "rotationY"    # F
    .param p7, "scaleX"    # F
    .param p8, "scaleY"    # F

    .prologue
    .line 311
    invoke-virtual {p0}, Landroid/view/GLES20DisplayList;->hasNativeDisplayList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mFinalizer:Landroid/view/GLES20DisplayList$DisplayListFinalizer;

    iget v0, v0, Landroid/view/GLES20DisplayList$DisplayListFinalizer;->mNativeDisplayList:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v0 .. v8}, Landroid/view/GLES20DisplayList;->nSetTransformationInfo(IFFFFFFFF)V

    .line 315
    :cond_0
    return-void
.end method

.method public setTranslationX(F)V
    .locals 1
    .param p1, "translationX"    # F

    .prologue
    .line 205
    invoke-virtual {p0}, Landroid/view/GLES20DisplayList;->hasNativeDisplayList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mFinalizer:Landroid/view/GLES20DisplayList$DisplayListFinalizer;

    iget v0, v0, Landroid/view/GLES20DisplayList$DisplayListFinalizer;->mNativeDisplayList:I

    invoke-static {v0, p1}, Landroid/view/GLES20DisplayList;->nSetTranslationX(IF)V

    .line 208
    :cond_0
    return-void
.end method

.method public setTranslationY(F)V
    .locals 1
    .param p1, "translationY"    # F

    .prologue
    .line 220
    invoke-virtual {p0}, Landroid/view/GLES20DisplayList;->hasNativeDisplayList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mFinalizer:Landroid/view/GLES20DisplayList$DisplayListFinalizer;

    iget v0, v0, Landroid/view/GLES20DisplayList$DisplayListFinalizer;->mNativeDisplayList:I

    invoke-static {v0, p1}, Landroid/view/GLES20DisplayList;->nSetTranslationY(IF)V

    .line 223
    :cond_0
    return-void
.end method

.method public start(II)Landroid/view/HardwareCanvas;
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 56
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mCanvas:Landroid/view/GLES20RecordingCanvas;

    if-eqz v0, :cond_0

    .line 57
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recording has already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/GLES20DisplayList;->mValid:Z

    .line 61
    invoke-static {p0}, Landroid/view/GLES20RecordingCanvas;->obtain(Landroid/view/GLES20DisplayList;)Landroid/view/GLES20RecordingCanvas;

    move-result-object v0

    iput-object v0, p0, Landroid/view/GLES20DisplayList;->mCanvas:Landroid/view/GLES20RecordingCanvas;

    .line 62
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mCanvas:Landroid/view/GLES20RecordingCanvas;

    invoke-virtual {v0}, Landroid/view/GLES20RecordingCanvas;->start()V

    .line 64
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mCanvas:Landroid/view/GLES20RecordingCanvas;

    invoke-virtual {v0, p1, p2}, Landroid/view/GLES20RecordingCanvas;->setViewport(II)V

    .line 66
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mCanvas:Landroid/view/GLES20RecordingCanvas;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GLES20RecordingCanvas;->onPreDraw(Landroid/graphics/Rect;)I

    .line 68
    iget-object v0, p0, Landroid/view/GLES20DisplayList;->mCanvas:Landroid/view/GLES20RecordingCanvas;

    return-object v0
.end method
