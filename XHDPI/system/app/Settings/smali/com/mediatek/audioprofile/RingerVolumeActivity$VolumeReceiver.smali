.class Lcom/mediatek/audioprofile/RingerVolumeActivity$VolumeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RingerVolumeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/audioprofile/RingerVolumeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VolumeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/audioprofile/RingerVolumeActivity;


# direct methods
.method private constructor <init>(Lcom/mediatek/audioprofile/RingerVolumeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 696
    iput-object p1, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$VolumeReceiver;->this$0:Lcom/mediatek/audioprofile/RingerVolumeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/audioprofile/RingerVolumeActivity;Lcom/mediatek/audioprofile/RingerVolumeActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 696
    invoke-direct {p0, p1}, Lcom/mediatek/audioprofile/RingerVolumeActivity$VolumeReceiver;-><init>(Lcom/mediatek/audioprofile/RingerVolumeActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 700
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 701
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 702
    const-string v4, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 704
    .local v2, streamType:I
    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    .line 720
    .end local v2           #streamType:I
    :cond_0
    :goto_0
    return-void

    .line 707
    .restart local v2       #streamType:I
    :cond_1
    iget-object v4, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$VolumeReceiver;->this$0:Lcom/mediatek/audioprofile/RingerVolumeActivity;

    #getter for: Lcom/mediatek/audioprofile/RingerVolumeActivity;->mSeekBarVolumizer:[Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;
    invoke-static {v4}, Lcom/mediatek/audioprofile/RingerVolumeActivity;->access$800(Lcom/mediatek/audioprofile/RingerVolumeActivity;)[Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;

    move-result-object v4

    aget-object v4, v4, v6

    if-eqz v4, :cond_0

    .line 708
    iget-object v4, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$VolumeReceiver;->this$0:Lcom/mediatek/audioprofile/RingerVolumeActivity;

    #getter for: Lcom/mediatek/audioprofile/RingerVolumeActivity;->mSeekBarVolumizer:[Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;
    invoke-static {v4}, Lcom/mediatek/audioprofile/RingerVolumeActivity;->access$800(Lcom/mediatek/audioprofile/RingerVolumeActivity;)[Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v1

    .line 709
    .local v1, seekBar:Landroid/widget/SeekBar;
    if-eqz v1, :cond_0

    .line 712
    iget-object v4, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$VolumeReceiver;->this$0:Lcom/mediatek/audioprofile/RingerVolumeActivity;

    #getter for: Lcom/mediatek/audioprofile/RingerVolumeActivity;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v4}, Lcom/mediatek/audioprofile/RingerVolumeActivity;->access$300(Lcom/mediatek/audioprofile/RingerVolumeActivity;)Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    .line 713
    .local v3, volume:I
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    if-eq v4, v3, :cond_0

    .line 714
    if-ltz v3, :cond_0

    .line 715
    iget-object v4, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$VolumeReceiver;->this$0:Lcom/mediatek/audioprofile/RingerVolumeActivity;

    #getter for: Lcom/mediatek/audioprofile/RingerVolumeActivity;->mSeekBarVolumizer:[Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;
    invoke-static {v4}, Lcom/mediatek/audioprofile/RingerVolumeActivity;->access$800(Lcom/mediatek/audioprofile/RingerVolumeActivity;)[Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;

    move-result-object v4

    aget-object v4, v4, v6

    iput v3, v4, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mSystemVolume:I

    goto :goto_0
.end method
