.class public Landroid/media/EncoderCapabilities;
.super Ljava/lang/Object;
.source "EncoderCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/EncoderCapabilities$AudioEncoderCap;,
        Landroid/media/EncoderCapabilities$VideoEncoderCap;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EncoderCapabilities"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 105
    invoke-static {}, Landroid/media/EncoderCapabilities;->native_init()V

    .line 106
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAudioEncoders()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/EncoderCapabilities$AudioEncoderCap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    invoke-static {}, Landroid/media/EncoderCapabilities;->native_get_num_audio_encoders()I

    move-result v2

    .line 144
    .local v2, "nEncoders":I
    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 150
    :cond_0
    return-object v0

    .line 146
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .local v0, "encoderList":Ljava/util/List;, "Ljava/util/List<Landroid/media/EncoderCapabilities$AudioEncoderCap;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 148
    invoke-static {v1}, Landroid/media/EncoderCapabilities;->native_get_audio_encoder_cap(I)Landroid/media/EncoderCapabilities$AudioEncoderCap;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getOutputFileFormats()[I
    .locals 4

    .prologue
    .line 113
    invoke-static {}, Landroid/media/EncoderCapabilities;->native_get_num_file_formats()I

    move-result v2

    .line 114
    .local v2, "nFormats":I
    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 120
    :cond_0
    return-object v0

    .line 116
    :cond_1
    new-array v0, v2, [I

    .line 117
    .local v0, "formats":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 118
    invoke-static {v1}, Landroid/media/EncoderCapabilities;->native_get_file_format(I)I

    move-result v3

    aput v3, v0, v1

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getVideoEncoders()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/EncoderCapabilities$VideoEncoderCap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    invoke-static {}, Landroid/media/EncoderCapabilities;->native_get_num_video_encoders()I

    move-result v2

    .line 129
    .local v2, "nEncoders":I
    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 135
    :cond_0
    return-object v0

    .line 131
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v0, "encoderList":Ljava/util/List;, "Ljava/util/List<Landroid/media/EncoderCapabilities$VideoEncoderCap;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 133
    invoke-static {v1}, Landroid/media/EncoderCapabilities;->native_get_video_encoder_cap(I)Landroid/media/EncoderCapabilities$VideoEncoderCap;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static final native native_get_audio_encoder_cap(I)Landroid/media/EncoderCapabilities$AudioEncoderCap;
.end method

.method private static final native native_get_file_format(I)I
.end method

.method private static final native native_get_num_audio_encoders()I
.end method

.method private static final native native_get_num_file_formats()I
.end method

.method private static final native native_get_num_video_encoders()I
.end method

.method private static final native native_get_video_encoder_cap(I)Landroid/media/EncoderCapabilities$VideoEncoderCap;
.end method

.method private static final native native_init()V
.end method
