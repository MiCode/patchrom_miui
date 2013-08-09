.class public Lcom/android/settings/display/BrightnessActivity;
.super Landroid/app/Activity;
.source "BrightnessActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/BrightnessActivity$SavedState;
    }
.end annotation


# instance fields
.field private mAutomaticAvailable:Z

.field private mAutomaticMode:Z

.field private mBrightnessModeObserver:Landroid/database/ContentObserver;

.field private mBrightnessObserver:Landroid/database/ContentObserver;

.field private mCurBrightness:I

.field private mDialog:Landroid/app/Dialog;

.field private mOldAutomatic:I

.field private mOldBrightness:I

.field private mRestoredOldState:Z

.field private mScreenBrightnessDim:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSlidingBtn:Lmiui/widget/SlidingButton;

.field private mSummaryText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/display/BrightnessActivity;->mCurBrightness:I

    .line 53
    new-instance v0, Lcom/android/settings/display/BrightnessActivity$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/display/BrightnessActivity$1;-><init>(Lcom/android/settings/display/BrightnessActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/display/BrightnessActivity;->mBrightnessObserver:Landroid/database/ContentObserver;

    .line 61
    new-instance v0, Lcom/android/settings/display/BrightnessActivity$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/display/BrightnessActivity$2;-><init>(Lcom/android/settings/display/BrightnessActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/display/BrightnessActivity;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    .line 270
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/display/BrightnessActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Lcom/android/settings/display/BrightnessActivity;->mCurBrightness:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/display/BrightnessActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/settings/display/BrightnessActivity;->onBrightnessChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/display/BrightnessActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/settings/display/BrightnessActivity;->onBrightnessModeChanged()V

    return-void
.end method

.method private getBrightness()I
    .locals 5

    .prologue
    .line 143
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/settings/display/BrightnessActivity;->getBrightnessMode(I)I

    move-result v1

    .line 144
    .local v1, mode:I
    const/4 v0, 0x0

    .line 145
    .local v0, brightness:F
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/display/BrightnessActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_auto_brightness_adj"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 148
    const/high16 v2, 0x3f80

    add-float/2addr v2, v0

    const/high16 v3, 0x4000

    div-float v0, v2, v3

    .line 159
    :goto_0
    const v2, 0x461c4000

    mul-float/2addr v2, v0

    float-to-int v2, v2

    return v2

    .line 150
    :cond_0
    iget v2, p0, Lcom/android/settings/display/BrightnessActivity;->mCurBrightness:I

    if-gez v2, :cond_1

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/display/BrightnessActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    const/16 v4, 0x64

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    int-to-float v0, v2

    .line 156
    :goto_1
    iget v2, p0, Lcom/android/settings/display/BrightnessActivity;->mScreenBrightnessDim:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    iget v3, p0, Lcom/android/settings/display/BrightnessActivity;->mScreenBrightnessDim:I

    rsub-int v3, v3, 0xff

    int-to-float v3, v3

    div-float v0, v2, v3

    goto :goto_0

    .line 154
    :cond_1
    iget v2, p0, Lcom/android/settings/display/BrightnessActivity;->mCurBrightness:I

    int-to-float v0, v2

    goto :goto_1
.end method

.method private getBrightnessMode(I)I
    .locals 3
    .parameter "defaultValue"

    .prologue
    .line 133
    move v0, p1

    .line 135
    .local v0, brightnessMode:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/display/BrightnessActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 139
    :goto_0
    return v0

    .line 137
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private initUI()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 91
    const v0, 0x7f04007f

    invoke-virtual {p0, v0}, Lcom/android/settings/display/BrightnessActivity;->setContentView(I)V

    .line 92
    const v0, 0x7f09011b

    invoke-virtual {p0, v0}, Lcom/android/settings/display/BrightnessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/settings/display/BrightnessActivity;->mSeekBar:Landroid/widget/SeekBar;

    .line 93
    iget-object v0, p0, Lcom/android/settings/display/BrightnessActivity;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v3, 0x2710

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 94
    invoke-direct {p0}, Lcom/android/settings/display/BrightnessActivity;->getBrightness()I

    move-result v0

    iput v0, p0, Lcom/android/settings/display/BrightnessActivity;->mOldBrightness:I

    .line 95
    iget-object v0, p0, Lcom/android/settings/display/BrightnessActivity;->mSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/android/settings/display/BrightnessActivity;->mOldBrightness:I

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 97
    const v0, 0x7f09011a

    invoke-virtual {p0, v0}, Lcom/android/settings/display/BrightnessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/SlidingButton;

    iput-object v0, p0, Lcom/android/settings/display/BrightnessActivity;->mSlidingBtn:Lmiui/widget/SlidingButton;

    .line 98
    const v0, 0x7f09011c

    invoke-virtual {p0, v0}, Lcom/android/settings/display/BrightnessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/display/BrightnessActivity;->mSummaryText:Landroid/widget/TextView;

    .line 99
    iget-boolean v0, p0, Lcom/android/settings/display/BrightnessActivity;->mAutomaticAvailable:Z

    if-eqz v0, :cond_2

    .line 100
    iget-object v0, p0, Lcom/android/settings/display/BrightnessActivity;->mSlidingBtn:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, p0}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 101
    invoke-direct {p0, v2}, Lcom/android/settings/display/BrightnessActivity;->getBrightnessMode(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/display/BrightnessActivity;->mOldAutomatic:I

    .line 102
    iget v0, p0, Lcom/android/settings/display/BrightnessActivity;->mOldAutomatic:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/display/BrightnessActivity;->mAutomaticMode:Z

    .line 103
    iget-object v0, p0, Lcom/android/settings/display/BrightnessActivity;->mSlidingBtn:Lmiui/widget/SlidingButton;

    iget v3, p0, Lcom/android/settings/display/BrightnessActivity;->mOldAutomatic:I

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 107
    :goto_2
    iget-object v0, p0, Lcom/android/settings/display/BrightnessActivity;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 108
    return-void

    :cond_0
    move v0, v2

    .line 102
    goto :goto_0

    :cond_1
    move v1, v2

    .line 103
    goto :goto_1

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/android/settings/display/BrightnessActivity;->mSlidingBtn:Lmiui/widget/SlidingButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setVisibility(I)V

    goto :goto_2
.end method

.method private onBrightnessChanged()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/settings/display/BrightnessActivity;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/android/settings/display/BrightnessActivity;->getBrightness()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 164
    return-void
.end method

.method private onBrightnessModeChanged()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 167
    invoke-direct {p0, v1}, Lcom/android/settings/display/BrightnessActivity;->getBrightnessMode(I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 169
    .local v0, checked:Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings/display/BrightnessActivity;->mSlidingBtn:Lmiui/widget/SlidingButton;

    invoke-virtual {v1, v0}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 170
    iget-object v1, p0, Lcom/android/settings/display/BrightnessActivity;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/android/settings/display/BrightnessActivity;->getBrightness()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 171
    return-void

    .end local v0           #checked:Z
    :cond_0
    move v0, v1

    .line 167
    goto :goto_0
.end method

.method private restoreOldState()V
    .locals 2

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/android/settings/display/BrightnessActivity;->mRestoredOldState:Z

    if-eqz v0, :cond_0

    .line 190
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/display/BrightnessActivity;->mAutomaticAvailable:Z

    if-eqz v0, :cond_1

    .line 185
    iget v0, p0, Lcom/android/settings/display/BrightnessActivity;->mOldAutomatic:I

    invoke-direct {p0, v0}, Lcom/android/settings/display/BrightnessActivity;->setMode(I)V

    .line 187
    :cond_1
    iget v0, p0, Lcom/android/settings/display/BrightnessActivity;->mOldBrightness:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/display/BrightnessActivity;->setBrightness(IZ)V

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/display/BrightnessActivity;->mRestoredOldState:Z

    .line 189
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/display/BrightnessActivity;->mCurBrightness:I

    goto :goto_0
.end method

.method private setBrightness(IZ)V
    .locals 6
    .parameter "brightness"
    .parameter "write"

    .prologue
    .line 193
    iget-boolean v4, p0, Lcom/android/settings/display/BrightnessActivity;->mAutomaticMode:Z

    if-eqz v4, :cond_2

    .line 194
    int-to-float v4, p1

    const/high16 v5, 0x4000

    mul-float/2addr v4, v5

    const v5, 0x461c4000

    div-float/2addr v4, v5

    const/high16 v5, 0x3f80

    sub-float v3, v4, v5

    .line 196
    .local v3, valf:F
    :try_start_0
    new-instance v0, Landroid/os/IPowerManagerProxy;

    const-string v4, "power"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/os/IPowerManagerProxy;-><init>(Landroid/os/IPowerManager;)V

    .line 198
    .local v0, power:Landroid/os/IPowerManagerProxy;
    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0, v3}, Landroid/os/IPowerManagerProxy;->setAutoBrightnessAdjustment(F)V

    .line 201
    :cond_0
    if-eqz p2, :cond_1

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/display/BrightnessActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 203
    .local v2, resolver:Landroid/content/ContentResolver;
    const-string v4, "screen_auto_brightness_adj"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 228
    .end local v0           #power:Landroid/os/IPowerManagerProxy;
    .end local v2           #resolver:Landroid/content/ContentResolver;
    .end local v3           #valf:F
    :cond_1
    :goto_0
    return-void

    .line 209
    :cond_2
    iget v4, p0, Lcom/android/settings/display/BrightnessActivity;->mScreenBrightnessDim:I

    rsub-int v1, v4, 0xff

    .line 210
    .local v1, range:I
    mul-int v4, p1, v1

    div-int/lit16 v4, v4, 0x2710

    iget v5, p0, Lcom/android/settings/display/BrightnessActivity;->mScreenBrightnessDim:I

    add-int p1, v4, v5

    .line 212
    :try_start_1
    new-instance v0, Landroid/os/IPowerManagerProxy;

    const-string v4, "power"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/os/IPowerManagerProxy;-><init>(Landroid/os/IPowerManager;)V

    .line 214
    .restart local v0       #power:Landroid/os/IPowerManagerProxy;
    if-eqz v0, :cond_3

    .line 215
    invoke-virtual {v0, p1}, Landroid/os/IPowerManagerProxy;->setBacklightBrightness(I)V

    .line 217
    :cond_3
    if-eqz p2, :cond_4

    .line 218
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/settings/display/BrightnessActivity;->mCurBrightness:I

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/display/BrightnessActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 220
    .restart local v2       #resolver:Landroid/content/ContentResolver;
    const-string v4, "screen_brightness"

    invoke-static {v2, v4, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 225
    .end local v0           #power:Landroid/os/IPowerManagerProxy;
    .end local v2           #resolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 223
    .restart local v0       #power:Landroid/os/IPowerManagerProxy;
    :cond_4
    iput p1, p0, Lcom/android/settings/display/BrightnessActivity;->mCurBrightness:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 206
    .end local v0           #power:Landroid/os/IPowerManagerProxy;
    .end local v1           #range:I
    .restart local v3       #valf:F
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private setMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    const/4 v0, 0x1

    .line 231
    if-ne p1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/display/BrightnessActivity;->mAutomaticMode:Z

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/display/BrightnessActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 234
    return-void

    .line 231
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v1, 0x0

    .line 123
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/display/BrightnessActivity;->setMode(I)V

    .line 125
    iget-object v0, p0, Lcom/android/settings/display/BrightnessActivity;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/android/settings/display/BrightnessActivity;->getBrightness()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 126
    iget-object v0, p0, Lcom/android/settings/display/BrightnessActivity;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/display/BrightnessActivity;->setBrightness(IZ)V

    .line 127
    iget-object v1, p0, Lcom/android/settings/display/BrightnessActivity;->mSummaryText:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    const v0, 0x7f0c091c

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 130
    return-void

    :cond_0
    move v0, v1

    .line 123
    goto :goto_0

    .line 127
    :cond_1
    const v0, 0x7f0c091b

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/display/BrightnessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x6090001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/display/BrightnessActivity;->mAutomaticAvailable:Z

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/display/BrightnessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x6080006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/display/BrightnessActivity;->mScreenBrightnessDim:I

    .line 74
    invoke-direct {p0}, Lcom/android/settings/display/BrightnessActivity;->initUI()V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/display/BrightnessActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_auto_brightness_adj"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/display/BrightnessActivity;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/display/BrightnessActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/display/BrightnessActivity;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/display/BrightnessActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/display/BrightnessActivity;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/display/BrightnessActivity;->mRestoredOldState:Z

    .line 88
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/android/settings/display/BrightnessActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 176
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/settings/display/BrightnessActivity;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 177
    iget-object v1, p0, Lcom/android/settings/display/BrightnessActivity;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 178
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 179
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/settings/display/BrightnessActivity;->setBrightness(IZ)V

    .line 112
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 259
    iget-object v1, p0, Lcom/android/settings/display/BrightnessActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/display/BrightnessActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    const-string v1, "save_state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/settings/display/BrightnessActivity$SavedState;

    .line 261
    .local v0, myState:Lcom/android/settings/display/BrightnessActivity$SavedState;
    iget v1, v0, Lcom/android/settings/display/BrightnessActivity$SavedState;->oldProgress:I

    iput v1, p0, Lcom/android/settings/display/BrightnessActivity;->mOldBrightness:I

    .line 262
    iget-boolean v1, v0, Lcom/android/settings/display/BrightnessActivity$SavedState;->oldAutomatic:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    iput v1, p0, Lcom/android/settings/display/BrightnessActivity;->mOldAutomatic:I

    .line 263
    iget v1, v0, Lcom/android/settings/display/BrightnessActivity$SavedState;->curBrightness:I

    iput v1, p0, Lcom/android/settings/display/BrightnessActivity;->mCurBrightness:I

    .line 264
    iget-boolean v1, v0, Lcom/android/settings/display/BrightnessActivity$SavedState;->automatic:Z

    if-eqz v1, :cond_2

    :goto_1
    invoke-direct {p0, v2}, Lcom/android/settings/display/BrightnessActivity;->setMode(I)V

    .line 265
    iget v1, v0, Lcom/android/settings/display/BrightnessActivity$SavedState;->progress:I

    invoke-direct {p0, v1, v3}, Lcom/android/settings/display/BrightnessActivity;->setBrightness(IZ)V

    .line 267
    .end local v0           #myState:Lcom/android/settings/display/BrightnessActivity$SavedState;
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 268
    return-void

    .restart local v0       #myState:Lcom/android/settings/display/BrightnessActivity$SavedState;
    :cond_1
    move v1, v3

    .line 262
    goto :goto_0

    :cond_2
    move v2, v3

    .line 264
    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    const/4 v1, 0x1

    .line 239
    iget-object v2, p0, Lcom/android/settings/display/BrightnessActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/display/BrightnessActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 241
    new-instance v0, Lcom/android/settings/display/BrightnessActivity$SavedState;

    invoke-direct {v0}, Lcom/android/settings/display/BrightnessActivity$SavedState;-><init>()V

    .line 242
    .local v0, myState:Lcom/android/settings/display/BrightnessActivity$SavedState;
    iget-object v2, p0, Lcom/android/settings/display/BrightnessActivity;->mSlidingBtn:Lmiui/widget/SlidingButton;

    invoke-virtual {v2}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settings/display/BrightnessActivity$SavedState;->automatic:Z

    .line 243
    iget-object v2, p0, Lcom/android/settings/display/BrightnessActivity;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iput v2, v0, Lcom/android/settings/display/BrightnessActivity$SavedState;->progress:I

    .line 244
    iget v2, p0, Lcom/android/settings/display/BrightnessActivity;->mOldAutomatic:I

    if-ne v2, v1, :cond_1

    :goto_0
    iput-boolean v1, v0, Lcom/android/settings/display/BrightnessActivity$SavedState;->oldAutomatic:Z

    .line 245
    iget v1, p0, Lcom/android/settings/display/BrightnessActivity;->mOldBrightness:I

    iput v1, v0, Lcom/android/settings/display/BrightnessActivity$SavedState;->oldProgress:I

    .line 246
    iget v1, p0, Lcom/android/settings/display/BrightnessActivity;->mCurBrightness:I

    iput v1, v0, Lcom/android/settings/display/BrightnessActivity$SavedState;->curBrightness:I

    .line 247
    const-string v1, "save_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 250
    invoke-direct {p0}, Lcom/android/settings/display/BrightnessActivity;->restoreOldState()V

    .line 253
    .end local v0           #myState:Lcom/android/settings/display/BrightnessActivity$SavedState;
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 254
    return-void

    .line 244
    .restart local v0       #myState:Lcom/android/settings/display/BrightnessActivity$SavedState;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 116
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/settings/display/BrightnessActivity;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/display/BrightnessActivity;->setBrightness(IZ)V

    .line 120
    return-void
.end method
