.class public Landroid/media/FaceDetector$Face;
.super Ljava/lang/Object;
.source "FaceDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/FaceDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Face"
.end annotation


# static fields
.field public static final CONFIDENCE_THRESHOLD:F = 0.4f

.field public static final EULER_X:I = 0x0

.field public static final EULER_Y:I = 0x1

.field public static final EULER_Z:I = 0x2


# instance fields
.field private mConfidence:F

.field private mEyesDist:F

.field private mMidPointX:F

.field private mMidPointY:F

.field private mPoseEulerX:F

.field private mPoseEulerY:F

.field private mPoseEulerZ:F

.field final synthetic this$0:Landroid/media/FaceDetector;


# direct methods
.method private constructor <init>(Landroid/media/FaceDetector;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Landroid/media/FaceDetector$Face;->this$0:Landroid/media/FaceDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/FaceDetector;Landroid/media/FaceDetector$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/media/FaceDetector;
    .param p2, "x1"    # Landroid/media/FaceDetector$1;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/media/FaceDetector$Face;-><init>(Landroid/media/FaceDetector;)V

    return-void
.end method


# virtual methods
.method public confidence()F
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Landroid/media/FaceDetector$Face;->mConfidence:F

    return v0
.end method

.method public eyesDistance()F
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Landroid/media/FaceDetector$Face;->mEyesDist:F

    return v0
.end method

.method public getMidPoint(Landroid/graphics/PointF;)V
    .locals 2
    .param p1, "point"    # Landroid/graphics/PointF;

    .prologue
    .line 60
    iget v0, p0, Landroid/media/FaceDetector$Face;->mMidPointX:F

    iget v1, p0, Landroid/media/FaceDetector$Face;->mMidPointY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 61
    return-void
.end method

.method public pose(I)F
    .locals 1
    .param p1, "euler"    # I

    .prologue
    .line 79
    if-nez p1, :cond_0

    .line 80
    iget v0, p0, Landroid/media/FaceDetector$Face;->mPoseEulerX:F

    .line 84
    :goto_0
    return v0

    .line 81
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 82
    iget v0, p0, Landroid/media/FaceDetector$Face;->mPoseEulerY:F

    goto :goto_0

    .line 83
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 84
    iget v0, p0, Landroid/media/FaceDetector$Face;->mPoseEulerZ:F

    goto :goto_0

    .line 85
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
