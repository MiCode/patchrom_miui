.class public Landroid/media/audiofx/LoudnessEnhancer;
.super Landroid/media/audiofx/AudioEffect;
.source "LoudnessEnhancer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/LoudnessEnhancer$1;,
        Landroid/media/audiofx/LoudnessEnhancer$Settings;,
        Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;,
        Landroid/media/audiofx/LoudnessEnhancer$OnParameterChangeListener;
    }
.end annotation


# static fields
.field public static final PARAM_TARGET_GAIN_MB:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LoudnessEnhancer"


# instance fields
.field private mBaseParamListener:Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;

.field private mParamListener:Landroid/media/audiofx/LoudnessEnhancer$OnParameterChangeListener;

.field private final mParamListenerLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .param p1, "audioSession"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 80
    sget-object v0, Landroid/media/audiofx/LoudnessEnhancer;->EFFECT_TYPE_LOUDNESS_ENHANCER:Ljava/util/UUID;

    sget-object v1, Landroid/media/audiofx/LoudnessEnhancer;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    .line 54
    iput-object v3, p0, Landroid/media/audiofx/LoudnessEnhancer;->mParamListener:Landroid/media/audiofx/LoudnessEnhancer$OnParameterChangeListener;

    .line 60
    iput-object v3, p0, Landroid/media/audiofx/LoudnessEnhancer;->mBaseParamListener:Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/audiofx/LoudnessEnhancer;->mParamListenerLock:Ljava/lang/Object;

    .line 82
    if-nez p1, :cond_0

    .line 83
    const-string v0, "LoudnessEnhancer"

    const-string v1, "WARNING: attaching a LoudnessEnhancer to global output mix is deprecated!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3
    .param p1, "priority"    # I
    .param p2, "audioSession"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 106
    sget-object v0, Landroid/media/audiofx/LoudnessEnhancer;->EFFECT_TYPE_LOUDNESS_ENHANCER:Ljava/util/UUID;

    sget-object v1, Landroid/media/audiofx/LoudnessEnhancer;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    .line 54
    iput-object v2, p0, Landroid/media/audiofx/LoudnessEnhancer;->mParamListener:Landroid/media/audiofx/LoudnessEnhancer$OnParameterChangeListener;

    .line 60
    iput-object v2, p0, Landroid/media/audiofx/LoudnessEnhancer;->mBaseParamListener:Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/audiofx/LoudnessEnhancer;->mParamListenerLock:Ljava/lang/Object;

    .line 108
    if-nez p2, :cond_0

    .line 109
    const-string v0, "LoudnessEnhancer"

    const-string v1, "WARNING: attaching a LoudnessEnhancer to global output mix is deprecated!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    return-void
.end method

.method static synthetic access$000(Landroid/media/audiofx/LoudnessEnhancer;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/media/audiofx/LoudnessEnhancer;

    .prologue
    .line 39
    iget-object v0, p0, Landroid/media/audiofx/LoudnessEnhancer;->mParamListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/audiofx/LoudnessEnhancer;)Landroid/media/audiofx/LoudnessEnhancer$OnParameterChangeListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/audiofx/LoudnessEnhancer;

    .prologue
    .line 39
    iget-object v0, p0, Landroid/media/audiofx/LoudnessEnhancer;->mParamListener:Landroid/media/audiofx/LoudnessEnhancer$OnParameterChangeListener;

    return-object v0
.end method


# virtual methods
.method public getProperties()Landroid/media/audiofx/LoudnessEnhancer$Settings;
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

    .line 270
    new-instance v0, Landroid/media/audiofx/LoudnessEnhancer$Settings;

    invoke-direct {v0}, Landroid/media/audiofx/LoudnessEnhancer$Settings;-><init>()V

    .line 271
    .local v0, "settings":Landroid/media/audiofx/LoudnessEnhancer$Settings;
    const/4 v2, 0x1

    new-array v1, v2, [I

    .line 272
    .local v1, "value":[I
    invoke-virtual {p0, v3, v1}, Landroid/media/audiofx/LoudnessEnhancer;->getParameter(I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/LoudnessEnhancer;->checkStatus(I)V

    .line 273
    aget v2, v1, v3

    iput v2, v0, Landroid/media/audiofx/LoudnessEnhancer$Settings;->targetGainmB:I

    .line 274
    return-object v0
.end method

.method public getTargetGain()F
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

    .line 136
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 137
    .local v0, "value":[I
    invoke-virtual {p0, v2, v0}, Landroid/media/audiofx/LoudnessEnhancer;->getParameter(I[I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/LoudnessEnhancer;->checkStatus(I)V

    .line 138
    aget v1, v0, v2

    int-to-float v1, v1

    return v1
.end method

.method public setParameterListener(Landroid/media/audiofx/LoudnessEnhancer$OnParameterChangeListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/media/audiofx/LoudnessEnhancer$OnParameterChangeListener;

    .prologue
    .line 200
    iget-object v1, p0, Landroid/media/audiofx/LoudnessEnhancer;->mParamListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 201
    :try_start_0
    iget-object v0, p0, Landroid/media/audiofx/LoudnessEnhancer;->mParamListener:Landroid/media/audiofx/LoudnessEnhancer$OnParameterChangeListener;

    if-nez v0, :cond_0

    .line 202
    new-instance v0, Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;-><init>(Landroid/media/audiofx/LoudnessEnhancer;Landroid/media/audiofx/LoudnessEnhancer$1;)V

    iput-object v0, p0, Landroid/media/audiofx/LoudnessEnhancer;->mBaseParamListener:Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;

    .line 203
    iget-object v0, p0, Landroid/media/audiofx/LoudnessEnhancer;->mBaseParamListener:Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;

    invoke-super {p0, v0}, Landroid/media/audiofx/AudioEffect;->setParameterListener(Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;)V

    .line 205
    :cond_0
    iput-object p1, p0, Landroid/media/audiofx/LoudnessEnhancer;->mParamListener:Landroid/media/audiofx/LoudnessEnhancer$OnParameterChangeListener;

    .line 206
    monitor-exit v1

    .line 207
    return-void

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setProperties(Landroid/media/audiofx/LoudnessEnhancer$Settings;)V
    .locals 2
    .param p1, "settings"    # Landroid/media/audiofx/LoudnessEnhancer$Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 288
    const/4 v0, 0x0

    iget v1, p1, Landroid/media/audiofx/LoudnessEnhancer$Settings;->targetGainmB:I

    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/LoudnessEnhancer;->setParameter(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/audiofx/LoudnessEnhancer;->checkStatus(I)V

    .line 289
    return-void
.end method

.method public setTargetGain(I)V
    .locals 1
    .param p1, "gainmB"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/LoudnessEnhancer;->setParameter(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/audiofx/LoudnessEnhancer;->checkStatus(I)V

    .line 125
    return-void
.end method
