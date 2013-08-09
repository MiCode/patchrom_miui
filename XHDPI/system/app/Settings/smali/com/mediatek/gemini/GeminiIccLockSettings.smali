.class public Lcom/mediatek/gemini/GeminiIccLockSettings;
.super Landroid/preference/PreferenceActivity;
.source "GeminiIccLockSettings.java"

# interfaces
.implements Lcom/mediatek/gemini/GeminiEditPinPreference$OnPinEnteredListener;


# instance fields
.field private mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

.field private mDialogState:I

.field private mError:Ljava/lang/String;

.field private mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

.field private mHandler:Landroid/os/Handler;

.field private mIsDeadLocked:Z

.field private mIsShouldBeFinished:Z

.field private mIsUnlockFollow:Z

.field private mNewPin:Ljava/lang/String;

.field private mOldPin:Ljava/lang/String;

.field private mPin:Ljava/lang/String;

.field private mPinDialog:Lcom/mediatek/gemini/GeminiEditPinPreference;

.field private mPinToggle:Landroid/preference/CheckBoxPreference;

.field private mRes:Landroid/content/res/Resources;

.field private mServiceComplete:Ljava/lang/Runnable;

.field private mSimId:I

.field private final mSimStateReceiver:Landroid/content/BroadcastReceiver;

