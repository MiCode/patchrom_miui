.class public Landroid/filterpacks/videosink/MediaEncoderFilter;
.super Landroid/filterfw/core/Filter;
.source "MediaEncoderFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/filterpacks/videosink/MediaEncoderFilter$OnRecordingDoneListener;
    }
.end annotation


# static fields
.field private static final NO_AUDIO_SOURCE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "MediaEncoderFilter"


# instance fields
.field private mAudioSource:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "audioSource"
    .end annotation
.end field

.field private mCaptureTimeLapse:Z

.field private mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "errorListener"
    .end annotation
.end field

.field private mFd:Ljava/io/FileDescriptor;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "outputFileDescriptor"
    .end annotation
.end field

.field private mFps:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "framerate"
    .end annotation
.end field

.field private mHeight:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "height"
    .end annotation
.end field

.field private mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "infoListener"
    .end annotation
.end field

.field private mLastTimeLapseFrameRealTimestampNs:J

.field private mLogVerbose:Z

.field private mMaxDurationMs:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "maxDurationMs"
    .end annotation
.end field

.field private mMaxFileSize:J
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "maxFileSize"
    .end annotation
.end field

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mNumFramesEncoded:I

.field private mOrientationHint:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "orientationHint"
    .end annotation
.end field

.field private mOutputFile:Ljava/lang/String;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "outputFile"
    .end annotation
.end field

.field private mOutputFormat:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "outputFormat"
    .end annotation
.end field

.field private mProfile:Landroid/media/CamcorderProfile;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "recordingProfile"
    .end annotation
.end field

.field private mProgram:Landroid/filterfw/core/ShaderProgram;

.field private mRecording:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "recording"
    .end annotation
.end field

.field private mRecordingActive:Z

.field private mRecordingDoneListener:Landroid/filterpacks/videosink/MediaEncoderFilter$OnRecordingDoneListener;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "recordingDoneListener"
    .end annotation
.end field

.field private mScreen:Landroid/filterfw/core/GLFrame;

.field private mSourceRegion:Landroid/filterfw/geometry/Quad;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "inputRegion"
    .end annotation
.end field

.field private mSurfaceId:I

.field private mTimeBetweenTimeLapseFrameCaptureUs:J
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "timelapseRecordingIntervalUs"
    .end annotation
.end field

.field private mTimestampNs:J

.field private mVideoEncoder:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "videoEncoder"
    .end annotation
.end field

.field private mWidth:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "width"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 12
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const-wide/16 v10, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 193
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 60
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecording:Z

    .line 64
    new-instance v4, Ljava/lang/String;

    const-string v5, "/sdcard/MediaEncoderOut.mp4"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mOutputFile:Ljava/lang/String;

    .line 68
    iput-object v7, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mFd:Ljava/io/FileDescriptor;

    .line 74
    const/4 v4, -0x1

    iput v4, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mAudioSource:I

    .line 81
    iput-object v7, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    .line 88
    iput-object v7, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    .line 94
    iput-object v7, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecordingDoneListener:Landroid/filterpacks/videosink/MediaEncoderFilter$OnRecordingDoneListener;

    .line 101
    iput v6, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mOrientationHint:I

    .line 108
    iput-object v7, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mProfile:Landroid/media/CamcorderProfile;

    .line 113
    iput v6, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mWidth:I

    .line 118
    iput v6, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mHeight:I

    .line 123
    const/16 v4, 0x1e

    iput v4, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mFps:I

    .line 129
    const/4 v4, 0x2

    iput v4, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mOutputFormat:I

    .line 135
    const/4 v4, 0x2

    iput v4, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mVideoEncoder:I

    .line 149
    iput-wide v10, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMaxFileSize:J

    .line 155
    iput v6, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMaxDurationMs:I

    .line 161
    iput-wide v10, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mTimeBetweenTimeLapseFrameCaptureUs:J

    .line 172
    iput-boolean v6, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecordingActive:Z

    .line 173
    iput-wide v10, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mTimestampNs:J

    .line 174
    iput-wide v10, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLastTimeLapseFrameRealTimestampNs:J

    .line 175
    iput v6, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mNumFramesEncoded:I

    .line 178
    iput-boolean v6, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mCaptureTimeLapse:Z

    .line 194
    new-instance v0, Landroid/filterfw/geometry/Point;

    invoke-direct {v0, v8, v8}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 195
    .local v0, "bl":Landroid/filterfw/geometry/Point;
    new-instance v1, Landroid/filterfw/geometry/Point;

    invoke-direct {v1, v9, v8}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 196
    .local v1, "br":Landroid/filterfw/geometry/Point;
    new-instance v2, Landroid/filterfw/geometry/Point;

    invoke-direct {v2, v8, v9}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 197
    .local v2, "tl":Landroid/filterfw/geometry/Point;
    new-instance v3, Landroid/filterfw/geometry/Point;

    invoke-direct {v3, v9, v9}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 198
    .local v3, "tr":Landroid/filterfw/geometry/Point;
    new-instance v4, Landroid/filterfw/geometry/Quad;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    iput-object v4, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mSourceRegion:Landroid/filterfw/geometry/Quad;

    .line 199
    const-string v4, "MediaEncoderFilter"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    iput-boolean v4, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLogVerbose:Z

    .line 200
    return-void
