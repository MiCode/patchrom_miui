.class Lcom/mediatek/audioprofile/RingerVolumeActivity$2;
.super Lcom/mediatek/common/audioprofile/AudioProfileListener;
.source "RingerVolumeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/audioprofile/RingerVolumeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/audioprofile/RingerVolumeActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/audioprofile/RingerVolumeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 726
    iput-object p1, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$2;->this$0:Lcom/mediatek/audioprofile/RingerVolumeActivity;

    invoke-direct {p0}, Lcom/mediatek/common/audioprofile/AudioProfileListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onRingerVolumeChanged(IILjava/lang/String;)V
    .locals 3
    .parameter "oldVolume"
    .parameter "newVolume"
    .parameter "extra"

    .prologue
    const/4 v2, 0x0

    .line 730
    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$2;->this$0:Lcom/mediatek/audioprofile/RingerVolumeActivity;

    #getter for: Lcom/mediatek/audioprofile/RingerVolumeActivity;->mKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/audioprofile/RingerVolumeActivity;->access$600(Lcom/mediatek/audioprofile/RingerVolumeActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$2;->this$0:Lcom/mediatek/audioprofile/RingerVolumeActivity;

    #getter for: Lcom/mediatek/audioprofile/RingerVolumeActivity;->mSeekBarVolumizer:[Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;
    invoke-static {v1}, Lcom/mediatek/audioprofile/RingerVolumeActivity;->access$800(Lcom/mediatek/audioprofile/RingerVolumeActivity;)[Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;

    move-result-object v1

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    .line 731
    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$2;->this$0:Lcom/mediatek/audioprofile/RingerVolumeActivity;

    #getter for: Lcom/mediatek/audioprofile/RingerVolumeActivity;->mSeekBarVolumizer:[Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;
    invoke-static {v1}, Lcom/mediatek/audioprofile/RingerVolumeActivity;->access$800(Lcom/mediatek/audioprofile/RingerVolumeActivity;)[Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v0

    .line 732
    .local v0, seekBar:Landroid/widget/SeekBar;
    if-nez v0, :cond_1

    .line 739
    .end local v0           #seekBar:Landroid/widget/SeekBar;
    :cond_0
    :goto_0
    return-void

    .line 735
    .restart local v0       #seekBar:Landroid/widget/SeekBar;
    :cond_1
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    if-eq v1, p2, :cond_0

    if-ltz p2, :cond_0

    .line 736
    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method
