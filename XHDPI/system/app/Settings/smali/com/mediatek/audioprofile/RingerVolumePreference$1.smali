.class Lcom/mediatek/audioprofile/RingerVolumePreference$1;
.super Lcom/mediatek/common/audioprofile/AudioProfileListener;
.source "RingerVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/audioprofile/RingerVolumePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/audioprofile/RingerVolumePreference;


# direct methods
.method constructor <init>(Lcom/mediatek/audioprofile/RingerVolumePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 913
    iput-object p1, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$1;->this$0:Lcom/mediatek/audioprofile/RingerVolumePreference;

    invoke-direct {p0}, Lcom/mediatek/common/audioprofile/AudioProfileListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onRingerVolumeChanged(IILjava/lang/String;)V
    .locals 5
    .parameter "oldVolume"
    .parameter "newVolume"
    .parameter "extra"

    .prologue
    const/4 v4, 0x1

    .line 917
    const-string v1, "Settings/VolPref"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " :onRingerVolumeChanged from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$1;->this$0:Lcom/mediatek/audioprofile/RingerVolumePreference;

    #getter for: Lcom/mediatek/audioprofile/RingerVolumePreference;->mKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/audioprofile/RingerVolumePreference;->access$400(Lcom/mediatek/audioprofile/RingerVolumePreference;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$1;->this$0:Lcom/mediatek/audioprofile/RingerVolumePreference;

    #getter for: Lcom/mediatek/audioprofile/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;
    invoke-static {v1}, Lcom/mediatek/audioprofile/RingerVolumePreference;->access$600(Lcom/mediatek/audioprofile/RingerVolumePreference;)[Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;

    move-result-object v1

    aget-object v1, v1, v4

    if-eqz v1, :cond_0

    .line 920
    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$1;->this$0:Lcom/mediatek/audioprofile/RingerVolumePreference;

    #getter for: Lcom/mediatek/audioprofile/RingerVolumePreference;->mSeekBarVolumizer:[Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;
    invoke-static {v1}, Lcom/mediatek/audioprofile/RingerVolumePreference;->access$600(Lcom/mediatek/audioprofile/RingerVolumePreference;)[Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v0

    .line 921
    .local v0, seekBar:Landroid/widget/SeekBar;
    if-nez v0, :cond_1

    .line 931
    .end local v0           #seekBar:Landroid/widget/SeekBar;
    :cond_0
    :goto_0
    return-void

    .line 924
    .restart local v0       #seekBar:Landroid/widget/SeekBar;
    :cond_1
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    if-eq v1, p2, :cond_0

    if-ltz p2, :cond_0

    .line 925
    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 926
    const-string v1, "Settings/VolPref"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Profile Ringer volume change: mSeekBar.setProgress++ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
