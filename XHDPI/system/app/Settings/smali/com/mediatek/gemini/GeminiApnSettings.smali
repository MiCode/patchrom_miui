.class public Lcom/mediatek/gemini/GeminiApnSettings;
.super Landroid/preference/PreferenceActivity;
.source "GeminiApnSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gemini/GeminiApnSettings$5;,
        Lcom/mediatek/gemini/GeminiApnSettings$RestoreApnProcessHandler;,
        Lcom/mediatek/gemini/GeminiApnSettings$RestoreApnUiHandler;
    }
.end annotation


# static fields
.field protected static final DEFAULTAPN_URI:Landroid/net/Uri;

.field private static final DEFAULTAPN_URI_GEMINI_SIM1:Landroid/net/Uri;

.field private static final DEFAULTAPN_URI_GEMINI_SIM2:Landroid/net/Uri;

.field private static final PREFERAPN_URI:Landroid/net/Uri;

.field private static final PREFERAPN_URI_GEMINI_SIM1:Landroid/net/Uri;

.field private static final PREFERAPN_URI_GEMINI_SIM2:Landroid/net/Uri;

.field private static sNotInMmsTransation:Z


# instance fields
.field protected mAirplaneModeEnabled:Z

.field protected mDefaultApnUri:Landroid/net/Uri;

.field private mDualSimMode:I

.field private mExt:Lcom/android/settings/ext/ISettingsMiscExt;

.field private mIMSI:Ljava/lang/String;

.field protected mIsCallStateIdle:Z

.field private mIsTetehred:Z

.field protected mIsTetherApn:Z

.field private mListener:Lcom/android/settings/ext/IRcseOnlyApnExtension$OnRcseOnlyApnStateChangedListener;

.field private mMobileStateFilter:Landroid/content/IntentFilter;

.field private final mMobileStateReceiver:Landroid/content/BroadcastReceiver;

.field protected mNumeric:Ljava/lang/String;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPnn:Ljava/lang/String;

.field private mRcseExt:Lcom/android/settings/ext/IRcseOnlyApnExtension;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRestoreApnProcessHandler:Lcom/mediatek/gemini/GeminiApnSettings$RestoreApnProcessHandler;

.field private mRestoreApnUiHandler:Lcom/mediatek/gemini/GeminiApnSettings$RestoreApnUiHandler;

.field protected mRestoreCarrierUri:Landroid/net/Uri;

.field protected mRestoreDefaultApnMode:Z

.field private mRestoreDefaultApnThread:Landroid/os/HandlerThread;

.field protected mSelectableApnCount:I

.field protected mSelectedKey:Ljava/lang/String;

.field protected mSimId:I

.field private mSpn:Ljava/lang/String;

.field protected mTelephonyManager:Landroid/telephony/TelephonyManager;

.field protected mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 117
    const-string v0, "content://telephony/carriers/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/gemini/GeminiApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    .line 118
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/gemini/GeminiApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    .line 121
    const-string v0, "content://telephony/carriers_sim1/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/gemini/GeminiApnSettings;->DEFAULTAPN_URI_GEMINI_SIM1:Landroid/net/Uri;

    .line 122
    const-string v0, "content://telephony/carriers_sim2/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/gemini/GeminiApnSettings;->DEFAULTAPN_URI_GEMINI_SIM2:Landroid/net/Uri;

    .line 124
    const-string v0, "content://telephony/carriers_sim1/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/gemini/GeminiApnSettings;->PREFERAPN_URI_GEMINI_SIM1:Landroid/net/Uri;

    .line 125
    const-string v0, "content://telephony/carriers_sim2/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/gemini/GeminiApnSettings;->PREFERAPN_URI_GEMINI_SIM2:Landroid/net/Uri;

    .line 143
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/gemini/GeminiApnSettings;->sNotInMmsTransation:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mIsCallStateIdle:Z

    .line 130
    iput-boolean v1, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mAirplaneModeEnabled:Z

    .line 131
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mDualSimMode:I

    .line 133
    iput v1, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mSelectableApnCount:I

    .line 136
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mSpn:Ljava/lang/String;

    .line 137
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mIMSI:Ljava/lang/String;

    .line 138
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mPnn:Ljava/lang/String;

    .line 163
    iput-boolean v1, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mIsTetherApn:Z

    .line 164
    iput-boolean v1, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mIsTetehred:Z

    .line 168
    new-instance v0, Lcom/mediatek/gemini/GeminiApnSettings$1;

    invoke-direct {v0, p0}, Lcom/mediatek/gemini/GeminiApnSettings$1;-><init>(Lcom/mediatek/gemini/GeminiApnSettings;)V

    iput-object v0, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mListener:Lcom/android/settings/ext/IRcseOnlyApnExtension$OnRcseOnlyApnStateChangedListener;

    .line 176
    new-instance v0, Lcom/mediatek/gemini/GeminiApnSettings$2;

    invoke-direct {v0, p0}, Lcom/mediatek/gemini/GeminiApnSettings$2;-><init>(Lcom/mediatek/gemini/GeminiApnSettings;)V

    iput-object v0, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    .line 252
    new-instance v0, Lcom/mediatek/gemini/GeminiApnSettings$3;

    invoke-direct {v0, p0}, Lcom/mediatek/gemini/GeminiApnSettings$3;-><init>(Lcom/mediatek/gemini/GeminiApnSettings;)V

    iput-object v0, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 793
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/gemini/GeminiApnSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/mediatek/gemini/GeminiApnSettings;->fillList(I)V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    invoke-static {p0}, Lcom/mediatek/gemini/GeminiApnSettings;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    sput-boolean p0, Lcom/mediatek/gemini/GeminiApnSettings;->sNotInMmsTransation:Z

    return p0
