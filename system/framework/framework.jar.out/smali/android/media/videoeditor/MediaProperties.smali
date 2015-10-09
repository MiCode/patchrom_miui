.class public Landroid/media/videoeditor/MediaProperties;
.super Ljava/lang/Object;
.source "MediaProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/videoeditor/MediaProperties$MPEG4Level;,
        Landroid/media/videoeditor/MediaProperties$MPEG4Profile;,
        Landroid/media/videoeditor/MediaProperties$H263Level;,
        Landroid/media/videoeditor/MediaProperties$H263Profile;,
        Landroid/media/videoeditor/MediaProperties$H264Level;,
        Landroid/media/videoeditor/MediaProperties$H264Profile;
    }
.end annotation


# static fields
.field public static final ACODEC_AAC_LC:I = 0x2

.field public static final ACODEC_AAC_PLUS:I = 0x3

.field public static final ACODEC_AMRNB:I = 0x1

.field public static final ACODEC_AMRWB:I = 0x8

.field public static final ACODEC_ENHANCED_AAC_PLUS:I = 0x4

.field public static final ACODEC_EVRC:I = 0x6

.field public static final ACODEC_MP3:I = 0x5

.field public static final ACODEC_NO_AUDIO:I = 0x0

.field public static final ACODEC_OGG:I = 0x9

