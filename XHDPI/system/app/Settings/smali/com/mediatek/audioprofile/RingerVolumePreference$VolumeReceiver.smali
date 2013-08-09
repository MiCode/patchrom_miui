.class Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RingerVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/audioprofile/RingerVolumePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VolumeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/audioprofile/RingerVolumePreference;


# direct methods
.method private constructor <init>(Lcom/mediatek/audioprofile/RingerVolumePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 880
    iput-object p1, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeReceiver;->this$0:Lcom/mediatek/audioprofile/RingerVolumePreference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/audioprofile/RingerVolumePreference;Lcom/mediatek/audioprofile/RingerVolumePreference$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 880
    invoke-direct {p0, p1}, Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeReceiver;-><init>(Lcom/mediatek/audioprofile/RingerVolumePreference;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    .line 884
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 885
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 886
    const-string v4, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 888
    .local v2, streamType:I
    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    .line 907
    .end local v2           #streamType:I
    :cond_0
    :goto_0
    return-void

    .line 891
    .restart local v2       #streamType:I
    :cond_1
    iget-object v4, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeReceiver;->this$0:Lcom/mediatek/audioprofile/RingerVolumePreference;

    #getter for: Lcom/mediatek/audioprofile/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;
    invoke-static {v4}, Lcom/mediatek/audioprofile/RingerVolumePreference;->access$600(Lcom/mediatek/audioprofile/RingerVolumePreference;)[Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;

    move-result-object v4

    aget-object v4, v4, v7

    if-eqz v4, :cond_0

    .line 892
    iget-object v4, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeReceiver;->this$0:Lcom/mediatek/audioprofile/RingerVolumePreference;

    #getter for: Lcom/mediatek/audioprofile/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;
    invoke-static {v4}, Lcom/mediatek/audioprofile/RingerVolumePreference;->access$600(Lcom/mediatek/audioprofile/RingerVolumePreference;)[Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;

    move-result-object v4

    aget-object v4, v4, v7

    invoke-virtual {v4}, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v1

    .line 893
    .local v1, seekBar:Landroid/widget/SeekBar;
    if-eqz v1, :cond_0

    .line 896
    iget-object v4, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeReceiver;->this$0:Lcom/mediatek/audioprofile/RingerVolumePreference;

    #getter for: Lcom/mediatek/audioprofile/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v4}, Lcom/mediatek/audioprofile/RingerVolumePreference;->access$300(Lcom/mediatek/audioprofile/RingerVolumePreference;)Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    .line 897
    .local v3, volume:I
    const-string v4, "Settings/VolPref"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AudioManager Volume "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    const-string v4, "Settings/VolPref"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "seekbar progress "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    if-eq v4, v3, :cond_0

    .line 900
    if-ltz v3, :cond_0

    .line 901
    iget-object v4, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeReceiver;->this$0:Lcom/mediatek/audioprofile/RingerVolumePreference;

    #getter for: Lcom/mediatek/audioprofile/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;
    invoke-static {v4}, Lcom/mediatek/audioprofile/RingerVolumePreference;->access$600(Lcom/mediatek/audioprofile/RingerVolumePreference;)[Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;

    move-result-object v4

    aget-object v4, v4, v7

    iput v3, v4, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mSystemVolume:I

    .line 902
    const-string v4, "Settings/VolPref"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "is SystemVolume Changed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