.end method

.method static synthetic access$200(Lcom/mediatek/gemini/GeminiApnSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mDualSimMode:I

    return v0
.end method

.method static synthetic access$202(Lcom/mediatek/gemini/GeminiApnSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput p1, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mDualSimMode:I

    return p1
.end method

.method static synthetic access$300(Lcom/mediatek/gemini/GeminiApnSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mSpn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/gemini/GeminiApnSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mIMSI:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/gemini/GeminiApnSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mPnn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/gemini/GeminiApnSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiApnSettings;->initSimState()V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/gemini/GeminiApnSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiApnSettings;->setSpn()V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/gemini/GeminiApnSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiApnSettings;->setIMSI()V

    return-void
.end method

.method static synthetic access$900(Lcom/mediatek/gemini/GeminiApnSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiApnSettings;->setPnn()V

    return-void
.end method

.method private fillList(I)V
    .locals 26
    .parameter "simId"

    .prologue
    .line 548
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/gemini/GeminiApnSettings;->getFillListQuery()Ljava/lang/String;

    move-result-object v5

    .line 549
    .local v5, where:Ljava/lang/String;
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fillList where: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/gemini/GeminiApnSettings;->mUri:Landroid/net/Uri;

    if-nez v2, :cond_0

    .line 552
    const-string v2, "ApnSettings"

    const-string v3, "fillList, mUri null !"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/gemini/GeminiApnSettings;->finish()V

    .line 660
    :goto_0
    return-void

    .line 556
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/gemini/GeminiApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/gemini/GeminiApnSettings;->mUri:Landroid/net/Uri;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "name"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const-string v7, "apn"

    aput-object v7, v4, v6

    const/4 v6, 0x3

    const-string v7, "type"

    aput-object v7, v4, v6

    const/4 v6, 0x4

    const-string v7, "sourcetype"

    aput-object v7, v4, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 559
    .local v11, cursor:Landroid/database/Cursor;
    const-string v2, "apn_general_list"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/gemini/GeminiApnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceGroup;

    .line 560
    .local v9, apnList:Landroid/preference/PreferenceGroup;
    invoke-virtual {v9}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 562
    const-string v2, "apn_mms_list"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/gemini/GeminiApnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/PreferenceGroup;

    .line 563
    .local v18, mmsList:Landroid/preference/PreferenceGroup;
    invoke-virtual/range {v18 .. v18}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 565
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 567
    .local v17, mmsApnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    const/16 v16, 0x0

    .line 569
    .local v16, keySetChecked:Z
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/gemini/GeminiApnSettings;->getSelectedApnKey()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/gemini/GeminiApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 570
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fillList : mSelectedKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/gemini/GeminiApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 574
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_b

    .line 575
    const/4 v2, 0x3

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 577
    .local v25, type:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/mediatek/gemini/GeminiApnSettings;->mIsTetherApn:Z

    if-eqz v2, :cond_1

    const-string v2, "tethering"

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 578
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 582
    :cond_1
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 583
    .local v19, name:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 584
    .local v8, apn:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 586
    .local v15, key:Ljava/lang/String;
    const/4 v2, 0x4

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 588
    .local v24, sourcetype:I
    const-string v2, "cmmail"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v24, :cond_2

    .line 589
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 592
    :cond_2
    const-string v2, "rcse"

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/gemini/GeminiApnSettings;->mRcseExt:Lcom/android/settings/ext/IRcseOnlyApnExtension;

    if-eqz v2, :cond_4

    .line 593
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/gemini/GeminiApnSettings;->mRcseExt:Lcom/android/settings/ext/IRcseOnlyApnExtension;

    invoke-interface {v2}, Lcom/android/settings/ext/IRcseOnlyApnExtension;->isRcseOnlyApnEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 594
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 595
    const-string v2, "ApnSettings"

    const-string v3, "Vodafone not matched"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 598
    :cond_3
    const-string v2, "ApnSettings"

    const-string v3, "Vodafone matched"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :cond_4
    new-instance v20, Lcom/mediatek/gemini/GeminiApnPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/mediatek/gemini/GeminiApnPreference;-><init>(Landroid/content/Context;)V

    .line 604
    .local v20, pref:Lcom/mediatek/gemini/GeminiApnPreference;
    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/mediatek/gemini/GeminiApnPreference;->setSimId(I)V

    .line 605
    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lcom/mediatek/gemini/GeminiApnPreference;->setKey(Ljava/lang/String;)V

    .line 606
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/mediatek/gemini/GeminiApnPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 607
    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Lcom/mediatek/gemini/GeminiApnPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 608
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/mediatek/gemini/GeminiApnPreference;->setPersistent(Z)V

    .line 609
    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/mediatek/gemini/GeminiApnPreference;->setSourceType(I)V

    .line 610
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/mediatek/gemini/GeminiApnPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 612
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/gemini/GeminiApnSettings;->mExt:Lcom/android/settings/ext/ISettingsMiscExt;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/gemini/GeminiApnSettings;->mNumeric:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-interface {v2, v0, v8, v3}, Lcom/android/settings/ext/ISettingsMiscExt;->isAllowEditPresetApn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    .line 613
    .local v14, isEditable:Z
    if-nez v24, :cond_5

    if-eqz v14, :cond_7

    :cond_5
    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/mediatek/gemini/GeminiApnPreference;->setApnEditable(Z)V

    .line 616
    const/16 v22, 0x1

    .line 617
    .local v22, selectable:Z
    const-string v2, "tethering"

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 618
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mediatek/gemini/GeminiApnSettings;->mIsTetherApn:Z

    move/from16 v22, v0

    .line 622
    :goto_3
    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/mediatek/gemini/GeminiApnPreference;->setSelectable(Z)V

    .line 624
    if-eqz v22, :cond_a

    .line 625
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/gemini/GeminiApnSettings;->mSelectedKey:Ljava/lang/String;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/gemini/GeminiApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 626
    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/mediatek/gemini/GeminiApnPreference;->setChecked(Z)V

    .line 627
    const/16 v16, 0x1

    .line 628
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apn key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " set."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :cond_6
    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 631
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " added!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :goto_4
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_1

    .line 613
    .end local v22           #selectable:Z
    :cond_7
    const/4 v2, 0x0

    goto :goto_2

    .line 620
    .restart local v22       #selectable:Z
    :cond_8
    const-string v2, "mms"

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const/16 v22, 0x1

    :goto_5
    goto :goto_3

    :cond_9
    const/16 v22, 0x0

    goto :goto_5

    .line 633
    :cond_a
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 637
    .end local v8           #apn:Ljava/lang/String;
    .end local v14           #isEditable:Z
    .end local v15           #key:Ljava/lang/String;
    .end local v19           #name:Ljava/lang/String;
    .end local v20           #pref:Lcom/mediatek/gemini/GeminiApnPreference;
    .end local v22           #selectable:Z
    .end local v24           #sourcetype:I
    .end local v25           #type:Ljava/lang/String;
    :cond_b
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 639
    invoke-virtual {v9}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mediatek/gemini/GeminiApnSettings;->mSelectableApnCount:I

    .line 641
    if-nez v16, :cond_d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/gemini/GeminiApnSettings;->mSelectableApnCount:I

    if-lez v2, :cond_d

    .line 642
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/gemini/GeminiApnSettings;->mSelectableApnCount:I

    new-array v0, v2, [I

    move-object/from16 v23, v0

    .line 643
    .local v23, sourceTypeArray:[I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/gemini/GeminiApnSettings;->mSelectableApnCount:I

    if-ge v12, v2, :cond_c

    .line 644
    invoke-virtual {v9, v12}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/mediatek/gemini/GeminiApnPreference;

    invoke-virtual {v2}, Lcom/mediatek/gemini/GeminiApnPreference;->getSourceType()I

    move-result v2

    aput v2, v23, v12

    .line 643
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 646
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/gemini/GeminiApnSettings;->mExt:Lcom/android/settings/ext/ISettingsMiscExt;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mediatek/gemini/GeminiApnSettings;->mSelectableApnCount:I

    move-object/from16 v0, v23

    invoke-interface {v2, v9, v3, v0}, Lcom/android/settings/ext/ISettingsMiscExt;->getApnPref(Landroid/preference/PreferenceGroup;I[I)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/mediatek/gemini/GeminiApnPreference;

    .line 647
    .local v10, apnPref:Lcom/mediatek/gemini/GeminiApnPreference;
    if-eqz v10, :cond_d

    .line 648
    invoke-virtual {v10}, Lcom/mediatek/gemini/GeminiApnPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/gemini/GeminiApnSettings;->setSelectedApnKey(Ljava/lang/String;)V

    .line 649
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Lcom/mediatek/gemini/GeminiApnPreference;->setChecked(Z)V

    .line 650
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Key does not match.Set key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Lcom/mediatek/gemini/GeminiApnPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    .end local v10           #apnPref:Lcom/mediatek/gemini/GeminiApnPreference;
    .end local v12           #i:I
    .end local v23           #sourceTypeArray:[I
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/mediatek/gemini/GeminiApnSettings;->mIsTetherApn:Z

    if-nez v2, :cond_e

    .line 655
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/preference/Preference;

    .line 656
    .local v21, preference:Landroid/preference/Preference;
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_7

    .line 659
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v21           #preference:Landroid/preference/Preference;
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/gemini/GeminiApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/gemini/GeminiApnSettings;->getScreenEnableState()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method private static getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 2
    .parameter

    .prologue
    .line 263
    const-string v0, "state"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    if-eqz v0, :cond_0

    .line 265
    const-class v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 267
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0
.end method

.method private getSelectedApnKey()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 737
    .line 739
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mRestoreCarrierUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v6

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 741
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 742
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 743
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 745
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 746
    return-object v3
.end method

.method private initSimState()V
    .locals 6

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiApnSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 332
    .local v1, it:Landroid/content/Intent;
    const-string v3, "simId"

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mSimId:I

    .line 333
    invoke-static {p0}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMCount(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 334
    iget v3, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mSimId:I

    invoke-static {p0, v3}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v2

    .line 335
    .local v2, siminfo:Landroid/provider/Telephony$SIMInfo;
    if-eqz v2, :cond_0

    .line 336
    iget-object v3, v2, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/mediatek/gemini/GeminiApnSettings;->setTitle(Ljava/lang/CharSequence;)V

    .line 339
    .end local v2           #siminfo:Landroid/provider/Telephony$SIMInfo;
    :cond_0
    const-string v3, "ApnSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GEMINI_SIM_ID_KEY = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mSimId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget v3, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mSimId:I

    packed-switch v3, :pswitch_data_0

    .line 365
    const-string v3, "ApnSettings"

    const-string v4, "Incorrect sim id "

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 368
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "com.android.phone"

    const-string v4, "com.mediatek.settings.MultipleSimActivity"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    const-string v3, "TARGET_CLASS"

    const-string v4, "com.android.settings.ApnSettings"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 370
    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/GeminiApnSettings;->startActivity(Landroid/content/Intent;)V

    .line 372
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiApnSettings;->finish()V

    .line 376
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    const-string v3, "ApnSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mNumeric "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mNumeric:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const-string v3, "ApnSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mUri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    return-void

    .line 346
    :pswitch_0
    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    iput-object v3, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mUri:Landroid/net/Uri;

    .line 347
    const-string v3, "gsm.sim.operator.numeric"

    const-string v4, "-1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mNumeric:Ljava/lang/String;

    .line 348
    sget-object v3, Lcom/mediatek/gemini/GeminiApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    iput-object v3, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mDefaultApnUri:Landroid/net/Uri;

    .line 349
    sget-object v3, Lcom/mediatek/gemini/GeminiApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    iput-object v3, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mRestoreCarrierUri:Landroid/net/Uri;

    goto :goto_0

    .line 352
    :pswitch_1
    sget-object v3, Landroid/provider/Telephony$Carriers$SIM1Carriers;->CONTENT_URI:Landroid/net/Uri;

    iput-object v3, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mUri:Landroid/net/Uri;

    .line 353
    const-string v3, "gsm.sim.operator.numeric"

    const-string v4, "-1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mNumeric:Ljava/lang/String;

    .line 354
    sget-object v3, Lcom/mediatek/gemini/GeminiApnSettings;->DEFAULTAPN_URI_GEMINI_SIM1:Landroid/net/Uri;

    iput-object v3, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mDefaultApnUri:Landroid/net/Uri;

    .line 355
    sget-object v3, Lcom/mediatek/gemini/GeminiApnSettings;->PREFERAPN_URI_GEMINI_SIM1:Landroid/net/Uri;

    iput-object v3, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mRestoreCarrierUri:Landroid/net/Uri;

    goto :goto_0

    .line 358
    :pswitch_2
    sget-object v3, Landroid/provider/Telephony$Carriers$SIM2Carriers;->CONTENT_URI:Landroid/net/Uri;

    iput-object v3, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mUri:Landroid/net/Uri;

    .line 359
    const-string v3, "gsm.sim.operator.numeric.2"

    const-string v4, "-1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mNumeric:Ljava/lang/String;

    .line 360
    sget-object v3, Lcom/mediatek/gemini/GeminiApnSettings;->DEFAULTAPN_URI_GEMINI_SIM2:Landroid/net/Uri;

    iput-object v3, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mDefaultApnUri:Landroid/net/Uri;

    .line 361
    sget-object v3, Lcom/mediatek/gemini/GeminiApnSettings;->PREFERAPN_URI_GEMINI_SIM2:Landroid/net/Uri;

    iput-object v3, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mRestoreCarrierUri:Landroid/net/Uri;

    goto :goto_0

    .line 344
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private isMMSNotTransaction()Z
    .locals 7

    .prologue
    .line 398
    const/4 v1, 0x1

    .line 399
    .local v1, isMMSNotProcess:Z
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/mediatek/gemini/GeminiApnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 400
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 401
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 402
    .local v2, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 403
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 404
    .local v3, state:Landroid/net/NetworkInfo$State;
    const-string v4, "ApnSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mms state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-eq v3, v4, :cond_1

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v3, v4, :cond_1

    const/4 v1, 0x1

    .line 409
    .end local v2           #networkInfo:Landroid/net/NetworkInfo;
    .end local v3           #state:Landroid/net/NetworkInfo$State;
    :cond_0
    :goto_0
    return v1

    .line 405
    .restart local v2       #networkInfo:Landroid/net/NetworkInfo;
    .restart local v3       #state:Landroid/net/NetworkInfo$State;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private restoreDefaultApn()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 750
    const-string v0, "ApnSettings"

    const-string v1, "restore Default Apn."

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/GeminiApnSettings;->showDialog(I)V

    .line 752
    iput-boolean v3, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mRestoreDefaultApnMode:Z

    .line 754
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mRestoreApnUiHandler:Lcom/mediatek/gemini/GeminiApnSettings$RestoreApnUiHandler;

    if-nez v0, :cond_0

    .line 755
    new-instance v0, Lcom/mediatek/gemini/GeminiApnSettings$RestoreApnUiHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/gemini/GeminiApnSettings$RestoreApnUiHandler;-><init>(Lcom/mediatek/gemini/GeminiApnSettings;Lcom/mediatek/gemini/GeminiApnSettings$1;)V

    iput-object v0, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mRestoreApnUiHandler:Lcom/mediatek/gemini/GeminiApnSettings$RestoreApnUiHandler;

    .line 758
    :cond_0
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mRestoreApnProcessHandler:Lcom/mediatek/gemini/GeminiApnSettings$RestoreApnProcessHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_2

    .line 760
    :cond_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Restore default APN Handler: Process Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    .line 762
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 763
    new-instance v0, Lcom/mediatek/gemini/GeminiApnSettings$RestoreApnProcessHandler;

    iget-object v1, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mRestoreApnUiHandler:Lcom/mediatek/gemini/GeminiApnSettings$RestoreApnUiHandler;

    invoke-direct {v0, p0, v1, v2}, Lcom/mediatek/gemini/GeminiApnSettings$RestoreApnProcessHandler;-><init>(Lcom/mediatek/gemini/GeminiApnSettings;Landroid/os/Looper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mRestoreApnProcessHandler:Lcom/mediatek/gemini/GeminiApnSettings$RestoreApnProcessHandler;

    .line 767
    :cond_2
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mRestoreApnProcessHandler:Lcom/mediatek/gemini/GeminiApnSettings$RestoreApnProcessHandler;

    invoke-virtual {v0, v3}, Lcom/mediatek/gemini/GeminiApnSettings$RestoreApnProcessHandler;->sendEmptyMessage(I)Z

    .line 769
    return v3
.end method

.method private setIMSI()V
    .locals 5

    .prologue
    .line 525
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 527
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    iget v2, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mSimId:I

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->isOperatorMvnoForImsiGemini(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mIMSI:Ljava/lang/String;

    .line 531
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IMSI = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mIMSI:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IMSI = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mIMSI:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    return-void

    .line 532
    :catch_0
    move-exception v0

    .line 533
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "ApnSettings"

    const-string v3, "RemoteException"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setPnn()V
    .locals 3

    .prologue
    .line 540
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mSimId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->isOperatorMvnoForEfPnnGemini(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mPnn:Ljava/lang/String;

    .line 544
    const-string v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pnn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mPnn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    return-void
.end method

.method private setSpn()V
    .locals 5

    .prologue
    .line 511
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 513
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    iget v2, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mSimId:I

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->getSpNameInEfSpnGemini(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mSpn:Ljava/lang/String;

    .line 517
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "spn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mSpn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return-void

    .line 518
    :catch_0
    move-exception v0

    .line 519
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "ApnSettings"

    const-string v3, "RemoteException"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected addMenu(Landroid/view/Menu;)V
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    .line 672
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0347

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080033

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 675
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0350

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080055

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 678
    return-void
.end method

.method protected addNewApn()V
    .locals 3

    .prologue
    .line 710
    new-instance v0, Landroid/content/Intent;

    const-string v1, "gemini.intent.action.INSERT"

    iget-object v2, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 711
    .local v0, it:Landroid/content/Intent;
    const-string v1, "simId"

    iget v2, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mSimId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 712
    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/GeminiApnSettings;->startActivity(Landroid/content/Intent;)V

    .line 713
    return-void
.end method

.method protected getBroadcastReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method protected getFillListQuery()Ljava/lang/String;
    .locals 11

    .prologue
    .line 436
    const/4 v4, 0x0

    .line 438
    .local v4, isMVNO:Z
    :try_start_0
    const-string v8, "phone"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v7

    .line 441
    .local v7, telephony:Lcom/android/internal/telephony/ITelephony;
    iget v8, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mSimId:I

    invoke-interface {v7, v8}, Lcom/android/internal/telephony/ITelephony;->isIccCardProviderAsMvnoGemini(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 449
    .end local v7           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    const/4 v1, 0x0

    .line 450
    .local v1, flagImsi:Z
    const/4 v3, 0x0

    .line 451
    .local v3, flagSpn:Z
    const/4 v2, 0x0

    .line 452
    .local v2, flagPnn:Z
    const-string v6, ""

    .line 454
    .local v6, sqlStr:Ljava/lang/String;
    const-string v8, "ApnSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[isMVNO ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    if-eqz v4, :cond_6

    .line 457
    iget-object v8, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mIMSI:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mIMSI:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 458
    const/4 v1, 0x1

    .line 459
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " imsi=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mIMSI:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 461
    :cond_0
    iget-object v8, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mSpn:Ljava/lang/String;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mSpn:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 462
    const/4 v3, 0x1

    .line 463
    if-eqz v1, :cond_4

    .line 464
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " or spn=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mSpn:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 470
    :cond_1
    :goto_1
    iget-object v8, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mPnn:Ljava/lang/String;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mPnn:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 471
    const/4 v2, 0x1

    .line 472
    if-nez v1, :cond_2

    if-eqz v3, :cond_5

    .line 473
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " or pnn=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mPnn:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 483
    :cond_3
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "numeric=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mNumeric:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\" and ( "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 484
    .local v5, result:Ljava/lang/String;
    const-string v8, "ApnSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getFillListQuery result: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    return-object v5

    .line 446
    .end local v1           #flagImsi:Z
    .end local v2           #flagPnn:Z
    .end local v3           #flagSpn:Z
    .end local v5           #result:Ljava/lang/String;
    .end local v6           #sqlStr:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 447
    .local v0, e:Landroid/os/RemoteException;
    const-string v8, "ApnSettings"

    const-string v9, "RemoteException"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 466
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #flagImsi:Z
    .restart local v2       #flagPnn:Z
    .restart local v3       #flagSpn:Z
    .restart local v6       #sqlStr:Ljava/lang/String;
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " spn=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mSpn:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 475
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " pnn=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mPnn:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2

    .line 480
    :cond_6
    const-string v6, "(spn is NULL or spn=\"\") and (imsi is NULL or imsi=\"\") and (pnn is NULL or pnn=\"\") "

    goto/16 :goto_2
.end method

.method protected getIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 308
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 311
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 312
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 313
    const-string v1, "com.android.mms.transaction.START"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 314
    const-string v1, "com.android.mms.transaction.STOP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 316
    const-string v1, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 319
    const-string v1, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 321
    return-object v0
.end method

.method protected getScreenEnableState()Z
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 491
    const/4 v0, 0x1

    .line 492
    .local v0, simReady:Z
    iget v3, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mSimId:I

    packed-switch v3, :pswitch_data_0

    .line 505
    :goto_0
    iget-object v3, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    if-nez v3, :cond_3

    move v3, v1

    :goto_1
    iput-boolean v3, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mIsCallStateIdle:Z

    .line 506
    sget-boolean v3, Lcom/mediatek/gemini/GeminiApnSettings;->sNotInMmsTransation:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mIsCallStateIdle:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mAirplaneModeEnabled:Z

    if-nez v3, :cond_4

    if-eqz v0, :cond_4

    :goto_2
    return v1

    .line 494
    :pswitch_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getSimStateGemini(I)I

    move-result v3

    if-ne v4, v3, :cond_0

    move v0, v1

    .line 495
    :goto_3
    goto :goto_0

    :cond_0
    move v0, v2

    .line 494
    goto :goto_3

    .line 497
    :pswitch_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/telephony/TelephonyManager;->getSimStateGemini(I)I

    move-result v3

    if-ne v4, v3, :cond_1

    move v0, v1

    .line 498
    :goto_4
    goto :goto_0

    :cond_1
    move v0, v2

    .line 497
    goto :goto_4

    .line 500
    :pswitch_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-ne v4, v3, :cond_2

    move v0, v1

    .line 501
    :goto_5
    goto :goto_0

    :cond_2
    move v0, v2

    .line 500
    goto :goto_5

    :cond_3
    move v3, v2

    .line 505
    goto :goto_1

    :cond_4
    move v1, v2

    .line 506
    goto :goto_2

    .line 492
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    const/4 v2, 0x1

    .line 273
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 275
    const v0, 0x7f06000e

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/GeminiApnSettings;->addPreferencesFromResource(I)V

    .line 276
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiApnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 278
    invoke-static {p0}, Lcom/mediatek/gemini/SimUtils;->getMiscPlugin(Landroid/content/Context;)Lcom/android/settings/ext/ISettingsMiscExt;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mExt:Lcom/android/settings/ext/ISettingsMiscExt;

    .line 279
    invoke-static {p0}, Lcom/mediatek/gemini/SimUtils;->getRcseApnPlugin(Landroid/content/Context;)Lcom/android/settings/ext/IRcseOnlyApnExtension;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mRcseExt:Lcom/android/settings/ext/IRcseOnlyApnExtension;

    .line 280
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mRcseExt:Lcom/android/settings/ext/IRcseOnlyApnExtension;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mRcseExt:Lcom/android/settings/ext/IRcseOnlyApnExtension;

    iget-object v1, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mListener:Lcom/android/settings/ext/IRcseOnlyApnExtension$OnRcseOnlyApnStateChangedListener;

    invoke-interface {v0, v1}, Lcom/android/settings/ext/IRcseOnlyApnExtension;->addRcseOnlyApnStateChanged(Lcom/android/settings/ext/IRcseOnlyApnExtension$OnRcseOnlyApnStateChangedListener;)V

    .line 285
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiApnSettings;->initSimState()V

    .line 287
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiApnSettings;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    .line 288
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiApnSettings;->getBroadcastReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 289
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/GeminiApnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 290
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 292
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiApnSettings;->setSpn()V

    .line 293
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiApnSettings;->setIMSI()V

    .line 294
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiApnSettings;->setPnn()V

    .line 296
    return-void

    .line 283
    :cond_0
    const-string v0, "ApnSettings"

    const-string v1, "mApnPlugin is null"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    .line 818
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 819
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 820
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c034f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 821
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 835
    :goto_0
    return-object v0

    .line 824
    :cond_0
    const/16 v0, 0x7d0

    if-ne p1, v0, :cond_1

    .line 825
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0a09

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0a0a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/mediatek/gemini/GeminiApnSettings$4;

    invoke-direct {v2, p0}, Lcom/mediatek/gemini/GeminiApnSettings$4;-><init>(Lcom/mediatek/gemini/GeminiApnSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 835
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 664
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 665
    invoke-virtual {p0, p1}, Lcom/mediatek/gemini/GeminiApnSettings;->addMenu(Landroid/view/Menu;)V

    .line 666
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 420
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 422
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 423
    const-string v0, "ApnSettings"

    const-string v1, "onDestroy set PhoneStateListener.LISTEN_NONE!"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mRcseExt:Lcom/android/settings/ext/IRcseOnlyApnExtension;

    if-eqz v0, :cond_1

    .line 429
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mRcseExt:Lcom/android/settings/ext/IRcseOnlyApnExtension;

    iget-object v1, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mListener:Lcom/android/settings/ext/IRcseOnlyApnExtension$OnRcseOnlyApnStateChangedListener;

    invoke-interface {v0, v1}, Lcom/android/settings/ext/IRcseOnlyApnExtension;->removeRcseOnlyApnStateChanged(Lcom/android/settings/ext/IRcseOnlyApnExtension$OnRcseOnlyApnStateChangedListener;)V

    .line 431
    :cond_1
    return-void
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 2
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 682
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 684
    if-eqz p2, :cond_0

    .line 685
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiApnSettings;->getScreenEnableState()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 687
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 300
    invoke-virtual {p0, p1}, Lcom/mediatek/gemini/GeminiApnSettings;->setIntent(Landroid/content/Intent;)V

    .line 302
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiApnSettings;->initSimState()V

    .line 303
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 693
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 704
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 695
    :pswitch_0
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiApnSettings;->addNewApn()V

    goto :goto_0

    .line 699
    :pswitch_1
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiApnSettings;->restoreDefaultApn()Z

    goto :goto_0

    .line 693
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 413
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 415
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/GeminiApnSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 416
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 715
    const-string v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange(): Preference - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newValue - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newValue type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 719
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {p0, p2}, Lcom/mediatek/gemini/GeminiApnSettings;->setSelectedApnKey(Ljava/lang/String;)V

    .line 722
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 847
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .local v2, key:Ljava/lang/String;
    move-object v0, p2

    .line 848
    check-cast v0, Lcom/mediatek/gemini/GeminiApnPreference;

    .line 849
    .local v0, apnPreference:Lcom/mediatek/gemini/GeminiApnPreference;
    invoke-virtual {v0}, Lcom/mediatek/gemini/GeminiApnPreference;->getSelectable()Z

    move-result v6

    if-nez v6, :cond_1

    .line 850
    invoke-virtual {v0, v5}, Lcom/mediatek/gemini/GeminiApnPreference;->setChecked(Z)V

    .line 866
    :cond_0
    :goto_0
    return v4

    .line 853
    :cond_1
    iget-object v6, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    move v1, v4

    .line 855
    .local v1, hasSelected:Z
    :goto_1
    if-eqz v1, :cond_2

    iget-object v6, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 856
    :cond_2
    if-eqz v1, :cond_5

    .line 857
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/mediatek/gemini/GeminiApnPreference;

    .line 858
    .local v3, oldApn:Lcom/mediatek/gemini/GeminiApnPreference;
    if-eqz v3, :cond_3

    .line 859
    invoke-virtual {v3, v5}, Lcom/mediatek/gemini/GeminiApnPreference;->setChecked(Z)V

    .line 861
    :cond_3
    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/GeminiApnSettings;->setSelectedApnKey(Ljava/lang/String;)V

    goto :goto_0

    .end local v1           #hasSelected:Z
    .end local v3           #oldApn:Lcom/mediatek/gemini/GeminiApnPreference;
    :cond_4
    move v1, v5

    .line 853
    goto :goto_1

    .line 863
    .restart local v1       #hasSelected:Z
    :cond_5
    invoke-virtual {v0, v4}, Lcom/mediatek/gemini/GeminiApnPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 840
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 841
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 843
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 381
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 383
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/gemini/GeminiApnSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 385
    invoke-static {p0}, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mAirplaneModeEnabled:Z

    .line 386
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dual_sim_mode_setting"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mDualSimMode:I

    .line 388
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiApnSettings;->isMMSNotTransaction()Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/gemini/GeminiApnSettings;->sNotInMmsTransation:Z

    .line 389
    iget-boolean v0, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mAirplaneModeEnabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mDualSimMode:I

    if-nez v0, :cond_1

    .line 390
    :cond_0
    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/GeminiApnSettings;->showDialog(I)V

    .line 393
    :cond_1
    iget-boolean v0, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mRestoreDefaultApnMode:Z

    if-nez v0, :cond_2

    .line 394
    iget v0, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mSimId:I

    invoke-direct {p0, v0}, Lcom/mediatek/gemini/GeminiApnSettings;->fillList(I)V

    .line 396
    :cond_2
    return-void
.end method

.method protected setSelectedApnKey(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 728
    iput-object p1, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 729
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 731
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 732
    const-string v2, "apn_id"

    iget-object v3, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiApnSettings;->mRestoreCarrierUri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 734
    return-void
.end method
