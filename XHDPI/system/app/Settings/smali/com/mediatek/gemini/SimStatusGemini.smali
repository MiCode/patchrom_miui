.class public Lcom/mediatek/gemini/SimStatusGemini;
.super Landroid/preference/PreferenceActivity;
.source "SimStatusGemini.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gemini/SimStatusGemini$AirplaneModeBroadcastReceiver;
    }
.end annotation


# static fields
.field private static sRes:Landroid/content/res/Resources;

.field private static sUnknown:Ljava/lang/String;


# instance fields
.field private mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

.field private mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

.field private mHandler:Landroid/os/Handler;

.field private mIsShouldBeFinished:Z

.field private mIsUnlockFollow:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mServiceComplete:Ljava/lang/Runnable;

.field private mServiceState:I

.field private mSignalStrength:Landroid/telephony/SignalStrength;

.field private mSignalStrengthPreference:Landroid/preference/Preference;

.field private mSimId:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 79
    iput-object v1, p0, Lcom/mediatek/gemini/SimStatusGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 90
    iput v0, p0, Lcom/mediatek/gemini/SimStatusGemini;->mSimId:I

    .line 91
    iput-boolean v0, p0, Lcom/mediatek/gemini/SimStatusGemini;->mIsUnlockFollow:Z

    .line 92
    iput-boolean v0, p0, Lcom/mediatek/gemini/SimStatusGemini;->mIsShouldBeFinished:Z

    .line 97
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mediatek/gemini/SimStatusGemini;->mHandler:Landroid/os/Handler;

    .line 99
    new-instance v0, Lcom/mediatek/gemini/SimStatusGemini$AirplaneModeBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/gemini/SimStatusGemini$AirplaneModeBroadcastReceiver;-><init>(Lcom/mediatek/gemini/SimStatusGemini;Lcom/mediatek/gemini/SimStatusGemini$1;)V

    iput-object v0, p0, Lcom/mediatek/gemini/SimStatusGemini;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 101
    new-instance v0, Lcom/mediatek/gemini/SimStatusGemini$1;

    invoke-direct {v0, p0}, Lcom/mediatek/gemini/SimStatusGemini$1;-><init>(Lcom/mediatek/gemini/SimStatusGemini;)V

    iput-object v0, p0, Lcom/mediatek/gemini/SimStatusGemini;->mServiceComplete:Ljava/lang/Runnable;

    .line 117
    new-instance v0, Lcom/mediatek/gemini/SimStatusGemini$2;

    invoke-direct {v0, p0}, Lcom/mediatek/gemini/SimStatusGemini$2;-><init>(Lcom/mediatek/gemini/SimStatusGemini;)V

    iput-object v0, p0, Lcom/mediatek/gemini/SimStatusGemini;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 397
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/gemini/SimStatusGemini;)Lcom/mediatek/CellConnService/CellConnMgr;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mediatek/gemini/SimStatusGemini;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mediatek/gemini/SimStatusGemini;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/mediatek/gemini/SimStatusGemini;->mIsShouldBeFinished:Z

    return p1
.end method

