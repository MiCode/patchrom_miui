.class public final Landroid/hardware/camera2/Face;
.super Ljava/lang/Object;
.source "Face.java"


# static fields
.field public static final ID_UNSUPPORTED:I = -0x1

.field public static final SCORE_MAX:I = 0x64

.field public static final SCORE_MIN:I = 0x1


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private final mId:I

.field private final mLeftEye:Landroid/graphics/Point;

.field private final mMouth:Landroid/graphics/Point;

.field private final mRightEye:Landroid/graphics/Point;

.field private final mScore:I


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;I)V
    .locals 7
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "score"    # I

    .prologue
    const/4 v4, 0x0

    .line 130
    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/hardware/camera2/Face;-><init>(Landroid/graphics/Rect;IILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;IILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "score"    # I
    .param p3, "id"    # I
    .param p4, "leftEyePosition"    # Landroid/graphics/Point;
    .param p5, "rightEyePosition"    # Landroid/graphics/Point;
    .param p6, "mouthPosition"    # Landroid/graphics/Point;

    .prologue
    const/4 v1, -0x1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const-string v0, "bounds"

    invoke-static {v0, p1}, Landroid/hardware/camera2/Face;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    const/16 v0, 0x64

    if-le p2, v0, :cond_1

    .line 89
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Confidence out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_1
    if-gez p3, :cond_2

    if-eq p3, v1, :cond_2

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Id out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_2
    if-ne p3, v1, :cond_3

    .line 94
    const-string v0, "leftEyePosition"

    invoke-static {v0, p4}, Landroid/hardware/camera2/Face;->checkNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    const-string/jumbo v0, "rightEyePosition"

    invoke-static {v0, p5}, Landroid/hardware/camera2/Face;->checkNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    const-string/jumbo v0, "mouthPosition"

    invoke-static {v0, p6}, Landroid/hardware/camera2/Face;->checkNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 99
    :cond_3
    iput-object p1, p0, Landroid/hardware/camera2/Face;->mBounds:Landroid/graphics/Rect;

    .line 100
    iput p2, p0, Landroid/hardware/camera2/Face;->mScore:I

    .line 101
    iput p3, p0, Landroid/hardware/camera2/Face;->mId:I

    .line 102
    iput-object p4, p0, Landroid/hardware/camera2/Face;->mLeftEye:Landroid/graphics/Point;

    .line 103
    iput-object p5, p0, Landroid/hardware/camera2/Face;->mRightEye:Landroid/graphics/Point;

    .line 104
    iput-object p6, p0, Landroid/hardware/camera2/Face;->mMouth:Landroid/graphics/Point;

    .line 105
    return-void
.end method

.method private static checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 252
    if-nez p1, :cond_0

    .line 253
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was required, but it was null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_0
    return-void
.end method

.method private static checkNull(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 258
    if-eqz p1, :cond_0

    .line 259
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was required to be null, but it wasn\'t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_0
    return-void
.end method


# virtual methods
.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Landroid/hardware/camera2/Face;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Landroid/hardware/camera2/Face;->mId:I

    return v0
.end method

.method public getLeftEyePosition()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Landroid/hardware/camera2/Face;->mLeftEye:Landroid/graphics/Point;

    return-object v0
.end method

.method public getMouthPosition()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Landroid/hardware/camera2/Face;->mMouth:Landroid/graphics/Point;

    return-object v0
.end method

.method public getRightEyePosition()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Landroid/hardware/camera2/Face;->mRightEye:Landroid/graphics/Point;

    return-object v0
.end method

.method public getScore()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Landroid/hardware/camera2/Face;->mScore:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 246
    const-string/jumbo v0, "{ bounds: %s, score: %s, id: %d, leftEyePosition: %s, rightEyePosition: %s, mouthPosition: %s }"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/hardware/camera2/Face;->mBounds:Landroid/graphics/Rect;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Landroid/hardware/camera2/Face;->mScore:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Landroid/hardware/camera2/Face;->mId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Landroid/hardware/camera2/Face;->mLeftEye:Landroid/graphics/Point;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Landroid/hardware/camera2/Face;->mRightEye:Landroid/graphics/Point;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Landroid/hardware/camera2/Face;->mMouth:Landroid/graphics/Point;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
