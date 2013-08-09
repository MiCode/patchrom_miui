.class public Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;
.super Ljava/lang/Object;
.source "RingerVolumeActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/audioprofile/RingerVolumeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SeekBarVolumizer"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultUri:Landroid/net/Uri;

.field private mHandler:Landroid/os/Handler;

.field private mIsVisible:Z

.field private mLastProgress:I

.field private mOriginalVolume:I

.field public mProfileIsActive:Z

.field public mRingtone:Landroid/media/Ringtone;

.field private final mSeekBar:Landroid/widget/SeekBar;

.field private final mStreamType:I

.field public mSystemVolume:I

.field private mVolumeBeforeMute:I

.field private mVolumeObserver:Landroid/database/ContentObserver;

.field final synthetic this$0:Lcom/mediatek/audioprofile/RingerVolumeActivity;


# direct methods
.method public constructor <init>(Lcom/mediatek/audioprofile/RingerVolumeActivity;Landroid/content/Context;Landroid/widget/SeekBar;I)V
    .locals 6
    .parameter
    .parameter "context"
    .parameter "seekBar"
    .parameter "streamType"

    .prologue
    .line 376
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;-><init>(Lcom/mediatek/audioprofile/RingerVolumeActivity;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;)V

    .line 377
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/audioprofile/RingerVolumeActivity;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "seekBar"
    .parameter "streamType"
    .parameter "defaultUri"

    .prologue
    const/4 v1, -0x1

    .line 379
    iput-object p1, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    .line 350
    iput v1, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mSystemVolume:I

    .line 351
    iput v1, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mOriginalVolume:I

    .line 352
    iput v1, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mLastProgress:I

    .line 354
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    .line 356
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mProfileIsActive:Z

    .line 358
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mIsVisible:Z

    .line 360
    iput v1, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 362
    new-instance v0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer$1;

    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer$1;-><init>(Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    .line 380
    iput-object p2, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mContext:Landroid/content/Context;

    .line 381
    iput p4, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mStreamType:I

    .line 382
    iput-object p3, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    .line 384
    invoke-direct {p0, p3, p5}, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->initSeekBar(Landroid/widget/SeekBar;Landroid/net/Uri;)V

    .line 385
    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 343
    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 343
    iget v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mStreamType:I

    return v0
.end method

.method private initSeekBar(Landroid/widget/SeekBar;Landroid/net/Uri;)V
    .locals 5
    .parameter "seekBar"
    .parameter "defaultUri"

    .prologue
    const/4 v4, 0x2

    .line 388
    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumeActivity;

    #getter for: Lcom/mediatek/audioprofile/RingerVolumeActivity;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;
    invoke-static {v0}, Lcom/mediatek/audioprofile/RingerVolumeActivity;->access$500(Lcom/mediatek/audioprofile/RingerVolumeActivity;)Lcom/mediatek/audioprofile/AudioProfileManager;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamMaxVolume(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 389
    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumeActivity;

    #getter for: Lcom/mediatek/audioprofile/RingerVolumeActivity;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/mediatek/audioprofile/RingerVolumeActivity;->access$300(Lcom/mediatek/audioprofile/RingerVolumeActivity;)Landroid/media/AudioManager;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mSystemVolume:I

    .line 390
    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumeActivity;

    #getter for: Lcom/mediatek/audioprofile/RingerVolumeActivity;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;
    invoke-static {v0}, Lcom/mediatek/audioprofile/RingerVolumeActivity;->access$500(Lcom/mediatek/audioprofile/RingerVolumeActivity;)Lcom/mediatek/audioprofile/AudioProfileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumeActivity;

    #getter for: Lcom/mediatek/audioprofile/RingerVolumeActivity;->mKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/audioprofile/RingerVolumeActivity;->access$600(Lcom/mediatek/audioprofile/RingerVolumeActivity;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamVolume(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mOriginalVolume:I

    .line 393
    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumeActivity;

    #getter for: Lcom/mediatek/audioprofile/RingerVolumeActivity;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;
    invoke-static {v0}, Lcom/mediatek/audioprofile/RingerVolumeActivity;->access$500(Lcom/mediatek/audioprofile/RingerVolumeActivity;)Lcom/mediatek/audioprofile/AudioProfileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumeActivity;

    #getter for: Lcom/mediatek/audioprofile/RingerVolumeActivity;->mKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/audioprofile/RingerVolumeActivity;->access$600(Lcom/mediatek/audioprofile/RingerVolumeActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->isActive(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mProfileIsActive:Z

    .line 398
    iget-boolean v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mProfileIsActive:Z

    if-eqz v0, :cond_0

    .line 399
    iget v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mSystemVolume:I

    iget v1, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mOriginalVolume:I

    if-eq v0, v1, :cond_0

    .line 400
    iget v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mSystemVolume:I

    iput v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mOriginalVolume:I

    .line 404
    :cond_0
    iget v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mOriginalVolume:I

    iput v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mLastProgress:I

    .line 405
    iget v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mOriginalVolume:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 406
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 408
    iget-boolean v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mProfileIsActive:Z

    if-eqz v0, :cond_1

    .line 409
    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget v2, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mStreamType:I

    aget-object v1, v1, v2

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 414
    :cond_1
    iput-object p2, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    .line 415
    iget v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mStreamType:I

    if-ne v0, v4, :cond_4

    .line 416
    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumeActivity;

    #getter for: Lcom/mediatek/audioprofile/RingerVolumeActivity;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;
    invoke-static {v0}, Lcom/mediatek/audioprofile/RingerVolumeActivity;->access$500(Lcom/mediatek/audioprofile/RingerVolumeActivity;)Lcom/mediatek/audioprofile/AudioProfileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumeActivity;

    #getter for: Lcom/mediatek/audioprofile/RingerVolumeActivity;->mKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/audioprofile/RingerVolumeActivity;->access$600(Lcom/mediatek/audioprofile/RingerVolumeActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getRingtoneUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    .line 425
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    .line 426
    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_3

    .line 427
    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    iget v1, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 429
    :cond_3
    return-void

    .line 418
    :cond_4
    iget v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 419
    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumeActivity;

    #getter for: Lcom/mediatek/audioprofile/RingerVolumeActivity;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;
    invoke-static {v0}, Lcom/mediatek/audioprofile/RingerVolumeActivity;->access$500(Lcom/mediatek/audioprofile/RingerVolumeActivity;)Lcom/mediatek/audioprofile/AudioProfileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumeActivity;

    #getter for: Lcom/mediatek/audioprofile/RingerVolumeActivity;->mKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/audioprofile/RingerVolumeActivity;->access$600(Lcom/mediatek/audioprofile/RingerVolumeActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/mediatek/audioprofile/AudioProfileManager;->getRingtoneUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    goto :goto_0

    .line 421
    :cond_5
    iget v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 422
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method private isSilentProfileActive()Z
    .locals 2

    .prologue
    .line 585
    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumeActivity;

    #getter for: Lcom/mediatek/audioprofile/RingerVolumeActivity;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/mediatek/audioprofile/RingerVolumeActivity;->access$300(Lcom/mediatek/audioprofile/RingerVolumeActivity;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sample()V
    .locals 3

    .prologue
    .line 627
    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumeActivity;

    invoke-virtual {v0, p0}, Lcom/mediatek/audioprofile/RingerVolumeActivity;->onSampleStarting(Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;)V

    .line 629
    invoke-direct {p0}, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->isSilentProfileActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 630
    iget v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mStreamType:I

    iget v1, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mLastProgress:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->setVolume(IIZ)V

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_1

    .line 634
    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    .line 636
    :cond_1
    return-void
.end method

.method private setVolume(IIZ)V
    .locals 3
    .parameter "streamType"
    .parameter "volume"
    .parameter "flag"

    .prologue
    const/4 v2, 0x0

    .line 557
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 559
    if-eqz p3, :cond_0

    .line 560
    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumeActivity;

    #getter for: Lcom/mediatek/audioprofile/RingerVolumeActivity;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/mediatek/audioprofile/RingerVolumeActivity;->access$300(Lcom/mediatek/audioprofile/RingerVolumeActivity;)Landroid/media/AudioManager;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1, p2, v2}, Landroid/media/AudioManager;->setAudioProfileStreamVolume(III)V

    .line 562
    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumeActivity;

    #getter for: Lcom/mediatek/audioprofile/RingerVolumeActivity;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/mediatek/audioprofile/RingerVolumeActivity;->access$300(Lcom/mediatek/audioprofile/RingerVolumeActivity;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p2, v2}, Landroid/media/AudioManager;->setAudioProfileStreamVolume(III)V

    .line 576
    :goto_0
    return-void

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumeActivity;

    #getter for: Lcom/mediatek/audioprofile/RingerVolumeActivity;->mExt:Lcom/android/settings/ext/IAudioProfileExt;
    invoke-static {v0}, Lcom/mediatek/audioprofile/RingerVolumeActivity;->access$700(Lcom/mediatek/audioprofile/RingerVolumeActivity;)Lcom/android/settings/ext/IAudioProfileExt;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumeActivity;

    #getter for: Lcom/mediatek/audioprofile/RingerVolumeActivity;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/mediatek/audioprofile/RingerVolumeActivity;->access$300(Lcom/mediatek/audioprofile/RingerVolumeActivity;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/android/settings/ext/IAudioProfileExt;->setRingerVolume(Landroid/media/AudioManager;I)V

    goto :goto_0

    .line 569
    :cond_1
    if-eqz p3, :cond_2

    .line 570
    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumeActivity;

    #getter for: Lcom/mediatek/audioprofile/RingerVolumeActivity;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/mediatek/audioprofile/RingerVolumeActivity;->access$300(Lcom/mediatek/audioprofile/RingerVolumeActivity;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v2}, Landroid/media/AudioManager;->setAudioProfileStreamVolume(III)V

    goto :goto_0

    .line 573
    :cond_2
    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumeActivity;

    #getter for: Lcom/mediatek/audioprofile/RingerVolumeActivity;->mExt:Lcom/android/settings/ext/IAudioProfileExt;
    invoke-static {v0}, Lcom/mediatek/audioprofile/RingerVolumeActivity;->access$700(Lcom/mediatek/audioprofile/RingerVolumeActivity;)Lcom/android/settings/ext/IAudioProfileExt;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumeActivity;

    #getter for: Lcom/mediatek/audioprofile/RingerVolumeActivity;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/mediatek/audioprofile/RingerVolumeActivity;->access$300(Lcom/mediatek/audioprofile/RingerVolumeActivity;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/settings/ext/IAudioProfileExt;->setVolume(Landroid/media/AudioManager;II)V

    goto :goto_0
.end method


# virtual methods
.method public getSeekBar()Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public getVisible()Z
    .locals 1

    .prologue
    .line 447
    iget-boolean v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mIsVisible:Z

    return v0
.end method

.method public isSamplePlaying()Z
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    .line 590
    iput p2, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mLastProgress:I

    .line 591
    if-nez p3, :cond_0

    .line 596
    :goto_0
    return-void

    .line 595
    :cond_0
    invoke-virtual {p0, p2}, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->postSetVolume(I)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;)V
    .locals 2
    .parameter "volumeStore"

    .prologue
    .line 680
    iget v0, p1, Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;->mVolume:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 681
    iget v0, p1, Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;->mVolume:I

    iput v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mLastProgress:I

    .line 682
    iget v0, p1, Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;->mOriginalVolume:I

    iput v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mOriginalVolume:I

    .line 683
    iget v0, p1, Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;->mSystemVolume:I

    iput v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mSystemVolume:I

    .line 684
    iget v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {p0, v0}, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->postSetVolume(I)V

    .line 686
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;)V
    .locals 1
    .parameter "volumeStore"

    .prologue
    .line 672
    iget v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mLastProgress:I

    if-ltz v0, :cond_0

    .line 673
    iget v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mLastProgress:I

    iput v0, p1, Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;->mVolume:I

    .line 674
    iget v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mOriginalVolume:I

    iput v0, p1, Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;->mOriginalVolume:I

    .line 675
    iget v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mSystemVolume:I

    iput v0, p1, Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;->mSystemVolume:I

    .line 677
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 604
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter "seekBar"

    .prologue
    .line 607
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->isSamplePlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 608
    invoke-direct {p0}, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->sample()V

    .line 610
    :cond_0
    return-void
