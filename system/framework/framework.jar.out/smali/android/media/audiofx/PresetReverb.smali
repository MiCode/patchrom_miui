.class public Landroid/media/audiofx/PresetReverb;
.super Landroid/media/audiofx/AudioEffect;
.source "PresetReverb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/PresetReverb$1;,
        Landroid/media/audiofx/PresetReverb$Settings;,
        Landroid/media/audiofx/PresetReverb$BaseParameterListener;,
        Landroid/media/audiofx/PresetReverb$OnParameterChangeListener;
    }
.end annotation


# static fields
.field public static final PARAM_PRESET:I = 0x0

.field public static final PRESET_LARGEHALL:S = 0x5s

.field public static final PRESET_LARGEROOM:S = 0x3s

.field public static final PRESET_MEDIUMHALL:S = 0x4s

.field public static final PRESET_MEDIUMROOM:S = 0x2s

.field public static final PRESET_NONE:S = 0x0s

.field public static final PRESET_PLATE:S = 0x6s

.field public static final PRESET_SMALLROOM:S = 0x1s

.field private static final TAG:Ljava/lang/String; = "PresetReverb"


# instance fields
.field private mBaseParamListener:Landroid/media/audiofx/PresetReverb$BaseParameterListener;

.field private mParamListener:Landroid/media/audiofx/PresetReverb$OnParameterChangeListener;

.field private final mParamListenerLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(II)V
    .locals 3
    .param p1, "priority"    # I
    .param p2, "audioSession"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 136
    sget-object v0, Landroid/media/audiofx/PresetReverb;->EFFECT_TYPE_PRESET_REVERB:Ljava/util/UUID;

    sget-object v1, Landroid/media/audiofx/PresetReverb;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    .line 106
    iput-object v2, p0, Landroid/media/audiofx/PresetReverb;->mParamListener:Landroid/media/audiofx/PresetReverb$OnParameterChangeListener;

    .line 111
    iput-object v2, p0, Landroid/media/audiofx/PresetReverb;->mBaseParamListener:Landroid/media/audiofx/PresetReverb$BaseParameterListener;

    .line 116
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/audiofx/PresetReverb;->mParamListenerLock:Ljava/lang/Object;

    .line 137
    return-void
.end method

.method static synthetic access$000(Landroid/media/audiofx/PresetReverb;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/media/audiofx/PresetReverb;

    .prologue
    .line 61
    iget-object v0, p0, Landroid/media/audiofx/PresetReverb;->mParamListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/audiofx/PresetReverb;)Landroid/media/audiofx/PresetReverb$OnParameterChangeListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/audiofx/PresetReverb;

    .prologue
    .line 61
    iget-object v0, p0, Landroid/media/audiofx/PresetReverb;->mParamListener:Landroid/media/audiofx/PresetReverb$OnParameterChangeListener;

    return-object v0
.end method


# virtual methods
.method public getPreset()S
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 164
    const/4 v1, 0x1

    new-array v0, v1, [S

    .line 165
    .local v0, "value":[S
    invoke-virtual {p0, v2, v0}, Landroid/media/audiofx/PresetReverb;->getParameter(I[S)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/PresetReverb;->checkStatus(I)V

    .line 166
    aget-short v1, v0, v2

    return v1
.end method

.method public getProperties()Landroid/media/audiofx/PresetReverb$Settings;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 292
    new-instance v0, Landroid/media/audiofx/PresetReverb$Settings;

    invoke-direct {v0}, Landroid/media/audiofx/PresetReverb$Settings;-><init>()V

    .line 293
    .local v0, "settings":Landroid/media/audiofx/PresetReverb$Settings;
    const/4 v2, 0x1

    new-array v1, v2, [S

    .line 294
    .local v1, "value":[S
    invoke-virtual {p0, v3, v1}, Landroid/media/audiofx/PresetReverb;->getParameter(I[S)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/PresetReverb;->checkStatus(I)V

    .line 295
    aget-short v2, v1, v3

    iput-short v2, v0, Landroid/media/audiofx/PresetReverb$Settings;->preset:S

    .line 296
    return-object v0
.end method

.method public setParameterListener(Landroid/media/audiofx/PresetReverb$OnParameterChangeListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/media/audiofx/PresetReverb$OnParameterChangeListener;

    .prologue
    .line 224
    iget-object v1, p0, Landroid/media/audiofx/PresetReverb;->mParamListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 225
    :try_start_0
    iget-object v0, p0, Landroid/media/audiofx/PresetReverb;->mParamListener:Landroid/media/audiofx/PresetReverb$OnParameterChangeListener;

    if-nez v0, :cond_0

    .line 226
    iput-object p1, p0, Landroid/media/audiofx/PresetReverb;->mParamListener:Landroid/media/audiofx/PresetReverb$OnParameterChangeListener;

    .line 227
    new-instance v0, Landroid/media/audiofx/PresetReverb$BaseParameterListener;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroid/media/audiofx/PresetReverb$BaseParameterListener;-><init>(Landroid/media/audiofx/PresetReverb;Landroid/media/audiofx/PresetReverb$1;)V

    iput-object v0, p0, Landroid/media/audiofx/PresetReverb;->mBaseParamListener:Landroid/media/audiofx/PresetReverb$BaseParameterListener;

    .line 228
    iget-object v0, p0, Landroid/media/audiofx/PresetReverb;->mBaseParamListener:Landroid/media/audiofx/PresetReverb$BaseParameterListener;

    invoke-super {p0, v0}, Landroid/media/audiofx/AudioEffect;->setParameterListener(Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;)V

    .line 230
    :cond_0
    monitor-exit v1

    .line 231
    return-void

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPreset(S)V
    .locals 1
    .param p1, "preset"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/PresetReverb;->setParameter(IS)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/audiofx/PresetReverb;->checkStatus(I)V

    .line 153
    return-void
.end method

.method public setProperties(Landroid/media/audiofx/PresetReverb$Settings;)V
    .locals 2
    .param p1, "settings"    # Landroid/media/audiofx/PresetReverb$Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 309
    const/4 v0, 0x0

    iget-short v1, p1, Landroid/media/audiofx/PresetReverb$Settings;->preset:S

    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/PresetReverb;->setParameter(IS)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/audiofx/PresetReverb;->checkStatus(I)V

    .line 310
    return-void
.end method
