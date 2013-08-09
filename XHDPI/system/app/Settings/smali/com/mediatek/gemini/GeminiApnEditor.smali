.class public Lcom/mediatek/gemini/GeminiApnEditor;
.super Landroid/preference/PreferenceActivity;
.source "GeminiApnEditor.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static sNotSet:Ljava/lang/String;


# instance fields
.field private mAirplaneModeEnabled:Z

.field private mApn:Landroid/preference/EditTextPreference;

.field private mApnTypeList:Lcom/mediatek/gemini/ApnTypePreference;

.field private mAuthType:Landroid/preference/ListPreference;

.field private mBearer:Landroid/preference/ListPreference;

.field private mCarrierEnabled:Landroid/preference/CheckBoxPreference;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mCurMcc:Ljava/lang/String;

.field private mCurMnc:Ljava/lang/String;

.field private mCursor:Landroid/database/Cursor;

.field private mDualSimMode:I

.field mExt:Lcom/android/settings/ext/IApnEditorExt;

.field private mFirstTime:Z

.field private mIMSI:Ljava/lang/String;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsCallStateIdle:Z

.field private mMcc:Landroid/preference/EditTextPreference;

.field private mMmsPort:Landroid/preference/EditTextPreference;

.field private mMmsProxy:Landroid/preference/EditTextPreference;

.field private mMmsc:Landroid/preference/EditTextPreference;

.field private mMnc:Landroid/preference/EditTextPreference;

.field private mName:Landroid/preference/EditTextPreference;

.field private mNewApn:Z

.field private mNotInMmsTransaction:Z

.field private mPassword:Landroid/preference/EditTextPreference;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPnn:Ljava/lang/String;

.field private mPort:Landroid/preference/EditTextPreference;

.field private mProtocol:Landroid/preference/ListPreference;

.field private mProviderUri:Landroid/net/Uri;

.field private mProxy:Landroid/preference/EditTextPreference;

.field private mReadOnlyMode:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRes:Landroid/content/res/Resources;

.field private mRoamingProtocol:Landroid/preference/ListPreference;

.field private mServer:Landroid/preference/EditTextPreference;

.field private mSimId:I

.field private mSourceType:I

.field private mSpn:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;