.field private static final ASPECT_RATIOS:[I

.field public static final ASPECT_RATIO_11_9:I = 0x5

.field private static final ASPECT_RATIO_11_9_RESOLUTIONS:[Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final ASPECT_RATIO_16_9:I = 0x2

.field private static final ASPECT_RATIO_16_9_RESOLUTIONS:[Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final ASPECT_RATIO_3_2:I = 0x1

.field private static final ASPECT_RATIO_3_2_RESOLUTIONS:[Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final ASPECT_RATIO_4_3:I = 0x3

.field private static final ASPECT_RATIO_4_3_RESOLUTIONS:[Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final ASPECT_RATIO_5_3:I = 0x4

.field private static final ASPECT_RATIO_5_3_RESOLUTIONS:[Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final ASPECT_RATIO_UNDEFINED:I = 0x0

.field public static final AUDIO_MAX_TRACK_COUNT:I = 0x1

.field public static final AUDIO_MAX_VOLUME_PERCENT:I = 0x64

.field public static final BITRATE_128K:I = 0x1f400

.field public static final BITRATE_192K:I = 0x2ee00

.field public static final BITRATE_256K:I = 0x3e800

.field public static final BITRATE_28K:I = 0x6d60

.field public static final BITRATE_2M:I = 0x1e8480

.field public static final BITRATE_384K:I = 0x5dc00

.field public static final BITRATE_40K:I = 0x9c40

.field public static final BITRATE_512K:I = 0x7d000

.field public static final BITRATE_5M:I = 0x4c4b40

.field public static final BITRATE_64K:I = 0xfa00

.field public static final BITRATE_800K:I = 0xc3500

.field public static final BITRATE_8M:I = 0x7a1200

.field public static final BITRATE_96K:I = 0x17700

.field public static final DEFAULT_CHANNEL_COUNT:I = 0x2

.field public static final DEFAULT_SAMPLING_FREQUENCY:I = 0x7d00

.field public static final FILE_3GP:I = 0x0

.field public static final FILE_AMR:I = 0x2

.field public static final FILE_JPEG:I = 0x5

.field public static final FILE_M4V:I = 0xa

.field public static final FILE_MP3:I = 0x3

.field public static final FILE_MP4:I = 0x1

.field public static final FILE_PNG:I = 0x8

.field public static final FILE_UNSUPPORTED:I = 0xff

.field public static final HEIGHT_1080:I = 0x438

.field public static final HEIGHT_144:I = 0x90

.field public static final HEIGHT_288:I = 0x120

.field public static final HEIGHT_360:I = 0x168

.field public static final HEIGHT_480:I = 0x1e0

.field public static final HEIGHT_720:I = 0x2d0

.field public static final SAMPLES_PER_FRAME_AAC:I = 0x400

.field public static final SAMPLES_PER_FRAME_AMRNB:I = 0xa0

.field public static final SAMPLES_PER_FRAME_AMRWB:I = 0x140

.field public static final SAMPLES_PER_FRAME_MP3:I = 0x480

.field private static final SUPPORTED_ACODECS:[I

.field private static final SUPPORTED_BITRATES:[I

.field private static final SUPPORTED_VCODECS:[I

.field private static final SUPPORTED_VIDEO_FILE_FORMATS:[I

.field public static final UNDEFINED_VIDEO_PROFILE:I = 0xff

.field public static final VCODEC_H263:I = 0x1

.field public static final VCODEC_H264:I = 0x2

.field public static final VCODEC_MPEG4:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x1e0

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 52
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/media/videoeditor/MediaProperties;->ASPECT_RATIOS:[I

    .line 64
    new-array v0, v6, [Landroid/util/Pair;

    new-instance v1, Landroid/util/Pair;

    const/16 v2, 0x2d0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v4

    new-instance v1, Landroid/util/Pair;

    const/16 v2, 0x438

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x2d0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v5

    sput-object v0, Landroid/media/videoeditor/MediaProperties;->ASPECT_RATIO_3_2_RESOLUTIONS:[Landroid/util/Pair;

    .line 71
    new-array v0, v6, [Landroid/util/Pair;

    new-instance v1, Landroid/util/Pair;

    const/16 v2, 0x280

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v4

    new-instance v1, Landroid/util/Pair;

    const/16 v2, 0x3c0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x2d0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v5

    sput-object v0, Landroid/media/videoeditor/MediaProperties;->ASPECT_RATIO_4_3_RESOLUTIONS:[Landroid/util/Pair;

    .line 78
    new-array v0, v5, [Landroid/util/Pair;

    new-instance v1, Landroid/util/Pair;

    const/16 v2, 0x320

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v4

    sput-object v0, Landroid/media/videoeditor/MediaProperties;->ASPECT_RATIO_5_3_RESOLUTIONS:[Landroid/util/Pair;

    .line 84
    new-array v0, v6, [Landroid/util/Pair;

    new-instance v1, Landroid/util/Pair;

    const/16 v2, 0xb0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x90

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v4

    new-instance v1, Landroid/util/Pair;

    const/16 v2, 0x160

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x120

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v5

    sput-object v0, Landroid/media/videoeditor/MediaProperties;->ASPECT_RATIO_11_9_RESOLUTIONS:[Landroid/util/Pair;

    .line 91
    new-array v0, v7, [Landroid/util/Pair;

    new-instance v1, Landroid/util/Pair;

    const/16 v2, 0x350

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v4

    new-instance v1, Landroid/util/Pair;

    const/16 v2, 0x500

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x2d0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v5

    new-instance v1, Landroid/util/Pair;

    const/16 v2, 0x780

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x438

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v6

    sput-object v0, Landroid/media/videoeditor/MediaProperties;->ASPECT_RATIO_16_9_RESOLUTIONS:[Landroid/util/Pair;

    .line 118
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/media/videoeditor/MediaProperties;->SUPPORTED_BITRATES:[I

    .line 144
    new-array v0, v7, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroid/media/videoeditor/MediaProperties;->SUPPORTED_VCODECS:[I

    .line 267
    new-array v0, v7, [I

    fill-array-data v0, :array_3

    sput-object v0, Landroid/media/videoeditor/MediaProperties;->SUPPORTED_ACODECS:[I

    .line 308
    new-array v0, v7, [I

    fill-array-data v0, :array_4

    sput-object v0, Landroid/media/videoeditor/MediaProperties;->SUPPORTED_VIDEO_FILE_FORMATS:[I

    return-void

    .line 52
    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
    .end array-data

    .line 118
    :array_1
    .array-data 4
        0x6d60
        0x9c40
        0xfa00
        0x17700
        0x1f400
        0x2ee00
        0x3e800
        0x5dc00
        0x7d000
        0xc3500
        0x1e8480
        0x4c4b40
        0x7a1200
    .end array-data

    .line 144
    :array_2
    .array-data 4
        0x2
        0x1
        0x3
    .end array-data

    .line 267
    :array_3
    .array-data 4
        0x2
        0x1
        0x8
    .end array-data

    .line 308
    :array_4
    .array-data 4
        0x0
        0x1
        0xa
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    return-void
.end method

.method public static getAllSupportedAspectRatios()[I
    .locals 1

    .prologue
    .line 334
    sget-object v0, Landroid/media/videoeditor/MediaProperties;->ASPECT_RATIOS:[I

    return-object v0
.end method

.method public static getSupportedAudioCodecs()[I
    .locals 1

    .prologue
    .line 415
    sget-object v0, Landroid/media/videoeditor/MediaProperties;->SUPPORTED_ACODECS:[I

    return-object v0
.end method

.method public static getSupportedAudioTrackCount()I
    .locals 1

    .prologue
    .line 443
    const/4 v0, 0x1

    return v0
.end method

.method public static getSupportedMaxVolume()I
    .locals 1

    .prologue
    .line 436
    const/16 v0, 0x64

    return v0
.end method

.method public static getSupportedResolutions(I)[Landroid/util/Pair;
    .locals 11
    .param p0, "aspectRatio"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 346
    packed-switch p0, :pswitch_data_0

    .line 373
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown aspect ratio: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 348
    :pswitch_0
    sget-object v4, Landroid/media/videoeditor/MediaProperties;->ASPECT_RATIO_3_2_RESOLUTIONS:[Landroid/util/Pair;

    .line 378
    .local v4, "resolutions":[Landroid/util/Pair;, "[Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :goto_0
    invoke-static {}, Landroid/media/videoeditor/VideoEditorProfile;->get()Landroid/media/videoeditor/VideoEditorProfile;

    move-result-object v7

    .line 379
    .local v7, "veProfile":Landroid/media/videoeditor/VideoEditorProfile;
    if-nez v7, :cond_0

    .line 380
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "Can\'t get the video editor profile"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 353
    .end local v4    # "resolutions":[Landroid/util/Pair;, "[Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v7    # "veProfile":Landroid/media/videoeditor/VideoEditorProfile;
    :pswitch_1
    sget-object v4, Landroid/media/videoeditor/MediaProperties;->ASPECT_RATIO_4_3_RESOLUTIONS:[Landroid/util/Pair;

    .line 354
    .restart local v4    # "resolutions":[Landroid/util/Pair;, "[Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto :goto_0

    .line 358
    .end local v4    # "resolutions":[Landroid/util/Pair;, "[Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :pswitch_2
    sget-object v4, Landroid/media/videoeditor/MediaProperties;->ASPECT_RATIO_5_3_RESOLUTIONS:[Landroid/util/Pair;

    .line 359
    .restart local v4    # "resolutions":[Landroid/util/Pair;, "[Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto :goto_0

    .line 363
    .end local v4    # "resolutions":[Landroid/util/Pair;, "[Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :pswitch_3
    sget-object v4, Landroid/media/videoeditor/MediaProperties;->ASPECT_RATIO_11_9_RESOLUTIONS:[Landroid/util/Pair;

    .line 364
    .restart local v4    # "resolutions":[Landroid/util/Pair;, "[Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto :goto_0

    .line 368
    .end local v4    # "resolutions":[Landroid/util/Pair;, "[Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :pswitch_4
    sget-object v4, Landroid/media/videoeditor/MediaProperties;->ASPECT_RATIO_16_9_RESOLUTIONS:[Landroid/util/Pair;

    .line 369
    .restart local v4    # "resolutions":[Landroid/util/Pair;, "[Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto :goto_0

    .line 382
    .restart local v7    # "veProfile":Landroid/media/videoeditor/VideoEditorProfile;
    :cond_0
    iget v2, v7, Landroid/media/videoeditor/VideoEditorProfile;->maxOutputVideoFrameWidth:I

    .line 383
    .local v2, "maxWidth":I
    iget v1, v7, Landroid/media/videoeditor/VideoEditorProfile;->maxOutputVideoFrameHeight:I

    .line 384
    .local v1, "maxHeight":I
    array-length v8, v4

    new-array v6, v8, [Landroid/util/Pair;

    .line 385
    .local v6, "tmpResolutions":[Landroid/util/Pair;, "[Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 386
    .local v3, "numSupportedResolution":I
    const/4 v0, 0x0

    .line 389
    .local v0, "i":I
    const/4 v0, 0x0

    :goto_1
    array-length v8, v4

    if-ge v0, v8, :cond_2

    .line 390
    aget-object v8, v4, v0

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-gt v8, v2, :cond_1

    aget-object v8, v4, v0

    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-gt v8, v1, :cond_1

    .line 392
    aget-object v8, v4, v0

    aput-object v8, v6, v3

    .line 393
    add-int/lit8 v3, v3, 0x1

    .line 389
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 396
    :cond_2
    new-array v5, v3, [Landroid/util/Pair;

    .line 398
    .local v5, "supportedResolutions":[Landroid/util/Pair;, "[Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {v6, v9, v5, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 401
    return-object v5

    .line 346
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getSupportedVideoBitrates()[I
    .locals 1

    .prologue
    .line 429
    sget-object v0, Landroid/media/videoeditor/MediaProperties;->SUPPORTED_BITRATES:[I

    return-object v0
.end method

.method public static getSupportedVideoCodecs()[I
    .locals 1

    .prologue
    .line 408
    sget-object v0, Landroid/media/videoeditor/MediaProperties;->SUPPORTED_VCODECS:[I

    return-object v0
.end method

.method public static getSupportedVideoFileFormat()[I
    .locals 1

    .prologue
    .line 422
    sget-object v0, Landroid/media/videoeditor/MediaProperties;->SUPPORTED_VIDEO_FILE_FORMATS:[I

    return-object v0
.end method
