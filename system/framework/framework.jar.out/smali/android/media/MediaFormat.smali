.class public final Landroid/media/MediaFormat;
.super Ljava/lang/Object;
.source "MediaFormat.java"


# static fields
.field public static final KEY_AAC_PROFILE:Ljava/lang/String; = "aac-profile"

.field public static final KEY_BIT_RATE:Ljava/lang/String; = "bitrate"

.field public static final KEY_CHANNEL_COUNT:Ljava/lang/String; = "channel-count"

.field public static final KEY_CHANNEL_MASK:Ljava/lang/String; = "channel-mask"

.field public static final KEY_COLOR_FORMAT:Ljava/lang/String; = "color-format"

.field public static final KEY_DURATION:Ljava/lang/String; = "durationUs"

.field public static final KEY_FLAC_COMPRESSION_LEVEL:Ljava/lang/String; = "flac-compression-level"

.field public static final KEY_FRAME_RATE:Ljava/lang/String; = "frame-rate"

.field public static final KEY_HEIGHT:Ljava/lang/String; = "height"

.field public static final KEY_IS_ADTS:Ljava/lang/String; = "is-adts"

.field public static final KEY_IS_AUTOSELECT:Ljava/lang/String; = "is-autoselect"

.field public static final KEY_IS_DEFAULT:Ljava/lang/String; = "is-default"

.field public static final KEY_IS_FORCED_SUBTITLE:Ljava/lang/String; = "is-forced-subtitle"

.field public static final KEY_I_FRAME_INTERVAL:Ljava/lang/String; = "i-frame-interval"

.field public static final KEY_LANGUAGE:Ljava/lang/String; = "language"

.field public static final KEY_MAX_HEIGHT:Ljava/lang/String; = "max-height"

.field public static final KEY_MAX_INPUT_SIZE:Ljava/lang/String; = "max-input-size"

.field public static final KEY_MAX_WIDTH:Ljava/lang/String; = "max-width"

.field public static final KEY_MIME:Ljava/lang/String; = "mime"

.field public static final KEY_PUSH_BLANK_BUFFERS_ON_STOP:Ljava/lang/String; = "push-blank-buffers-on-shutdown"

.field public static final KEY_REPEAT_PREVIOUS_FRAME_AFTER:Ljava/lang/String; = "repeat-previous-frame-after"

.field public static final KEY_SAMPLE_RATE:Ljava/lang/String; = "sample-rate"

.field public static final KEY_SLICE_HEIGHT:Ljava/lang/String; = "slice-height"

.field public static final KEY_STRIDE:Ljava/lang/String; = "stride"

.field public static final KEY_WIDTH:Ljava/lang/String; = "width"


# instance fields
.field private mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    .line 265
    return-void
.end method

.method constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 256
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    iput-object p1, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    .line 258
    return-void
.end method

.method public static final createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;
    .locals 2
    .param p0, "mime"    # Ljava/lang/String;
    .param p1, "sampleRate"    # I
    .param p2, "channelCount"    # I

    .prologue
    .line 372
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    .line 373
    .local v0, "format":Landroid/media/MediaFormat;
    const-string/jumbo v1, "mime"

    invoke-virtual {v0, v1, p0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string/jumbo v1, "sample-rate"

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 375
    const-string v1, "channel-count"

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 377
    return-object v0
.end method

.method public static final createSubtitleFormat(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaFormat;
    .locals 2
    .param p0, "mime"    # Ljava/lang/String;
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 391
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    .line 392
    .local v0, "format":Landroid/media/MediaFormat;
    const-string/jumbo v1, "mime"

    invoke-virtual {v0, v1, p0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const-string v1, "language"

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    return-object v0
.end method

.method public static final createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;
    .locals 2
    .param p0, "mime"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 408
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    .line 409
    .local v0, "format":Landroid/media/MediaFormat;
    const-string/jumbo v1, "mime"

    invoke-virtual {v0, v1, p0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const-string/jumbo v1, "width"

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 411
    const-string v1, "height"

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 413
    return-object v0
.end method


# virtual methods
.method public final containsKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 275
    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 324
    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final getFloat(Ljava/lang/String;)F
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 310
    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public final getInteger(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 282
    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getInteger(Ljava/lang/String;I)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 292
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result p2

    .line 296
    .end local p2    # "defaultValue":I
    :goto_0
    return p2

    .line 294
    .restart local p2    # "defaultValue":I
    :catch_0
    move-exception v0

    goto :goto_0

    .line 295
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public final getLong(Ljava/lang/String;)J
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 303
    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method getMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 268
    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    return-object v0
.end method

.method public final getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 317
    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bytes"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 359
    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    return-void
.end method

.method public final setFloat(Ljava/lang/String;F)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 345
    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p2}, Ljava/lang/Float;-><init>(F)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    return-void
.end method

.method public final setInteger(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 331
    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    return-void
.end method

.method public final setLong(Ljava/lang/String;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 338
    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    return-void
.end method

.method public final setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 352
    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Landroid/media/MediaFormat;->mMap:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