.field private mUser:Landroid/preference/EditTextPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 77
    const-class v0, Lcom/mediatek/gemini/GeminiApnEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/gemini/GeminiApnEditor;->TAG:Ljava/lang/String;

    .line 151
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "apn"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "proxy"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "port"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "user"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "server"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "password"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "mmsc"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mcc"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mnc"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "numeric"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "mmsproxy"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "mmsport"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "authtype"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "protocol"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "carrier_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "bearer"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "roaming_protocol"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "sourcetype"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/gemini/GeminiApnEditor;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 73
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 133
    iput v0, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mSourceType:I

    .line 136
    iput-boolean v2, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mIsCallStateIdle:Z

    .line 137
    iput-boolean v1, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mAirplaneModeEnabled:Z

    .line 138
    iput v0, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mDualSimMode:I

    .line 142
    iput-boolean v2, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mNotInMmsTransaction:Z

    .line 143
    iput-boolean v1, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mReadOnlyMode:Z

    .line 199
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mSpn:Ljava/lang/String;

    .line 200
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mIMSI:Ljava/lang/String;

    .line 201
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mPnn:Ljava/lang/String;

    .line 203
    new-instance v0, Lcom/mediatek/gemini/GeminiApnEditor$1;

    invoke-direct {v0, p0}, Lcom/mediatek/gemini/GeminiApnEditor$1;-><init>(Lcom/mediatek/gemini/GeminiApnEditor;)V

    iput-object v0, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 260
    new-instance v0, Lcom/mediatek/gemini/GeminiApnEditor$2;

    invoke-direct {v0, p0}, Lcom/mediatek/gemini/GeminiApnEditor$2;-><init>(Lcom/mediatek/gemini/GeminiApnEditor;)V

    iput-object v0, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 270
    new-instance v0, Lcom/mediatek/gemini/GeminiApnEditor$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mediatek/gemini/GeminiApnEditor$3;-><init>(Lcom/mediatek/gemini/GeminiApnEditor;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/gemini/GeminiApnEditor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mAirplaneModeEnabled:Z

    return v0
.end method

.method static synthetic access$002(Lcom/mediatek/gemini/GeminiApnEditor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mAirplaneModeEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/gemini/GeminiApnEditor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiApnEditor;->radioOffExit()V

    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/gemini/GeminiApnEditor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiApnEditor;->setIMSI()V

    return-void
.end method

.method static synthetic access$1100(Lcom/mediatek/gemini/GeminiApnEditor;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mPnn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mediatek/gemini/GeminiApnEditor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiApnEditor;->setPnn()V

    return-void
.end method

.method static synthetic access$1300(Lcom/mediatek/gemini/GeminiApnEditor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mSimId:I

    return v0
.end method

.method static synthetic access$1402(Lcom/mediatek/gemini/GeminiApnEditor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mIsCallStateIdle:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/mediatek/gemini/GeminiApnEditor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mFirstTime:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/mediatek/gemini/GeminiApnEditor;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/mediatek/gemini/GeminiApnEditor;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/mediatek/gemini/GeminiApnEditor;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1800()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/mediatek/gemini/GeminiApnEditor;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/mediatek/gemini/GeminiApnEditor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiApnEditor;->fillUi()V

    return-void
.end method

.method static synthetic access$2000(Lcom/mediatek/gemini/GeminiApnEditor;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/mediatek/gemini/GeminiApnEditor;->validateAndSave(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/mediatek/gemini/GeminiApnEditor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mNotInMmsTransaction:Z

    return p1
.end method

.method static synthetic access$300(Lcom/mediatek/gemini/GeminiApnEditor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiApnEditor;->setScreenEnabledStatus()V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/gemini/GeminiApnEditor;)Lcom/mediatek/gemini/ApnTypePreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mApnTypeList:Lcom/mediatek/gemini/ApnTypePreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/gemini/GeminiApnEditor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mDualSimMode:I

    return v0
.end method

.method static synthetic access$502(Lcom/mediatek/gemini/GeminiApnEditor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mDualSimMode:I

    return p1
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/mediatek/gemini/GeminiApnEditor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/gemini/GeminiApnEditor;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mSpn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/gemini/GeminiApnEditor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiApnEditor;->setSpn()V

    return-void
.end method

.method static synthetic access$900(Lcom/mediatek/gemini/GeminiApnEditor;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mIMSI:Ljava/lang/String;

    return-object v0
.end method

.method private bearerDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "raw"

    .prologue
    const/4 v3, 0x0

    .line 644
    iget-object v4, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v4, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 645
    .local v1, mBearerIndex:I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 652
    :goto_0
    return-object v3

    .line 648
    :cond_0
    iget-object v4, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f08002c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 650
    .local v2, values:[Ljava/lang/String;
    :try_start_0
    aget-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 651
    :catch_0
    move-exception v0

    .line 652
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0
.end method

.method private checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 996
    if-eqz p1, :cond_0

    sget-object v0, Lcom/mediatek/gemini/GeminiApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 997
    :cond_0
    const-string p1, ""

    .line 999
    .end local p1
    :cond_1
    return-object p1
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 988
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 989
    :cond_0
    sget-object p1, Lcom/mediatek/gemini/GeminiApnEditor;->sNotSet:Ljava/lang/String;

    .line 991
    .end local p1
    :cond_1
    return-object p1
.end method

.method private checkToSave()Z
    .locals 3

    .prologue
    .line 1049
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiApnEditor;->noModifyApn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1050
    const/4 v0, 0x1

    .line 1070
    :goto_0
    return v0

    .line 1052
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c081f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0820

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/mediatek/gemini/GeminiApnEditor$6;

    invoke-direct {v2, p0}, Lcom/mediatek/gemini/GeminiApnEditor$6;-><init>(Lcom/mediatek/gemini/GeminiApnEditor;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/mediatek/gemini/GeminiApnEditor$5;

    invoke-direct {v2, p0}, Lcom/mediatek/gemini/GeminiApnEditor$5;-><init>(Lcom/mediatek/gemini/GeminiApnEditor;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1070
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private deleteApn()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 969
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 970
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 972
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiApnEditor;->finish()V

    .line 973
    return-void
.end method

.method private fillUi()V
    .locals 13

    .prologue
    .line 519
    iget-object v9, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-nez v9, :cond_0

    .line 520
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiApnEditor;->finish()V

    .line 622
    :goto_0
    return-void

    .line 523
    :cond_0
    iget-boolean v9, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mFirstTime:Z

    if-eqz v9, :cond_3

    .line 524
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mFirstTime:Z

    .line 526
    iget-object v9, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mName:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 527
    iget-object v9, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mApn:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x2

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 528
    iget-object v9, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x3

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 529
    iget-object v9, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mPort:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x4

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 530
    iget-object v9, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mUser:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x5

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 531
    iget-object v9, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mServer:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x6

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 532
    iget-object v9, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x7

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 533
    iget-object v9, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0xc

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 534
    iget-object v9, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0xd

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 535
    iget-object v9, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0x8

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 536
    iget-object v9, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0x9

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 537
    iget-object v9, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0xa

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 539
    iget-object v9, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0xf

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 540
    .local v7, strType:Ljava/lang/String;
    iget-object v9, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mApnTypeList:Lcom/mediatek/gemini/ApnTypePreference;

    iget-object v10, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0x9

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v12, 0xa

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v9, v10, v11, v12}, Lcom/mediatek/gemini/ApnTypePreference;->setType(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 541
    iget-object v9, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mApnTypeList:Lcom/mediatek/gemini/ApnTypePreference;

    invoke-direct {p0, v7}, Lcom/mediatek/gemini/GeminiApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/mediatek/gemini/ApnTypePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 542
    iget-object v9, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mApnTypeList:Lcom/mediatek/gemini/ApnTypePreference;

    invoke-virtual {v9, v7}, Lcom/mediatek/gemini/ApnTypePreference;->intCheckState(Ljava/lang/String;)V

    .line 544
    iget-boolean v9, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mNewApn:Z

    if-eqz v9, :cond_2

    .line 546
    iget v9, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mSimId:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    .line 547
    const-string v6, "gsm.sim.operator.numeric.2"

    .line 551
    .local v6, simSysProperty:Ljava/lang/String;
    :goto_1
    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 553
    .local v5, numeric:Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x4

    if-le v9, v10, :cond_1

    .line 555
    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 557
    .local v3, mcc:Ljava/lang/String;
    const/4 v9, 0x3

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 559
    .local v4, mnc:Ljava/lang/String;
    iget-object v9, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v9, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 560
    iget-object v9, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v9, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 561
    iput-object v4, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mCurMnc:Ljava/lang/String;

    .line 562
    iput-object v3, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mCurMcc:Ljava/lang/String;

    .line 565
    .end local v3           #mcc:Ljava/lang/String;
    .end local v4           #mnc:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "apn_type"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 567
    .local v0, apnType:Ljava/lang/String;
    const-string v9, "tethering"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 568
    iget-object v9, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mApnTypeList:Lcom/mediatek/gemini/ApnTypePreference;

    const-string v10, "tethering"

    invoke-virtual {v9, v10}, Lcom/mediatek/gemini/ApnTypePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 569
    iget-object v9, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mApnTypeList:Lcom/mediatek/gemini/ApnTypePreference;

    const-string v10, "tethering"

    invoke-virtual {v9, v10}, Lcom/mediatek/gemini/ApnTypePreference;->intCheckState(Ljava/lang/String;)V

    .line 575
    .end local v0           #apnType:Ljava/lang/String;
    .end local v5           #numeric:Ljava/lang/String;
    .end local v6           #simSysProperty:Ljava/lang/String;
    :cond_2
    :goto_2
    iget-object v9, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0xe

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 576
    .local v1, authVal:I
    const/4 v9, -0x1

    if-eq v1, v9, :cond_6

    .line 577
    iget-object v9, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v9, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 582
    :goto_3
    iget-object v9, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mProtocol:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0x10

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 583
    iget-object v9, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0x13

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 584
    iget-object v10, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    iget-object v9, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0x11

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v11, 0x1

    if-ne v9, v11, :cond_7

    const/4 v9, 0x1

    :goto_4
    invoke-virtual {v10, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 585
    iget-object v9, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mBearer:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0x12

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 586
    iget-object v9, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0x14

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    iput v9, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mSourceType:I

    .line 590
    .end local v1           #authVal:I
    .end local v7           #strType:Ljava/lang/String;
    :cond_3
    iget-object v9, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mName:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/gemini/GeminiApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 591
    iget-object v9, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mApn:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/gemini/GeminiApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 592
    iget-object v9, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/gemini/GeminiApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 593
    iget-object v9, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mPort:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/gemini/GeminiApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 594
    iget-object v9, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mUser:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/gemini/GeminiApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 595
    iget-object v9, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mServer:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/gemini/GeminiApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 596
    iget-object v9, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/gemini/GeminiApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 597
    iget-object v9, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/gemini/GeminiApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 598
    iget-object v9, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/gemini/GeminiApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 599
    iget-object v9, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/gemini/GeminiApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 600
    iget-object v9, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/gemini/GeminiApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 601
    iget-object v9, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/gemini/GeminiApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 605
    iget-object v9, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 606
    .local v1, authVal:Ljava/lang/String;
    if-eqz v1, :cond_8

    .line 607
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 608
    .local v2, authValIndex:I
    iget-object v9, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v9, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 610
    iget-object v9, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mRes:Landroid/content/res/Resources;

    const v10, 0x7f080028

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 611
    .local v8, values:[Ljava/lang/String;
    iget-object v9, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mAuthType:Landroid/preference/ListPreference;

    aget-object v10, v8, v2

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 616
    .end local v2           #authValIndex:I
    .end local v8           #values:[Ljava/lang/String;
    :goto_5
    iget-object v9, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mProtocol:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v10, v11}, Lcom/mediatek/gemini/GeminiApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/gemini/GeminiApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 618
    iget-object v9, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v10, v11}, Lcom/mediatek/gemini/GeminiApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/gemini/GeminiApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 620
    iget-object v9, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mBearer:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/gemini/GeminiApnEditor;->bearerDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/gemini/GeminiApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 549
    .end local v1           #authVal:Ljava/lang/String;
    .restart local v7       #strType:Ljava/lang/String;
    :cond_4
    const-string v6, "gsm.sim.operator.numeric"

    .restart local v6       #simSysProperty:Ljava/lang/String;
    goto/16 :goto_1

    .line 571
    .restart local v0       #apnType:Ljava/lang/String;
    .restart local v5       #numeric:Ljava/lang/String;
    :cond_5
    iget-object v9, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mApnTypeList:Lcom/mediatek/gemini/ApnTypePreference;

    const-string v10, "default"

    invoke-virtual {v9, v10}, Lcom/mediatek/gemini/ApnTypePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 572
    iget-object v9, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mApnTypeList:Lcom/mediatek/gemini/ApnTypePreference;

    const-string v10, "default"

    invoke-virtual {v9, v10}, Lcom/mediatek/gemini/ApnTypePreference;->intCheckState(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 579
    .end local v0           #apnType:Ljava/lang/String;
    .end local v5           #numeric:Ljava/lang/String;
    .end local v6           #simSysProperty:Ljava/lang/String;
    .local v1, authVal:I
    :cond_6
    iget-object v9, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mAuthType:Landroid/preference/ListPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 584
    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 613
    .end local v7           #strType:Ljava/lang/String;
    .local v1, authVal:Ljava/lang/String;
    :cond_8
    iget-object v9, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mAuthType:Landroid/preference/ListPreference;

    sget-object v10, Lcom/mediatek/gemini/GeminiApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5
.end method

.method private getErrorMsg()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 905
    const/4 v0, 0x0

    .line 907
    iget-object v1, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/gemini/GeminiApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 908
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/gemini/GeminiApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 909
    iget-object v3, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/gemini/GeminiApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 910
    iget-object v4, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/gemini/GeminiApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 912
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v5, :cond_1

    .line 913
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c034b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 922
    :cond_0
    :goto_0
    return-object v0

    .line 914
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v5, :cond_2

    .line 915
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c034c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 916
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    .line 917
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c034d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 918
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    const v2, 0xfffe

    and-int/2addr v1, v2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 919
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c034e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isMMSNotTransaction()Z
    .locals 7

    .prologue
    .line 492
    const/4 v1, 0x1

    .line 493
    .local v1, isMMSNotProcess:Z
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/mediatek/gemini/GeminiApnEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 494
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 495
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 496
    .local v2, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 497
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 498
    .local v3, state:Landroid/net/NetworkInfo$State;
    sget-object v4, Lcom/mediatek/gemini/GeminiApnEditor;->TAG:Ljava/lang/String;

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

    .line 499
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-eq v3, v4, :cond_1

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v3, v4, :cond_1

    const/4 v1, 0x1

    .line 503
    .end local v2           #networkInfo:Landroid/net/NetworkInfo;
    .end local v3           #state:Landroid/net/NetworkInfo$State;
    :cond_0
    :goto_0
    return v1

    .line 499
    .restart local v2       #networkInfo:Landroid/net/NetworkInfo;
    .restart local v3       #state:Landroid/net/NetworkInfo$State;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;
    .locals 6
    .parameter "raw"
    .parameter "protocol"

    .prologue
    const/4 v3, 0x0

    .line 630
    invoke-virtual {p2, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 631
    .local v1, protocolIndex:I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 638
    :goto_0
    return-object v3

    .line 634
    :cond_0
    iget-object v4, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f08002a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 636
    .local v2, values:[Ljava/lang/String;
    :try_start_0
    aget-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 637
    :catch_0
    move-exception v0

    .line 638
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0
.end method

.method private radioOffExit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 283
    iget-boolean v0, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mNewApn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 286
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiApnEditor;->finish()V

    .line 287
    return-void
.end method

.method private setIMSI()V
    .locals 5

    .prologue
    .line 306
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 308
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    iget v2, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mSimId:I

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->isOperatorMvnoForImsiGemini(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mIMSI:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    sget-object v2, Lcom/mediatek/gemini/GeminiApnEditor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IMSI = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mIMSI:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    return-void

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/mediatek/gemini/GeminiApnEditor;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setPnn()V
    .locals 4

    .prologue
    .line 319
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/mediatek/gemini/GeminiApnEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 321
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    iget v1, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mSimId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->isOperatorMvnoForEfPnnGemini(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mPnn:Ljava/lang/String;

    .line 325
    sget-object v1, Lcom/mediatek/gemini/GeminiApnEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPnn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mPnn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    return-void
.end method

.method private setScreenEnabledStatus()V
    .locals 2

    .prologue
    .line 329
    iget-boolean v0, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mReadOnlyMode:Z

    if-eqz v0, :cond_0

    .line 330
    sget-object v0, Lcom/mediatek/gemini/GeminiApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "-----------mReadOnlyMode is true -----------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mAirplaneModeEnabled:Z

    if-eqz v0, :cond_1

    .line 333
    sget-object v0, Lcom/mediatek/gemini/GeminiApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "-----------mAirplaneModeEnabled is true -----------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_1
    iget-boolean v0, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mNotInMmsTransaction:Z

    if-nez v0, :cond_2

    .line 336
    sget-object v0, Lcom/mediatek/gemini/GeminiApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "-----------!mNotInMmsTransaction is true -----------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_2
    iget v0, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mDualSimMode:I

    if-nez v0, :cond_3

    .line 339
    sget-object v0, Lcom/mediatek/gemini/GeminiApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "-----------mDualSimMode is 0 -----------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-boolean v0, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mReadOnlyMode:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mAirplaneModeEnabled:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mNotInMmsTransaction:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mDualSimMode:I

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 343
    return-void

    .line 341
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setSpn()V
    .locals 5

    .prologue
    .line 291
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 294
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    iget v2, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mSimId:I

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->getSpNameInEfSpnGemini(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mSpn:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    sget-object v2, Lcom/mediatek/gemini/GeminiApnEditor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "spn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mSpn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    return-void

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/mediatek/gemini/GeminiApnEditor;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private starify(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "value"

    .prologue
    .line 976
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 977
    :cond_0
    sget-object v2, Lcom/mediatek/gemini/GeminiApnEditor;->sNotSet:Ljava/lang/String;

    .line 983
    :goto_0
    return-object v2

    .line 979
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v1, v2, [C

    .line 980
    .local v1, password:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 981
    const/16 v2, 0x2a

    aput-char v2, v1, v0

    .line 980
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 983
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method private validateAndSave(Z)Z
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 798
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/gemini/GeminiApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 799
    iget-object v3, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/gemini/GeminiApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 800
    iget-object v4, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/gemini/GeminiApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 801
    iget-object v5, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/gemini/GeminiApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 803
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    if-nez p1, :cond_1

    .line 804
    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/GeminiApnEditor;->showDialog(I)V

    .line 901
    :cond_0
    :goto_0
    return v2

    .line 808
    :cond_1
    iget-object v6, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_2

    iget-boolean v6, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mNewApn:Z

    if-nez v6, :cond_2

    .line 809
    sget-object v0, Lcom/mediatek/gemini/GeminiApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "Could not go to the first row in the Cursor when saving data."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 815
    :cond_2
    if-eqz p1, :cond_3

    iget-boolean v6, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mNewApn:Z

    if-eqz v6, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v1, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v1, :cond_3

    .line 816
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 817
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 818
    iput-object v9, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mUri:Landroid/net/Uri;

    goto :goto_0

    .line 823
    :cond_3
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 827
    const-string v7, "name"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v8, v1, :cond_4

    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v8, 0x7f0c05a6

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    const-string v0, "apn"

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    const-string v0, "proxy"

    iget-object v3, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/gemini/GeminiApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    const-string v0, "port"

    iget-object v3, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/gemini/GeminiApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    const-string v0, "mmsproxy"

    iget-object v3, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/gemini/GeminiApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    const-string v0, "mmsport"

    iget-object v3, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/gemini/GeminiApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    const-string v0, "user"

    iget-object v3, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/gemini/GeminiApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    const-string v0, "server"

    iget-object v3, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/gemini/GeminiApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    const-string v0, "password"

    iget-object v3, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/gemini/GeminiApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    const-string v0, "mmsc"

    iget-object v3, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/gemini/GeminiApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    :try_start_0
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 844
    iget v3, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mSimId:I

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/ITelephony;->isIccCardProviderAsMvnoGemini(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 852
    :goto_1
    if-eqz v0, :cond_5

    .line 853
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mIMSI:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mIMSI:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 854
    const-string v0, "imsi"

    iget-object v3, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mIMSI:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/mediatek/gemini/GeminiApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 863
    if-eqz v0, :cond_6

    .line 864
    const-string v3, "authtype"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 867
    :cond_6
    const-string v0, "protocol"

    iget-object v3, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/gemini/GeminiApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    const-string v0, "roaming_protocol"

    iget-object v3, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/gemini/GeminiApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    const-string v0, "type"

    iget-object v3, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mApnTypeList:Lcom/mediatek/gemini/ApnTypePreference;

    invoke-virtual {v3}, Lcom/mediatek/gemini/ApnTypePreference;->getTypeString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/gemini/GeminiApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    const-string v3, "carrier_enabled"

    iget-object v0, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v1

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 873
    const-string v0, "mcc"

    invoke-virtual {v6, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    const-string v0, "mnc"

    invoke-virtual {v6, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    const-string v0, "numeric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mCurMnc:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mCurMcc:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 879
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mCurMnc:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mCurMcc:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 880
    const-string v0, "current"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 884
    :cond_7
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 885
    if-eqz v0, :cond_8

    .line 886
    const-string v2, "bearer"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 888
    :cond_8
    iget-boolean v0, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mNewApn:Z

    if-eqz v0, :cond_9

    .line 889
    const-string v0, "sourcetype"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 892
    :cond_9
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_a

    .line 893
    sget-object v0, Lcom/mediatek/gemini/GeminiApnEditor;->TAG:Ljava/lang/String;

    const-string v2, "former inserted URI was already deleted, insert a new one"

    invoke-static {v0, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mUri:Landroid/net/Uri;

    .line 896
    :cond_a
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_b

    .line 897
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v6, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_b
    move v2, v1

    .line 901
    goto/16 :goto_0

    .line 849
    :catch_0
    move-exception v0

    .line 850
    sget-object v0, Lcom/mediatek/gemini/GeminiApnEditor;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException"

    invoke-static {v0, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto/16 :goto_1

    .line 855
    :cond_c
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mSpn:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mSpn:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 856
    const-string v0, "spn"

    iget-object v3, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mSpn:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/mediatek/gemini/GeminiApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 858
    :cond_d
    const-string v0, "pnn"

    iget-object v3, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mPnn:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/mediatek/gemini/GeminiApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_e
    move v0, v2

    .line 871
    goto/16 :goto_3
.end method


# virtual methods
.method noModifyApn()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1018
    iget-object v3, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1044
    :cond_0
    :goto_0
    return v1

    .line 1021
    :cond_1
    iget-object v3, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v4, 0xf

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1022
    .local v0, apnType:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1023
    const-string v0, "default"

    .line 1025
    :cond_2
    iget-object v3, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x3

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x4

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x6

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x7

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v5, 0xc

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v5, 0xd

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v5, 0x8

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mCurMcc:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mCurMnc:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mApnTypeList:Lcom/mediatek/gemini/ApnTypePreference;

    invoke-virtual {v3}, Lcom/mediatek/gemini/ApnTypePreference;->getTypeString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v5, 0x10

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v5, 0x13

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    iget-object v3, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v5, 0x11

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v2, :cond_3

    move v3, v2

    :goto_1
    xor-int/2addr v3, v4

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v5, 0x12

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 1042
    goto/16 :goto_0

    :cond_3
    move v3, v1

    .line 1025
    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 347
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 349
    const v2, 0x7f06002e

    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/GeminiApnEditor;->addPreferencesFromResource(I)V

    .line 351
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0c032d

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/mediatek/gemini/GeminiApnEditor;->sNotSet:Ljava/lang/String;

    .line 352
    const-string v2, "apn_name"

    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/GeminiApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mName:Landroid/preference/EditTextPreference;

    .line 353
    const-string v2, "apn_apn"

    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/GeminiApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mApn:Landroid/preference/EditTextPreference;

    .line 354
    const-string v2, "apn_http_proxy"

    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/GeminiApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    .line 355
    const-string v2, "apn_http_port"

    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/GeminiApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mPort:Landroid/preference/EditTextPreference;

    .line 356
    const-string v2, "apn_user"

    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/GeminiApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mUser:Landroid/preference/EditTextPreference;

    .line 357
    const-string v2, "apn_server"

    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/GeminiApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mServer:Landroid/preference/EditTextPreference;

    .line 358
    const-string v2, "apn_password"

    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/GeminiApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    .line 359
    const-string v2, "apn_mms_proxy"

    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/GeminiApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    .line 360
    const-string v2, "apn_mms_port"

    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/GeminiApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    .line 361
    const-string v2, "apn_mmsc"

    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/GeminiApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    .line 362
    const-string v2, "apn_mcc"

    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/GeminiApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    .line 363
    const-string v2, "apn_mnc"

    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/GeminiApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    .line 364
    const-string v2, "apn_type_list"

    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/GeminiApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/mediatek/gemini/ApnTypePreference;

    iput-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mApnTypeList:Lcom/mediatek/gemini/ApnTypePreference;

    .line 365
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mApnTypeList:Lcom/mediatek/gemini/ApnTypePreference;

    invoke-virtual {v2, p0}, Lcom/mediatek/gemini/ApnTypePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 368
    const-string v2, "auth_type"

    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/GeminiApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mAuthType:Landroid/preference/ListPreference;

    .line 369
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 371
    const-string v2, "apn_protocol"

    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/GeminiApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mProtocol:Landroid/preference/ListPreference;

    .line 372
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 374
    const-string v2, "apn_roaming_protocol"

    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/GeminiApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    .line 375
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 377
    const-string v2, "carrier_enabled"

    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/GeminiApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    .line 379
    const-string v2, "bearer"

    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/GeminiApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mBearer:Landroid/preference/ListPreference;

    .line 380
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 382
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mRes:Landroid/content/res/Resources;

    .line 385
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 386
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, action:Ljava/lang/String;
    if-nez p1, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mFirstTime:Z

    .line 389
    const-string v2, "simId"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mSimId:I

    .line 390
    iget v2, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mSimId:I

    if-ne v3, v2, :cond_3

    .line 391
    sget-object v2, Landroid/provider/Telephony$Carriers$SIM2Carriers;->CONTENT_URI:Landroid/net/Uri;

    iput-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mProviderUri:Landroid/net/Uri;

    .line 398
    :goto_1
    invoke-static {p0}, Lcom/mediatek/gemini/SimUtils;->getApnEditorPlugin(Landroid/content/Context;)Lcom/android/settings/ext/IApnEditorExt;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mExt:Lcom/android/settings/ext/IApnEditorExt;

    .line 399
    const-string v2, "gemini.intent.action.EDIT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 400
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mUri:Landroid/net/Uri;

    .line 401
    const-string v2, "readOnly"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mReadOnlyMode:Z

    .line 402
    const v2, 0x7f0c032c

    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/GeminiApnEditor;->setTitle(I)V

    .line 403
    sget-object v2, Lcom/mediatek/gemini/GeminiApnEditor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read only mode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mReadOnlyMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :goto_2
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mIntentFilter:Landroid/content/IntentFilter;

    .line 436
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 438
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 441
    iget-boolean v2, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mReadOnlyMode:Z

    if-nez v2, :cond_0

    .line 442
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "com.android.mms.transaction.START"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 443
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "com.android.mms.transaction.STOP"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 445
    :cond_0
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mUri:Landroid/net/Uri;

    sget-object v4, Lcom/mediatek/gemini/GeminiApnEditor;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {p0, v2, v4, v6, v6}, Lcom/mediatek/gemini/GeminiApnEditor;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mCursor:Landroid/database/Cursor;

    .line 446
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 448
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiApnEditor;->fillUi()V

    .line 449
    iget-boolean v2, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mNewApn:Z

    if-nez v2, :cond_1

    .line 450
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v4, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 454
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiApnEditor;->setSpn()V

    .line 455
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiApnEditor;->setIMSI()V

    .line 456
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiApnEditor;->setPnn()V

    .line 458
    :goto_3
    return-void

    :cond_2
    move v2, v4

    .line 388
    goto/16 :goto_0

    .line 392
    :cond_3
    iget v2, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mSimId:I

    if-nez v2, :cond_4

    .line 393
    sget-object v2, Landroid/provider/Telephony$Carriers$SIM1Carriers;->CONTENT_URI:Landroid/net/Uri;

    iput-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mProviderUri:Landroid/net/Uri;

    goto/16 :goto_1

    .line 395
    :cond_4
    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    iput-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mProviderUri:Landroid/net/Uri;

    goto/16 :goto_1

    .line 405
    :cond_5
    const-string v2, "gemini.intent.action.INSERT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 406
    iget-boolean v2, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mFirstTime:Z

    if-nez v2, :cond_6

    const-string v2, "pos"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_7

    .line 407
    :cond_6
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mUri:Landroid/net/Uri;

    .line 415
    :goto_4
    iput-boolean v3, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mNewApn:Z

    .line 419
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mUri:Landroid/net/Uri;

    if-nez v2, :cond_8

    .line 420
    sget-object v2, Lcom/mediatek/gemini/GeminiApnEditor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to insert new telephony provider into "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiApnEditor;->finish()V

    goto :goto_3

    .line 410
    :cond_7
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mExt:Lcom/android/settings/ext/IApnEditorExt;

    invoke-interface {v2, p0, v1}, Lcom/android/settings/ext/IApnEditorExt;->getUriFromIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mUri:Landroid/net/Uri;

    .line 412
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mProviderUri:Landroid/net/Uri;

    const-string v4, "pos"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mUri:Landroid/net/Uri;

    goto :goto_4

    .line 428
    :cond_8
    const/4 v2, -0x1

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    iget-object v5, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/mediatek/gemini/GeminiApnEditor;->setResult(ILandroid/content/Intent;)V

    .line 429
    const v2, 0x7f0c081e

    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/GeminiApnEditor;->setTitle(I)V

    goto/16 :goto_2

    .line 431
    :cond_9
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiApnEditor;->finish()V

    goto/16 :goto_3
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f0c034a

    const v2, 0x104000a

    .line 928
    if-nez p1, :cond_0

    .line 929
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    .line 931
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 952
    :goto_0
    return-object v0

    .line 936
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 937
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0a08

    invoke-virtual {p0, v1}, Lcom/mediatek/gemini/GeminiApnEditor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/mediatek/gemini/GeminiApnEditor$4;

    invoke-direct {v1, p0}, Lcom/mediatek/gemini/GeminiApnEditor$4;-><init>(Lcom/mediatek/gemini/GeminiApnEditor;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00ea

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 952
    :cond_1
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 700
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 702
    iget-boolean v0, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mReadOnlyMode:Z

    if-eqz v0, :cond_0

    .line 714
    :goto_0
    return v3

    .line 706
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mNewApn:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mSourceType:I

    if-eqz v0, :cond_1

    .line 707
    const v0, 0x7f0c0346

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200c0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 710
    :cond_1
    const/4 v0, 0x2

    const v1, 0x7f0c0348

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 712
    const/4 v0, 0x3

    const v1, 0x7f0c0349

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080038

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 461
    iget-boolean v0, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mNewApn:Z

    if-nez v0, :cond_0

    .line 462
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 464
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 465
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 763
    packed-switch p1, :pswitch_data_0

    .line 775
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 767
    :pswitch_0
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiApnEditor;->checkToSave()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 768
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiApnEditor;->finish()V

    .line 770
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 763
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 3
    .parameter "featureId"
    .parameter "menu"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 719
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 721
    if-eqz p2, :cond_0

    .line 722
    iget-boolean v0, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mNotInMmsTransaction:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mIsCallStateIdle:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mAirplaneModeEnabled:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mDualSimMode:I

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-interface {p2, v2, v0}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 724
    :cond_0
    return v1

    :cond_1
    move v0, v2

    .line 722
    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 729
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 757
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 731
    :sswitch_0
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiApnEditor;->deleteApn()V

    goto :goto_0

    .line 734
    :sswitch_1
    iget v1, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mSourceType:I

    if-nez v1, :cond_1

    .line 735
    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/GeminiApnEditor;->showDialog(I)V

    goto :goto_0

    .line 736
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/mediatek/gemini/GeminiApnEditor;->validateAndSave(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 737
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiApnEditor;->finish()V

    goto :goto_0

    .line 741
    :sswitch_2
    iget-boolean v1, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mNewApn:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_2

    .line 742
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 744
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiApnEditor;->finish()V

    goto :goto_0

    .line 750
    :sswitch_3
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiApnEditor;->checkToSave()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 751
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiApnEditor;->finish()V

    goto :goto_0

    .line 729
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x102002c -> :sswitch_3
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 507
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 509
    iget-object v1, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/mediatek/gemini/GeminiApnEditor;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 511
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/mediatek/gemini/GeminiApnEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 512
    .local v0, tm:Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 513
    sget-object v1, Lcom/mediatek/gemini/GeminiApnEditor;->TAG:Ljava/lang/String;

    const-string v2, "onDestroy set PhoneStateListener.LISTEN_NONE!"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 516
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v7, 0x0

    .line 658
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 659
    .local v3, key:Ljava/lang/String;
    const-string v6, "auth_type"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 661
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 662
    .local v2, index:I
    iget-object v6, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v6, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 664
    iget-object v6, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mRes:Landroid/content/res/Resources;

    const v8, 0x7f080028

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 665
    .local v5, values:[Ljava/lang/String;
    iget-object v6, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mAuthType:Landroid/preference/ListPreference;

    aget-object v8, v5, v2

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 695
    .end local v2           #index:I
    .end local v5           #values:[Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v6, 0x1

    :goto_1
    return v6

    .line 666
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/NumberFormatException;
    move v6, v7

    .line 667
    goto :goto_1

    .line 669
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local p2
    :cond_1
    const-string v6, "apn_protocol"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, p2

    .line 670
    check-cast v6, Ljava/lang/String;

    iget-object v8, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v6, v8}, Lcom/mediatek/gemini/GeminiApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v4

    .line 671
    .local v4, protocol:Ljava/lang/String;
    if-nez v4, :cond_2

    move v6, v7

    .line 672
    goto :goto_1

    .line 674
    :cond_2
    iget-object v6, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mProtocol:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v6, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 675
    iget-object v6, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v6, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 676
    .end local v4           #protocol:Ljava/lang/String;
    .restart local p2
    :cond_3
    const-string v6, "apn_roaming_protocol"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v6, p2

    .line 677
    check-cast v6, Ljava/lang/String;

    iget-object v8, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v6, v8}, Lcom/mediatek/gemini/GeminiApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v4

    .line 678
    .restart local v4       #protocol:Ljava/lang/String;
    if-nez v4, :cond_4

    move v6, v7

    .line 679
    goto :goto_1

    .line 681
    :cond_4
    iget-object v6, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v6, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 682
    iget-object v6, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v6, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 683
    .end local v4           #protocol:Ljava/lang/String;
    .restart local p2
    :cond_5
    const-string v6, "bearer"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    move-object v6, p2

    .line 684
    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/mediatek/gemini/GeminiApnEditor;->bearerDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 685
    .local v0, bearer:Ljava/lang/String;
    if-nez v0, :cond_6

    move v6, v7

    .line 686
    goto :goto_1

    .line 688
    :cond_6
    iget-object v6, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mBearer:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v6, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 689
    iget-object v6, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v6, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 690
    .end local v0           #bearer:Ljava/lang/String;
    .restart local p2
    :cond_7
    const-string v6, "apn_type_list"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 691
    iget-object v6, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mApnTypeList:Lcom/mediatek/gemini/ApnTypePreference;

    iget-object v7, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mApnTypeList:Lcom/mediatek/gemini/ApnTypePreference;

    invoke-virtual {v7}, Lcom/mediatek/gemini/ApnTypePreference;->getTypeString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/gemini/GeminiApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/mediatek/gemini/ApnTypePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 957
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 959
    if-nez p1, :cond_0

    .line 960
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    .line 962
    .local v0, msg:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 963
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 966
    .end local v0           #msg:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 469
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 470
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 473
    iget-object v1, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v3}, Lcom/mediatek/gemini/GeminiApnEditor;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 476
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/mediatek/gemini/GeminiApnEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 477
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mIsCallStateIdle:Z

    .line 478
    iget-object v1, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 480
    invoke-static {p0}, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mAirplaneModeEnabled:Z

    .line 482
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dual_sim_mode_setting"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mDualSimMode:I

    .line 484
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiApnEditor;->isMMSNotTransaction()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mNotInMmsTransaction:Z

    .line 485
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiApnEditor;->setScreenEnabledStatus()V

    .line 487
    const-string v1, "tethering"

    iget-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mApnTypeList:Lcom/mediatek/gemini/ApnTypePreference;

    invoke-virtual {v2}, Lcom/mediatek/gemini/ApnTypePreference;->getTypeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 488
    iget-object v1, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mExt:Lcom/android/settings/ext/IApnEditorExt;

    iget-object v2, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mApnTypeList:Lcom/mediatek/gemini/ApnTypePreference;

    invoke-interface {v1, v2}, Lcom/android/settings/ext/IApnEditorExt;->setPreferenceState(Landroid/preference/DialogPreference;)V

    .line 490
    :cond_0
    return-void

    .line 477
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 780
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 781
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/gemini/GeminiApnEditor;->validateAndSave(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 783
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 785
    const-string v0, "pos"

    iget-object v1, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 789
    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 1004
    invoke-virtual {p0, p2}, Lcom/mediatek/gemini/GeminiApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1005
    .local v0, pref:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 1006
    iget-object v1, p0, Lcom/mediatek/gemini/GeminiApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1007
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/gemini/GeminiApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1014
    :cond_0
    :goto_0
    return-void

    .line 1008
    :cond_1
    const-string v1, "carrier_enabled"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1009
    const/4 v1, 0x1

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/gemini/GeminiApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1011
    :cond_2
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/gemini/GeminiApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
