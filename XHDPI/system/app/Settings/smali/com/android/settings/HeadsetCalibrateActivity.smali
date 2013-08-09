.class public Lcom/android/settings/HeadsetCalibrateActivity;
.super Landroid/app/Activity;
.source "HeadsetCalibrateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ljava/lang/Runnable;


# instance fields
.field private mCalibrateConfirmed:Z

.field private mCalibrated:Z

.field private final mDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mOrignalMode:Ljava/lang/String;

.field private mOrignalSwitch:Ljava/lang/String;

.field private mViewApply:Landroid/view/View;

.field private mViewCalibrateHint:Landroid/view/View;

.field private mViewCalibrateSuccess:Landroid/view/View;

.field private mViewDiagramAnim:Landroid/view/View;

.field private mViewKeyDown:Landroid/widget/TextView;

.field private mViewKeyUp:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 22
    iput-object v1, p0, Lcom/android/settings/HeadsetCalibrateActivity;->mOrignalMode:Ljava/lang/String;

    .line 23
    iput-object v1, p0, Lcom/android/settings/HeadsetCalibrateActivity;->mOrignalSwitch:Ljava/lang/String;

    .line 24
    iput-boolean v0, p0, Lcom/android/settings/HeadsetCalibrateActivity;->mCalibrated:Z

    .line 25
    iput-boolean v0, p0, Lcom/android/settings/HeadsetCalibrateActivity;->mCalibrateConfirmed:Z

    .line 190
    new-instance v0, Lcom/android/settings/HeadsetCalibrateActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/HeadsetCalibrateActivity$1;-><init>(Lcom/android/settings/HeadsetCalibrateActivity;)V

    iput-object v0, p0, Lcom/android/settings/HeadsetCalibrateActivity;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/HeadsetCalibrateActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/android/settings/HeadsetCalibrateActivity;->mCalibrateConfirmed:Z

    return p1
.end method

