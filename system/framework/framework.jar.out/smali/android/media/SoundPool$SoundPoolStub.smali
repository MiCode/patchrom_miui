.class Landroid/media/SoundPool$SoundPoolStub;
.super Ljava/lang/Object;
.source "SoundPool.java"

# interfaces
.implements Landroid/media/SoundPool$SoundPoolDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/SoundPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SoundPoolStub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final autoPause()V
    .locals 0

    .prologue
    .line 656
    return-void
.end method

.method public final autoResume()V
    .locals 0

    .prologue
    .line 658
    return-void
.end method

.method public load(Landroid/content/Context;II)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "priority"    # I

    .prologue
    .line 632
    const/4 v0, 0x0

    return v0
.end method

.method public load(Landroid/content/res/AssetFileDescriptor;I)I
    .locals 1
    .param p1, "afd"    # Landroid/content/res/AssetFileDescriptor;
    .param p2, "priority"    # I

    .prologue
    .line 636
    const/4 v0, 0x0

    return v0
.end method

.method public load(Ljava/io/FileDescriptor;JJI)I
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "offset"    # J
    .param p4, "length"    # J
    .param p6, "priority"    # I

    .prologue
    .line 640
    const/4 v0, 0x0

    return v0
.end method

.method public load(Ljava/lang/String;I)I
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "priority"    # I

    .prologue
    .line 628
    const/4 v0, 0x0

    return v0
.end method

.method public final pause(I)V
    .locals 0
    .param p1, "streamID"    # I

    .prologue
    .line 652
    return-void
.end method

.method public final play(IFFIIF)I
    .locals 1
    .param p1, "soundID"    # I
    .param p2, "leftVolume"    # F
    .param p3, "rightVolume"    # F
    .param p4, "priority"    # I
    .param p5, "loop"    # I
    .param p6, "rate"    # F

    .prologue
    .line 649
    const/4 v0, 0x0

    return v0
.end method

.method public final release()V
    .locals 0

    .prologue
    .line 677
    return-void
.end method

.method public final resume(I)V
    .locals 0
    .param p1, "streamID"    # I

    .prologue
    .line 654
    return-void
.end method

.method public final setLoop(II)V
    .locals 0
    .param p1, "streamID"    # I
    .param p2, "loop"    # I

    .prologue
    .line 670
    return-void
.end method

.method public setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/SoundPool$OnLoadCompleteListener;

    .prologue
    .line 675
    return-void
.end method

.method public final setPriority(II)V
    .locals 0
    .param p1, "streamID"    # I
    .param p2, "priority"    # I

    .prologue
    .line 668
    return-void
.end method

.method public final setRate(IF)V
    .locals 0
    .param p1, "streamID"    # I
    .param p2, "rate"    # F

    .prologue
    .line 672
    return-void
.end method

.method public setVolume(IF)V
    .locals 0
    .param p1, "streamID"    # I
    .param p2, "volume"    # F

    .prologue
    .line 666
    return-void
.end method

.method public final setVolume(IFF)V
    .locals 0
    .param p1, "streamID"    # I
    .param p2, "leftVolume"    # F
    .param p3, "rightVolume"    # F

    .prologue
    .line 663
    return-void
.end method

.method public final stop(I)V
    .locals 0
    .param p1, "streamID"    # I

    .prologue
    .line 660
    return-void
.end method

.method public final unload(I)Z
    .locals 1
    .param p1, "soundID"    # I

    .prologue
    .line 644
    const/4 v0, 0x1

    return v0
.end method