.end method

.method private startRecording(Landroid/filterfw/core/FilterContext;)V
    .locals 11
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 298
    iget-boolean v5, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLogVerbose:Z

    if-eqz v5, :cond_0

    const-string v5, "MediaEncoderFilter"

    const-string v8, "Starting recording"

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_0
    new-instance v2, Landroid/filterfw/core/MutableFrameFormat;

    const/4 v5, 0x2

    const/4 v8, 0x3

    invoke-direct {v2, v5, v8}, Landroid/filterfw/core/MutableFrameFormat;-><init>(II)V

    .line 303
    .local v2, "screenFormat":Landroid/filterfw/core/MutableFrameFormat;
    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/filterfw/core/MutableFrameFormat;->setBytesPerSample(I)V

    .line 306
    iget v5, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mWidth:I

    if-lez v5, :cond_2

    iget v5, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mHeight:I

    if-lez v5, :cond_2

    move v4, v6

    .line 309
    .local v4, "widthHeightSpecified":Z
    :goto_0
    iget-object v5, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v5, :cond_3

    if-nez v4, :cond_3

    .line 310
    iget-object v5, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v5, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 311
    .local v3, "width":I
    iget-object v5, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v5, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 316
    .local v1, "height":I
    :goto_1
    invoke-virtual {v2, v3, v1}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 317
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v5

    const/16 v8, 0x65

    const-wide/16 v9, 0x0

    invoke-virtual {v5, v2, v8, v9, v10}, Landroid/filterfw/core/FrameManager;->newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    move-result-object v5

    check-cast v5, Landroid/filterfw/core/GLFrame;

    iput-object v5, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    .line 322
    new-instance v5, Landroid/media/MediaRecorder;

    invoke-direct {v5}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v5, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 323
    invoke-direct {p0}, Landroid/filterpacks/videosink/MediaEncoderFilter;->updateMediaRecorderParams()V

    .line 326
    :try_start_0
    iget-object v5, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 339
    iget-object v5, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5}, Landroid/media/MediaRecorder;->start()V

    .line 340
    iget-boolean v5, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLogVerbose:Z

    if-eqz v5, :cond_1

    const-string v5, "MediaEncoderFilter"

    const-string v8, "Open: registering surface from Mediarecorder"

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_1
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v5

    iget-object v8, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5, v8}, Landroid/filterfw/core/GLEnvironment;->registerSurfaceFromMediaRecorder(Landroid/media/MediaRecorder;)I

    move-result v5

    iput v5, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mSurfaceId:I

    .line 343
    iput v7, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mNumFramesEncoded:I

    .line 344
    iput-boolean v6, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecordingActive:Z

    .line 345
    return-void

    .end local v1    # "height":I
    .end local v3    # "width":I
    .end local v4    # "widthHeightSpecified":Z
    :cond_2
    move v4, v7

    .line 306
    goto :goto_0

    .line 313
    .restart local v4    # "widthHeightSpecified":Z
    :cond_3
    iget v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mWidth:I

    .line 314
    .restart local v3    # "width":I
    iget v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mHeight:I

    .restart local v1    # "height":I
    goto :goto_1

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Ljava/lang/IllegalStateException;
    throw v0

    .line 329
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 330
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "IOException inMediaRecorder.prepare()!"

    invoke-direct {v5, v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 332
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 333
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Unknown Exception inMediaRecorder.prepare()!"

    invoke-direct {v5, v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method private stopRecording(Landroid/filterfw/core/FilterContext;)V
    .locals 8
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 424
    iget-boolean v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLogVerbose:Z

    if-eqz v2, :cond_0

    const-string v2, "MediaEncoderFilter"

    const-string v3, "Stopping recording"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_0
    iput-boolean v6, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecordingActive:Z

    .line 427
    iput v6, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mNumFramesEncoded:I

    .line 428
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v1

    .line 434
    .local v1, "glEnv":Landroid/filterfw/core/GLEnvironment;
    iget-boolean v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLogVerbose:Z

    if-eqz v2, :cond_1

    const-string v2, "MediaEncoderFilter"

    const-string v3, "Unregistering surface %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mSurfaceId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_1
    iget v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mSurfaceId:I

    invoke-virtual {v1, v2}, Landroid/filterfw/core/GLEnvironment;->unregisterSurfaceId(I)V

    .line 437
    :try_start_0
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->release()V

    .line 442
    iput-object v7, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 444
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v2}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 445
    iput-object v7, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    .line 450
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecordingDoneListener:Landroid/filterpacks/videosink/MediaEncoderFilter$OnRecordingDoneListener;

    if-eqz v2, :cond_2

    .line 451
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecordingDoneListener:Landroid/filterpacks/videosink/MediaEncoderFilter$OnRecordingDoneListener;

    invoke-interface {v2}, Landroid/filterpacks/videosink/MediaEncoderFilter$OnRecordingDoneListener;->onRecordingDone()V

    .line 453
    :cond_2
    return-void

    .line 438
    :catch_0
    move-exception v0

    .line 439
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v2, Landroid/filterpacks/videosink/MediaRecorderStopException;

    const-string v3, "MediaRecorder.stop() failed!"

    invoke-direct {v2, v3, v0}, Landroid/filterpacks/videosink/MediaRecorderStopException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private updateMediaRecorderParams()V
    .locals 6

    .prologue
    .line 239
    iget-wide v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mTimeBetweenTimeLapseFrameCaptureUs:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mCaptureTimeLapse:Z

    .line 240
    const/4 v0, 0x2

    .line 241
    .local v0, "GRALLOC_BUFFER":I
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 242
    iget-boolean v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mCaptureTimeLapse:Z

    if-nez v2, :cond_0

    iget v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mAudioSource:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 243
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mAudioSource:I

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 245
    :cond_0
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v2, :cond_3

    .line 246
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 247
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameRate:I

    iput v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mFps:I

    .line 250
    iget v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mWidth:I

    if-lez v2, :cond_1

    iget v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mHeight:I

    if-lez v2, :cond_1

    .line 251
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mWidth:I

    iget v4, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mHeight:I

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 259
    :cond_1
    :goto_1
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mOrientationHint:I

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 260
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 261
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 262
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mFd:Ljava/io/FileDescriptor;

    if-eqz v2, :cond_4

    .line 263
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mFd:Ljava/io/FileDescriptor;

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 268
    :goto_2
    :try_start_0
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-wide v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMaxFileSize:J

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :goto_3
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMaxDurationMs:I

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 279
    return-void

    .line 239
    .end local v0    # "GRALLOC_BUFFER":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 254
    .restart local v0    # "GRALLOC_BUFFER":I
    :cond_3
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mOutputFormat:I

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 255
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mVideoEncoder:I

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 256
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mWidth:I

    iget v4, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mHeight:I

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 257
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mFps:I

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    goto :goto_1

    .line 265
    :cond_4
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mOutputFile:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    goto :goto_2

    .line 269
    :catch_0
    move-exception v1

    .line 275
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "MediaEncoderFilter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting maxFileSize on MediaRecorder unsuccessful! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private updateSourceRegion()V
    .locals 2

    .prologue
    .line 227
    new-instance v0, Landroid/filterfw/geometry/Quad;

    invoke-direct {v0}, Landroid/filterfw/geometry/Quad;-><init>()V

    .line 228
    .local v0, "flippedRegion":Landroid/filterfw/geometry/Quad;
    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mSourceRegion:Landroid/filterfw/geometry/Quad;

    iget-object v1, v1, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    iput-object v1, v0, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    .line 229
    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mSourceRegion:Landroid/filterfw/geometry/Quad;

    iget-object v1, v1, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    iput-object v1, v0, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    .line 230
    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mSourceRegion:Landroid/filterfw/geometry/Quad;

    iget-object v1, v1, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    iput-object v1, v0, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    .line 231
    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mSourceRegion:Landroid/filterfw/geometry/Quad;

    iget-object v1, v1, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    iput-object v1, v0, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    .line 232
    iget-object v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v1, v0}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(Landroid/filterfw/geometry/Quad;)V

    .line 233
    return-void
