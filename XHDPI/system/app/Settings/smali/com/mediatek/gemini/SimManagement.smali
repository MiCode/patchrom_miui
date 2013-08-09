.class public Lcom/mediatek/gemini/SimManagement;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SimManagement.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/mediatek/gemini/SimInfoEnablePreference$OnPreferenceClickCallback;


# static fields
.field private static sIsVoipAvailable:Z

.field private static sVTCallSupport:Z


# instance fields
.field private mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

.field private mConnService:Landroid/net/ConnectivityManager;

.field private mDataSwitchMsgIndex:I

.field private mExt:Lcom/android/settings/ext/ISimManagementExt;

.field private mGprsDefaultSIMObserver:Landroid/database/ContentObserver;

.field private mGprsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIs3gOff:Z

.field private mIsDataConnectActing:Z

.field private mIsSIMRadioSwitching:Z

.field private mIsSlot1Insert:Z

.field private mIsSlot2Insert:Z

.field private mIsSmsCapable:Z

.field private mIsVoiceCapable:Z

.field private mProDlgMsgId:I

.field private mRemoveProgDlg:Z

.field private mSelectedGprsSimId:J

.field private mSelectedVideoSimId:J

.field private mSimAndContacts:Landroid/preference/PreferenceScreen;

.field private mSimItemListGprs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/gemini/SimItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSimItemListSms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/gemini/SimItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSimItemListVideo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/gemini/SimItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSimItemListVoice:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/gemini/SimItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSimNum:I

.field private mSimReceiver:Landroid/content/BroadcastReceiver;

.field private mSiminfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/provider/Telephony$SIMInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSmsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

.field private mSwitchRadioStateMsg:Landroid/os/Messenger;

.field private mTelephony:Lcom/android/internal/telephony/ITelephony;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTimerHandler:Landroid/os/Handler;

.field private mToCloseSlot:I

.field private mVideoCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