.method static synthetic access$302(Lcom/mediatek/gemini/SimStatusGemini;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/mediatek/gemini/SimStatusGemini;->mIsUnlockFollow:Z

    return p1
.end method

.method static synthetic access$400(Lcom/mediatek/gemini/SimStatusGemini;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/mediatek/gemini/SimStatusGemini;->updateDataState()V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/gemini/SimStatusGemini;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/mediatek/gemini/SimStatusGemini;->updateNetworkType()V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/gemini/SimStatusGemini;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/mediatek/gemini/SimStatusGemini;->mSimId:I

    return v0
.end method

.method static synthetic access$700(Lcom/mediatek/gemini/SimStatusGemini;)Landroid/telephony/SignalStrength;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mediatek/gemini/SimStatusGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object v0
.end method

.method static synthetic access$702(Lcom/mediatek/gemini/SimStatusGemini;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/mediatek/gemini/SimStatusGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object p1
.end method

.method static synthetic access$800(Lcom/mediatek/gemini/SimStatusGemini;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/mediatek/gemini/SimStatusGemini;->mServiceState:I

    return v0
.end method

.method static synthetic access$802(Lcom/mediatek/gemini/SimStatusGemini;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput p1, p0, Lcom/mediatek/gemini/SimStatusGemini;->mServiceState:I

    return p1
.end method

.method static synthetic access$900(Lcom/mediatek/gemini/SimStatusGemini;Landroid/telephony/ServiceState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/mediatek/gemini/SimStatusGemini;->updateServiceState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method private dealWith3AppLaunch()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 423
    invoke-static {p0}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 425
    .local v1, simList:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 426
    const/4 v2, -0x1

    .line 437
    .local v2, slotID:I
    :cond_0
    :goto_0
    const-string v4, "Gemini_SimStatus"

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

    .line 438
    return v2

    .line 427
    .end local v2           #slotID:I
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 428
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/provider/Telephony$SIMInfo;

    iget v2, v4, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    .restart local v2       #slotID:I
    goto :goto_0

    .line 430
    .end local v2           #slotID:I
    :cond_2
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/provider/Telephony$SIMInfo;

    iget v2, v4, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    .line 431
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

    .line 432
    .local v3, temp:Landroid/provider/Telephony$SIMInfo;
    iget v4, v3, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-le v2, v4, :cond_3

    .line 433
    iget v2, v3, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    goto :goto_1
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "preference"
    .parameter "text"

    .prologue
    .line 268
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimStatusGemini;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 272
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mediatek/gemini/SimStatusGemini;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 273
    .local v0, p:Landroid/preference/Preference;
    if-eqz v0, :cond_1

    .line 274
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 276
    :cond_1
    return-void
.end method

.method private updateDataState()V
    .locals 4

    .prologue
    .line 289
    iget-object v2, p0, Lcom/mediatek/gemini/SimStatusGemini;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    iget v3, p0, Lcom/mediatek/gemini/SimStatusGemini;->mSimId:I

    invoke-virtual {v2, v3}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDataState(I)I

    move-result v1

    .line 290
    .local v1, state:I
    sget-object v2, Lcom/mediatek/gemini/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f0c002b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, display:Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 309
    :goto_0
    const-string v2, "data_state"

    invoke-direct {p0, v2, v0}, Lcom/mediatek/gemini/SimStatusGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    return-void

    .line 294
    :pswitch_0
    sget-object v2, Lcom/mediatek/gemini/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f0c0029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 295
    goto :goto_0

    .line 297
    :pswitch_1
    sget-object v2, Lcom/mediatek/gemini/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f0c002a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 298
    goto :goto_0

    .line 300
    :pswitch_2
    sget-object v2, Lcom/mediatek/gemini/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f0c0028

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 301
    goto :goto_0

    .line 303
    :pswitch_3
    sget-object v2, Lcom/mediatek/gemini/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f0c0027

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 304
    goto :goto_0

    .line 292
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateNetworkType()V
    .locals 4

    .prologue
    .line 280
    iget-object v2, p0, Lcom/mediatek/gemini/SimStatusGemini;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v3, p0, Lcom/mediatek/gemini/SimStatusGemini;->mSimId:I

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getNetworkTypeNameGemini(I)Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, netWorkTypeName:Ljava/lang/String;
    const-string v2, "network_type"

    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/SimStatusGemini;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 282
    .local v1, p:Landroid/preference/Preference;
    if-eqz v1, :cond_1

    .line 283
    const-string v2, "UNKNOWN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/mediatek/gemini/SimStatusGemini;->sUnknown:Ljava/lang/String;

    .end local v0           #netWorkTypeName:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 286
    :cond_1
    return-void
.end method

.method private updateServiceState(Landroid/telephony/ServiceState;)V
    .locals 5
    .parameter "serviceState"

    .prologue
    .line 314
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 315
    .local v1, state:I
    sget-object v2, Lcom/mediatek/gemini/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f0c002b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, display:Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 334
    :goto_0
    const-string v2, "service_state"

    invoke-direct {p0, v2, v0}, Lcom/mediatek/gemini/SimStatusGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 337
    const-string v2, "roaming_state"

    sget-object v3, Lcom/mediatek/gemini/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v4, 0x7f0c0022

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/mediatek/gemini/SimStatusGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    :goto_1
    const-string v2, "operator_name"

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/mediatek/gemini/SimStatusGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    return-void

    .line 319
    :pswitch_0
    sget-object v2, Lcom/mediatek/gemini/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f0c001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 320
    goto :goto_0

    .line 322
    :pswitch_1
    sget-object v2, Lcom/mediatek/gemini/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f0c001f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 323
    goto :goto_0

    .line 325
    :pswitch_2
    sget-object v2, Lcom/mediatek/gemini/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f0c0020

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 326
    goto :goto_0

    .line 328
    :pswitch_3
    sget-object v2, Lcom/mediatek/gemini/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f0c0021

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 329
    goto :goto_0

    .line 339
    :cond_0
    const-string v2, "roaming_state"

    sget-object v3, Lcom/mediatek/gemini/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v4, 0x7f0c0023

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/mediatek/gemini/SimStatusGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 317
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/4 v7, -0x1

    .line 149
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 150
    new-instance v4, Lcom/mediatek/CellConnService/CellConnMgr;

    iget-object v5, p0, Lcom/mediatek/gemini/SimStatusGemini;->mServiceComplete:Ljava/lang/Runnable;

    invoke-direct {v4, v5}, Lcom/mediatek/CellConnService/CellConnMgr;-><init>(Ljava/lang/Runnable;)V

    iput-object v4, p0, Lcom/mediatek/gemini/SimStatusGemini;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    .line 151
    iget-object v4, p0, Lcom/mediatek/gemini/SimStatusGemini;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v4, p0}, Lcom/mediatek/CellConnService/CellConnMgr;->register(Landroid/content/Context;)V

    .line 152
    const v4, 0x7f060022

    invoke-virtual {p0, v4}, Lcom/mediatek/gemini/SimStatusGemini;->addPreferencesFromResource(I)V

    .line 155
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimStatusGemini;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 156
    .local v0, it:Landroid/content/Intent;
    const-string v4, "slotid"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/mediatek/gemini/SimStatusGemini;->mSimId:I

    .line 157
    const-string v4, "Gemini_SimStatus"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mSimId is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/gemini/SimStatusGemini;->mSimId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget v4, p0, Lcom/mediatek/gemini/SimStatusGemini;->mSimId:I

    if-ne v4, v7, :cond_0

    .line 162
    invoke-direct {p0}, Lcom/mediatek/gemini/SimStatusGemini;->dealWith3AppLaunch()I

    move-result v4

    iput v4, p0, Lcom/mediatek/gemini/SimStatusGemini;->mSimId:I

    .line 165
    :cond_0
    iget v4, p0, Lcom/mediatek/gemini/SimStatusGemini;->mSimId:I

    invoke-static {p0, v4}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v3

    .line 166
    .local v3, simInfo:Landroid/provider/Telephony$SIMInfo;
    invoke-static {p0}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMCount(Landroid/content/Context;)I

    move-result v1

    .line 167
    .local v1, simCount:I
    const/4 v2, 0x0

    .line 168
    .local v2, simDisplayName:Ljava/lang/String;
    const/4 v4, 0x1

    if-le v1, v4, :cond_1

    if-eqz v3, :cond_1

    .line 169
    iget-object v2, v3, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    .line 171
    :cond_1
    if-eqz v2, :cond_2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 172
    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/SimStatusGemini;->setTitle(Ljava/lang/CharSequence;)V

    .line 175
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimStatusGemini;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sput-object v4, Lcom/mediatek/gemini/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    .line 176
    sget-object v4, Lcom/mediatek/gemini/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v5, 0x7f0c000b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/mediatek/gemini/SimStatusGemini;->sUnknown:Ljava/lang/String;

    .line 177
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Lcom/mediatek/gemini/SimStatusGemini;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/mediatek/gemini/SimStatusGemini;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 178
    new-instance v4, Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-direct {v4, p0}, Lcom/mediatek/telephony/TelephonyManagerEx;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/mediatek/gemini/SimStatusGemini;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    .line 179
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iput-object v4, p0, Lcom/mediatek/gemini/SimStatusGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 182
    const-string v4, "signal_strength"

    invoke-virtual {p0, v4}, Lcom/mediatek/gemini/SimStatusGemini;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/gemini/SimStatusGemini;->mSignalStrengthPreference:Landroid/preference/Preference;

    .line 183
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/mediatek/gemini/SimStatusGemini;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v0}, Lcom/mediatek/CellConnService/CellConnMgr;->unregister()V

    .line 187
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 188
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 236
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 237
    iget-boolean v0, p0, Lcom/mediatek/gemini/SimStatusGemini;->mIsShouldBeFinished:Z

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimStatusGemini;->finish()V

    .line 244
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/mediatek/gemini/SimStatusGemini;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/SimStatusGemini;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 243
    iget-object v0, p0, Lcom/mediatek/gemini/SimStatusGemini;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/mediatek/gemini/SimStatusGemini;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 8

    .prologue
    .line 192
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 193
    iget-boolean v4, p0, Lcom/mediatek/gemini/SimStatusGemini;->mIsShouldBeFinished:Z

    if-eqz v4, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimStatusGemini;->finish()V

    .line 232
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-boolean v4, p0, Lcom/mediatek/gemini/SimStatusGemini;->mIsUnlockFollow:Z

    if-nez v4, :cond_1

    .line 198
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/mediatek/gemini/SimStatusGemini;->mIsUnlockFollow:Z

    .line 199
    iget-object v4, p0, Lcom/mediatek/gemini/SimStatusGemini;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/mediatek/gemini/SimStatusGemini$3;

    invoke-direct {v5, p0}, Lcom/mediatek/gemini/SimStatusGemini$3;-><init>(Lcom/mediatek/gemini/SimStatusGemini;)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 206
    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 208
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 209
    iget-object v4, p0, Lcom/mediatek/gemini/SimStatusGemini;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/mediatek/gemini/SimStatusGemini;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 211
    iget-object v4, p0, Lcom/mediatek/gemini/SimStatusGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v5, p0, Lcom/mediatek/gemini/SimStatusGemini;->mSimId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getLine1NumberGemini(I)Ljava/lang/String;

    move-result-object v2

    .line 213
    .local v2, rawNumber:Ljava/lang/String;
    const/4 v0, 0x0

    .line 214
    .local v0, formattedNumber:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 215
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    :cond_2
    const-string v4, "number"

    invoke-direct {p0, v4, v0}, Lcom/mediatek/gemini/SimStatusGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-direct {p0}, Lcom/mediatek/gemini/SimStatusGemini;->updateDataState()V

    .line 222
    iget-object v4, p0, Lcom/mediatek/gemini/SimStatusGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v5, p0, Lcom/mediatek/gemini/SimStatusGemini;->mSimId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getServiceStateGemini(I)Landroid/telephony/ServiceState;

    move-result-object v3

    .line 223
    .local v3, serviceState:Landroid/telephony/ServiceState;
    invoke-direct {p0, v3}, Lcom/mediatek/gemini/SimStatusGemini;->updateServiceState(Landroid/telephony/ServiceState;)V

    .line 224
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    iput v4, p0, Lcom/mediatek/gemini/SimStatusGemini;->mServiceState:I

    .line 225
    iget-object v4, p0, Lcom/mediatek/gemini/SimStatusGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v5, p0, Lcom/mediatek/gemini/SimStatusGemini;->mSimId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getSignalStrengthGemini(I)Landroid/telephony/SignalStrength;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/gemini/SimStatusGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 226
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimStatusGemini;->updateSignalStrength()V

    .line 227
    iget-object v4, p0, Lcom/mediatek/gemini/SimStatusGemini;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    iget-object v5, p0, Lcom/mediatek/gemini/SimStatusGemini;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v6, 0x141

    iget v7, p0, Lcom/mediatek/gemini/SimStatusGemini;->mSimId:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/mediatek/telephony/TelephonyManagerEx;->listen(Landroid/telephony/PhoneStateListener;II)V

    goto :goto_0
.end method

.method updateSignalStrength()V
    .locals 11

    .prologue
    const v10, 0x7f0c002e

    const/4 v5, 0x0

    const/4 v9, -0x1

    .line 345
    const-string v6, "Gemini_SimStatus"

    const-string v7, "updateSignalStrength()"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v6, p0, Lcom/mediatek/gemini/SimStatusGemini;->mSignalStrengthPreference:Landroid/preference/Preference;

    if-eqz v6, :cond_4

    .line 351
    const-string v6, "Gemini_SimStatus"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ServiceState : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/mediatek/gemini/SimStatusGemini;->mServiceState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const/4 v6, 0x1

    iget v7, p0, Lcom/mediatek/gemini/SimStatusGemini;->mServiceState:I

    if-eq v6, v7, :cond_0

    const/4 v6, 0x3

    iget v7, p0, Lcom/mediatek/gemini/SimStatusGemini;->mServiceState:I

    if-ne v6, v7, :cond_1

    .line 354
    :cond_0
    const-string v6, "Gemini_SimStatus"

    const-string v7, "ServiceState is Not ready, set signalStrength 0"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v6, p0, Lcom/mediatek/gemini/SimStatusGemini;->mSignalStrengthPreference:Landroid/preference/Preference;

    const-string v7, "0"

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 358
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimStatusGemini;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 359
    .local v1, r:Landroid/content/res/Resources;
    const/4 v0, 0x1

    .line 360
    .local v0, isGsmSignal:Z
    const/4 v3, 0x0

    .line 361
    .local v3, signalDbm:I
    const/4 v2, 0x0

    .line 362
    .local v2, signalAsu:I
    const/4 v4, 0x0

    .line 363
    .local v4, signalDbmEvdo:I
    iget-object v6, p0, Lcom/mediatek/gemini/SimStatusGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v6, :cond_3

    .line 364
    iget-object v6, p0, Lcom/mediatek/gemini/SimStatusGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v6}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    .line 365
    if-eqz v0, :cond_5

    .line 366
    iget-object v6, p0, Lcom/mediatek/gemini/SimStatusGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v6}, Landroid/telephony/SignalStrength;->getGsmSignalStrengthDbm()I

    move-result v3

    .line 367
    iget-object v6, p0, Lcom/mediatek/gemini/SimStatusGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v6}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v2

    .line 368
    const-string v6, "Gemini_SimStatus"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SignalStrength is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " dbm , "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " asu"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    if-ne v9, v3, :cond_2

    move v3, v5

    .line 370
    :cond_2
    if-ne v9, v2, :cond_3

    move v2, v5

    .line 380
    :cond_3
    :goto_0
    if-eqz v0, :cond_8

    .line 381
    const-string v5, "Gemini_SimStatus"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SignalStrength is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dbm , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " asu"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v5, p0, Lcom/mediatek/gemini/SimStatusGemini;->mSignalStrengthPreference:Landroid/preference/Preference;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0c002f

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 395
    .end local v0           #isGsmSignal:Z
    .end local v1           #r:Landroid/content/res/Resources;
    .end local v2           #signalAsu:I
    .end local v3           #signalDbm:I
    .end local v4           #signalDbmEvdo:I
    :cond_4
    :goto_1
    return-void

    .line 372
    .restart local v0       #isGsmSignal:Z
    .restart local v1       #r:Landroid/content/res/Resources;
    .restart local v2       #signalAsu:I
    .restart local v3       #signalDbm:I
    .restart local v4       #signalDbmEvdo:I
    :cond_5
    iget-object v6, p0, Lcom/mediatek/gemini/SimStatusGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v6}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v3

    .line 373
    iget-object v6, p0, Lcom/mediatek/gemini/SimStatusGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v6}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v4

    .line 374
    const-string v6, "Gemini_SimStatus"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SignalStrength is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " dbm , "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " dbm"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    if-ne v9, v3, :cond_6

    move v3, v5

    .line 376
    :cond_6
    if-ne v9, v4, :cond_7

    move v4, v5

    :cond_7
    goto/16 :goto_0

    .line 387
    :cond_8
    const-string v5, "Gemini_SimStatus"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SignalStrength is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dbm , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dbm"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v5, p0, Lcom/mediatek/gemini/SimStatusGemini;->mSignalStrengthPreference:Landroid/preference/Preference;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0c0b34

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method