.end method


# virtual methods
.method public close(Landroid/filterfw/core/FilterContext;)V
    .locals 2
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 457
    iget-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "MediaEncoderFilter"

    const-string v1, "Closing"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_0
    iget-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecordingActive:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Landroid/filterpacks/videosink/MediaEncoderFilter;->stopRecording(Landroid/filterfw/core/FilterContext;)V

    .line 459
    :cond_1
    return-void
.end method

.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 211
    iget-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "MediaEncoderFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has been updated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_0
    const-string/jumbo v0, "recording"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 223
    :cond_1
    :goto_0
    return-void

    .line 213
    :cond_2
    const-string v0, "inputRegion"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 214
    invoke-virtual {p0}, Landroid/filterpacks/videosink/MediaEncoderFilter;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/filterpacks/videosink/MediaEncoderFilter;->updateSourceRegion()V

    goto :goto_0

    .line 219
    :cond_3
    invoke-virtual {p0}, Landroid/filterpacks/videosink/MediaEncoderFilter;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecordingActive:Z

    if-eqz v0, :cond_1

    .line 220
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot change recording parameters when the filter is recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public open(Landroid/filterfw/core/FilterContext;)V
    .locals 2
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 292
    iget-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "MediaEncoderFilter"

    const-string v1, "Opening"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_0
    invoke-direct {p0}, Landroid/filterpacks/videosink/MediaEncoderFilter;->updateSourceRegion()V

    .line 294
    iget-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecording:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Landroid/filterpacks/videosink/MediaEncoderFilter;->startRecording(Landroid/filterfw/core/FilterContext;)V

    .line 295
    :cond_1
    return-void
