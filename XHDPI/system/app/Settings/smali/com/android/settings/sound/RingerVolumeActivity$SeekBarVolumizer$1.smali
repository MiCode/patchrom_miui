.class Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer$1;
.super Landroid/database/ContentObserver;
.source "RingerVolumeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;


# direct methods
.method constructor <init>(Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 392
    iput-object p1, p0, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer$1;->this$1:Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 395
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 396
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer$1;->this$1:Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;

    #getter for: Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->access$200(Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer$1;->this$1:Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;

    #getter for: Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->access$300(Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 397
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer$1;->this$1:Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;

    #getter for: Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->access$300(Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer$1;->this$1:Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;

    #getter for: Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->mStreamType:I
    invoke-static {v2}, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->access$400(Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer$1;->this$1:Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;

    #getter for: Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->access$300(Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer$1;->this$1:Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;

    #getter for: Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->mStreamType:I
    invoke-static {v2}, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->access$400(Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v0

    .line 400
    .local v0, volume:I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer$1;->this$1:Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;

    #getter for: Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->access$200(Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 402
    .end local v0           #volume:I
    :cond_0
    return-void

    .line 397
    :cond_1
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer$1;->this$1:Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;

    #getter for: Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->access$300(Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer$1;->this$1:Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;

    #getter for: Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->mStreamType:I
    invoke-static {v2}, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->access$400(Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    goto :goto_0
.end method