.field private mVoiceCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 117
    sput-boolean v0, Lcom/mediatek/gemini/SimManagement;->sVTCallSupport:Z

    .line 118
    sput-boolean v0, Lcom/mediatek/gemini/SimManagement;->sIsVoipAvailable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 119
    iput-boolean v1, p0, Lcom/mediatek/gemini/SimManagement;->mIs3gOff:Z

    .line 125
    iput-boolean v1, p0, Lcom/mediatek/gemini/SimManagement;->mIsSlot1Insert:Z

    .line 126
    iput-boolean v1, p0, Lcom/mediatek/gemini/SimManagement;->mIsSlot2Insert:Z

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSiminfoList:Ljava/util/List;

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListVoice:Ljava/util/List;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListVideo:Ljava/util/List;

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListSms:Ljava/util/List;

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListGprs:Ljava/util/List;

    .line 168
    iput-boolean v1, p0, Lcom/mediatek/gemini/SimManagement;->mIsSIMRadioSwitching:Z

    .line 171
    iput v2, p0, Lcom/mediatek/gemini/SimManagement;->mDataSwitchMsgIndex:I

    .line 173
    iput-boolean v1, p0, Lcom/mediatek/gemini/SimManagement;->mIsVoiceCapable:Z

    .line 174
    iput-boolean v1, p0, Lcom/mediatek/gemini/SimManagement;->mIsSmsCapable:Z

    .line 175
    iput-boolean v1, p0, Lcom/mediatek/gemini/SimManagement;->mIsDataConnectActing:Z

    .line 179
    iput-boolean v1, p0, Lcom/mediatek/gemini/SimManagement;->mRemoveProgDlg:Z

    .line 180
    iput v2, p0, Lcom/mediatek/gemini/SimManagement;->mProDlgMsgId:I

    .line 183
    iput v2, p0, Lcom/mediatek/gemini/SimManagement;->mToCloseSlot:I

    .line 188
    new-instance v0, Lcom/mediatek/gemini/SimManagement$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mediatek/gemini/SimManagement$1;-><init>(Lcom/mediatek/gemini/SimManagement;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mGprsDefaultSIMObserver:Landroid/database/ContentObserver;

    .line 198
    new-instance v0, Lcom/mediatek/gemini/SimManagement$2;

    invoke-direct {v0, p0}, Lcom/mediatek/gemini/SimManagement$2;-><init>(Lcom/mediatek/gemini/SimManagement;)V

    iput-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mTimerHandler:Landroid/os/Handler;

    .line 219
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/mediatek/gemini/SimManagement$3;

    invoke-direct {v1, p0}, Lcom/mediatek/gemini/SimManagement$3;-><init>(Lcom/mediatek/gemini/SimManagement;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSwitchRadioStateMsg:Landroid/os/Messenger;

    .line 230
    new-instance v0, Lcom/mediatek/gemini/SimManagement$4;

    invoke-direct {v0, p0}, Lcom/mediatek/gemini/SimManagement$4;-><init>(Lcom/mediatek/gemini/SimManagement;)V

    iput-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSimReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/gemini/SimManagement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->updateDataConnPrefe()V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/gemini/SimManagement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->removeProgDlg()V

    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/gemini/SimManagement;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->isRadioOff()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100()Z
    .locals 1

    .prologue
    .line 101
    sget-boolean v0, Lcom/mediatek/gemini/SimManagement;->sVTCallSupport:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/mediatek/gemini/SimManagement;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mIs3gOff:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/mediatek/gemini/SimManagement;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    return v0
.end method

.method static synthetic access$1400(Lcom/mediatek/gemini/SimManagement;)Lcom/mediatek/gemini/DefaultSimPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/mediatek/gemini/SimManagement;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mTimerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    invoke-static {p0}, Lcom/mediatek/gemini/SimManagement;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/mediatek/gemini/SimManagement;)Lcom/android/settings/ext/ISimManagementExt;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mExt:Lcom/android/settings/ext/ISimManagementExt;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/mediatek/gemini/SimManagement;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mIsSIMRadioSwitching:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/mediatek/gemini/SimManagement;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/mediatek/gemini/SimManagement;->mIsSIMRadioSwitching:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/mediatek/gemini/SimManagement;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lcom/mediatek/gemini/SimManagement;->switchSimRadioState(IZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/gemini/SimManagement;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mIsDataConnectActing:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/mediatek/gemini/SimManagement;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/mediatek/gemini/SimManagement;->mDataSwitchMsgIndex:I

    return v0
.end method

.method static synthetic access$202(Lcom/mediatek/gemini/SimManagement;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/mediatek/gemini/SimManagement;->mIsDataConnectActing:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/mediatek/gemini/SimManagement;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/mediatek/gemini/SimManagement;->mSelectedGprsSimId:J

    return-wide v0
.end method

.method static synthetic access$2200(Lcom/mediatek/gemini/SimManagement;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lcom/mediatek/gemini/SimManagement;->enableDataRoaming(J)V

    return-void
.end method

.method static synthetic access$2300(Lcom/mediatek/gemini/SimManagement;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lcom/mediatek/gemini/SimManagement;->switchGprsDefautlSIM(J)V

    return-void
.end method

.method static synthetic access$2400(Lcom/mediatek/gemini/SimManagement;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/mediatek/gemini/SimManagement;->mSelectedVideoSimId:J

    return-wide v0
.end method

.method static synthetic access$2500(Lcom/mediatek/gemini/SimManagement;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lcom/mediatek/gemini/SimManagement;->switchVideoCallDefaultSIM(J)V

    return-void
.end method

.method static synthetic access$2600(Lcom/mediatek/gemini/SimManagement;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/mediatek/gemini/SimManagement;->mToCloseSlot:I

    return v0
.end method

.method static synthetic access$2602(Lcom/mediatek/gemini/SimManagement;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput p1, p0, Lcom/mediatek/gemini/SimManagement;->mToCloseSlot:I

    return p1
.end method

.method static synthetic access$2700(Lcom/mediatek/gemini/SimManagement;I)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/mediatek/gemini/SimManagement;->getSimIdBySlot(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Lcom/mediatek/gemini/SimManagement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->dealWithSwtichComplete()V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/gemini/SimManagement;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/mediatek/gemini/SimManagement;->setStatusBarEnableStatus(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/gemini/SimManagement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->updateVideoCallDefaultSIM()V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/gemini/SimManagement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->getSimInfo()V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/gemini/SimManagement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->updatePreferenceUI()V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/gemini/SimManagement;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/mediatek/gemini/SimManagement;->dealDlgOnAirplaneMode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/mediatek/gemini/SimManagement;)Lcom/mediatek/gemini/DefaultSimPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    return-object v0
.end method

.method private addSimInfoPreference()V
    .locals 18

    .prologue
    .line 562
    const-string v3, "SimManagementSettings"

    const-string v4, "addSimInfoPreference()"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    const-string v3, "sim_info"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/gemini/SimManagement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/PreferenceGroup;

    .line 565
    .local v16, simInfoListCategory:Landroid/preference/PreferenceGroup;
    invoke-virtual/range {v16 .. v16}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 566
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/gemini/SimManagement;->mSiminfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/provider/Telephony$SIMInfo;

    .line 567
    .local v17, siminfo:Landroid/provider/Telephony$SIMInfo;
    const-string v3, "SimManagementSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "siminfo.mDisplayName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const-string v3, "SimManagementSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "siminfo.mNumber = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/provider/Telephony$SIMInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    const-string v3, "SimManagementSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "siminfo.mSlot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    iget v5, v0, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const-string v3, "SimManagementSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "siminfo.mColor = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    iget v5, v0, Landroid/provider/Telephony$SIMInfo;->mColor:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const-string v3, "SimManagementSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "siminfo.mDispalyNumberFormat = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    iget v5, v0, Landroid/provider/Telephony$SIMInfo;->mDispalyNumberFormat:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    const-string v3, "SimManagementSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "siminfo.mSimId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    iget-wide v5, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    move-object/from16 v0, v17

    iget v3, v0, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/mediatek/gemini/SimManagement;->getSimIndicator(I)I

    move-result v7

    .line 576
    .local v7, status:I
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/gemini/SimManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const/4 v12, 0x1

    .line 578
    .local v12, isAirplaneModeOn:Z
    :goto_1
    new-instance v2, Lcom/mediatek/gemini/SimInfoEnablePreference;

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/provider/Telephony$SIMInfo;->mNumber:Ljava/lang/String;

    move-object/from16 v0, v17

    iget v6, v0, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    move-object/from16 v0, v17

    iget v8, v0, Landroid/provider/Telephony$SIMInfo;->mColor:I

    move-object/from16 v0, v17

    iget v9, v0, Landroid/provider/Telephony$SIMInfo;->mDispalyNumberFormat:I

    move-object/from16 v0, v17

    iget-wide v10, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-direct/range {v2 .. v12}, Lcom/mediatek/gemini/SimInfoEnablePreference;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIIIJZ)V

    .line 583
    .local v2, simInfoPref:Lcom/mediatek/gemini/SimInfoEnablePreference;
    const-string v3, "SimManagementSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "simid status is  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    if-eqz v2, :cond_0

    .line 585
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/mediatek/gemini/SimInfoEnablePreference;->setClickCallback(Lcom/mediatek/gemini/SimInfoEnablePreference$OnPreferenceClickCallback;)V

    .line 586
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v3, :cond_1

    .line 591
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    move-object/from16 v0, v17

    iget v4, v0, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/ITelephony;->isRadioOnGemini(I)Z

    move-result v15

    .line 611
    .local v15, isRadioOn:Z
    invoke-virtual {v2, v15}, Lcom/mediatek/gemini/SimInfoEnablePreference;->setCheck(Z)V

    .line 612
    const-string v3, "SimManagementSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sim card "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    iget v5, v0, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " radio state is isRadioOn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    .end local v15           #isRadioOn:Z
    :cond_1
    :goto_2
    new-instance v3, Lcom/mediatek/gemini/SimManagement$5;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v3, v0, v1, v2}, Lcom/mediatek/gemini/SimManagement$5;-><init>(Lcom/mediatek/gemini/SimManagement;Landroid/provider/Telephony$SIMInfo;Lcom/mediatek/gemini/SimInfoEnablePreference;)V

    invoke-virtual {v2, v3}, Lcom/mediatek/gemini/SimInfoEnablePreference;->setCheckBoxClickListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 645
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 576
    .end local v2           #simInfoPref:Lcom/mediatek/gemini/SimInfoEnablePreference;
    .end local v12           #isAirplaneModeOn:Z
    :cond_2
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 614
    .restart local v2       #simInfoPref:Lcom/mediatek/gemini/SimInfoEnablePreference;
    .restart local v12       #isAirplaneModeOn:Z
    :catch_0
    move-exception v13

    .line 615
    .local v13, e:Landroid/os/RemoteException;
    const-string v3, "SimManagementSettings"

    const-string v4, "mTelephony exception"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 648
    .end local v2           #simInfoPref:Lcom/mediatek/gemini/SimInfoEnablePreference;
    .end local v7           #status:I
    .end local v12           #isAirplaneModeOn:Z
    .end local v13           #e:Landroid/os/RemoteException;
    .end local v17           #siminfo:Landroid/provider/Telephony$SIMInfo;
    :cond_3
    return-void
.end method

.method private buildChangeDataConnDialog(Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog;
    .locals 6
    .parameter

    .prologue
    .line 1695
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/gemini/SimManagement;->mToCloseSlot:I

    invoke-static {v0, v1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 1697
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gemini/SimManagement;->mToCloseSlot:I

    rsub-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v1

    .line 1700
    iget-object v0, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    .line 1701
    iget-object v1, v1, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    .line 1702
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0b4d

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1706
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c0b4c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/mediatek/gemini/SimManagement$13;

    invoke-direct {v2, p0}, Lcom/mediatek/gemini/SimManagement$13;-><init>(Lcom/mediatek/gemini/SimManagement;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/mediatek/gemini/SimManagement$12;

    invoke-direct {v2, p0}, Lcom/mediatek/gemini/SimManagement$12;-><init>(Lcom/mediatek/gemini/SimManagement;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1730
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private current3GSlotId()I
    .locals 4

    .prologue
    .line 766
    const/4 v1, -0x1

    .line 768
    .local v1, slot3G:I
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v2, :cond_0

    .line 769
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->get3GCapabilitySIM()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 774
    :cond_0
    :goto_0
    return v1

    .line 771
    :catch_0
    move-exception v0

    .line 772
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "SimManagementSettings"

    const-string v3, "mTelephony exception"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private dataSwitchConfirmDlgMsg(J)I
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1067
    invoke-direct {p0, p1, p2}, Lcom/mediatek/gemini/SimManagement;->findSIMInfoBySimId(J)Landroid/provider/Telephony$SIMInfo;

    move-result-object v1

    .line 1068
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v2

    .line 1069
    iget v3, v1, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v2, v3}, Lcom/mediatek/telephony/TelephonyManagerEx;->isNetworkRoaming(I)Z

    move-result v2

    .line 1070
    iget v1, v1, Landroid/provider/Telephony$SIMInfo;->mDataRoaming:I

    if-ne v1, v0, :cond_0

    .line 1071
    :goto_0
    const-string v1, "SimManagementSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isInRoaming="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isRoamingDataAllowed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    if-eqz v2, :cond_1

    .line 1076
    if-nez v0, :cond_1

    .line 1092
    const v0, 0x7f0c0a70

    .line 1112
    :goto_1
    return v0

    .line 1070
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1112
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private dealDialogOnResume()V
    .locals 5

    .prologue
    const/16 v4, 0x3ea

    const/16 v3, 0x3e9

    .line 443
    const-string v0, "SimManagementSettings"

    const-string v1, "dealDialogOnResume"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mRemoveProgDlg:Z

    if-eqz v0, :cond_0

    .line 446
    const-string v0, "SimManagementSettings"

    const-string v1, "on resume to remove dialog"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/SimManagement;->removeDialog(I)V

    .line 448
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mRemoveProgDlg:Z

    .line 450
    :cond_0
    const-string v0, "SimManagementSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRemoveProgDlg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/gemini/SimManagement;->mRemoveProgDlg:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->isRadioOff()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v3}, Lcom/mediatek/gemini/SimManagement;->isDialogShowing(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 454
    invoke-virtual {p0, v3}, Lcom/mediatek/gemini/SimManagement;->removeDialog(I)V

    .line 456
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->isRadioOff()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v4}, Lcom/mediatek/gemini/SimManagement;->isDialogShowing(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 457
    invoke-virtual {p0, v4}, Lcom/mediatek/gemini/SimManagement;->removeDialog(I)V

    .line 459
    :cond_2
    return-void
.end method

.method private dealDlgOnAirplaneMode(Ljava/lang/String;)V
    .locals 4
    .parameter "action"

    .prologue
    const/16 v3, 0x3ea

    const/16 v2, 0x3e9

    .line 461
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->isRadioOff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    const-string v0, "SimManagementSettings"

    const-string v1, "dealDlgOnAirplaneMode"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/SimManagement;->isDialogShowing(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 464
    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/SimManagement;->removeDialog(I)V

    .line 469
    :cond_0
    :goto_0
    return-void

    .line 465
    :cond_1
    invoke-virtual {p0, v3}, Lcom/mediatek/gemini/SimManagement;->isDialogShowing(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    invoke-virtual {p0, v3}, Lcom/mediatek/gemini/SimManagement;->removeDialog(I)V

    goto :goto_0
.end method

.method private dealWithSwtichComplete()V
    .locals 4

    .prologue
    .line 1358
    const-string v0, "SimManagementSettings"

    const-string v1, "dealWithSwtichComplete()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    const-string v0, "SimManagementSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsSIMModeSwitching is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/gemini/SimManagement;->mIsSIMRadioSwitching:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    iget-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mIsSIMRadioSwitching:Z

    if-nez v0, :cond_1

    .line 1361
    const-string v0, "SimManagementSettings"

    const-string v1, "dual mode change by other not sim management"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1373
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mExt:Lcom/android/settings/ext/ISimManagementExt;

    invoke-interface {v0, p0}, Lcom/android/settings/ext/ISimManagementExt;->showChangeDataConnDialog(Landroid/preference/PreferenceFragment;)V

    .line 1375
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->showChangeDataConnDialog()V

    .line 1378
    :cond_0
    return-void

    .line 1363
    :cond_1
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/SimManagement;->isDialogShowing(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1364
    const-string v0, "SimManagementSettings"

    const-string v1, "Dialog is not show yet but dual sim modechange has sent msg"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mTimerHandler:Landroid/os/Handler;

    const/16 v1, 0x7d1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1367
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->removeProgDlg()V

    .line 1368
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mIsSIMRadioSwitching:Z

    goto :goto_0
.end method

.method private enableDataRoaming(J)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1536
    const-string v0, "SimManagementSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableDataRoaming with SimId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v0, :cond_0

    .line 1539
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p1, p2}, Landroid/provider/Telephony$SIMInfo;->getSlotById(Landroid/content/Context;J)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony;->setDataRoamingEnabledGemini(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1546
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v3, p1, p2}, Landroid/provider/Telephony$SIMInfo;->setDataRoaming(Landroid/content/Context;IJ)I

    .line 1548
    :goto_0
    return-void

    .line 1542
    :catch_0
    move-exception v0

    .line 1543
    const-string v0, "SimManagementSettings"

    const-string v1, "mTelephony exception"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private findListPosBySimId(J)I
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1116
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSiminfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1117
    const/4 v0, -0x1

    .line 1119
    if-ne v1, v2, :cond_0

    .line 1120
    const/4 v0, 0x0

    .line 1123
    :cond_0
    if-le v1, v2, :cond_1

    .line 1124
    invoke-direct {p0, p1, p2}, Lcom/mediatek/gemini/SimManagement;->findSIMInfoBySimId(J)Landroid/provider/Telephony$SIMInfo;

    move-result-object v2

    .line 1125
    if-nez v2, :cond_2

    .line 1126
    const-string v2, "SimManagementSettings"

    const-string v3, "Error can not find the sim id with related siminfo"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    :cond_1
    :goto_0
    const-string v2, "SimManagementSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " sim card inserted and the sim is in pos with "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    return v0

    .line 1129
    :cond_2
    iget v0, v2, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    goto :goto_0
.end method

.method private findSIMInfoBySimId(J)Landroid/provider/Telephony$SIMInfo;
    .locals 4
    .parameter

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSiminfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/Telephony$SIMInfo;

    .line 1138
    iget-wide v2, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 1143
    :goto_0
    return-object v0

    .line 1142
    :cond_1
    const-string v0, "SimManagementSettings"

    const-string v1, "Error happend on findSIMInfoBySimId no siminfo find"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findSIMInofBySlotId(I)Landroid/provider/Telephony$SIMInfo;
    .locals 3
    .parameter

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSiminfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/Telephony$SIMInfo;

    .line 1148
    iget v2, v0, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-ne v2, p1, :cond_0

    .line 1153
    :goto_0
    return-object v0

    .line 1152
    :cond_1
    const-string v0, "SimManagementSettings"

    const-string v1, "Error happend on findSIMInofBySlotId no siminfo find"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDataValue(Ljava/lang/String;)J
    .locals 3
    .parameter "dataString"

    .prologue
    .line 1603
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-wide/16 v1, -0x5

    invoke-static {v0, p1, v1, v2}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 2
    .parameter

    .prologue
    .line 1413
    const-string v0, "state"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1414
    if-eqz v0, :cond_0

    .line 1415
    const-class v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 1417
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0
.end method

.method private getSIMInfoById(Ljava/lang/Long;)Landroid/provider/Telephony$SIMInfo;
    .locals 6
    .parameter

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSiminfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/Telephony$SIMInfo;

    .line 1058
    iget-wide v2, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 1063
    :goto_0
    return-object v0

    .line 1062
    :cond_1
    const-string v0, "SimManagementSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error there is no correct siminfo found by simid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSimIdBySlot(I)J
    .locals 2
    .parameter "slot"

    .prologue
    .line 1673
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    iget-wide v0, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    return-wide v0
.end method

.method private getSimIndicator(I)I
    .locals 4
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1224
    const-string v1, "SimManagementSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimIndicator---slotId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v1, :cond_0

    .line 1227
    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getSimIndicatorStateGemini(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 1238
    :cond_0
    :goto_0
    return v0

    .line 1233
    :catch_0
    move-exception v1

    .line 1234
    const-string v1, "SimManagementSettings"

    const-string v2, "RemoteException"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1236
    :catch_1
    move-exception v1

    .line 1237
    const-string v1, "SimManagementSettings"

    const-string v2, "NullPointerException"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getSimInfo()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 490
    const-string v2, "SimManagementSettings"

    const-string v3, "getSimInfo()"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSiminfoList:Ljava/util/List;

    .line 492
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSiminfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    .line 493
    const-string v2, "SimManagementSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "total inserted sim card ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSiminfoList:Ljava/util/List;

    new-instance v3, Lcom/mediatek/gemini/GeminiUtils$SIMInfoComparable;

    invoke-direct {v3}, Lcom/mediatek/gemini/GeminiUtils$SIMInfoComparable;-><init>()V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 497
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSiminfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 498
    const-string v3, "SimManagementSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "siminfo.mDisplayName = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSiminfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;

    iget-object v2, v2, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    const-string v3, "SimManagementSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "siminfo.mNumber = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSiminfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;

    iget-object v2, v2, Landroid/provider/Telephony$SIMInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSiminfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;

    iget v1, v2, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    .line 501
    .local v1, slot:I
    const-string v2, "SimManagementSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "siminfo.mSlot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    if-nez v1, :cond_1

    .line 503
    iput-boolean v7, p0, Lcom/mediatek/gemini/SimManagement;->mIsSlot1Insert:Z

    .line 507
    :cond_0
    :goto_1
    const-string v3, "SimManagementSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "siminfo.mColor = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSiminfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;

    iget v2, v2, Landroid/provider/Telephony$SIMInfo;->mColor:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    const-string v3, "SimManagementSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "siminfo.mDispalyNumberFormat = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSiminfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;

    iget v2, v2, Landroid/provider/Telephony$SIMInfo;->mDispalyNumberFormat:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const-string v3, "SimManagementSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "siminfo.mSimId = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSiminfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;

    iget-wide v5, v2, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 504
    :cond_1
    if-ne v1, v7, :cond_0

    .line 505
    iput-boolean v7, p0, Lcom/mediatek/gemini/SimManagement;->mIsSlot2Insert:Z

    goto :goto_1

    .line 512
    .end local v1           #slot:I
    :cond_2
    return-void
.end method

.method private initIntentFilter()V
    .locals 2

    .prologue
    .line 395
    const-string v0, "SimManagementSettings"

    const-string v1, "initIntentFilter"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mIntentFilter:Landroid/content/IntentFilter;

    .line 398
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_SETTING_INFO_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.android.mms.transaction.START"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.android.mms.transaction.STOP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_NAME_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 410
    return-void
.end method

.method private isGPRSEnable()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1614
    .line 1616
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/SimManagement;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1617
    if-eqz v0, :cond_3

    .line 1618
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1619
    if-eqz v0, :cond_3

    .line 1620
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    .line 1621
    const-string v3, "SimManagementSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mms state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-eq v0, v3, :cond_0

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v3, :cond_1

    :cond_0
    move v0, v2

    .line 1626
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->isRadioOff()Z

    move-result v3

    .line 1627
    const-string v4, "SimManagementSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isMMSProcess="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isRadioOff="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    if-nez v0, :cond_2

    if-nez v3, :cond_2

    :goto_1
    return v2

    :cond_1
    move v0, v1

    .line 1622
    goto :goto_0

    :cond_2
    move v2, v1

    .line 1629
    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private isRadioOff()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v3, -0x1

    .line 1636
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dual_sim_mode_setting"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    if-nez v1, :cond_1

    .line 1641
    :cond_0
    :goto_0
    const-string v1, "SimManagementSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAllRadioOff="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    return v0

    .line 1636
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isRadioOff(Landroid/content/Context;I)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1737
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dual_sim_mode_setting"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1739
    if-nez v2, :cond_1

    .line 1745
    :cond_0
    :goto_0
    return v0

    .line 1742
    :cond_1
    if-nez p1, :cond_2

    .line 1743
    if-ne v2, v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 1745
    :cond_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private isVoipAvailable()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1496
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enable_internet_call_value"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1499
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private removeProgDlg()V
    .locals 2

    .prologue
    .line 1381
    const-string v0, "SimManagementSettings"

    const-string v1, "removeProgDlg()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1383
    const-string v0, "SimManagementSettings"

    const-string v1, "Progress Dialog removed"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/SimManagement;->removeDialog(I)V

    .line 1389
    :goto_0
    return-void

    .line 1386
    :cond_0
    const-string v0, "SimManagementSettings"

    const-string v1, "under onpause not enable to remove set flag as true"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mRemoveProgDlg:Z

    goto :goto_0
.end method

.method private removeUnusedPref()V
    .locals 5

    .prologue
    .line 472
    const-string v3, "SimManagementSettings"

    const-string v4, "removeUnusedPref()"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-boolean v3, p0, Lcom/mediatek/gemini/SimManagement;->mIsVoiceCapable:Z

    if-nez v3, :cond_0

    .line 474
    const/4 v3, 0x0

    sput-boolean v3, Lcom/mediatek/gemini/SimManagement;->sVTCallSupport:Z

    .line 476
    :cond_0
    const-string v3, "default_sim"

    invoke-virtual {p0, v3}, Lcom/mediatek/gemini/SimManagement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    .line 477
    .local v2, pref:Landroid/preference/PreferenceGroup;
    iget-object v3, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 478
    iget-object v3, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 479
    iget-object v3, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 480
    const-string v3, "general_settings"

    invoke-virtual {p0, v3}, Lcom/mediatek/gemini/SimManagement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 481
    .local v1, generalSettings:Landroid/preference/PreferenceGroup;
    if-eqz v1, :cond_1

    .line 482
    const-string v3, "contacts_sim"

    invoke-virtual {p0, v3}, Lcom/mediatek/gemini/SimManagement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 483
    .local v0, contactsSim:Landroid/preference/Preference;
    if-eqz v0, :cond_1

    .line 484
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 487
    .end local v0           #contactsSim:Landroid/preference/Preference;
    :cond_1
    return-void
.end method

.method private setIconForDefaultSimPref()V
    .locals 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    const v1, 0x7f020066

    invoke-virtual {v0, v1}, Lcom/mediatek/gemini/DefaultSimPreference;->setIcon(I)V

    .line 373
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    const v1, 0x7f020065

    invoke-virtual {v0, v1}, Lcom/mediatek/gemini/DefaultSimPreference;->setIcon(I)V

    .line 374
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    const v1, 0x7f020064

    invoke-virtual {v0, v1}, Lcom/mediatek/gemini/DefaultSimPreference;->setIcon(I)V

    .line 375
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    const v1, 0x7f020063

    invoke-virtual {v0, v1}, Lcom/mediatek/gemini/DefaultSimPreference;->setIcon(I)V

    .line 376
    return-void
.end method

.method private setNoSimInfoUi()V
    .locals 5

    .prologue
    .line 534
    const-string v2, "sim_info"

    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/SimManagement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 535
    .local v1, simInfoListCategory:Landroid/preference/PreferenceGroup;
    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 536
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 537
    .local v0, pref:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 538
    const v2, 0x7f0c0a65

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 539
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 541
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 543
    iget-boolean v2, p0, Lcom/mediatek/gemini/SimManagement;->mIsVoiceCapable:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->isVoipAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 544
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/mediatek/gemini/DefaultSimPreference;->setEnabled(Z)V

    .line 559
    :goto_0
    return-void

    .line 546
    :cond_1
    const-string v2, "SimManagementSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finish() sim management for sim hot swap as mSimNum = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    const-string v2, "tablet"

    const-string v3, "ro.build.characteristics"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 548
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 550
    const-string v2, "SimManagementSettings"

    const-string v3, "[Tablet] It is single pane, so finish it!"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->finish()V

    goto :goto_0

    .line 553
    :cond_2
    const-string v2, "SimManagementSettings"

    const-string v3, "[Tablet] It is multi pane, so do not finish it!"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 556
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->finish()V

    goto :goto_0
.end method

.method private setPreferenceProperty()V
    .locals 12

    .prologue
    .line 778
    const-string v0, "voice_call_sim_setting"

    invoke-direct {p0, v0}, Lcom/mediatek/gemini/SimManagement;->getDataValue(Ljava/lang/String;)J

    move-result-wide v2

    .line 779
    const-string v0, "sms_sim_setting"

    invoke-direct {p0, v0}, Lcom/mediatek/gemini/SimManagement;->getDataValue(Ljava/lang/String;)J

    move-result-wide v4

    .line 780
    const-string v0, "gprs_connection_sim_setting"

    invoke-direct {p0, v0}, Lcom/mediatek/gemini/SimManagement;->getDataValue(Ljava/lang/String;)J

    move-result-wide v6

    .line 781
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->current3GSlotId()I

    move-result v8

    .line 782
    const-string v0, "SimManagementSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "voicecallID ="

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, " smsID ="

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, " dataconnectionID ="

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, " videocallSlotID ="

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    const/4 v0, 0x0

    .line 786
    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mSiminfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v1, v0

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/Telephony$SIMInfo;

    .line 787
    if-eqz v0, :cond_3

    .line 788
    iget-wide v10, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    cmp-long v10, v10, v2

    if-nez v10, :cond_0

    .line 789
    iget-boolean v10, p0, Lcom/mediatek/gemini/SimManagement;->mIsVoiceCapable:Z

    if-eqz v10, :cond_0

    .line 790
    iget-object v10, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v10, v1}, Lcom/mediatek/gemini/DefaultSimPreference;->setInitValue(I)V

    .line 791
    iget-object v10, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    iget-object v11, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/mediatek/gemini/DefaultSimPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 794
    :cond_0
    iget-wide v10, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    cmp-long v10, v10, v4

    if-nez v10, :cond_1

    .line 795
    iget-object v10, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v10, v1}, Lcom/mediatek/gemini/DefaultSimPreference;->setInitValue(I)V

    .line 796
    iget-object v10, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    iget-object v11, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/mediatek/gemini/DefaultSimPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 801
    :cond_1
    iget-wide v10, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    cmp-long v10, v10, v6

    if-nez v10, :cond_2

    .line 802
    iget-object v10, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v10, v1}, Lcom/mediatek/gemini/DefaultSimPreference;->setInitValue(I)V

    .line 803
    iget-object v10, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    iget-object v11, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/mediatek/gemini/DefaultSimPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 812
    :cond_2
    sget-boolean v10, Lcom/mediatek/gemini/SimManagement;->sVTCallSupport:Z

    if-eqz v10, :cond_3

    .line 813
    iget v10, v0, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-ne v10, v8, :cond_3

    .line 814
    iget-object v10, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v10, v1}, Lcom/mediatek/gemini/DefaultSimPreference;->setInitValue(I)V

    .line 815
    iget-object v10, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    iget-object v0, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v10, v0}, Lcom/mediatek/gemini/DefaultSimPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 819
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 821
    :cond_4
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSiminfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 822
    iget-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mIsVoiceCapable:Z

    if-eqz v0, :cond_5

    .line 823
    const-wide/16 v9, -0x2

    cmp-long v0, v2, v9

    if-nez v0, :cond_9

    .line 824
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v0, v1}, Lcom/mediatek/gemini/DefaultSimPreference;->setInitValue(I)V

    .line 825
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    const v2, 0x7f0c0a52

    invoke-virtual {v0, v2}, Lcom/mediatek/gemini/DefaultSimPreference;->setSummary(I)V

    .line 837
    :cond_5
    :goto_1
    const-wide/16 v2, -0x1

    cmp-long v0, v4, v2

    if-nez v0, :cond_c

    .line 838
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v0, v1}, Lcom/mediatek/gemini/DefaultSimPreference;->setInitValue(I)V

    .line 839
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    const v2, 0x7f0c0a51

    invoke-virtual {v0, v2}, Lcom/mediatek/gemini/DefaultSimPreference;->setSummary(I)V

    .line 846
    :cond_6
    :goto_2
    const-wide/16 v2, 0x0

    cmp-long v0, v6, v2

    if-nez v0, :cond_d

    .line 847
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v0, v1}, Lcom/mediatek/gemini/DefaultSimPreference;->setInitValue(I)V

    .line 848
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    const v1, 0x7f0c0a53

    invoke-virtual {v0, v1}, Lcom/mediatek/gemini/DefaultSimPreference;->setSummary(I)V

    .line 860
    :cond_7
    :goto_3
    sget-boolean v0, Lcom/mediatek/gemini/SimManagement;->sVTCallSupport:Z

    if-eqz v0, :cond_8

    .line 861
    const/4 v0, -0x1

    if-ne v8, v0, :cond_e

    .line 862
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mIs3gOff:Z

    .line 863
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    const v1, 0x7f0c0a54

    invoke-virtual {v0, v1}, Lcom/mediatek/gemini/DefaultSimPreference;->setSummary(I)V

    .line 868
    :goto_4
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v0, :cond_8

    .line 870
    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    iget-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mIs3gOff:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->is3GSwitchLocked()Z

    move-result v0

    if-nez v0, :cond_f

    iget v0, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_f

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {v1, v0}, Lcom/mediatek/gemini/DefaultSimPreference;->setEnabled(Z)V

    .line 872
    const-string v0, "SimManagementSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIs3gOff="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/gemini/SimManagement;->mIs3gOff:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    const-string v0, "SimManagementSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTelephony.is3GSwitchLocked() is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->is3GSwitchLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 881
    :cond_8
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->isGPRSEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/gemini/DefaultSimPreference;->setEnabled(Z)V

    .line 882
    :goto_6
    return-void

    .line 826
    :cond_9
    const-wide/16 v9, -0x1

    cmp-long v0, v2, v9

    if-nez v0, :cond_b

    .line 827
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    sget-boolean v0, Lcom/mediatek/gemini/SimManagement;->sIsVoipAvailable:Z

    if-eqz v0, :cond_a

    add-int/lit8 v0, v1, 0x1

    :goto_7
    invoke-virtual {v2, v0}, Lcom/mediatek/gemini/DefaultSimPreference;->setInitValue(I)V

    .line 829
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    const v2, 0x7f0c0a51

    invoke-virtual {v0, v2}, Lcom/mediatek/gemini/DefaultSimPreference;->setSummary(I)V

    goto/16 :goto_1

    :cond_a
    move v0, v1

    .line 827
    goto :goto_7

    .line 831
    :cond_b
    const-wide/16 v9, -0x5

    cmp-long v0, v2, v9

    if-nez v0, :cond_5

    .line 832
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    const/4 v2, -0x5

    invoke-virtual {v0, v2}, Lcom/mediatek/gemini/DefaultSimPreference;->setInitValue(I)V

    .line 834
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    const v2, 0x7f0c032d

    invoke-virtual {v0, v2}, Lcom/mediatek/gemini/DefaultSimPreference;->setSummary(I)V

    goto/16 :goto_1

    .line 840
    :cond_c
    const-wide/16 v2, -0x5

    cmp-long v0, v4, v2

    if-nez v0, :cond_6

    .line 841
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    const v2, 0x7f0c032d

    invoke-virtual {v0, v2}, Lcom/mediatek/gemini/DefaultSimPreference;->setSummary(I)V

    goto/16 :goto_2

    .line 849
    :cond_d
    const-wide/16 v0, -0x5

    cmp-long v0, v6, v0

    if-nez v0, :cond_7

    .line 850
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    const v1, 0x7f0c032d

    invoke-virtual {v0, v1}, Lcom/mediatek/gemini/DefaultSimPreference;->setSummary(I)V

    goto/16 :goto_3

    .line 865
    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mIs3gOff:Z

    goto/16 :goto_4

    .line 870
    :cond_f
    const/4 v0, 0x0

    goto/16 :goto_5

    .line 876
    :catch_0
    move-exception v0

    .line 877
    const-string v0, "SimManagementSettings"

    const-string v1, "mTelephony exception"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method private setStatusBarEnableStatus(Z)V
    .locals 3
    .parameter

    .prologue
    .line 1586
    const-string v0, "SimManagementSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStatusBarEnableStatus("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/SimManagement;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 1589
    if-eqz v0, :cond_1

    .line 1590
    if-eqz p1, :cond_0

    .line 1591
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1600
    :goto_0
    return-void

    .line 1593
    :cond_0
    const/high16 v1, 0x121

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0

    .line 1598
    :cond_1
    const-string v0, "SimManagementSettings"

    const-string v1, "Fail to get status bar instance"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showChangeDataConnDialog()V
    .locals 6

    .prologue
    .line 1680
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gprs_connection_sim_setting"

    const-wide/16 v4, -0x5

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 1684
    .local v0, curConSimId:J
    iget v2, p0, Lcom/mediatek/gemini/SimManagement;->mToCloseSlot:I

    if-ltz v2, :cond_0

    .line 1685
    iget v2, p0, Lcom/mediatek/gemini/SimManagement;->mToCloseSlot:I

    invoke-direct {p0, v2}, Lcom/mediatek/gemini/SimManagement;->getSimIdBySlot(I)J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    .line 1686
    const/16 v2, 0x3eb

    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/SimManagement;->showDialog(I)V

    .line 1689
    :cond_0
    return-void
.end method

.method private showDataConnDialog(Z)V
    .locals 4
    .parameter

    .prologue
    .line 1395
    .line 1396
    if-eqz p1, :cond_0

    .line 1397
    const-wide/16 v0, 0x7530

    .line 1401
    :goto_0
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mTimerHandler:Landroid/os/Handler;

    const/16 v3, 0x7d0

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1402
    const v0, 0x7f0c0a67

    invoke-direct {p0, v0}, Lcom/mediatek/gemini/SimManagement;->showProgressDlg(I)V

    .line 1403
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mIsDataConnectActing:Z

    .line 1404
    return-void

    .line 1399
    :cond_0
    const-wide/16 v0, 0x2710

    goto :goto_0
.end method

.method private showProgressDlg(I)V
    .locals 3
    .parameter

    .prologue
    .line 1407
    const-string v0, "SimManagementSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showProgressDlg() with dialogMsg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    iput p1, p0, Lcom/mediatek/gemini/SimManagement;->mProDlgMsgId:I

    .line 1409
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/SimManagement;->showDialog(I)V

    .line 1410
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/SimManagement;->setCancelable(Z)V

    .line 1411
    return-void
.end method

.method private switchGprsDefautlSIM(J)V
    .locals 6
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    .line 1510
    const-string v0, "SimManagementSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchGprsDefautlSIM() with simid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    cmp-long v0, p1, v3

    if-gez v0, :cond_1

    .line 1533
    :cond_0
    :goto_0
    return-void

    .line 1514
    :cond_1
    cmp-long v0, p1, v3

    if-lez v0, :cond_2

    const/4 v0, 0x1

    .line 1516
    :goto_1
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gprs_connection_sim_setting"

    const-wide/16 v3, -0x5

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    .line 1519
    const-string v3, "SimManagementSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "curConSimId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    cmp-long v1, p1, v1

    if-eqz v1, :cond_0

    .line 1523
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DATA_DEFAULT_SIM"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1524
    const-string v2, "simid"

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1527
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1528
    invoke-direct {p0, v0}, Lcom/mediatek/gemini/SimManagement;->showDataConnDialog(Z)V

    goto :goto_0

    .line 1514
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private switchSimRadioState(IZ)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x3

    const/4 v0, 0x2

    const/4 v8, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1242
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "dual_sim_mode_setting"

    invoke-static {v3, v5, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1244
    const-string v5, "SimManagementSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The current dual sim mode is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mExt:Lcom/android/settings/ext/ISimManagementExt;

    invoke-interface {v5, v8}, Lcom/android/settings/ext/ISimManagementExt;->setToClosedSimSlot(I)V

    .line 1249
    iput v8, p0, Lcom/mediatek/gemini/SimManagement;->mToCloseSlot:I

    .line 1252
    packed-switch v3, :pswitch_data_0

    .line 1335
    const-string v0, "SimManagementSettings"

    const-string v1, "Error not correct values"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    :goto_0
    return-void

    .line 1254
    :pswitch_0
    if-nez p1, :cond_1

    move v0, v1

    .line 1259
    :cond_0
    :goto_1
    const-string v2, "SimManagementSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Turning on only sim "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v0

    .line 1341
    :goto_2
    if-eqz v1, :cond_a

    .line 1342
    const v0, 0x7f0c0a59

    .line 1346
    :goto_3
    invoke-direct {p0, v0}, Lcom/mediatek/gemini/SimManagement;->showProgressDlg(I)V

    .line 1349
    const-string v0, "SimManagementSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dualState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isRadioOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dual_sim_mode_setting"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1352
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DUAL_SIM_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1353
    const-string v1, "mode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1354
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1256
    :cond_1
    if-eq p1, v1, :cond_0

    move v0, v2

    goto :goto_1

    .line 1263
    :pswitch_1
    if-nez p1, :cond_3

    .line 1264
    if-eqz p2, :cond_2

    .line 1265
    const-string v0, "SimManagementSettings"

    const-string v2, "try to turn on slot 1 again since it is already on"

    invoke-static {v0, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 1272
    :goto_4
    const-string v0, "SimManagementSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Turning off sim "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and all sim radio is off"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    move v1, v2

    .line 1270
    goto :goto_4

    .line 1274
    :cond_3
    if-ne p1, v1, :cond_c

    .line 1275
    iget-boolean v2, p0, Lcom/mediatek/gemini/SimManagement;->mIsSlot1Insert:Z

    if-eqz v2, :cond_4

    .line 1277
    const-string v0, "SimManagementSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sim 0 was radio on and now turning on sim "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    :goto_5
    move v2, v0

    .line 1283
    goto/16 :goto_2

    .line 1281
    :cond_4
    const-string v2, "SimManagementSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Turning on only sim "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1287
    :pswitch_2
    if-ne p1, v1, :cond_6

    .line 1288
    if-eqz p2, :cond_5

    .line 1289
    const-string v0, "SimManagementSettings"

    const-string v2, "try to turn on slot 2 again since it is already on"

    invoke-static {v0, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    :goto_6
    const-string v0, "SimManagementSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Turning off sim "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " and all sim radio is off"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    goto/16 :goto_2

    :cond_5
    move v1, v2

    move v3, v2

    .line 1294
    goto :goto_6

    .line 1298
    :cond_6
    if-nez p1, :cond_c

    .line 1299
    iget-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mIsSlot2Insert:Z

    if-eqz v0, :cond_7

    .line 1301
    const-string v0, "SimManagementSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sim 1 was radio on and now turning on sim "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    move v2, v4

    .line 1306
    goto/16 :goto_2

    .line 1304
    :cond_7
    const-string v0, "SimManagementSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Turning on only sim "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v1

    goto :goto_7

    .line 1310
    :pswitch_3
    if-nez p2, :cond_9

    .line 1311
    if-nez p1, :cond_8

    .line 1314
    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mExt:Lcom/android/settings/ext/ISimManagementExt;

    invoke-interface {v1, v2}, Lcom/android/settings/ext/ISimManagementExt;->setToClosedSimSlot(I)V

    .line 1317
    iput v2, p0, Lcom/mediatek/gemini/SimManagement;->mToCloseSlot:I

    .line 1326
    :goto_8
    const-string v1, "SimManagementSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Turning off only sim "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    move v2, v0

    .line 1327
    goto/16 :goto_2

    .line 1318
    :cond_8
    if-ne p1, v1, :cond_b

    .line 1321
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mExt:Lcom/android/settings/ext/ISimManagementExt;

    invoke-interface {v0, v1}, Lcom/android/settings/ext/ISimManagementExt;->setToClosedSimSlot(I)V

    .line 1324
    iput v1, p0, Lcom/mediatek/gemini/SimManagement;->mToCloseSlot:I

    move v0, v1

    goto :goto_8

    .line 1329
    :cond_9
    const-string v0, "SimManagementSettings"

    const-string v2, "try to turn on but actually they are all on"

    invoke-static {v0, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 1333
    goto/16 :goto_2

    .line 1344
    :cond_a
    const v0, 0x7f0c0a5a

    goto/16 :goto_3

    :cond_b
    move v0, v2

    goto :goto_8

    :cond_c
    move v1, v2

    goto/16 :goto_2

    .line 1252
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private switchVideoCallDefaultSIM(J)V
    .locals 4
    .parameter

    .prologue
    .line 1556
    const-string v0, "SimManagementSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchVideoCallDefaultSIM to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v0, :cond_0

    .line 1558
    invoke-direct {p0, p1, p2}, Lcom/mediatek/gemini/SimManagement;->findSIMInfoBySimId(J)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 1559
    const-string v1, "SimManagementSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "siminfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    if-nez v0, :cond_1

    .line 1561
    const-string v0, "SimManagementSettings"

    const-string v1, "Error no corrent siminfo found"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    :cond_0
    :goto_0
    return-void

    .line 1565
    :cond_1
    :try_start_0
    const-string v1, "SimManagementSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set sim slot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with 3G capability"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    iget v0, v0, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/ITelephony;->set3GCapabilitySIM(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1568
    const v0, 0x7f0c0a68

    invoke-direct {p0, v0}, Lcom/mediatek/gemini/SimManagement;->showProgressDlg(I)V

    .line 1569
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mTimerHandler:Landroid/os/Handler;

    const/16 v1, 0x7d2

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1573
    :catch_0
    move-exception v0

    .line 1574
    const-string v0, "SimManagementSettings"

    const-string v1, "mTelephony exception"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1571
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->updateVideoCallDefaultSIM()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private updateDataConnPrefe()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    .line 1426
    .line 1428
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gprs_connection_sim_setting"

    const-wide/16 v2, -0x5

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 1440
    const-string v2, "SimManagementSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Gprs connection SIM changed with simid is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    cmp-long v2, v0, v5

    if-nez v2, :cond_0

    .line 1444
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mSiminfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/gemini/DefaultSimPreference;->setInitValue(I)V

    .line 1445
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    const v1, 0x7f0c0a53

    invoke-virtual {v0, v1}, Lcom/mediatek/gemini/DefaultSimPreference;->setSummary(I)V

    .line 1460
    :goto_0
    return-void

    .line 1446
    :cond_0
    cmp-long v2, v0, v5

    if-lez v2, :cond_2

    .line 1449
    invoke-direct {p0, v0, v1}, Lcom/mediatek/gemini/SimManagement;->findListPosBySimId(J)I

    move-result v2

    .line 1450
    invoke-direct {p0, v0, v1}, Lcom/mediatek/gemini/SimManagement;->findSIMInfoBySimId(J)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 1451
    if-nez v0, :cond_1

    .line 1452
    const-string v0, "SimManagementSettings"

    const-string v1, "Error no correct siminfo get..."

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1455
    :cond_1
    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v1, v2}, Lcom/mediatek/gemini/DefaultSimPreference;->setInitValue(I)V

    .line 1456
    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    iget-object v0, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/mediatek/gemini/DefaultSimPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1458
    :cond_2
    const-string v0, "SimManagementSettings"

    const-string v1, "Error wrong simid need to check..."

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateDefaultSIMSummary(Lcom/mediatek/gemini/DefaultSimPreference;Ljava/lang/Long;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 1035
    const-string v0, "SimManagementSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDefaultSIMSummary() with simid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 1037
    invoke-direct {p0, p2}, Lcom/mediatek/gemini/SimManagement;->getSIMInfoById(Ljava/lang/Long;)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 1038
    if-eqz v0, :cond_0

    .line 1039
    iget-object v0, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/mediatek/gemini/DefaultSimPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1048
    :cond_0
    :goto_0
    return-void

    .line 1041
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 1042
    const v0, 0x7f0c0a52

    invoke-virtual {p1, v0}, Lcom/mediatek/gemini/DefaultSimPreference;->setSummary(I)V

    goto :goto_0

    .line 1043
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 1044
    const v0, 0x7f0c0a51

    invoke-virtual {p1, v0}, Lcom/mediatek/gemini/DefaultSimPreference;->setSummary(I)V

    goto :goto_0

    .line 1045
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 1046
    const v0, 0x7f0c0a53

    invoke-virtual {p1, v0}, Lcom/mediatek/gemini/DefaultSimPreference;->setSummary(I)V

    goto :goto_0
.end method

.method private updateGprsSim(J)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 963
    const-string v0, "SimManagementSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 968
    iput v3, p0, Lcom/mediatek/gemini/SimManagement;->mDataSwitchMsgIndex:I

    .line 974
    :goto_0
    iget v0, p0, Lcom/mediatek/gemini/SimManagement;->mDataSwitchMsgIndex:I

    if-eq v0, v3, :cond_1

    .line 977
    iput-wide p1, p0, Lcom/mediatek/gemini/SimManagement;->mSelectedGprsSimId:J

    .line 978
    const/16 v0, 0x3ea

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/SimManagement;->showDialog(I)V

    .line 979
    new-instance v0, Lcom/mediatek/gemini/SimManagement$7;

    invoke-direct {v0, p0}, Lcom/mediatek/gemini/SimManagement$7;-><init>(Lcom/mediatek/gemini/SimManagement;)V

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/SimManagement;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 985
    :goto_1
    return-void

    .line 970
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/mediatek/gemini/SimManagement;->dataSwitchConfirmDlgMsg(J)I

    move-result v0

    iput v0, p0, Lcom/mediatek/gemini/SimManagement;->mDataSwitchMsgIndex:I

    goto :goto_0

    .line 975
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/mediatek/gemini/SimManagement;->switchGprsDefautlSIM(J)V

    goto :goto_1
.end method

.method private updatePreferenceUI()V
    .locals 2

    .prologue
    .line 516
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 517
    const-string v0, "SimManagementSettings"

    const-string v1, "updatePreferenceUI() and update UI"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget v0, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 519
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->initDefaultSimPreference()V

    .line 520
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->setPreferenceProperty()V

    .line 521
    iget v0, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    if-lez v0, :cond_1

    .line 523
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->addSimInfoPreference()V

    .line 531
    :goto_1
    return-void

    .line 518
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 525
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->setNoSimInfoUi()V

    goto :goto_1

    .line 528
    :cond_2
    const-string v0, "SimManagementSettings"

    const-string v1, "on backgroud no need update preference"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateSimRadioState(IZ)V
    .locals 1
    .parameter "slot"
    .parameter "isChecked"

    .prologue
    .line 651
    iget-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mIsSIMRadioSwitching:Z

    if-nez v0, :cond_0

    .line 653
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mIsSIMRadioSwitching:Z

    .line 662
    invoke-direct {p0, p1, p2}, Lcom/mediatek/gemini/SimManagement;->switchSimRadioState(IZ)V

    .line 664
    :cond_0
    return-void
.end method

.method private updateVideoCallDefaultSIM()V
    .locals 4

    .prologue
    .line 1467
    const-string v0, "SimManagementSettings"

    const-string v1, "updateVideoCallDefaultSIM()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v0, :cond_0

    .line 1470
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->get3GCapabilitySIM()I

    move-result v0

    .line 1471
    const-string v1, "SimManagementSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateVideoCallDefaultSIM()---slotId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    if-gez v0, :cond_1

    .line 1490
    :cond_0
    :goto_0
    return-void

    .line 1475
    :cond_1
    invoke-direct {p0, v0}, Lcom/mediatek/gemini/SimManagement;->findSIMInofBySlotId(I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 1476
    if-eqz v0, :cond_2

    .line 1477
    iget-wide v1, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-direct {p0, v1, v2}, Lcom/mediatek/gemini/SimManagement;->findListPosBySimId(J)I

    move-result v1

    .line 1478
    if-ltz v1, :cond_0

    .line 1479
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v2, v1}, Lcom/mediatek/gemini/DefaultSimPreference;->setInitValue(I)V

    .line 1480
    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    iget-object v0, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/mediatek/gemini/DefaultSimPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1486
    :catch_0
    move-exception v0

    .line 1487
    const-string v0, "SimManagementSettings"

    const-string v1, "mTelephony exception"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1483
    :cond_2
    :try_start_1
    const-string v0, "SimManagementSettings"

    const-string v1, "mVideoCallSimSetting.setInitValue(-1)"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/gemini/DefaultSimPreference;->setInitValue(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method protected initDefaultSimPreference()V
    .locals 12

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 667
    const-string v5, "SimManagementSettings"

    const-string v6, "initDefaultSimPreference()"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListVoice:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 669
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListVideo:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 670
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListSms:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 671
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListGprs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 673
    const/4 v1, 0x0

    .line 674
    .local v1, k:I
    const/4 v2, 0x0

    .line 675
    .local v2, simState:I
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSiminfoList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/Telephony$SIMInfo;

    .line 676
    .local v3, siminfo:Landroid/provider/Telephony$SIMInfo;
    if-eqz v3, :cond_0

    .line 677
    new-instance v4, Lcom/mediatek/gemini/SimItem;

    invoke-direct {v4, v3}, Lcom/mediatek/gemini/SimItem;-><init>(Landroid/provider/Telephony$SIMInfo;)V

    .line 678
    .local v4, simitem:Lcom/mediatek/gemini/SimItem;
    iget v5, v3, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-direct {p0, v5}, Lcom/mediatek/gemini/SimManagement;->getSimIndicator(I)I

    move-result v2

    .line 679
    iput v2, v4, Lcom/mediatek/gemini/SimItem;->mState:I

    .line 684
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->isRadioOff()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 685
    const-string v5, "SimManagementSettings"

    const-string v6, "Force the state to be radio off as airplane mode or dual sim mode"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    iput v9, v4, Lcom/mediatek/gemini/SimItem;->mState:I

    .line 688
    :cond_1
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListVoice:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 689
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListSms:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 690
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListGprs:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 693
    sget-boolean v5, Lcom/mediatek/gemini/SimManagement;->sVTCallSupport:Z

    if-eqz v5, :cond_0

    .line 695
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListVideo:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 700
    .end local v3           #siminfo:Landroid/provider/Telephony$SIMInfo;
    .end local v4           #simitem:Lcom/mediatek/gemini/SimItem;
    :cond_2
    sget-boolean v5, Lcom/mediatek/gemini/SimManagement;->sIsVoipAvailable:Z

    if-eqz v5, :cond_3

    .line 701
    const-string v5, "SimManagementSettings"

    const-string v6, "set internet call item"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    new-instance v4, Lcom/mediatek/gemini/SimItem;

    const v5, 0x7f0c0a52

    invoke-virtual {p0, v5}, Lcom/mediatek/gemini/SimManagement;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x8

    const-wide/16 v7, -0x2

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/mediatek/gemini/SimItem;-><init>(Ljava/lang/String;IJ)V

    .line 705
    .restart local v4       #simitem:Lcom/mediatek/gemini/SimItem;
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListVoice:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 707
    .end local v4           #simitem:Lcom/mediatek/gemini/SimItem;
    :cond_3
    new-instance v4, Lcom/mediatek/gemini/SimItem;

    const v5, 0x7f0c0a51

    invoke-virtual {p0, v5}, Lcom/mediatek/gemini/SimManagement;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, -0x1

    invoke-direct {v4, v5, v11, v6, v7}, Lcom/mediatek/gemini/SimItem;-><init>(Ljava/lang/String;IJ)V

    .line 711
    .restart local v4       #simitem:Lcom/mediatek/gemini/SimItem;
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListVoice:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v9, :cond_a

    .line 712
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListVoice:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 717
    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListSms:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v9, :cond_5

    .line 718
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListSms:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 720
    :cond_5
    new-instance v4, Lcom/mediatek/gemini/SimItem;

    .end local v4           #simitem:Lcom/mediatek/gemini/SimItem;
    const v5, 0x7f0c0a53

    invoke-virtual {p0, v5}, Lcom/mediatek/gemini/SimManagement;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-direct {v4, v5, v11, v6, v7}, Lcom/mediatek/gemini/SimItem;-><init>(Ljava/lang/String;IJ)V

    .line 724
    .restart local v4       #simitem:Lcom/mediatek/gemini/SimItem;
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->isRadioOff()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 725
    iput v9, v4, Lcom/mediatek/gemini/SimItem;->mState:I

    .line 727
    :cond_6
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListGprs:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 728
    const-string v5, "SimManagementSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mSimItemListVoice.size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListVoice:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mSimItemListVideo.size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListVideo:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mSimItemListSms.size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListSms:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mSimItemListSms.size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListGprs:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    sget-boolean v5, Lcom/mediatek/gemini/SimManagement;->sVTCallSupport:Z

    if-eqz v5, :cond_7

    .line 734
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListVideo:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v9, :cond_b

    .line 735
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v5, v10}, Lcom/mediatek/gemini/DefaultSimPreference;->setEnabled(Z)V

    .line 741
    :cond_7
    :goto_2
    iget-boolean v5, p0, Lcom/mediatek/gemini/SimManagement;->mIsVoiceCapable:Z

    if-eqz v5, :cond_8

    .line 742
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListVoice:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v9, :cond_c

    .line 743
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v5, v10}, Lcom/mediatek/gemini/DefaultSimPreference;->setEnabled(Z)V

    .line 749
    :cond_8
    :goto_3
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListSms:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v9, :cond_d

    .line 750
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v5, v10}, Lcom/mediatek/gemini/DefaultSimPreference;->setEnabled(Z)V

    .line 756
    :goto_4
    iget v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    if-ne v5, v9, :cond_e

    .line 757
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimAndContacts:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v10}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 762
    :cond_9
    :goto_5
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    iget-object v6, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListGprs:Ljava/util/List;

    invoke-virtual {v5, v6}, Lcom/mediatek/gemini/DefaultSimPreference;->setInitData(Ljava/util/List;)V

    .line 763
    return-void

    .line 713
    :cond_a
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListVoice:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v9, :cond_4

    sget-boolean v5, Lcom/mediatek/gemini/SimManagement;->sIsVoipAvailable:Z

    if-eqz v5, :cond_4

    .line 714
    const-string v5, "SimManagementSettings"

    const-string v6, "no sim card inserted but internet call is on"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListVoice:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 737
    :cond_b
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    iget-object v6, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListVideo:Ljava/util/List;

    invoke-virtual {v5, v6}, Lcom/mediatek/gemini/DefaultSimPreference;->setInitData(Ljava/util/List;)V

    .line 738
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v5, v9}, Lcom/mediatek/gemini/DefaultSimPreference;->setEnabled(Z)V

    goto :goto_2

    .line 745
    :cond_c
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    iget-object v6, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListVoice:Ljava/util/List;

    invoke-virtual {v5, v6}, Lcom/mediatek/gemini/DefaultSimPreference;->setInitData(Ljava/util/List;)V

    .line 746
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v5, v9}, Lcom/mediatek/gemini/DefaultSimPreference;->setEnabled(Z)V

    goto :goto_3

    .line 752
    :cond_d
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    iget-object v6, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListSms:Ljava/util/List;

    invoke-virtual {v5, v6}, Lcom/mediatek/gemini/DefaultSimPreference;->setInitData(Ljava/util/List;)V

    .line 753
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v5, v9}, Lcom/mediatek/gemini/DefaultSimPreference;->setEnabled(Z)V

    goto :goto_4

    .line 758
    :cond_e
    iget v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    if-le v5, v9, :cond_9

    .line 760
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimAndContacts:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v9}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_5
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 992
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    .line 993
    if-ne p1, v1, :cond_1

    .line 994
    const-string v0, "selected_simid"

    const-wide/16 v1, -0x5

    invoke-virtual {p3, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 995
    invoke-direct {p0, v0, v1}, Lcom/mediatek/gemini/SimManagement;->updateGprsSim(J)V

    .line 1003
    :cond_0
    :goto_0
    return-void

    .line 996
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 997
    const-string v0, "extra_enable"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 998
    const-string v1, "simid"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 999
    invoke-direct {p0, v1, v0}, Lcom/mediatek/gemini/SimManagement;->updateSimRadioState(IZ)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 312
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 313
    const v2, 0x7f060063

    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/SimManagement;->addPreferencesFromResource(I)V

    .line 314
    const-string v2, "SimManagementSettings"

    const-string v3, "onCreate Sim Management"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const-string v2, "SimManagementSettings"

    const-string v3, "MTK_VT3G324M_SUPPORT=falseMTK_GEMINI_3G_SWITCH=false"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const/4 v2, 0x0

    sput-boolean v2, Lcom/mediatek/gemini/SimManagement;->sVTCallSupport:Z

    .line 321
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mConnService:Landroid/net/ConnectivityManager;

    .line 322
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/SimManagement;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 323
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    .line 325
    const-string v2, "SimManagementSettings"

    const-string v3, "FeatureOption.MTK_GEMINI_3G_SWITCH=false"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const-string v2, "general_settings"

    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/SimManagement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 329
    .local v1, parent:Landroid/preference/PreferenceGroup;
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/gemini/SimUtils;->getSimManagmentExtPlugin(Landroid/content/Context;)Lcom/android/settings/ext/ISimManagementExt;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mExt:Lcom/android/settings/ext/ISimManagementExt;

    .line 330
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mExt:Lcom/android/settings/ext/ISimManagementExt;

    invoke-interface {v2, v1}, Lcom/android/settings/ext/ISimManagementExt;->updateSimManagementPref(Landroid/preference/PreferenceGroup;)V

    .line 331
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->initIntentFilter()V

    .line 333
    const-string v2, "voice_call_sim_setting"

    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/SimManagement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/mediatek/gemini/DefaultSimPreference;

    iput-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    .line 334
    const-string v2, "video_call_sim_setting"

    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/SimManagement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/mediatek/gemini/DefaultSimPreference;

    iput-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    .line 335
    const-string v2, "sms_sim_setting"

    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/SimManagement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/mediatek/gemini/DefaultSimPreference;

    iput-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    .line 336
    const-string v2, "gprs_sim_setting"

    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/SimManagement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/mediatek/gemini/DefaultSimPreference;

    iput-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    .line 339
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->setIconForDefaultSimPref()V

    .line 341
    const-string v2, "contacts_sim"

    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/SimManagement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSimAndContacts:Landroid/preference/PreferenceScreen;

    .line 343
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v2, v4}, Lcom/mediatek/gemini/DefaultSimPreference;->setType(I)V

    .line 344
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v2, p0}, Lcom/mediatek/gemini/DefaultSimPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 345
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/mediatek/gemini/DefaultSimPreference;->setType(I)V

    .line 346
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v2, p0}, Lcom/mediatek/gemini/DefaultSimPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 350
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/mediatek/gemini/DefaultSimPreference;->setType(I)V

    .line 351
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v2, p0}, Lcom/mediatek/gemini/DefaultSimPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 352
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/mediatek/gemini/DefaultSimPreference;->setType(I)V

    .line 353
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v2, p0}, Lcom/mediatek/gemini/DefaultSimPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 354
    new-instance v2, Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-direct {v2}, Lcom/mediatek/CellConnService/CellConnMgr;-><init>()V

    iput-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    .line 355
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/CellConnService/CellConnMgr;->register(Landroid/content/Context;)V

    .line 356
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    iget-object v3, p0, Lcom/mediatek/gemini/SimManagement;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v2, v3}, Lcom/mediatek/gemini/DefaultSimPreference;->setCellConnMgr(Lcom/mediatek/CellConnService/CellConnMgr;)V

    .line 359
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v2, :cond_0

    .line 360
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    iget-object v3, p0, Lcom/mediatek/gemini/SimManagement;->mSwitchRadioStateMsg:Landroid/os/Messenger;

    invoke-virtual {v3}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/ITelephony;->registerForSimModeChange(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/gemini/SimManagement;->mSimReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/mediatek/gemini/SimManagement;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 369
    :goto_0
    return-void

    .line 363
    :catch_0
    move-exception v0

    .line 364
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "SimManagementSettings"

    const-string v3, "mTelephony exception"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .parameter

    .prologue
    const v6, 0x1080027

    const v5, 0x1040014

    const v4, 0x1040013

    const v3, 0x1040009

    .line 1158
    const-string v0, "SimManagementSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateDialog() with id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1161
    packed-switch p1, :pswitch_data_0

    .line 1220
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1163
    :pswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1164
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gemini/SimManagement;->mProDlgMsgId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1165
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1166
    iget v1, p0, Lcom/mediatek/gemini/SimManagement;->mProDlgMsgId:I

    const v2, 0x7f0c0a68

    if-ne v1, v2, :cond_0

    .line 1167
    const-string v1, "SimManagementSettings"

    const-string v2, "3G switch to dispatch home key"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 1169
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 1170
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, -0x8000

    or-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1171
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1172
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/mediatek/gemini/SimManagement;->setStatusBarEnableStatus(Z)V

    .line 1174
    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/mediatek/gemini/SimManagement;->mProDlgMsgId:I

    goto :goto_0

    .line 1177
    :pswitch_1
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1178
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1179
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gemini/SimManagement;->mDataSwitchMsgIndex:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1180
    new-instance v1, Lcom/mediatek/gemini/SimManagement$8;

    invoke-direct {v1, p0}, Lcom/mediatek/gemini/SimManagement$8;-><init>(Lcom/mediatek/gemini/SimManagement;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1189
    new-instance v1, Lcom/mediatek/gemini/SimManagement$9;

    invoke-direct {v1, p0}, Lcom/mediatek/gemini/SimManagement$9;-><init>(Lcom/mediatek/gemini/SimManagement;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1195
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 1198
    :pswitch_2
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1199
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1200
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0a69

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1202
    new-instance v1, Lcom/mediatek/gemini/SimManagement$10;

    invoke-direct {v1, p0}, Lcom/mediatek/gemini/SimManagement$10;-><init>(Lcom/mediatek/gemini/SimManagement;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1208
    new-instance v1, Lcom/mediatek/gemini/SimManagement$11;

    invoke-direct {v1, p0}, Lcom/mediatek/gemini/SimManagement$11;-><init>(Lcom/mediatek/gemini/SimManagement;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1214
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 1218
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/mediatek/gemini/SimManagement;->buildChangeDataConnDialog(Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 1161
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1014
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 1015
    const-string v0, "SimManagementSettings"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mSimReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1019
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v0, :cond_0

    .line 1020
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mSwitchRadioStateMsg:Landroid/os/Messenger;

    invoke-virtual {v1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->unregisterForSimModeChange(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1027
    :cond_0
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v0}, Lcom/mediatek/CellConnService/CellConnMgr;->unregister()V

    .line 1029
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mTimerHandler:Landroid/os/Handler;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1030
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mTimerHandler:Landroid/os/Handler;

    const/16 v1, 0x7d1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1031
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mTimerHandler:Landroid/os/Handler;

    const/16 v1, 0x7d2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1032
    :goto_0
    return-void

    .line 1022
    :catch_0
    move-exception v0

    .line 1023
    const-string v0, "SimManagementSettings"

    const-string v1, "mTelephony exception"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1007
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 1008
    const-string v0, "SimManagementSettings"

    const-string v1, "OnPause()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mGprsDefaultSIMObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1010
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 925
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 926
    const-string v1, "SimManagementSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enter onPreferenceChange function with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    const-string v1, "voice_call_sim_setting"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 928
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voice_call_sim_setting"

    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 930
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VOICE_CALL_DEFAULT_SIM"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 932
    const-string v2, "simid"

    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 933
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 934
    const-string v1, "SimManagementSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send broadcast voice call change with simid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    check-cast p2, Ljava/lang/Long;

    invoke-direct {p0, v0, p2}, Lcom/mediatek/gemini/SimManagement;->updateDefaultSIMSummary(Lcom/mediatek/gemini/DefaultSimPreference;Ljava/lang/Long;)V

    .line 959
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 937
    :cond_1
    const-string v1, "video_call_sim_setting"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 947
    const-string v1, "sms_sim_setting"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 948
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sms_sim_setting"

    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 950
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SMS_DEFAULT_SIM"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 951
    const-string v2, "simid"

    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 952
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 953
    const-string v1, "SimManagementSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send broadcast sms change with simid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    check-cast p2, Ljava/lang/Long;

    invoke-direct {p0, v0, p2}, Lcom/mediatek/gemini/SimManagement;->updateDefaultSIMSummary(Lcom/mediatek/gemini/DefaultSimPreference;Ljava/lang/Long;)V

    goto :goto_0

    .line 955
    :cond_2
    const-string v1, "gprs_sim_setting"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 956
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 957
    invoke-direct {p0, v0, v1}, Lcom/mediatek/gemini/SimManagement;->updateGprsSim(J)V

    goto :goto_0
.end method

.method public onPreferenceClick(J)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x2

    .line 1648
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoById(Landroid/content/Context;J)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 1649
    iget v1, v0, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-direct {p0, v1}, Lcom/mediatek/gemini/SimManagement;->getSimIndicator(I)I

    move-result v1

    .line 1650
    if-ne v1, v2, :cond_0

    .line 1651
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1652
    const-string v2, "com.android.settings"

    const-string v3, "com.mediatek.gemini.GeminiIccLockSettings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1653
    const-string v2, "slotid"

    iget v0, v0, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1654
    invoke-virtual {p0, v1}, Lcom/mediatek/gemini/SimManagement;->startActivity(Landroid/content/Intent;)V

    .line 1667
    :goto_0
    return-void

    .line 1657
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1658
    const-string v1, "simid"

    invoke-virtual {v2, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1659
    const-string v1, "extra_enable"

    iget-object v3, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    iget v0, v0, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-interface {v3, v0}, Lcom/android/internal/telephony/ITelephony;->isRadioOnGemini(I)Z

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1660
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 1661
    const-class v1, Lcom/mediatek/gemini/SimInfoEditor;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0a43

    const v4, 0x7f0c0a43

    invoke-virtual {p0, v4}, Lcom/mediatek/gemini/SimManagement;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1663
    const-string v0, "SimManagementSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/mediatek/gemini/SimInfoEditor;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1664
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 887
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 888
    const-string v1, "contacts_sim"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 889
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSiminfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v6, :cond_1

    .line 890
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSiminfoList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/Telephony$SIMInfo;

    .line 891
    if-eqz v0, :cond_0

    .line 892
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 893
    const-string v2, "com.android.settings"

    const-string v3, "com.mediatek.gemini.GeminiSIMTetherInfo"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 895
    iget v2, v0, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    .line 896
    const-string v3, "SimManagementSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Enter sim contanct of sim "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    if-ltz v2, :cond_0

    .line 898
    const-string v2, "simid"

    iget-wide v3, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 899
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSimAndContacts:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 920
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v6

    :goto_1
    return v6

    .line 905
    :cond_1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 906
    const-string v0, "type"

    const/4 v1, 0x3

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 908
    const-class v0, Lcom/mediatek/gemini/SimListEntrance;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const v5, 0x7f0c0a4b

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/gemini/SimManagement;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    .line 910
    const-string v0, "SimManagementSettings"

    const-string v1, "startFragment(this, SimListEntrance.class.getCanonicalName(), -1, extras);"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 912
    :cond_2
    const-string v1, "gprs_sim_setting"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 913
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 914
    const-string v0, "selected_sim_pos"

    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v1}, Lcom/mediatek/gemini/DefaultSimPreference;->getSelectedValue()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 915
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 916
    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v1}, Lcom/mediatek/gemini/DefaultSimPreference;->getFragment()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v3}, Lcom/mediatek/gemini/DefaultSimPreference;->getTitleRes()I

    move-result v3

    iget-object v4, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v4}, Lcom/mediatek/gemini/DefaultSimPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 414
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 415
    const-string v0, "SimManagementSettings"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mIsVoiceCapable:Z

    .line 418
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mIsSmsCapable:Z

    .line 419
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->isVoipAvailable()Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/gemini/SimManagement;->sIsVoipAvailable:Z

    .line 420
    const-string v0, "SimManagementSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsVoiceCapable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/gemini/SimManagement;->mIsVoiceCapable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsSmsCapable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/gemini/SimManagement;->mIsSmsCapable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sVTCallSupport="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/mediatek/gemini/SimManagement;->sVTCallSupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sIsVoipAvailable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/mediatek/gemini/SimManagement;->sIsVoipAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->getSimInfo()V

    .line 425
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->removeUnusedPref()V

    .line 426
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->updatePreferenceUI()V

    .line 428
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gprs_connection_sim_setting"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/gemini/SimManagement;->mGprsDefaultSIMObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 436
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->dealDialogOnResume()V

    .line 438
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mExt:Lcom/android/settings/ext/ISimManagementExt;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->isResumed()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/settings/ext/ISimManagementExt;->dealWithDataConnChanged(Landroid/content/Intent;Z)V

    .line 440
    return-void
.end method