.end method

.method public prepare(Landroid/filterfw/core/FilterContext;)V
    .locals 2
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 283
    iget-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "MediaEncoderFilter"

    const-string v1, "Preparing"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_0
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object v0

    iput-object v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    .line 287
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecordingActive:Z

    .line 288
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 387
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v0

    .line 389
    .local v0, "glEnv":Landroid/filterfw/core/GLEnvironment;
    const-string/jumbo v2, "videoframe"

    invoke-virtual {p0, v2}, Landroid/filterpacks/videosink/MediaEncoderFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 392
    .local v1, "input":Landroid/filterfw/core/Frame;
    iget-boolean v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecordingActive:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecording:Z

    if-eqz v2, :cond_0

    .line 393
    invoke-direct {p0, p1}, Landroid/filterpacks/videosink/MediaEncoderFilter;->startRecording(Landroid/filterfw/core/FilterContext;)V

    .line 396
    :cond_0
    iget-boolean v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecordingActive:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecording:Z

    if-nez v2, :cond_1

    .line 397
    invoke-direct {p0, p1}, Landroid/filterpacks/videosink/MediaEncoderFilter;->stopRecording(Landroid/filterfw/core/FilterContext;)V

    .line 400
    :cond_1
    iget-boolean v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mRecordingActive:Z

    if-nez v2, :cond_3

    .line 421
    :cond_2
    :goto_0
    return-void

    .line 402
    :cond_3
    iget-boolean v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mCaptureTimeLapse:Z

    if-eqz v2, :cond_4

    .line 403
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/filterpacks/videosink/MediaEncoderFilter;->skipFrameAndModifyTimestamp(J)Z

    move-result v2

    if-nez v2, :cond_2

    .line 411
    :goto_1
    iget v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mSurfaceId:I

    invoke-virtual {v0, v2}, Landroid/filterfw/core/GLEnvironment;->activateSurfaceWithId(I)V

    .line 414
    iget-object v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    iget-object v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v2, v1, v3}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 417
    iget-wide v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mTimestampNs:J

    invoke-virtual {v0, v2, v3}, Landroid/filterfw/core/GLEnvironment;->setSurfaceTimestamp(J)V

    .line 419
    invoke-virtual {v0}, Landroid/filterfw/core/GLEnvironment;->swapBuffers()V

    .line 420
    iget v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mNumFramesEncoded:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mNumFramesEncoded:I

    goto :goto_0

    .line 407
    :cond_4
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getTimestamp()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mTimestampNs:J

    goto :goto_1
