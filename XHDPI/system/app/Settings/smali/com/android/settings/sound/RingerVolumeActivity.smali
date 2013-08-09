.class public Lcom/android/settings/sound/RingerVolumeActivity;
.super Landroid/app/Activity;
.source "RingerVolumeActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;,
        Lcom/android/settings/sound/RingerVolumeActivity$SavedState;
    }
.end annotation


# static fields
.field static final SECTION_ID:[I

.field private static final SEEKBAR_MUTED_RES_ID:[I

.field private static final SEEKBAR_TYPE:[I

.field private static final SEEKBAR_UNMUTED_RES_ID:[I


# instance fields
.field private final DESCPTION_ID:[I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCheckBoxes:[Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mSeekBarVolumizer:[Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;

.field private mSeekBars:[Landroid/widget/SeekBar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 45
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/sound/RingerVolumeActivity;->SECTION_ID:[I

    .line 63
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/sound/RingerVolumeActivity;->SEEKBAR_TYPE:[I

    .line 72
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/settings/sound/RingerVolumeActivity;->SEEKBAR_MUTED_RES_ID:[I

    .line 81
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/settings/sound/RingerVolumeActivity;->SEEKBAR_UNMUTED_RES_ID:[I

    return-void

    .line 45
    :array_0
    .array-data 0x4
        0x1ft 0x1t 0x9t 0x7ft
        0x23t 0x1t 0x9t 0x7ft
        0x2at 0x1t 0x9t 0x7ft
        0x2bt 0x1t 0x9t 0x7ft
        0x2ct 0x1t 0x9t 0x7ft
        0x2dt 0x1t 0x9t 0x7ft
    .end array-data

    .line 63
    :array_1
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    .line 72
    :array_2
    .array-data 0x4
        0x8ft 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x87t 0x0t 0x2t 0x7ft
        0x8dt 0x0t 0x2t 0x7ft
        0x8at 0x0t 0x2t 0x7ft
        0x89t 0x0t 0x2t 0x7ft
    .end array-data

    .line 81
    :array_3
    .array-data 0x4
        0x8et 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x86t 0x0t 0x2t 0x7ft
        0x8dt 0x0t 0x2t 0x7ft
        0x8at 0x0t 0x2t 0x7ft
        0x88t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity;->DESCPTION_ID:[I

    .line 90
    sget-object v0, Lcom/android/settings/sound/RingerVolumeActivity;->SEEKBAR_MUTED_RES_ID:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mCheckBoxes:[Landroid/widget/ImageView;

    .line 91
    sget-object v0, Lcom/android/settings/sound/RingerVolumeActivity;->SECTION_ID:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mSeekBars:[Landroid/widget/SeekBar;

    .line 93
    new-instance v0, Lcom/android/settings/sound/RingerVolumeActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/sound/RingerVolumeActivity$1;-><init>(Lcom/android/settings/sound/RingerVolumeActivity;)V

    iput-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mHandler:Landroid/os/Handler;

    .line 378
    return-void

    .line 54
    nop

    :array_0
    .array-data 0x4
        0x96t 0x2t 0xct 0x7ft
        0x97t 0x2t 0xct 0x7ft
        0x98t 0x2t 0xct 0x7ft
        0x6at 0x8t 0xct 0x7ft
        0x95t 0x2t 0xct 0x7ft
        0x6ct 0x8t 0xct 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings/sound/RingerVolumeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/settings/sound/RingerVolumeActivity;->updateSlidersAndMutedStates()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/sound/RingerVolumeActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private cleanup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 259
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/settings/sound/RingerVolumeActivity;->SECTION_ID:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 260
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mSeekBarVolumizer:[Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 261
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mSeekBarVolumizer:[Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->stop()V

    .line 262
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mSeekBarVolumizer:[Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;

    aput-object v2, v1, v0

    .line 259
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 265
    :cond_1
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_2

    .line 266
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/settings/sound/RingerVolumeActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 267
    iput-object v2, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 269
    :cond_2
    return-void
.end method

.method private getMediaVolumeUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/sound/RingerVolumeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private initUI()V
    .locals 15

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/android/settings/sound/RingerVolumeActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040082

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 109
    .local v13, view:Landroid/view/View;
    invoke-virtual {p0, v13}, Lcom/android/settings/sound/RingerVolumeActivity;->setContentView(Landroid/view/View;)V

    .line 110
    sget-object v0, Lcom/android/settings/sound/RingerVolumeActivity;->SECTION_ID:[I

    array-length v0, v0

    new-array v0, v0, [Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;

    iput-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mSeekBarVolumizer:[Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;

    .line 112
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/settings/sound/RingerVolumeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 113
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    sget-object v0, Lcom/android/settings/sound/RingerVolumeActivity;->SECTION_ID:[I

    array-length v0, v0

    if-ge v10, v0, :cond_3

    .line 114
    sget-object v0, Lcom/android/settings/sound/RingerVolumeActivity;->SECTION_ID:[I

    aget v0, v0, v10

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 115
    .local v12, section:Landroid/view/View;
    if-nez v10, :cond_0

    const v6, 0x60201f3

    .line 118
    .local v6, backgroundRes:I
    :goto_1
    invoke-virtual {v12, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 119
    const v0, 0x7f090156

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    .line 120
    .local v3, seekBar:Landroid/widget/SeekBar;
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mSeekBars:[Landroid/widget/SeekBar;

    aput-object v3, v0, v10

    .line 121
    sget-object v0, Lcom/android/settings/sound/RingerVolumeActivity;->SEEKBAR_TYPE:[I

    aget v0, v0, v10

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 122
    iget-object v14, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mSeekBarVolumizer:[Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;

    new-instance v0, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;

    sget-object v1, Lcom/android/settings/sound/RingerVolumeActivity;->SEEKBAR_TYPE:[I

    aget v4, v1, v10

    invoke-direct {p0}, Lcom/android/settings/sound/RingerVolumeActivity;->getMediaVolumeUri()Landroid/net/Uri;

    move-result-object v5

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;-><init>(Lcom/android/settings/sound/RingerVolumeActivity;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;)V

    aput-object v0, v14, v10

    .line 130
    :goto_2
    const v0, 0x7f090154

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 131
    .local v7, checkbox:Landroid/widget/ImageView;
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mCheckBoxes:[Landroid/widget/ImageView;

    aput-object v7, v0, v10

    .line 134
    const v0, 0x7f090155

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeActivity;->DESCPTION_ID:[I

    aget v1, v1, v10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 113
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 115
    .end local v3           #seekBar:Landroid/widget/SeekBar;
    .end local v6           #backgroundRes:I
    .end local v7           #checkbox:Landroid/widget/ImageView;
    :cond_0
    sget-object v0, Lcom/android/settings/sound/RingerVolumeActivity;->SECTION_ID:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ne v10, v0, :cond_1

    const v6, 0x60201f4

    goto :goto_1

    :cond_1
    const v6, 0x60201f5

    goto :goto_1

    .line 125
    .restart local v3       #seekBar:Landroid/widget/SeekBar;
    .restart local v6       #backgroundRes:I
    :cond_2
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mSeekBarVolumizer:[Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;

    new-instance v1, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;

    sget-object v2, Lcom/android/settings/sound/RingerVolumeActivity;->SEEKBAR_TYPE:[I

    aget v2, v2, v10

    invoke-direct {v1, p0, p0, v3, v2}, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;-><init>(Lcom/android/settings/sound/RingerVolumeActivity;Landroid/content/Context;Landroid/widget/SeekBar;I)V

    aput-object v1, v0, v10

    goto :goto_2

    .line 138
    .end local v3           #seekBar:Landroid/widget/SeekBar;
    .end local v6           #backgroundRes:I
    .end local v12           #section:Landroid/view/View;
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/sound/RingerVolumeActivity;->updateSlidersAndMutedStates()V

    .line 141
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_4

    .line 142
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 143
    .local v8, filter:Landroid/content/IntentFilter;
    const-string v0, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    new-instance v0, Lcom/android/settings/sound/RingerVolumeActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/sound/RingerVolumeActivity$2;-><init>(Lcom/android/settings/sound/RingerVolumeActivity;)V

    iput-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 153
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v8}, Lcom/android/settings/sound/RingerVolumeActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 158
    .end local v8           #filter:Landroid/content/IntentFilter;
    :cond_4
    invoke-static {p0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 159
    const v11, 0x7f09011f

    .line 163
    .local v11, id:I
    :goto_3
    invoke-virtual {v13, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 164
    .local v9, hideSection:Landroid/view/View;
    const/16 v0, 0x8

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 168
    invoke-virtual {v13, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 169
    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 170
    invoke-virtual {v13}, Landroid/view/View;->requestFocus()Z

    .line 171
    return-void

    .line 161
    .end local v9           #hideSection:Landroid/view/View;
    .end local v11           #id:I
    :cond_5
    const v11, 0x7f090123

    .restart local v11       #id:I
    goto :goto_3
.end method

.method private updateSlidersAndMutedStates()V
    .locals 6

    .prologue
    .line 198
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v4, Lcom/android/settings/sound/RingerVolumeActivity;->SEEKBAR_TYPE:[I

    array-length v4, v4

    if-ge v0, v4, :cond_5

    .line 199
    sget-object v4, Lcom/android/settings/sound/RingerVolumeActivity;->SEEKBAR_TYPE:[I

    aget v2, v4, v0

    .line 200
    .local v2, streamType:I
    iget-object v4, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    .line 202
    .local v1, muted:Z
    iget-object v4, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v4, v4, v0

    if-eqz v4, :cond_0

    .line 203
    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 205
    iget-object v4, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v4, v4, v0

    const v5, 0x7f020090

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 212
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v4, v4, v0

    if-eqz v4, :cond_1

    .line 213
    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v2}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v3

    .line 215
    .local v3, volume:I
    :goto_2
    iget-object v4, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v4, v4, v0

    invoke-virtual {v4, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 198
    .end local v3           #volume:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 208
    :cond_2
    iget-object v4, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v5, v4, v0

    if-eqz v1, :cond_3

    sget-object v4, Lcom/android/settings/sound/RingerVolumeActivity;->SEEKBAR_MUTED_RES_ID:[I

    aget v4, v4, v0

    :goto_3
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_3
    sget-object v4, Lcom/android/settings/sound/RingerVolumeActivity;->SEEKBAR_UNMUTED_RES_ID:[I

    aget v4, v4, v0

    goto :goto_3

    .line 213
    :cond_4
    iget-object v4, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    goto :goto_2

    .line 218
    .end local v1           #muted:Z
    .end local v2           #streamType:I
    :cond_5
    return-void
.end method


# virtual methods
.method doRestoreAllVolumes()V
    .locals 7

    .prologue
    .line 190
    sget-object v0, Lcom/android/settings/sound/RingerVolumeActivity;->SEEKBAR_TYPE:[I

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, v0, v1

    .line 191
    .local v3, streamType:I
    iget-object v4, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mAudioManager:Landroid/media/AudioManager;

    sget-object v5, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    aget v5, v5, v3

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v5, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    .end local v3           #streamType:I
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/sound/RingerVolumeActivity;->updateSlidersAndMutedStates()V

    .line 195
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    invoke-direct {p0}, Lcom/android/settings/sound/RingerVolumeActivity;->initUI()V

    .line 103
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 355
    const v1, 0x7f0c086d

    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 356
    .local v0, item:Landroid/view/MenuItem;
    const v1, 0x7f0200cf

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 357
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 360
    return v3
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/android/settings/sound/RingerVolumeActivity;->cleanup()V

    .line 255
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 256
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 228
    sparse-switch p2, :sswitch_data_0

    .line 234
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 232
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 228
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0xa4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 365
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 371
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 367
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/sound/RingerVolumeActivity;->restoreAllVolumes()V

    .line 368
    const/4 v0, 0x1

    goto :goto_0

    .line 365
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mSeekBarVolumizer:[Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;

    .local v0, arr$:[Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 247
    .local v3, sbv:Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;
    invoke-virtual {v3}, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->stopSample()V

    .line 246
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 249
    .end local v3           #sbv:Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 250
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 274
    const-string v4, "save_state"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/settings/sound/RingerVolumeActivity$SavedState;

    .line 275
    .local v1, myState:Lcom/android/settings/sound/RingerVolumeActivity$SavedState;
    sget-object v4, Lcom/android/settings/sound/RingerVolumeActivity;->SECTION_ID:[I

    array-length v4, v4

    invoke-virtual {v1, v4}, Lcom/android/settings/sound/RingerVolumeActivity$SavedState;->getVolumeStore(I)[Landroid/preference/MiuiVolumePreference$VolumeStore;

    move-result-object v3

    .line 276
    .local v3, volumeStore:[Landroid/preference/MiuiVolumePreference$VolumeStore;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v4, Lcom/android/settings/sound/RingerVolumeActivity;->SECTION_ID:[I

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 277
    iget-object v4, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mSeekBarVolumizer:[Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;

    aget-object v2, v4, v0

    .line 278
    .local v2, vol:Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;
    if-eqz v2, :cond_0

    .line 279
    aget-object v4, v3, v0

    invoke-virtual {v2, v4}, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->onRestoreInstanceState(Landroid/preference/MiuiVolumePreference$VolumeStore;)V

    .line 276
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 282
    .end local v2           #vol:Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 283
    return-void
.end method

.method protected onSampleStarting(Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;)V
    .locals 4
    .parameter "volumizer"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mSeekBarVolumizer:[Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;

    .local v0, arr$:[Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 240
    .local v3, vol:Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;
    if-eqz v3, :cond_0

    if-eq v3, p1, :cond_0

    invoke-virtual {v3}, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->stopSample()V

    .line 239
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 242
    .end local v3           #vol:Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .parameter "outState"

    .prologue
    .line 287
    sget-object v4, Lcom/android/settings/sound/RingerVolumeActivity;->SECTION_ID:[I

    array-length v4, v4

    new-array v3, v4, [Landroid/preference/MiuiVolumePreference$VolumeStore;

    .line 288
    .local v3, volumeStore:[Landroid/preference/MiuiVolumePreference$VolumeStore;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v4, Lcom/android/settings/sound/RingerVolumeActivity;->SECTION_ID:[I

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 289
    iget-object v4, p0, Lcom/android/settings/sound/RingerVolumeActivity;->mSeekBarVolumizer:[Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;

    aget-object v2, v4, v0

    .line 290
    .local v2, vol:Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;
    if-eqz v2, :cond_0

    .line 291
    new-instance v4, Landroid/preference/MiuiVolumePreference$VolumeStore;

    invoke-direct {v4}, Landroid/preference/MiuiVolumePreference$VolumeStore;-><init>()V

    aput-object v4, v3, v0

    .line 292
    aget-object v4, v3, v0

    invoke-virtual {v2, v4}, Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;->onSaveInstanceState(Landroid/preference/MiuiVolumePreference$VolumeStore;)V

    .line 288
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 295
    .end local v2           #vol:Lcom/android/settings/sound/RingerVolumeActivity$SeekBarVolumizer;
    :cond_1
    new-instance v1, Lcom/android/settings/sound/RingerVolumeActivity$SavedState;

    invoke-direct {v1, v3}, Lcom/android/settings/sound/RingerVolumeActivity$SavedState;-><init>([Landroid/preference/MiuiVolumePreference$VolumeStore;)V

    .line 296
    .local v1, savedState:Lcom/android/settings/sound/RingerVolumeActivity$SavedState;
    const-string v4, "save_state"

    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 297
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 298
    return-void
.end method

.method restoreAllVolumes()V
    .locals 3

    .prologue
    .line 174
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c086d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/sound/RingerVolumeActivity$3;

    invoke-direct {v2, p0}, Lcom/android/settings/sound/RingerVolumeActivity$3;-><init>(Lcom/android/settings/sound/RingerVolumeActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c086e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 187
    return-void
.end method