.method private calibrate(Ljava/lang/String;)V
    .locals 4
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    .line 157
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/HeadsetCalibrateActivity;->mCalibrated:Z

    .line 158
    const-string v1, "persist.sys.button_jack_switch"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lcom/android/settings/HeadsetCalibrateActivity;->mViewKeyUp:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    iget-object v1, p0, Lcom/android/settings/HeadsetCalibrateActivity;->mViewKeyDown:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    iget-object v1, p0, Lcom/android/settings/HeadsetCalibrateActivity;->mViewApply:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 163
    iget-object v1, p0, Lcom/android/settings/HeadsetCalibrateActivity;->mViewCalibrateHint:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 164
    iget-object v1, p0, Lcom/android/settings/HeadsetCalibrateActivity;->mViewCalibrateSuccess:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 166
    const-string v1, "persist.sys.button_jack_profile"

    const-string v2, "volume"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, mode:Ljava/lang/String;
    const-string v1, "music"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/android/settings/HeadsetCalibrateActivity;->mViewKeyUp:Landroid/widget/TextView;

    const v2, 0x7f0c0817

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 169
    iget-object v1, p0, Lcom/android/settings/HeadsetCalibrateActivity;->mViewKeyDown:Landroid/widget/TextView;

    const v2, 0x7f0c0818

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 174
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/android/settings/HeadsetCalibrateActivity;->mViewKeyUp:Landroid/widget/TextView;

    const v2, 0x7f0c0815

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 172
    iget-object v1, p0, Lcom/android/settings/HeadsetCalibrateActivity;->mViewKeyDown:Landroid/widget/TextView;

    const v2, 0x7f0c0816

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private showConfirmDialog()Z
    .locals 3

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/android/settings/HeadsetCalibrateActivity;->mCalibrated:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/HeadsetCalibrateActivity;->mCalibrateConfirmed:Z

    if-nez v0, :cond_0

    .line 178
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0819

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    iget-object v2, p0, Lcom/android/settings/HeadsetCalibrateActivity;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    iget-object v2, p0, Lcom/android/settings/HeadsetCalibrateActivity;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 184
    const/4 v0, 0x1

    .line 187
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/android/settings/HeadsetCalibrateActivity;->showConfirmDialog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 143
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/HeadsetCalibrateActivity;->mViewApply:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/HeadsetCalibrateActivity;->mCalibrateConfirmed:Z

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/HeadsetCalibrateActivity;->finish()V

    .line 69
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/android/settings/HeadsetCalibrateActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 39
    .local v0, am:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 40
    const v1, 0x7f0c081a

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 41
    invoke-virtual {p0}, Lcom/android/settings/HeadsetCalibrateActivity;->finish()V

    .line 61
    :goto_0
    return-void

    .line 45
    :cond_0
    const v1, 0x7f04004b

    invoke-virtual {p0, v1}, Lcom/android/settings/HeadsetCalibrateActivity;->setContentView(I)V

    .line 47
    const v1, 0x7f0900a7

    invoke-virtual {p0, v1}, Lcom/android/settings/HeadsetCalibrateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/HeadsetCalibrateActivity;->mViewKeyUp:Landroid/widget/TextView;

    .line 48
    const v1, 0x7f0900a8

    invoke-virtual {p0, v1}, Lcom/android/settings/HeadsetCalibrateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/HeadsetCalibrateActivity;->mViewKeyDown:Landroid/widget/TextView;

    .line 49
    const v1, 0x7f0900a4

    invoke-virtual {p0, v1}, Lcom/android/settings/HeadsetCalibrateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/HeadsetCalibrateActivity;->mViewDiagramAnim:Landroid/view/View;

    .line 50
    const v1, 0x7f0900a5

    invoke-virtual {p0, v1}, Lcom/android/settings/HeadsetCalibrateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/HeadsetCalibrateActivity;->mViewCalibrateHint:Landroid/view/View;

    .line 51
    const v1, 0x7f0900a6

    invoke-virtual {p0, v1}, Lcom/android/settings/HeadsetCalibrateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/HeadsetCalibrateActivity;->mViewCalibrateSuccess:Landroid/view/View;

    .line 52
    const v1, 0x7f0900a9

    invoke-virtual {p0, v1}, Lcom/android/settings/HeadsetCalibrateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/HeadsetCalibrateActivity;->mViewApply:Landroid/view/View;

    .line 54
    iget-object v1, p0, Lcom/android/settings/HeadsetCalibrateActivity;->mViewKeyUp:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 55
    iget-object v1, p0, Lcom/android/settings/HeadsetCalibrateActivity;->mViewKeyDown:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 56
    iget-object v1, p0, Lcom/android/settings/HeadsetCalibrateActivity;->mViewApply:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 57
    iget-object v1, p0, Lcom/android/settings/HeadsetCalibrateActivity;->mViewCalibrateHint:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 58
    iget-object v1, p0, Lcom/android/settings/HeadsetCalibrateActivity;->mViewCalibrateSuccess:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 60
    iget-object v1, p0, Lcom/android/settings/HeadsetCalibrateActivity;->mViewApply:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/android/settings/HeadsetCalibrateActivity;->mCalibrated:Z

    if-nez v0, :cond_1

    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    const/16 v0, 0x4f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x55

    if-ne p1, v0, :cond_1

    .line 114
    :cond_0
    const/4 v0, 0x1

    .line 117
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v3, 0x18

    const/4 v1, 0x1

    .line 122
    iget-boolean v0, p0, Lcom/android/settings/HeadsetCalibrateActivity;->mCalibrated:Z

    if-nez v0, :cond_4

    .line 123
    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    if-ne p1, v3, :cond_2

    .line 125
    :cond_0
    const-string v0, "persist.sys.button_jack_profile"

    iget-object v2, p0, Lcom/android/settings/HeadsetCalibrateActivity;->mOrignalMode:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    if-ne p1, v3, :cond_1

    const-string v0, "0"

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/HeadsetCalibrateActivity;->calibrate(Ljava/lang/String;)V

    move v0, v1

    .line 135
    :goto_1
    return v0

    .line 126
    :cond_1
    const-string v0, "1"

    goto :goto_0

    .line 128
    :cond_2
    const/16 v0, 0x4f

    if-eq p1, v0, :cond_3

    const/16 v0, 0x55

    if-ne p1, v0, :cond_4

    .line 130
    :cond_3
    const v0, 0x7f0c081b

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    .line 131
    goto :goto_1

    .line 135
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 147
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 148
    invoke-direct {p0}, Lcom/android/settings/HeadsetCalibrateActivity;->showConfirmDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    const/4 v0, 0x1

    .line 153
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/settings/HeadsetCalibrateActivity;->mViewDiagramAnim:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 98
    iget-boolean v0, p0, Lcom/android/settings/HeadsetCalibrateActivity;->mCalibrateConfirmed:Z

    if-nez v0, :cond_0

    .line 99
    const-string v0, "persist.sys.button_jack_profile"

    iget-object v1, p0, Lcom/android/settings/HeadsetCalibrateActivity;->mOrignalMode:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v0, "persist.sys.button_jack_switch"

    iget-object v1, p0, Lcom/android/settings/HeadsetCalibrateActivity;->mOrignalSwitch:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/HeadsetCalibrateActivity;->finish()V

    .line 104
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 105
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 85
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 86
    const-string v0, "persist.sys.button_jack_profile"

    const-string v1, "volume"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/HeadsetCalibrateActivity;->mOrignalMode:Ljava/lang/String;

    .line 87
    const-string v0, "persist.sys.button_jack_profile"

    const-string v1, "volume"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v0, "persist.sys.button_jack_switch"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/HeadsetCalibrateActivity;->mOrignalSwitch:Ljava/lang/String;

    .line 89
    const-string v0, "persist.sys.button_jack_switch"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/android/settings/HeadsetCalibrateActivity;->mViewDiagramAnim:Landroid/view/View;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 92
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    const/16 v0, 0x8

    .line 73
    iget-boolean v1, p0, Lcom/android/settings/HeadsetCalibrateActivity;->mCalibrated:Z

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/android/settings/HeadsetCalibrateActivity;->mViewDiagramAnim:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 81
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/android/settings/HeadsetCalibrateActivity;->mViewDiagramAnim:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 78
    .local v0, visibility:I
    :goto_1
    iget-object v1, p0, Lcom/android/settings/HeadsetCalibrateActivity;->mViewDiagramAnim:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 79
    iget-object v1, p0, Lcom/android/settings/HeadsetCalibrateActivity;->mViewDiagramAnim:Landroid/view/View;

    const-wide/16 v2, 0x190

    invoke-virtual {v1, p0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 76
    .end local v0           #visibility:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