.end method

.method public setupPorts()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 205
    const-string/jumbo v0, "videoframe"

    invoke-static {v1, v1}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/videosink/MediaEncoderFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 207
    return-void
.end method

.method public skipFrameAndModifyTimestamp(J)Z
    .locals 9
    .param p1, "timestampNs"    # J

    .prologue
    const-wide/32 v7, 0x3b9aca00

    const/4 v0, 0x0

    .line 349
    iget v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mNumFramesEncoded:I

    if-nez v1, :cond_1

    .line 350
    iput-wide p1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLastTimeLapseFrameRealTimestampNs:J

    .line 351
    iput-wide p1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mTimestampNs:J

    .line 352
    iget-boolean v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLogVerbose:Z

    if-eqz v1, :cond_0

    const-string v1, "MediaEncoderFilter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "timelapse: FIRST frame, last real t= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLastTimeLapseFrameRealTimestampNs:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", setting t = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mTimestampNs:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_0
    :goto_0
    return v0

    .line 361
    :cond_1
    iget v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mNumFramesEncoded:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_3

    iget-wide v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLastTimeLapseFrameRealTimestampNs:J

    const-wide/16 v3, 0x3e8

    iget-wide v5, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mTimeBetweenTimeLapseFrameCaptureUs:J

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    cmp-long v1, p1, v1

    if-gez v1, :cond_3

    .line 366
    iget-boolean v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLogVerbose:Z

    if-eqz v0, :cond_2

    const-string v0, "MediaEncoderFilter"

    const-string/jumbo v1, "timelapse: skipping intermediate frame"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 373
    :cond_3
    iget-boolean v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLogVerbose:Z

    if-eqz v1, :cond_4

    const-string v1, "MediaEncoderFilter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "timelapse: encoding frame, Timestamp t = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", last real t= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLastTimeLapseFrameRealTimestampNs:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", interval = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mTimeBetweenTimeLapseFrameCaptureUs:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_4
    iput-wide p1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLastTimeLapseFrameRealTimestampNs:J

    .line 377
    iget-wide v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mTimestampNs:J

    iget v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mFps:I

    int-to-long v3, v3

    div-long v3, v7, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mTimestampNs:J

    .line 378
    iget-boolean v1, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mLogVerbose:Z

    if-eqz v1, :cond_0

    const-string v1, "MediaEncoderFilter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "timelapse: encoding frame, setting t = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mTimestampNs:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", delta t = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mFps:I

    int-to-long v3, v3

    div-long v3, v7, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fps = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mFps:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 465
    iget-object v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 468
    :cond_0
    iget-object v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    if-eqz v0, :cond_1

    .line 469
    iget-object v0, p0, Landroid/filterpacks/videosink/MediaEncoderFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v0}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 472
    :cond_1
    return-void
.end method
