.class public Lcom/mediatek/audioprofile/RingerVolumeActivity;
.super Landroid/app/Activity;
.source "RingerVolumeActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/audioprofile/RingerVolumeActivity$VolumeReceiver;,
        Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;,
        Lcom/mediatek/audioprofile/RingerVolumeActivity$SavedState;
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

.field private mExt:Lcom/android/settings/ext/IAudioProfileExt;

.field private mHandler:Landroid/os/Handler;

.field private mKey:Ljava/lang/String;

.field private final mListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

.field private mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

.field private mReceiver:Lcom/mediatek/audioprofile/RingerVolumeActivity$VolumeReceiver;

.field private mSeekBarVolumizer:[Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;

.field private mSeekBars:[Landroid/widget/SeekBar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 48
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/audioprofile/RingerVolumeActivity;->SECTION_ID:[I

    .line 66
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/mediatek/audioprofile/RingerVolumeActivity;->SEEKBAR_TYPE:[I

    .line 75
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/mediatek/audioprofile/RingerVolumeActivity;->SEEKBAR_MUTED_RES_ID:[I

    .line 84
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/mediatek/audioprofile/RingerVolumeActivity;->SEEKBAR_UNMUTED_RES_ID:[I

    return-void

    .line 48
    :array_0
    .array-data 0x4
        0x1ft 0x1t 0x9t 0x7ft
        0x23t 0x1t 0x9t 0x7ft
        0x2at 0x1t 0x9t 0x7ft
        0x2bt 0x1t 0x9t 0x7ft
        0x2ct 0x1t 0x9t 0x7ft
        0x2dt 0x1t 0x9t 0x7ft
    .end array-data

    .line 66
    :array_1
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    .line 75
    :array_2
    .array-data 0x4
        0x8ft 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x87t 0x0t 0x2t 0x7ft
        0x8dt 0x0t 0x2t 0x7ft
        0x8at 0x0t 0x2t 0x7ft
        0x89t 0x0t 0x2t 0x7ft
    .end array-data

    .line 84
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
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity;->DESCPTION_ID:[I

    .line 93
    sget-object v0, Lcom/mediatek/audioprofile/RingerVolumeActivity;->SEEKBAR_MUTED_RES_ID:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity;->mCheckBoxes:[Landroid/widget/ImageView;

    .line 94
    sget-object v0, Lcom/mediatek/audioprofile/RingerVolumeActivity;->SECTION_ID:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity;->mSeekBars:[Landroid/widget/SeekBar;

    .line 96
    new-instance v0, Lcom/mediatek/audioprofile/RingerVolumeActivity$1;

    invoke-direct {v0, p0}, Lcom/mediatek/audioprofile/RingerVolumeActivity$1;-><init>(Lcom/mediatek/audioprofile/RingerVolumeActivity;)V

    iput-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity;->mHandler:Landroid/os/Handler;

    .line 726
    new-instance v0, Lcom/mediatek/audioprofile/RingerVolumeActivity$2;

    invoke-direct {v0, p0}, Lcom/mediatek/audioprofile/RingerVolumeActivity$2;-><init>(Lcom/mediatek/audioprofile/RingerVolumeActivity;)V

    iput-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity;->mListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    return-void

    .line 57
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

.method static synthetic access$000(Lcom/mediatek/audioprofile/RingerVolumeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/mediatek/audioprofile/RingerVolumeActivity;->updateSlidersAndMutedStates()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/audioprofile/RingerVolumeActivity;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/audioprofile/RingerVolumeActivity;)Lcom/mediatek/audioprofile/AudioProfileManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/audioprofile/RingerVolumeActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/audioprofile/RingerVolumeActivity;)Lcom/android/settings/ext/IAudioProfileExt;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity;->mExt:Lcom/android/settings/ext/IAudioProfileExt;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/audioprofile/RingerVolumeActivity;)[Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity;->mSeekBarVolumizer:[Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;

    return-object v0
.end method

.method private cleanup()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 239
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/mediatek/audioprofile/RingerVolumeActivity;->SECTION_ID:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 240
    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity;->mSeekBarVolumizer:[Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 241
    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity;->mSeekBarVolumizer:[Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->stop()V

    .line 242
    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity;->mSeekBarVolumizer:[Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->getVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity;->mSeekBarVolumizer:[Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->saveVolume()V

    .line 245
    :cond_0
    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity;->mSeekBarVolumizer:[Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;

    aput-object v2, v1, v0

    .line 239
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 248
    :cond_2
    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity;->mReceiver:Lcom/mediatek/audioprofile/RingerVolumeActivity$VolumeReceiver;

    if-eqz v1, :cond_3

    .line 249
    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity;->mReceiver:Lcom/mediatek/audioprofile/RingerVolumeActivity$VolumeReceiver;

    invoke-virtual {p0, v1}, Lcom/mediatek/audioprofile/RingerVolumeActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 250
    iput-object v2, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity;->mReceiver:Lcom/mediatek/audioprofile/RingerVolumeActivity$VolumeReceiver;

    .line 251
    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity;->mListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->listenAudioProfie(Lcom/mediatek/common/audioprofile/AudioProfileListener;I)V

    .line 254
    :cond_3
    return-void
.end method

.method private getMediaVolumeUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/audioprofile/RingerVolumeActivity;->getPackageName()Ljava/lang/String;

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
    .line 119
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/RingerVolumeActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040082

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 120
    .local v13, view:Landroid/view/View;
    invoke-virtual {p0, v13}, Lcom/mediatek/audioprofile/RingerVolumeActivity;->setContentView(Landroid/view/View;)V

    .line 121
    sget-object v0, Lcom/mediatek/audioprofile/RingerVolumeActivity;->SECTION_ID:[I

    array-length v0, v0

    new-array v0, v0, [Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;

    iput-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity;->mSeekBarVolumizer:[Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;

    .line 123
    new-instance v0, Lcom/mediatek/audioprofile/RingerVolumeActivity$VolumeReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/audioprofile/RingerVolumeActivity$VolumeReceiver;-><init>(Lcom/mediatek/audioprofile/RingerVolumeActivity;Lcom/mediatek/audioprofile/RingerVolumeActivity$1;)V

    iput-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity;->mReceiver:Lcom/mediatek/audioprofile/RingerVolumeActivity$VolumeReceiver;

    .line 124
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 125
    .local v8, filter:Landroid/content/IntentFilter;
    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity;->mReceiver:Lcom/mediatek/audioprofile/RingerVolumeActivity$VolumeReceiver;

    invoke-virtual {p0, v0, v8}, Lcom/mediatek/audioprofile/RingerVolumeActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 128
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    sget-object v0, Lcom/mediatek/audioprofile/RingerVolumeActivity;->SECTION_ID:[I

    array-length v0, v0

    if-ge v10, v0, :cond_3

    .line 129
    sget-object v0, Lcom/mediatek/audioprofile/RingerVolumeActivity;->SECTION_ID:[I

    aget v0, v0, v10

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 130
    .local v12, section:Landroid/view/View;
    if-nez v10, :cond_0

    const v6, 0x60201f3

    .line 133
    .local v6, backgroundRes:I
    :goto_1
    invoke-virtual {v12, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 134
    const v0, 0x7f090156

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    .line 135
    .local v3, seekBar:Landroid/widget/SeekBar;
    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity;->mSeekBars:[Landroid/widget/SeekBar;

    aput-object v3, v0, v10

    .line 136
    sget-object v0, Lcom/mediatek/audioprofile/RingerVolumeActivity;->SEEKBAR_TYPE:[I

    aget v0, v0, v10

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 137
    iget-object v14, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity;->mSeekBarVolumizer:[Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;

    new-instance v0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;

    sget-object v1, Lcom/mediatek/audioprofile/RingerVolumeActivity;->SEEKBAR_TYPE:[I

    aget v4, v1, v10

    invoke-direct {p0}, Lcom/mediatek/audioprofile/RingerVolumeActivity;->getMediaVolumeUri()Landroid/net/Uri;

    move-result-object v5

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;-><init>(Lcom/mediatek/audioprofile/RingerVolumeActivity;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;)V

    aput-object v0, v14, v10

    .line 145
    :goto_2
    const v0, 0x7f090154

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 146
    .local v7, checkbox:Landroid/widget/ImageView;
    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity;->mCheckBoxes:[Landroid/widget/ImageView;

    aput-object v7, v0, v10

    .line 149
    const v0, 0x7f090155

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity;->DESCPTION_ID:[I

    aget v1, v1, v10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 128
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 130
    .end local v3           #seekBar:Landroid/widget/SeekBar;
    .end local v6           #backgroundRes:I
    .end local v7           #checkbox:Landroid/widget/ImageView;
    :cond_0
    sget-object v0, Lcom/mediatek/audioprofile/RingerVolumeActivity;->SECTION_ID:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ne v10, v0, :cond_1

    const v6, 0x60201f4

    goto :goto_1

    :cond_1
    const v6, 0x60201f5

    goto :goto_1

    .line 140
    .restart local v3       #seekBar:Landroid/widget/SeekBar;
    .restart local v6       #backgroundRes:I
    :cond_2
    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity;->mSeekBarVolumizer:[Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;

    new-instance v1, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;

    sget-object v2, Lcom/mediatek/audioprofile/RingerVolumeActivity;->SEEKBAR_TYPE:[I

    aget v2, v2, v10

    invoke-direct {v1, p0, p0, v3, v2}, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;-><init>(Lcom/mediatek/audioprofile/RingerVolumeActivity;Landroid/content/Context;Landroid/widget/SeekBar;I)V

    aput-object v1, v0, v10

    goto :goto_2

    .line 153
    .end local v3           #seekBar:Landroid/widget/SeekBar;
    .end local v6           #backgroundRes:I
    .end local v12           #section:Landroid/view/View;
    :cond_3
    invoke-direct {p0}, Lcom/mediatek/audioprofile/RingerVolumeActivity;->updateSlidersAndMutedStates()V

    .line 157
    invoke-static {p0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 158
    const v11, 0x7f09011f

    .line 159
    .local v11, id:I
    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity;->mSeekBarVolumizer:[Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->setVisible(Z)V

    .line 164
    :goto_3
    invoke-virtual {v13, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 165
    .local v9, hideSection:Landroid/view/View;
    const/16 v0, 0x8

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 169
    invoke-virtual {v13, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 170
    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 171
    invoke-virtual {v13}, Landroid/view/View;->requestFocus()Z

    .line 173
    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity;->mListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->listenAudioProfie(Lcom/mediatek/common/audioprofile/AudioProfileListener;I)V

    .line 175
    return-void

    .line 161
    .end local v9           #hideSection:Landroid/view/View;
    .end local v11           #id:I
    :cond_4
    const v11, 0x7f090123

    .line 162
    .restart local v11       #id:I
    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity;->mSeekBarVolumizer:[Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->setVisible(Z)V

    goto :goto_3
.end method

.method private updateSlidersAndMutedStates()V
    .locals 6

    .prologue
    .line 178
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v4, Lcom/mediatek/audioprofile/RingerVolumeActivity;->SEEKBAR_TYPE:[I

    array-length v4, v4

    if-ge v0, v4, :cond_5

    .line 179
    sget-object v4, Lcom/mediatek/audioprofile/RingerVolumeActivity;->SEEKBAR_TYPE:[I

    aget v2, v4, v0

    .line 180
    .local v2, streamType:I
    iget-object v4, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    .line 182
    .local v1, muted:Z
    iget-object v4, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v4, v4, v0

    if-eqz v4, :cond_0

    .line 183
    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 185
    iget-object v4, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v4, v4, v0

    const v5, 0x7f020090

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 192
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v4, v4, v0

    if-eqz v4, :cond_1

    .line 193
    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v2}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v3

    .line 195
    .local v3, volume:I
    :goto_2
    iget-object v4, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v4, v4, v0

    invoke-virtual {v4, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 178
    .end local v3           #volume:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    :cond_2
    iget-object v4, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v5, v4, v0

    if-eqz v1, :cond_3

    sget-object v4, Lcom/mediatek/audioprofile/RingerVolumeActivity;->SEEKBAR_MUTED_RES_ID:[I

    aget v4, v4, v0

    :goto_3
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_3
    sget-object v4, Lcom/mediatek/audioprofile/RingerVolumeActivity;->SEEKBAR_UNMUTED_RES_ID:[I

    aget v4, v4, v0

    goto :goto_3

    .line 193
    :cond_4
    iget-object v4, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    goto :goto_2

    .line 198
    .end local v1           #muted:Z
    .end local v2           #streamType:I
    :cond_5
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/mediatek/audioprofile/RingerVolumeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 112
    const-string v0, "audioprofile"

    invoke-virtual {p0, v0}, Lcom/mediatek/audioprofile/RingerVolumeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/AudioProfileManager;

    iput-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    .line 113
    invoke-static {p0}, Lcom/mediatek/gemini/SimUtils;->getAudioProfilePlgin(Landroid/content/Context;)Lcom/android/settings/ext/IAudioProfileExt;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity;->mExt:Lcom/android/settings/ext/IAudioProfileExt;

    .line 114
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/RingerVolumeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_profile"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity;->mKey:Ljava/lang/String;

    .line 115
    invoke-direct {p0}, Lcom/mediatek/audioprofile/RingerVolumeActivity;->initUI()V

    .line 116
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/mediatek/audioprofile/RingerVolumeActivity;->cleanup()V

    .line 235
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 236
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 208
    sparse-switch p2, :sswitch_data_0

    .line 214
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 212
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 208
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0xa4 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 226
    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity;->mSeekBarVolumizer:[Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;

    .local v0, arr$:[Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 227
    .local v3, sbv:Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;
    invoke-virtual {v3}, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->stopSample()V

    .line 226
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 229
    .end local v3           #sbv:Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 230
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 259
    const-string v4, "save_state"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/mediatek/audioprofile/RingerVolumeActivity$SavedState;

    .line 260
    .local v1, myState:Lcom/mediatek/audioprofile/RingerVolumeActivity$SavedState;
    sget-object v4, Lcom/mediatek/audioprofile/RingerVolumeActivity;->SECTION_ID:[I

    array-length v4, v4

    invoke-virtual {v1, v4}, Lcom/mediatek/audioprofile/RingerVolumeActivity$SavedState;->getVolumeStore(I)[Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;

    move-result-object v3

    .line 261
    .local v3, volumeStore:[Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v4, Lcom/mediatek/audioprofile/RingerVolumeActivity;->SECTION_ID:[I

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 262
    iget-object v4, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity;->mSeekBarVolumizer:[Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;

    aget-object v2, v4, v0

    .line 263
    .local v2, vol:Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;
    if-eqz v2, :cond_0

    .line 264
    aget-object v4, v3, v0

    invoke-virtual {v2, v4}, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->onRestoreInstanceState(Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;)V

    .line 261
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 267
    .end local v2           #vol:Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 268
    return-void
.end method

.method protected onSampleStarting(Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;)V
    .locals 4
    .parameter "volumizer"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity;->mSeekBarVolumizer:[Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;

    .local v0, arr$:[Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 220
    .local v3, vol:Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;
    if-eqz v3, :cond_0

    if-eq v3, p1, :cond_0

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->stopSample()V

    .line 219
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 222
    .end local v3           #vol:Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .parameter "outState"

    .prologue
    .line 272
    sget-object v4, Lcom/mediatek/audioprofile/RingerVolumeActivity;->SECTION_ID:[I

    array-length v4, v4

    new-array v3, v4, [Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;

    .line 273
    .local v3, volumeStore:[Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v4, Lcom/mediatek/audioprofile/RingerVolumeActivity;->SECTION_ID:[I

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 274
    iget-object v4, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity;->mSeekBarVolumizer:[Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;

    aget-object v2, v4, v0

    .line 275
    .local v2, vol:Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;
    if-eqz v2, :cond_0

    .line 276
    new-instance v4, Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;

    invoke-direct {v4}, Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;-><init>()V

    aput-object v4, v3, v0

    .line 277
    aget-object v4, v3, v0

    invoke-virtual {v2, v4}, Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;->onSaveInstanceState(Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;)V

    .line 273
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 280
    .end local v2           #vol:Lcom/mediatek/audioprofile/RingerVolumeActivity$SeekBarVolumizer;
    :cond_1
    new-instance v1, Lcom/mediatek/audioprofile/RingerVolumeActivity$SavedState;

    invoke-direct {v1, v3}, Lcom/mediatek/audioprofile/RingerVolumeActivity$SavedState;-><init>([Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;)V

    .line 281
    .local v1, savedState:Lcom/mediatek/audioprofile/RingerVolumeActivity$SavedState;
    const-string v4, "save_state"

    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 282
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 283
    return-void
.end method
