.class Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer$1;
.super Landroid/database/ContentObserver;
.source "RingerVolumeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;


# direct methods
.method constructor <init>(Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 362
    iput-object p1, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer$1;->this$1:Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 365
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 366
    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer$1;->this$1:Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;

    #getter for: Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->access$200(Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer$1;->this$1:Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;

    iget-object v1, v1, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumeActivity;

    #getter for: Lcom/mediatek/audioprofile/RingerVolumeActivity;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/mediatek/audioprofile/RingerVolumeActivity;->access$300(Lcom/mediatek/audioprofile/RingerVolumeActivity;)Landroid/media/AudioManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 367
    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer$1;->this$1:Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;

    iget-object v1, v1, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumeActivity;

    #getter for: Lcom/mediatek/audioprofile/RingerVolumeActivity;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/mediatek/audioprofile/RingerVolumeActivity;->access$300(Lcom/mediatek/audioprofile/RingerVolumeActivity;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer$1;->this$1:Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;

    #getter for: Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mStreamType:I
    invoke-static {v2}, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->access$400(Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer$1;->this$1:Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;

    iget-object v1, v1, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumeActivity;

    #getter for: Lcom/mediatek/audioprofile/RingerVolumeActivity;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/mediatek/audioprofile/RingerVolumeActivity;->access$300(Lcom/mediatek/audioprofile/RingerVolumeActivity;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer$1;->this$1:Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;

    #getter for: Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mStreamType:I
    invoke-static {v2}, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->access$400(Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v0

    .line 370
    .local v0, volume:I
    :goto_0
    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer$1;->this$1:Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;

    #getter for: Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->access$200(Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 372
    .end local v0           #volume:I
    :cond_0
    return-void

    .line 367
    :cond_1
    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer$1;->this$1:Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;

    iget-object v1, v1, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumeActivity;

    #getter for: Lcom/mediatek/audioprofile/RingerVolumeActivity;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/mediatek/audioprofile/RingerVolumeActivity;->access$300(Lcom/mediatek/audioprofile/RingerVolumeActivity;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer$1;->this$1:Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;

    #getter for: Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mStreamType:I
    invoke-static {v2}, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->access$400(Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    goto :goto_0
.end method
