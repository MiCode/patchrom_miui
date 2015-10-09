.class public Landroid/media/CameraProfile;
.super Ljava/lang/Object;
.source "CameraProfile.java"


# static fields
.field public static final QUALITY_HIGH:I = 0x2

.field public static final QUALITY_LOW:I = 0x0

.field public static final QUALITY_MEDIUM:I = 0x1

.field private static final sCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/CameraProfile;->sCache:Ljava/util/HashMap;

    .line 92
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 93
    invoke-static {}, Landroid/media/CameraProfile;->native_init()V

    .line 94
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getImageEncodingQualityLevels(I)[I
    .locals 6
    .param p0, "cameraId"    # I

    .prologue
    .line 97
    invoke-static {p0}, Landroid/media/CameraProfile;->native_get_num_image_encoding_quality_levels(I)I

    move-result v2

    .line 98
    .local v2, "nLevels":I
    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 99
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected Jpeg encoding quality levels "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 102
    :cond_0
    new-array v1, v2, [I

    .line 103
    .local v1, "levels":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 104
    invoke-static {p0, v0}, Landroid/media/CameraProfile;->native_get_image_encoding_quality_level(II)I

    move-result v3

    aput v3, v1, v0

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :cond_1
    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    .line 107
    return-object v1
.end method

.method public static getJpegEncodingQualityParameter(I)I
    .locals 4
    .param p0, "quality"    # I

    .prologue
    .line 58
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    .line 59
    .local v2, "numberOfCameras":I
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 60
    .local v0, "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 61
    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 62
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_0

    .line 63
    invoke-static {v1, p0}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v3

    .line 66
    :goto_1
    return v3

    .line 60
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static getJpegEncodingQualityParameter(II)I
    .locals 4
    .param p0, "cameraId"    # I
    .param p1, "quality"    # I

    .prologue
    .line 78
    if-ltz p1, :cond_0

    const/4 v1, 0x2

    if-le p1, v1, :cond_1

    .line 79
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported quality level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 81
    :cond_1
    sget-object v2, Landroid/media/CameraProfile;->sCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 82
    :try_start_0
    sget-object v1, Landroid/media/CameraProfile;->sCache:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 83
    .local v0, "levels":[I
    if-nez v0, :cond_2

    .line 84
    invoke-static {p0}, Landroid/media/CameraProfile;->getImageEncodingQualityLevels(I)[I

    move-result-object v0

    .line 85
    sget-object v1, Landroid/media/CameraProfile;->sCache:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_2
    aget v1, v0, p1

    monitor-exit v2

    return v1

    .line 88
    .end local v0    # "levels":[I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static final native native_get_image_encoding_quality_level(II)I
.end method

.method private static final native native_get_num_image_encoding_quality_levels(I)I
.end method

.method private static final native native_init()V
.end method
