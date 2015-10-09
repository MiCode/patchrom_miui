.class public Landroid/hardware/camera2/CaptureFailure;
.super Ljava/lang/Object;
.source "CaptureFailure.java"


# static fields
.field public static final REASON_ERROR:I = 0x0

.field public static final REASON_FLUSHED:I = 0x1


# instance fields
.field private final mDropped:Z

.field private final mFrameNumber:I

.field private final mReason:I

.field private final mRequest:Landroid/hardware/camera2/CaptureRequest;

.field private final mSequenceId:I


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CaptureRequest;IZII)V
    .locals 0
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "reason"    # I
    .param p3, "dropped"    # Z
    .param p4, "sequenceId"    # I
    .param p5, "frameNumber"    # I

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Landroid/hardware/camera2/CaptureFailure;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 59
    iput p2, p0, Landroid/hardware/camera2/CaptureFailure;->mReason:I

    .line 60
    iput-boolean p3, p0, Landroid/hardware/camera2/CaptureFailure;->mDropped:Z

    .line 61
    iput p4, p0, Landroid/hardware/camera2/CaptureFailure;->mSequenceId:I

    .line 62
    iput p5, p0, Landroid/hardware/camera2/CaptureFailure;->mFrameNumber:I

    .line 63
    return-void
.end method


# virtual methods
.method public getFrameNumber()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Landroid/hardware/camera2/CaptureFailure;->mFrameNumber:I

    return v0
.end method

.method public getReason()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Landroid/hardware/camera2/CaptureFailure;->mReason:I

    return v0
.end method

.method public getRequest()Landroid/hardware/camera2/CaptureRequest;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Landroid/hardware/camera2/CaptureFailure;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    return-object v0
.end method

.method public getSequenceId()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Landroid/hardware/camera2/CaptureFailure;->mSequenceId:I

    return v0
.end method

.method public wasImageCaptured()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Landroid/hardware/camera2/CaptureFailure;->mDropped:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
