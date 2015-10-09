.class public Landroid/media/audiofx/NoiseSuppressor;
.super Landroid/media/audiofx/AudioEffect;
.source "NoiseSuppressor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NoiseSuppressor"


# direct methods
.method private constructor <init>(I)V
    .locals 3
    .param p1, "audioSession"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 97
    sget-object v0, Landroid/media/audiofx/NoiseSuppressor;->EFFECT_TYPE_NS:Ljava/util/UUID;

    sget-object v1, Landroid/media/audiofx/NoiseSuppressor;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    .line 98
    return-void
.end method

.method public static create(I)Landroid/media/audiofx/NoiseSuppressor;
    .locals 6
    .param p0, "audioSession"    # I

    .prologue
    .line 64
    const/4 v1, 0x0

    .line 66
    .local v1, "ns":Landroid/media/audiofx/NoiseSuppressor;
    :try_start_0
    new-instance v2, Landroid/media/audiofx/NoiseSuppressor;

    invoke-direct {v2, p0}, Landroid/media/audiofx/NoiseSuppressor;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "ns":Landroid/media/audiofx/NoiseSuppressor;
    .local v2, "ns":Landroid/media/audiofx/NoiseSuppressor;
    move-object v1, v2

    .line 74
    .end local v2    # "ns":Landroid/media/audiofx/NoiseSuppressor;
    :goto_0
    return-object v2

    .line 67
    .restart local v1    # "ns":Landroid/media/audiofx/NoiseSuppressor;
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string v3, "NoiseSuppressor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "not implemented on this device "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 74
    .end local v1    # "ns":Landroid/media/audiofx/NoiseSuppressor;
    .restart local v2    # "ns":Landroid/media/audiofx/NoiseSuppressor;
    goto :goto_0

    .line 69
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v2    # "ns":Landroid/media/audiofx/NoiseSuppressor;
    .restart local v1    # "ns":Landroid/media/audiofx/NoiseSuppressor;
    :catch_1
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    const-string v3, "NoiseSuppressor"

    const-string/jumbo v4, "not enough resources"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 74
    .end local v1    # "ns":Landroid/media/audiofx/NoiseSuppressor;
    .restart local v2    # "ns":Landroid/media/audiofx/NoiseSuppressor;
    goto :goto_0

    .line 71
    .end local v0    # "e":Ljava/lang/UnsupportedOperationException;
    .end local v2    # "ns":Landroid/media/audiofx/NoiseSuppressor;
    .restart local v1    # "ns":Landroid/media/audiofx/NoiseSuppressor;
    :catch_2
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v3, "NoiseSuppressor"

    const-string/jumbo v4, "not enough memory"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v1

    .line 74
    .end local v1    # "ns":Landroid/media/audiofx/NoiseSuppressor;
    .restart local v2    # "ns":Landroid/media/audiofx/NoiseSuppressor;
    goto :goto_0

    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v2    # "ns":Landroid/media/audiofx/NoiseSuppressor;
    .restart local v1    # "ns":Landroid/media/audiofx/NoiseSuppressor;
    :catchall_0
    move-exception v3

    move-object v2, v1

    .end local v1    # "ns":Landroid/media/audiofx/NoiseSuppressor;
    .restart local v2    # "ns":Landroid/media/audiofx/NoiseSuppressor;
    goto :goto_0
.end method

.method public static isAvailable()Z
    .locals 1

    .prologue
    .line 52
    sget-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_NS:Ljava/util/UUID;

    invoke-static {v0}, Landroid/media/audiofx/AudioEffect;->isEffectTypeAvailable(Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method