.field private mToState:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 89
    iput v1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mDialogState:I

    .line 117
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mSimId:I

    .line 120
    iput-boolean v1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mIsUnlockFollow:Z

    .line 121
    iput-boolean v1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mIsShouldBeFinished:Z

    .line 122
    iput-boolean v1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mIsDeadLocked:Z

    .line 125
    new-instance v0, Lcom/mediatek/gemini/GeminiIccLockSettings$1;

    invoke-direct {v0, p0}, Lcom/mediatek/gemini/GeminiIccLockSettings$1;-><init>(Lcom/mediatek/gemini/GeminiIccLockSettings;)V

    iput-object v0, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mHandler:Landroid/os/Handler;

    .line 150
    new-instance v0, Lcom/mediatek/gemini/GeminiIccLockSettings$2;

    invoke-direct {v0, p0}, Lcom/mediatek/gemini/GeminiIccLockSettings$2;-><init>(Lcom/mediatek/gemini/GeminiIccLockSettings;)V

    iput-object v0, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    .line 176
    new-instance v0, Lcom/mediatek/gemini/GeminiIccLockSettings$3;

    invoke-direct {v0, p0}, Lcom/mediatek/gemini/GeminiIccLockSettings$3;-><init>(Lcom/mediatek/gemini/GeminiIccLockSettings;)V

    iput-object v0, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mServiceComplete:Ljava/lang/Runnable;

    .line 192
    new-instance v0, Lcom/mediatek/CellConnService/CellConnMgr;

    iget-object v1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mServiceComplete:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Lcom/mediatek/CellConnService/CellConnMgr;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/gemini/GeminiIccLockSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/mediatek/gemini/GeminiIccLockSettings;->iccLockChanged(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/gemini/GeminiIccLockSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/mediatek/gemini/GeminiIccLockSettings;->iccPinChanged(Z)V

    return-void
.end method

.method static synthetic access$1002(Lcom/mediatek/gemini/GeminiIccLockSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mIsUnlockFollow:Z

    return p1
.end method

.method static synthetic access$200(Lcom/mediatek/gemini/GeminiIccLockSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiIccLockSettings;->updatePreferences()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/gemini/GeminiIccLockSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiIccLockSettings;->updateOnSimLockStateChanged()V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/gemini/GeminiIccLockSettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/gemini/GeminiIccLockSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiIccLockSettings;->gobackSettings()V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/gemini/GeminiIccLockSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mSimId:I

    return v0
.end method

.method static synthetic access$700(Lcom/mediatek/gemini/GeminiIccLockSettings;)Lcom/mediatek/CellConnService/CellConnMgr;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    return-object v0
.end method

.method static synthetic access$802(Lcom/mediatek/gemini/GeminiIccLockSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mIsShouldBeFinished:Z

    return p1
.end method

.method static synthetic access$900(Lcom/mediatek/gemini/GeminiIccLockSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private dealWith3AppLaunch()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 678
    invoke-static {p0}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 680
    .local v1, simList:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 681
    const/4 v2, -0x1

    .line 692
    .local v2, slotID:I
    :cond_0
    :goto_0
    const-string v4, "IccLockSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dealWith3AppLaunch() slotID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    return v2

    .line 682
    .end local v2           #slotID:I
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 683
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/provider/Telephony$SIMInfo;

    iget v2, v4, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    .restart local v2       #slotID:I
    goto :goto_0

    .line 685
    .end local v2           #slotID:I
    :cond_2
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/provider/Telephony$SIMInfo;

    iget v2, v4, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    .line 686
    .restart local v2       #slotID:I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/Telephony$SIMInfo;

    .line 687
    .local v3, temp:Landroid/provider/Telephony$SIMInfo;
    iget v4, v3, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-le v2, v4, :cond_3

    .line 688
    iget v2, v3, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    goto :goto_1
.end method

.method private getRetryPin()Ljava/lang/String;
    .locals 8

    .prologue
    const v7, 0x7f0c0a3b

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 627
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiIccLockSettings;->getRetryPinCount()I

    move-result v0

    .line 628
    .local v0, mPinRetryCount:I
    packed-switch v0, :pswitch_data_0

    .line 632
    const-string v1, "IccLockSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " retry pin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v7, v3}, Lcom/mediatek/gemini/GeminiIccLockSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, v7, v1}, Lcom/mediatek/gemini/GeminiIccLockSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 630
    :pswitch_0
    const-string v1, " "

    goto :goto_0

    .line 628
    :pswitch_data_0
    .packed-switch -0x64
        :pswitch_0
    .end packed-switch
.end method

.method private getRetryPinCount()I
    .locals 3

    .prologue
    const/16 v2, -0x64

    .line 657
    iget v0, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mSimId:I

    if-nez v0, :cond_0

    .line 658
    const-string v0, "gsm.sim.retry.pin1"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 665
    :goto_0
    return v0

    .line 660
    :cond_0
    const/4 v0, 0x1

    iget v1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mSimId:I

    if-ne v0, v1, :cond_1

    .line 661
    const-string v0, "gsm.sim.retry.pin1.2"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 664
    :cond_1
    const-string v0, "IccLockSettings"

    const-string v1, "getRetryPinCount sim id error"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private gobackSettings()V
    .locals 2

    .prologue
    .line 297
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/Settings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 298
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 299
    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/GeminiIccLockSettings;->startActivity(Landroid/content/Intent;)V

    .line 300
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiIccLockSettings;->finish()V

    .line 301
    return-void
.end method

.method private iccLockChanged(Z)V
    .locals 2
    .parameter "success"

    .prologue
    .line 550
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 551
    if-eqz p1, :cond_0

    .line 552
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mToState:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 559
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiIccLockSettings;->resetDialogState()V

    .line 560
    return-void

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c02d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 557
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiIccLockSettings;->noRetryPinAvailable()Z

    goto :goto_0
.end method

.method private iccPinChanged(Z)V
    .locals 3
    .parameter "success"

    .prologue
    const/4 v2, 0x0

    .line 575
    if-nez p1, :cond_0

    .line 576
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c02d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 580
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiIccLockSettings;->noRetryPinAvailable()Z

    .line 587
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiIccLockSettings;->resetDialogState()V

    .line 588
    return-void

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c02d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private noRetryPinAvailable()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 566
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiIccLockSettings;->getRetryPinCount()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiIccLockSettings;->getRetryPinCount()I

    move-result v2

    const/16 v3, -0x64

    if-ne v2, v3, :cond_1

    .line 567
    :cond_0
    const-string v2, "IccLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRetryPinCount() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiIccLockSettings;->getRetryPinCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 569
    iput-boolean v1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mIsDeadLocked:Z

    move v0, v1

    .line 572
    :cond_1
    return v0
.end method

.method private reasonablePin(Ljava/lang/String;)Z
    .locals 2
    .parameter "pin"

    .prologue
    .line 610
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    .line 612
    :cond_0
    const/4 v0, 0x0

    .line 614
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private resetDialogState()V
    .locals 1

    .prologue
    .line 619
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mError:Ljava/lang/String;

    .line 620
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mDialogState:I

    .line 621
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mPin:Ljava/lang/String;

    .line 622
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiIccLockSettings;->setDialogValues()V

    .line 623
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mDialogState:I

    .line 624
    return-void
.end method

.method private setDialogValues()V
    .locals 5

    .prologue
    const v4, 0x7f0c02d2

    const v3, 0x7f0c0a3a

    .line 425
    iget-object v1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mPinDialog:Lcom/mediatek/gemini/GeminiEditPinPreference;

    iget-object v2, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mPin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/gemini/GeminiEditPinPreference;->setText(Ljava/lang/String;)V

    .line 426
    const-string v0, ""

    .line 427
    .local v0, message:Ljava/lang/String;
    iget v1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mDialogState:I

    packed-switch v1, :pswitch_data_0

    .line 453
    :goto_0
    iget-object v1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mError:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 455
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mError:Ljava/lang/String;

    .line 457
    :cond_0
    iget-object v1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mPinDialog:Lcom/mediatek/gemini/GeminiEditPinPreference;

    invoke-virtual {v1, v0}, Lcom/mediatek/gemini/GeminiEditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 458
    return-void

    .line 429
    :pswitch_0
    iget-object v1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c02cc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 431
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mPinDialog:Lcom/mediatek/gemini/GeminiEditPinPreference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mToState:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0c02cd

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiIccLockSettings;->getRetryPin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mediatek/gemini/GeminiEditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0c02ce

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 436
    :pswitch_1
    iget-object v1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c02cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 437
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 438
    iget-object v1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mPinDialog:Lcom/mediatek/gemini/GeminiEditPinPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiIccLockSettings;->getRetryPin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/gemini/GeminiEditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 441
    :pswitch_2
    iget-object v1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c02d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 442
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 443
    iget-object v1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mPinDialog:Lcom/mediatek/gemini/GeminiEditPinPreference;

    iget-object v2, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/gemini/GeminiEditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 446
    :pswitch_3
    iget-object v1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c02d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 447
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 448
    iget-object v1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mPinDialog:Lcom/mediatek/gemini/GeminiEditPinPreference;

    iget-object v2, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/gemini/GeminiEditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 427
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showPinDialog()V
    .locals 1

    .prologue
    .line 416
    iget v0, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mDialogState:I

    if-nez v0, :cond_0

    .line 422
    :goto_0
    return-void

    .line 419
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiIccLockSettings;->setDialogValues()V

    .line 421
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mPinDialog:Lcom/mediatek/gemini/GeminiEditPinPreference;

    invoke-virtual {v0}, Lcom/mediatek/gemini/GeminiEditPinPreference;->showPinDialog()V

    goto :goto_0
.end method

.method private tryChangeIccLockState()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 524
    iget-object v1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 532
    .local v0, callback:Landroid/os/Message;
    iget v1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mSimId:I

    if-nez v1, :cond_0

    .line 533
    iget-object v1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mToState:Z

    iget-object v3, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mPin:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 534
    const-string v1, "IccLockSettings"

    const-string v2, "tryChangeIccLockState [SIM 1]"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-object v1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 547
    :goto_0
    return-void

    .line 537
    :cond_0
    iget v1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mSimId:I

    if-ne v3, v1, :cond_1

    .line 538
    iget-object v1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mToState:Z

    iget-object v3, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mPin:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 539
    const-string v1, "IccLockSettings"

    const-string v2, "tryChangeIccLockState [SIM 2]"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 543
    :cond_1
    const-string v1, "IccLockSettings"

    const-string v2, "tryChangeIccLockState sim id error"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private tryChangePin()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 591
    iget-object v1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 597
    .local v0, callback:Landroid/os/Message;
    iget v1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mSimId:I

    if-nez v1, :cond_0

    .line 598
    iget-object v1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mOldPin:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 599
    const-string v1, "IccLockSettings"

    const-string v2, "tryChangePin [SIM 1]"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :goto_0
    return-void

    .line 600
    :cond_0
    iget v1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mSimId:I

    if-ne v3, v1, :cond_1

    .line 601
    iget-object v1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mOldPin:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 602
    const-string v1, "IccLockSettings"

    const-string v2, "tryChangePin [SIM 2]"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 604
    :cond_1
    const-string v1, "IccLockSettings"

    const-string v2, "tryChangePin sim id error"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateOnSimLockStateChanged()V
    .locals 3

    .prologue
    .line 306
    const-string v0, "IccLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOnSimLockStateChanged()+mIsDeadLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mIsDeadLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiIccLockSettings;->getRetryPinCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mIsDeadLocked:Z

    if-eqz v0, :cond_0

    .line 309
    const-string v0, "IccLockSettings"

    const-string v1, "Restore state"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 311
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mIsDeadLocked:Z

    .line 312
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiIccLockSettings;->resetDialogState()V

    .line 314
    :cond_0
    return-void
.end method

.method private updatePreferences()V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiIccLockSettings;->isIccLockEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 304
    return-void
.end method


# virtual methods
.method isIccLockEnabled()Z
    .locals 2

    .prologue
    .line 199
    iget v0, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mSimId:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget v1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mSimId:I

    if-ne v0, v1, :cond_1

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mSimId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v0

    .line 203
    :goto_0
    return v0

    .line 202
    :cond_1
    const-string v0, "IccLockSettings"

    const-string v1, "Sim lock sim id error."

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, -0x1

    .line 218
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 219
    const-string v4, "IccLockSettings"

    const-string v5, "onCreate"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiIccLockSettings;->finish()V

    .line 293
    :goto_0
    return-void

    .line 224
    :cond_0
    const v4, 0x7f060030

    invoke-virtual {p0, v4}, Lcom/mediatek/gemini/GeminiIccLockSettings;->addPreferencesFromResource(I)V

    .line 226
    iget-object v4, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v4, p0}, Lcom/mediatek/CellConnService/CellConnMgr;->register(Landroid/content/Context;)V

    .line 227
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiIccLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 228
    .local v0, it:Landroid/content/Intent;
    const-string v4, "slotid"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mSimId:I

    .line 230
    const-string v4, "IccLockSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mSimId is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mSimId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget v4, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mSimId:I

    if-ne v4, v7, :cond_1

    .line 235
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiIccLockSettings;->dealWith3AppLaunch()I

    move-result v4

    iput v4, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mSimId:I

    .line 237
    :cond_1
    iget v4, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mSimId:I

    invoke-static {p0, v4}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v3

    .line 238
    .local v3, simInfo:Landroid/provider/Telephony$SIMInfo;
    invoke-static {p0}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMCount(Landroid/content/Context;)I

    move-result v1

    .line 239
    .local v1, simCount:I
    const/4 v2, 0x0

    .line 240
    .local v2, simDisplayName:Ljava/lang/String;
    const/4 v4, 0x1

    if-le v1, v4, :cond_2

    if-eqz v3, :cond_2

    .line 241
    iget-object v2, v3, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    .line 243
    :cond_2
    if-eqz v2, :cond_3

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 244
    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/GeminiIccLockSettings;->setTitle(Ljava/lang/CharSequence;)V

    .line 247
    :cond_3
    const-string v4, "sim_pin"

    invoke-virtual {p0, v4}, Lcom/mediatek/gemini/GeminiIccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/mediatek/gemini/GeminiEditPinPreference;

    iput-object v4, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mPinDialog:Lcom/mediatek/gemini/GeminiEditPinPreference;

    .line 248
    const-string v4, "sim_toggle"

    invoke-virtual {p0, v4}, Lcom/mediatek/gemini/GeminiIccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    .line 249
    const-string v4, "IccLockSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mDialogState is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mDialogState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    if-eqz p1, :cond_4

    const-string v4, "dialogState"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 251
    const-string v4, "dialogState"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mDialogState:I

    .line 252
    const-string v4, "dialogPin"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mPin:Ljava/lang/String;

    .line 253
    const-string v4, "dialogError"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mError:Ljava/lang/String;

    .line 254
    const-string v4, "enableState"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mToState:Z

    .line 255
    const-string v4, "IccLockSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mDialogState is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mDialogState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const-string v4, "IccLockSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mPin is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mPin:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const-string v4, "IccLockSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mError is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const-string v4, "IccLockSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mToState  is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mToState:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget v4, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mDialogState:I

    packed-switch v4, :pswitch_data_0

    .line 280
    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mPinDialog:Lcom/mediatek/gemini/GeminiEditPinPreference;

    invoke-virtual {v4, p0}, Lcom/mediatek/gemini/GeminiEditPinPreference;->setOnPinEnteredListener(Lcom/mediatek/gemini/GeminiEditPinPreference$OnPinEnteredListener;)V

    .line 283
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiIccLockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    .line 287
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iput-object v4, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 291
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiIccLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mRes:Landroid/content/res/Resources;

    .line 292
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiIccLockSettings;->updatePreferences()V

    goto/16 :goto_0

    .line 262
    :pswitch_0
    const-string v4, "oldPinCode"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mOldPin:Ljava/lang/String;

    .line 263
    const-string v4, "IccLockSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mOldPin  is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 267
    :pswitch_1
    const-string v4, "oldPinCode"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mOldPin:Ljava/lang/String;

    .line 268
    const-string v4, "newPinCode"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mNewPin:Ljava/lang/String;

    .line 269
    const-string v4, "IccLockSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mOldPin  is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const-string v4, "IccLockSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mNewPin   is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 260
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 375
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 376
    const-string v0, "IccLockSettings"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v0}, Lcom/mediatek/CellConnService/CellConnMgr;->unregister()V

    .line 378
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 365
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 366
    const-string v0, "IccLockSettings"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/GeminiIccLockSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 368
    return-void
.end method

.method public onPinEntered(Lcom/mediatek/gemini/GeminiEditPinPreference;Z)V
    .locals 4
    .parameter "preference"
    .parameter "positiveResult"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 461
    if-nez p2, :cond_0

    .line 462
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiIccLockSettings;->resetDialogState()V

    .line 504
    :goto_0
    return-void

    .line 466
    :cond_0
    invoke-virtual {p1}, Lcom/mediatek/gemini/GeminiEditPinPreference;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mPin:Ljava/lang/String;

    .line 467
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mPin:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mediatek/gemini/GeminiIccLockSettings;->reasonablePin(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 469
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c02d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mError:Ljava/lang/String;

    .line 470
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiIccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 473
    :cond_1
    iget v0, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mDialogState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 475
    :pswitch_0
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiIccLockSettings;->tryChangeIccLockState()V

    goto :goto_0

    .line 478
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mOldPin:Ljava/lang/String;

    .line 479
    iput v3, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mDialogState:I

    .line 480
    iput-object v2, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mError:Ljava/lang/String;

    .line 481
    iput-object v2, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mPin:Ljava/lang/String;

    .line 482
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiIccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 485
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mNewPin:Ljava/lang/String;

    .line 486
    const/4 v0, 0x4

    iput v0, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mDialogState:I

    .line 487
    iput-object v2, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mPin:Ljava/lang/String;

    .line 488
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiIccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 491
    :pswitch_3
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mPin:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 492
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c02d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mError:Ljava/lang/String;

    .line 493
    iput v3, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mDialogState:I

    .line 494
    iput-object v2, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mPin:Ljava/lang/String;

    .line 495
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiIccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 497
    :cond_2
    iput-object v2, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mError:Ljava/lang/String;

    .line 498
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiIccLockSettings;->tryChangePin()V

    goto :goto_0

    .line 473
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 507
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_2

    .line 509
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    iput-boolean v2, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mToState:Z

    .line 511
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    iget-boolean v3, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mToState:Z

    if-nez v3, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 512
    iput v1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mDialogState:I

    .line 513
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiIccLockSettings;->showPinDialog()V

    :cond_1
    move v0, v1

    .line 518
    :goto_0
    return v0

    .line 514
    :cond_2
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mPinDialog:Lcom/mediatek/gemini/GeminiEditPinPreference;

    if-ne p2, v2, :cond_1

    .line 515
    const/4 v1, 0x2

    iput v1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mDialogState:I

    goto :goto_0
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1f4

    .line 318
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 319
    const-string v1, "IccLockSettings"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const-string v1, "IccLockSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsShouldBeFinished: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mIsShouldBeFinished:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-boolean v1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mIsShouldBeFinished:Z

    if-eqz v1, :cond_0

    .line 323
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiIccLockSettings;->finish()V

    .line 361
    :goto_0
    return-void

    .line 326
    :cond_0
    iget-boolean v1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mIsUnlockFollow:Z

    if-nez v1, :cond_2

    .line 327
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mIsUnlockFollow:Z

    .line 328
    iget-object v1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 329
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiIccLockSettings;->getRetryPinCount()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiIccLockSettings;->getRetryPinCount()I

    move-result v1

    const/16 v2, -0x64

    if-ne v1, v2, :cond_3

    .line 330
    :cond_1
    const-string v1, "IccLockSettings"

    const-string v2, "OnResume: postDelay call - handleCellConn 1"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/mediatek/gemini/GeminiIccLockSettings$4;

    invoke-direct {v2, p0}, Lcom/mediatek/gemini/GeminiIccLockSettings$4;-><init>(Lcom/mediatek/gemini/GeminiIccLockSettings;)V

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 350
    :cond_2
    :goto_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 352
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 353
    iget-object v1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/gemini/GeminiIccLockSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 355
    iget v1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mDialogState:I

    if-eqz v1, :cond_4

    .line 356
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiIccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 339
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_3
    const-string v1, "IccLockSettings"

    const-string v2, "OnResume: postDelay call - handleCellConn 2"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/mediatek/gemini/GeminiIccLockSettings$5;

    invoke-direct {v2, p0}, Lcom/mediatek/gemini/GeminiIccLockSettings$5;-><init>(Lcom/mediatek/gemini/GeminiIccLockSettings;)V

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 359
    .restart local v0       #filter:Landroid/content/IntentFilter;
    :cond_4
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiIccLockSettings;->resetDialogState()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "out"

    .prologue
    .line 387
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mPinDialog:Lcom/mediatek/gemini/GeminiEditPinPreference;

    invoke-virtual {v0}, Lcom/mediatek/gemini/GeminiEditPinPreference;->isDialogOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    const-string v0, "dialogState"

    iget v1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mDialogState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 389
    const-string v0, "dialogPin"

    iget-object v1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mPinDialog:Lcom/mediatek/gemini/GeminiEditPinPreference;

    invoke-virtual {v1}, Lcom/mediatek/gemini/GeminiEditPinPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const-string v0, "dialogError"

    iget-object v1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const-string v0, "enableState"

    iget-boolean v1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mToState:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 392
    const-string v0, "sim_id"

    iget v1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mSimId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 395
    iget v0, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mDialogState:I

    packed-switch v0, :pswitch_data_0

    .line 413
    :goto_0
    return-void

    .line 397
    :pswitch_0
    const-string v0, "oldPinCode"

    iget-object v1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 401
    :pswitch_1
    const-string v0, "oldPinCode"

    iget-object v1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string v0, "newPinCode"

    iget-object v1, p0, Lcom/mediatek/gemini/GeminiIccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 411
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 395
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