.end method

.method postSetVolume(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 599
    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 600
    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 601
    return-void
.end method

.method public run()V
    .locals 0

    .prologue
    .line 616
    invoke-direct {p0}, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->sample()V

    .line 617
    return-void
.end method

.method public saveVolume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 521
    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumeActivity;

    #getter for: Lcom/mediatek/audioprofile/RingerVolumeActivity;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;
    invoke-static {v0}, Lcom/mediatek/audioprofile/RingerVolumeActivity;->access$500(Lcom/mediatek/audioprofile/RingerVolumeActivity;)Lcom/mediatek/audioprofile/AudioProfileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumeActivity;

    #getter for: Lcom/mediatek/audioprofile/RingerVolumeActivity;->mKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/audioprofile/RingerVolumeActivity;->access$600(Lcom/mediatek/audioprofile/RingerVolumeActivity;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mStreamType:I

    iget v3, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->setStreamVolume(Ljava/lang/String;II)V

    .line 522
    iget v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 523
    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumeActivity;

    #getter for: Lcom/mediatek/audioprofile/RingerVolumeActivity;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;
    invoke-static {v0}, Lcom/mediatek/audioprofile/RingerVolumeActivity;->access$500(Lcom/mediatek/audioprofile/RingerVolumeActivity;)Lcom/mediatek/audioprofile/AudioProfileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumeActivity;

    #getter for: Lcom/mediatek/audioprofile/RingerVolumeActivity;->mKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/audioprofile/RingerVolumeActivity;->access$600(Lcom/mediatek/audioprofile/RingerVolumeActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    iget v3, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->setStreamVolume(Ljava/lang/String;II)V

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumeActivity;

    #getter for: Lcom/mediatek/audioprofile/RingerVolumeActivity;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;
    invoke-static {v0}, Lcom/mediatek/audioprofile/RingerVolumeActivity;->access$500(Lcom/mediatek/audioprofile/RingerVolumeActivity;)Lcom/mediatek/audioprofile/AudioProfileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumeActivity;

    #getter for: Lcom/mediatek/audioprofile/RingerVolumeActivity;->mKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/audioprofile/RingerVolumeActivity;->access$600(Lcom/mediatek/audioprofile/RingerVolumeActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->isActive(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 528
    iget v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mStreamType:I

    iget v1, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mLastProgress:I

    invoke-direct {p0, v0, v1, v4}, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->setVolume(IIZ)V

    .line 534
    :cond_1
    :goto_0
    return-void

    .line 530
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->isSilentProfileActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 531
    iget v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mStreamType:I

    iget v1, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mSystemVolume:I

    invoke-direct {p0, v0, v1, v4}, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->setVolume(IIZ)V

    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 438
    iput-boolean p1, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mIsVisible:Z

    .line 439
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 451
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->stopSample()V

    .line 452
    iget-boolean v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mProfileIsActive:Z

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 456
    return-void
.end method

.method public stopSample()V
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 642
    :cond_0
    return-void
.end method
