.class public Landroid/media/SoundPool;
.super Ljava/lang/Object;
.source "SoundPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/SoundPool$SoundPoolStub;,
        Landroid/media/SoundPool$SoundPoolImpl;,
        Landroid/media/SoundPool$SoundPoolDelegate;,
        Landroid/media/SoundPool$OnLoadCompleteListener;
    }
.end annotation


# instance fields
.field private final mImpl:Landroid/media/SoundPool$SoundPoolDelegate;


# direct methods
.method public constructor <init>(III)V
    .locals 2
    .param p1, "maxStreams"    # I
    .param p2, "streamType"    # I
    .param p3, "srcQuality"    # I

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    const-string v0, "config.disable_media"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    new-instance v0, Landroid/media/SoundPool$SoundPoolStub;

    invoke-direct {v0}, Landroid/media/SoundPool$SoundPoolStub;-><init>()V

    iput-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    new-instance v0, Landroid/media/SoundPool$SoundPoolImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/media/SoundPool$SoundPoolImpl;-><init>(Landroid/media/SoundPool;III)V

    iput-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    goto :goto_0
.end method


# virtual methods
.method public final autoPause()V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    invoke-interface {v0}, Landroid/media/SoundPool$SoundPoolDelegate;->autoPause()V

    .line 275
    return-void
.end method

.method public final autoResume()V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    invoke-interface {v0}, Landroid/media/SoundPool$SoundPoolDelegate;->autoResume()V

    .line 285
    return-void
.end method

.method public load(Landroid/content/Context;II)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "priority"    # I

    .prologue
    .line 159
    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/SoundPool$SoundPoolDelegate;->load(Landroid/content/Context;II)I

    move-result v0

    return v0
.end method

.method public load(Landroid/content/res/AssetFileDescriptor;I)I
    .locals 1
    .param p1, "afd"    # Landroid/content/res/AssetFileDescriptor;
    .param p2, "priority"    # I

    .prologue
    .line 171
    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    invoke-interface {v0, p1, p2}, Landroid/media/SoundPool$SoundPoolDelegate;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v0

    return v0
.end method

.method public load(Ljava/io/FileDescriptor;JJI)I
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "offset"    # J
    .param p4, "length"    # J
    .param p6, "priority"    # I

    .prologue
    .line 189
    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/media/SoundPool$SoundPoolDelegate;->load(Ljava/io/FileDescriptor;JJI)I

    move-result v0

    return v0
.end method

.method public load(Ljava/lang/String;I)I
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "priority"    # I

    .prologue
    .line 140
    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    invoke-interface {v0, p1, p2}, Landroid/media/SoundPool$SoundPoolDelegate;->load(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final pause(I)V
    .locals 1
    .param p1, "streamID"    # I

    .prologue
    .line 248
    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    invoke-interface {v0, p1}, Landroid/media/SoundPool$SoundPoolDelegate;->pause(I)V

    .line 249
    return-void
.end method

.method public final play(IFFIIF)I
    .locals 7
    .param p1, "soundID"    # I
    .param p2, "leftVolume"    # F
    .param p3, "rightVolume"    # F
    .param p4, "priority"    # I
    .param p5, "loop"    # I
    .param p6, "rate"    # F

    .prologue
    .line 232
    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/media/SoundPool$SoundPoolDelegate;->play(IFFIIF)I

    move-result v0

    return v0
.end method

.method public final release()V
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    invoke-interface {v0}, Landroid/media/SoundPool$SoundPoolDelegate;->release()V

    .line 399
    return-void
.end method

.method public final resume(I)V
    .locals 1
    .param p1, "streamID"    # I

    .prologue
    .line 262
    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    invoke-interface {v0, p1}, Landroid/media/SoundPool$SoundPoolDelegate;->resume(I)V

    .line 263
    return-void
.end method

.method public final setLoop(II)V
    .locals 1
    .param p1, "streamID"    # I
    .param p2, "loop"    # I

    .prologue
    .line 353
    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    invoke-interface {v0, p1, p2}, Landroid/media/SoundPool$SoundPoolDelegate;->setLoop(II)V

    .line 354
    return-void
.end method

.method public setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/SoundPool$OnLoadCompleteListener;

    .prologue
    .line 387
    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    invoke-interface {v0, p1}, Landroid/media/SoundPool$SoundPoolDelegate;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 388
    return-void
.end method

.method public final setPriority(II)V
    .locals 1
    .param p1, "streamID"    # I
    .param p2, "priority"    # I

    .prologue
    .line 338
    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    invoke-interface {v0, p1, p2}, Landroid/media/SoundPool$SoundPoolDelegate;->setPriority(II)V

    .line 339
    return-void
.end method

.method public final setRate(IF)V
    .locals 1
    .param p1, "streamID"    # I
    .param p2, "rate"    # F

    .prologue
    .line 369
    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    invoke-interface {v0, p1, p2}, Landroid/media/SoundPool$SoundPoolDelegate;->setRate(IF)V

    .line 370
    return-void
.end method

.method public setVolume(IF)V
    .locals 0
    .param p1, "streamID"    # I
    .param p2, "volume"    # F

    .prologue
    .line 324
    invoke-virtual {p0, p1, p2, p2}, Landroid/media/SoundPool;->setVolume(IFF)V

    .line 325
    return-void
.end method

.method public final setVolume(IFF)V
    .locals 1
    .param p1, "streamID"    # I
    .param p2, "leftVolume"    # F
    .param p3, "rightVolume"    # F

    .prologue
    .line 316
    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/SoundPool$SoundPoolDelegate;->setVolume(IFF)V

    .line 317
    return-void
.end method

.method public final stop(I)V
    .locals 1
    .param p1, "streamID"    # I

    .prologue
    .line 299
    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    invoke-interface {v0, p1}, Landroid/media/SoundPool$SoundPoolDelegate;->stop(I)V

    .line 300
    return-void
.end method

.method public final unload(I)Z
    .locals 1
    .param p1, "soundID"    # I

    .prologue
    .line 203
    iget-object v0, p0, Landroid/media/SoundPool;->mImpl:Landroid/media/SoundPool$SoundPoolDelegate;

    invoke-interface {v0, p1}, Landroid/media/SoundPool$SoundPoolDelegate;->unload(I)Z

    move-result v0

    return v0
.end method
