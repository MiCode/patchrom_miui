.class public Lcom/android/settings/applications/InstalledAppDetailsFragment;
.super Landroid/preference/PreferenceFragment;
.source "InstalledAppDetailsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/settings/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;,
        Lcom/android/settings/applications/InstalledAppDetailsFragment$DisableChanger;,
        Lcom/android/settings/applications/InstalledAppDetailsFragment$PackageMoveObserver;,
        Lcom/android/settings/applications/InstalledAppDetailsFragment$ClearCacheObserver;,
        Lcom/android/settings/applications/InstalledAppDetailsFragment$ClearUserDataObserver;
    }
.end annotation


# instance fields
.field private mAlwaysEnabledAppList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mCanBeOnSdCardChecker:Lcom/android/settings/applications/CanBeOnSdCardChecker;

.field private mCanClearData:Z

.field private final mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

.field private mClearCacheObserver:Lcom/android/settings/applications/InstalledAppDetailsFragment$ClearCacheObserver;

.field private mClearDataObserver:Lcom/android/settings/applications/InstalledAppDetailsFragment$ClearUserDataObserver;

.field private mComputingStr:Ljava/lang/CharSequence;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mFinishEnable:Z

.field private mHandler:Landroid/os/Handler;

.field private mHaveSizes:Z

.field private mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mItemFinish:Landroid/view/MenuItem;

.field private mItemUninstall:Landroid/view/MenuItem;

.field private mLastCacheSize:J

.field private mLastCodeSize:J

.field private mLastDataSize:J

.field private mLastExternalCodeSize:J

.field private mLastExternalDataSize:J

.field private mLastTotalSize:J

.field private mMoveInProgress:Z

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPrefAppInfo:Lcom/android/settings/applications/AppInfoPreference;

.field private mPrefApplicationSize:Lmiui/preference/ValuePreference;

.field private mPrefCacheSize:Lmiui/preference/ValuePreference;

.field private mPrefClearCache:Lcom/android/settings/applications/ButtonPreference;

.field private mPrefClearData:Lcom/android/settings/applications/ButtonPreference;

.field private mPrefClearDefaultSettings:Landroid/preference/Preference;

.field private mPrefDataSize:Lmiui/preference/ValuePreference;

.field private mPrefExternalCodeSize:Lmiui/preference/ValuePreference;

.field private mPrefExternalDataSize:Lmiui/preference/ValuePreference;

.field private mPrefFloatingWindowSwitch:Landroid/preference/CheckBoxPreference;

.field private mPrefNotificationSwitch:Landroid/preference/CheckBoxPreference;

.field private mPrefPermissionDetailInfo:Landroid/preference/Preference;

.field private mPrefPermissionManage:Landroid/preference/Preference;

.field private mPrefTotalSize:Lmiui/preference/ValuePreference;

.field private mSession:Lcom/android/settings/applications/ApplicationsState$Session;

.field private mState:Lcom/android/settings/applications/ApplicationsState;

.field private mUninstallEnable:Z

.field private mUninstallIconRes:I

.field private mUninstallTextRes:I

.field private mUpdatedSysApp:Z

.field private mUsbManager:Landroid/hardware/usb/IUsbManagerProxy;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-wide/16 v0, -0x1

    .line 66
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 119
    iput-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mMoveInProgress:Z

    .line 120
    iput-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUpdatedSysApp:Z

    .line 122
    iput-boolean v3, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mCanClearData:Z

    .line 128
    iput-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mFinishEnable:Z

    .line 129
    iput-boolean v3, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUninstallEnable:Z

    .line 133
    iput-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mHaveSizes:Z

    .line 134
    iput-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mLastCodeSize:J

    .line 135
    iput-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mLastDataSize:J

    .line 136
    iput-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mLastExternalCodeSize:J

    .line 137
    iput-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mLastExternalDataSize:J

    .line 138
    iput-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mLastCacheSize:J

    .line 139
    iput-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mLastTotalSize:J

    .line 172
    new-instance v0, Lcom/android/settings/applications/InstalledAppDetailsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$1;-><init>(Lcom/android/settings/applications/InstalledAppDetailsFragment;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mHandler:Landroid/os/Handler;

    .line 1020
    new-instance v0, Lcom/android/settings/applications/InstalledAppDetailsFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$2;-><init>(Lcom/android/settings/applications/InstalledAppDetailsFragment;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/InstalledAppDetailsFragment;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->processClearMsg(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/applications/InstalledAppDetailsFragment;)Lcom/android/settings/applications/ApplicationsState$AppEntry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/applications/InstalledAppDetailsFragment;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->setIntentAndFinish(ZZ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/applications/InstalledAppDetailsFragment;)Lcom/android/settings/applications/ButtonPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearData:Lcom/android/settings/applications/ButtonPreference;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/applications/InstalledAppDetailsFragment;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->forceStopPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/applications/InstalledAppDetailsFragment;I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getMoveErrMsg(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/applications/InstalledAppDetailsFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->setNotificationsEnabled(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/applications/InstalledAppDetailsFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->setFloatingWindowEnabled(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/applications/InstalledAppDetailsFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->updateForceStopButton(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/applications/InstalledAppDetailsFragment;)Lcom/android/settings/applications/ApplicationsState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mState:Lcom/android/settings/applications/ApplicationsState;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/applications/InstalledAppDetailsFragment;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->processMoveMsg(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/applications/InstalledAppDetailsFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/applications/InstalledAppDetailsFragment;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/applications/InstalledAppDetailsFragment;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefNotificationSwitch:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/applications/InstalledAppDetailsFragment;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefFloatingWindowSwitch:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/applications/InstalledAppDetailsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->initiateClearUserData()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/applications/InstalledAppDetailsFragment;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->uninstallPkg(Ljava/lang/String;)V

    return-void
.end method

.method private checkForceStop()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 1035
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1037
    invoke-direct {p0, v5}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->updateForceStopButton(Z)V

    .line 1051
    :goto_0
    return-void

    .line 1038
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x20

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 1041
    invoke-direct {p0, v6}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->updateForceStopButton(Z)V

    goto :goto_0

    .line 1043
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    const-string v3, "package"

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1045
    const-string v0, "android.intent.extra.PACKAGES"

    new-array v3, v6, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1046
    const-string v0, "android.intent.extra.UID"

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1047
    const-string v0, "android.intent.extra.user_handle"

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1048
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private forceStopPackage(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 874
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 876
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 877
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/ApplicationsState;->invalidatePackage(Ljava/lang/String;)V

    .line 878
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/ApplicationsState;->getEntry(Ljava/lang/String;)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .line 879
    if-eqz v0, :cond_0

    .line 880
    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 882
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->checkForceStop()V

    .line 883
    return-void
.end method

.method private getMoveErrMsg(I)Ljava/lang/CharSequence;
    .locals 2
    .parameter

    .prologue
    .line 886
    packed-switch p1, :pswitch_data_0

    .line 900
    const-string v0, ""

    :goto_0
    return-object v0

    .line 888
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0423

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 890
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0424

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 892
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0425

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 894
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0426

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 896
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0427

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 898
    :pswitch_5
    const-string v0, ""

    goto :goto_0

    .line 886
    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getSizeStr(J)Ljava/lang/String;
    .locals 2
    .parameter "size"

    .prologue
    .line 220
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mInvalidSizeStr:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initDataButtons()V
    .locals 4

    .prologue
    const v3, 0x7f0c03e9

    const/4 v2, 0x0

    .line 557
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x41

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearData:Lcom/android/settings/applications/ButtonPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/applications/ButtonPreference;->setText(I)V

    .line 562
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearData:Lcom/android/settings/applications/ButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/ButtonPreference;->setEnabled(Z)V

    .line 563
    iput-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mCanClearData:Z

    .line 572
    :goto_0
    return-void

    .line 565
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 566
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearData:Lcom/android/settings/applications/ButtonPreference;

    const v1, 0x7f0c03fb

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ButtonPreference;->setText(I)V

    .line 570
    :goto_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearData:Lcom/android/settings/applications/ButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/applications/ButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0

    .line 568
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearData:Lcom/android/settings/applications/ButtonPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/applications/ButtonPreference;->setText(I)V

    goto :goto_1
.end method

.method private initFloatingWindowButton()V
    .locals 5

    .prologue
    const/high16 v4, 0x800

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 543
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefFloatingWindowSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 544
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    if-eqz v2, :cond_0

    .line 545
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_2

    .line 546
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefFloatingWindowSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 547
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefFloatingWindowSwitch:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 549
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefFloatingWindowSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 555
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 547
    goto :goto_0

    .line 551
    :cond_2
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefFloatingWindowSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1
.end method

.method private initMoveButton()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 575
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 591
    :cond_0
    :goto_0
    return-void

    .line 578
    :cond_1
    const/4 v0, 0x0

    .line 579
    .local v0, dataOnly:Z
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    if-eqz v4, :cond_2

    move v0, v2

    .line 580
    :goto_1
    const/4 v1, 0x1

    .line 581
    .local v1, moveDisable:Z
    if-nez v0, :cond_0

    .line 582
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x4

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    .line 584
    const/4 v1, 0x0

    goto :goto_0

    .end local v1           #moveDisable:Z
    :cond_2
    move v0, v3

    .line 579
    goto :goto_1

    .line 586
    .restart local v1       #moveDisable:Z
    :cond_3
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mCanBeOnSdCardChecker:Lcom/android/settings/applications/CanBeOnSdCardChecker;

    invoke-virtual {v4}, Lcom/android/settings/applications/CanBeOnSdCardChecker;->init()V

    .line 587
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 588
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mCanBeOnSdCardChecker:Lcom/android/settings/applications/CanBeOnSdCardChecker;

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Lcom/android/settings/applications/CanBeOnSdCardChecker;->check(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-nez v4, :cond_4

    move v1, v2

    :goto_2
    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_2
.end method

.method private initNotificationButton()V
    .locals 4

    .prologue
    .line 525
    const-string v2, "notification"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 527
    .local v1, nm:Landroid/app/INotificationManager;
    const/4 v0, 0x1

    .line 529
    .local v0, enabled:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/app/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 533
    :goto_0
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefNotificationSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 534
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->isThisASystemPackage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 535
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefNotificationSwitch:Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 540
    :goto_1
    return-void

    .line 537
    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefNotificationSwitch:Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 538
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefNotificationSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_1

    .line 530
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private initUninstallButtons()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1054
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUpdatedSysApp:Z

    .line 1057
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUpdatedSysApp:Z

    if-eqz v0, :cond_1

    .line 1059
    const v0, 0x7f0c03ea

    iput v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUninstallTextRes:I

    .line 1097
    :goto_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1100
    :goto_2
    invoke-direct {p0, v2}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->updateUnintallItem(Z)V

    .line 1101
    return-void

    :cond_0
    move v0, v2

    .line 1054
    goto :goto_0

    .line 1061
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    .line 1068
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPm:Landroid/content/pm/PackageManager;

    const-string v3, "android"

    const/16 v4, 0x40

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 1070
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1071
    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1072
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1073
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPm:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1074
    const v3, 0x7f020101

    iput v3, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUninstallIconRes:I

    .line 1075
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->isThisASystemPackage()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1077
    :cond_3
    const v0, 0x7f0c03e7

    iput v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUninstallTextRes:I

    move v1, v2

    goto :goto_1

    .line 1078
    :cond_4
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_5

    .line 1079
    const v0, 0x7f0c03e7

    iput v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUninstallTextRes:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1085
    :catch_0
    move-exception v0

    .line 1086
    const-string v1, "InstalledAppDetails"

    const-string v3, "Unable to get package info"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 1087
    goto :goto_1

    .line 1082
    :cond_5
    const v0, 0x7f0c03e8

    :try_start_1
    iput v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUninstallTextRes:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1090
    :cond_6
    const v0, 0x60200de

    iput v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUninstallIconRes:I

    .line 1091
    const v0, 0x7f0c03e4

    iput v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUninstallTextRes:I

    goto/16 :goto_1

    :cond_7
    move v2, v1

    goto :goto_2
.end method

.method private initiateClearUserData()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 854
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearData:Lcom/android/settings/applications/ButtonPreference;

    invoke-virtual {v0, v4}, Lcom/android/settings/applications/ButtonPreference;->setEnabled(Z)V

    .line 856
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 857
    const-string v0, "InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clearing user data for package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mClearDataObserver:Lcom/android/settings/applications/InstalledAppDetailsFragment$ClearUserDataObserver;

    if-nez v0, :cond_0

    .line 859
    new-instance v0, Lcom/android/settings/applications/InstalledAppDetailsFragment$ClearUserDataObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$ClearUserDataObserver;-><init>(Lcom/android/settings/applications/InstalledAppDetailsFragment;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mClearDataObserver:Lcom/android/settings/applications/InstalledAppDetailsFragment$ClearUserDataObserver;

    .line 861
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 863
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mClearDataObserver:Lcom/android/settings/applications/InstalledAppDetailsFragment$ClearUserDataObserver;

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v0

    .line 864
    if-nez v0, :cond_1

    .line 866
    const-string v0, "InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldnt clear application user data for package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    const/4 v0, 0x4

    invoke-direct {p0, v0, v4}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->showDialogInner(II)V

    .line 871
    :goto_0
    return-void

    .line 869
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearData:Lcom/android/settings/applications/ButtonPreference;

    const v1, 0x7f0c0407

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ButtonPreference;->setText(I)V

    goto :goto_0
.end method

.method private isThisASystemPackage()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 595
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPm:Landroid/content/pm/PackageManager;

    const-string v4, "android"

    const/16 v5, 0x40

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 596
    .local v1, sys:Landroid/content/pm/PackageInfo;
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v3, :cond_0

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAlwaysEnabledAppList:Ljava/util/HashSet;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v2, 0x1

    .line 600
    .end local v1           #sys:Landroid/content/pm/PackageInfo;
    :cond_2
    :goto_0
    return v2

    .line 599
    :catch_0
    move-exception v0

    .line 600
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private processClearMsg(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 420
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 421
    .local v1, result:I
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 422
    .local v0, packageName:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearData:Lcom/android/settings/applications/ButtonPreference;

    const v3, 0x7f0c03e9

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/ButtonPreference;->setText(I)V

    .line 423
    if-ne v1, v4, :cond_0

    .line 424
    const-string v2, "InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cleared user data for package : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mState:Lcom/android/settings/applications/ApplicationsState;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    .line 429
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->checkForceStop()V

    .line 430
    return-void

    .line 427
    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearData:Lcom/android/settings/applications/ButtonPreference;

    invoke-virtual {v2, v4}, Lcom/android/settings/applications/ButtonPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private processMoveMsg(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 401
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 402
    .local v1, result:I
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 404
    .local v0, packageName:Ljava/lang/String;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mMoveInProgress:Z

    .line 405
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 406
    const-string v2, "InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Moved resources for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mState:Lcom/android/settings/applications/ApplicationsState;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    .line 412
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->refreshUi()Z

    .line 413
    return-void

    .line 410
    :cond_0
    const/4 v2, 0x6

    invoke-direct {p0, v2, v1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->showDialogInner(II)V

    goto :goto_0
.end method

.method private refreshButtons()V
    .locals 1

    .prologue
    .line 513
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mMoveInProgress:Z

    if-nez v0, :cond_0

    .line 514
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->initUninstallButtons()V

    .line 515
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->initDataButtons()V

    .line 516
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->initMoveButton()V

    .line 517
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->initNotificationButton()V

    .line 518
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->initFloatingWindowButton()V

    .line 522
    :goto_0
    return-void

    .line 520
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->updateUnintallItem(Z)V

    goto :goto_0
.end method

.method private refreshSizeInfo()V
    .locals 10

    .prologue
    .line 605
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v8, -0x2

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 607
    :cond_0
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mLastTotalSize:J

    iput-wide v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mLastCacheSize:J

    iput-wide v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mLastDataSize:J

    iput-wide v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mLastCodeSize:J

    .line 608
    iget-boolean v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mHaveSizes:Z

    if-nez v6, :cond_1

    .line 609
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefApplicationSize:Lmiui/preference/ValuePreference;

    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 610
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefDataSize:Lmiui/preference/ValuePreference;

    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 611
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefCacheSize:Lmiui/preference/ValuePreference;

    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 612
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefTotalSize:Lmiui/preference/ValuePreference;

    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 614
    :cond_1
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearData:Lcom/android/settings/applications/ButtonPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/settings/applications/ButtonPreference;->setEnabled(Z)V

    .line 615
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearCache:Lcom/android/settings/applications/ButtonPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/settings/applications/ButtonPreference;->setEnabled(Z)V

    .line 664
    :goto_0
    return-void

    .line 618
    :cond_2
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mHaveSizes:Z

    .line 619
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v2, v6, Lcom/android/settings/applications/ApplicationsState$AppEntry;->codeSize:J

    .line 620
    .local v2, codeSize:J
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v4, v6, Lcom/android/settings/applications/ApplicationsState$AppEntry;->dataSize:J

    .line 621
    .local v4, dataSize:J
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 622
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    add-long/2addr v2, v6

    .line 623
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalDataSize:J

    add-long/2addr v4, v6

    .line 625
    :cond_3
    iget-wide v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mLastCodeSize:J

    cmp-long v6, v6, v2

    if-eqz v6, :cond_4

    .line 626
    iput-wide v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mLastCodeSize:J

    .line 627
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefApplicationSize:Lmiui/preference/ValuePreference;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 629
    :cond_4
    iget-wide v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mLastDataSize:J

    cmp-long v6, v6, v4

    if-eqz v6, :cond_5

    .line 630
    iput-wide v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mLastDataSize:J

    .line 631
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefDataSize:Lmiui/preference/ValuePreference;

    invoke-direct {p0, v4, v5}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 633
    :cond_5
    iget-wide v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mLastExternalCodeSize:J

    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_6

    .line 634
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    iput-wide v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mLastExternalCodeSize:J

    .line 635
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefExternalCodeSize:Lmiui/preference/ValuePreference;

    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v7, v7, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    invoke-direct {p0, v7, v8}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 638
    :cond_6
    iget-wide v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mLastExternalDataSize:J

    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalDataSize:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_7

    .line 639
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalDataSize:J

    iput-wide v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mLastExternalDataSize:J

    .line 640
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefExternalDataSize:Lmiui/preference/ValuePreference;

    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v7, v7, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalDataSize:J

    invoke-direct {p0, v7, v8}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 642
    :cond_7
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settings/applications/ApplicationsState$AppEntry;->cacheSize:J

    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalCacheSize:J

    add-long v0, v6, v8

    .line 643
    .local v0, cacheSize:J
    iget-wide v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mLastCacheSize:J

    cmp-long v6, v6, v0

    if-eqz v6, :cond_8

    .line 644
    iput-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mLastCacheSize:J

    .line 645
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefCacheSize:Lmiui/preference/ValuePreference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 647
    :cond_8
    iget-wide v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mLastTotalSize:J

    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_9

    .line 648
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    iput-wide v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mLastTotalSize:J

    .line 649
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefTotalSize:Lmiui/preference/ValuePreference;

    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v7, v7, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    invoke-direct {p0, v7, v8}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 652
    :cond_9
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settings/applications/ApplicationsState$AppEntry;->dataSize:J

    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalDataSize:J

    add-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_a

    iget-boolean v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mCanClearData:Z

    if-nez v6, :cond_b

    .line 653
    :cond_a
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearData:Lcom/android/settings/applications/ButtonPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/settings/applications/ButtonPreference;->setEnabled(Z)V

    .line 657
    :goto_1
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gtz v6, :cond_c

    .line 658
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearCache:Lcom/android/settings/applications/ButtonPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/settings/applications/ButtonPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 655
    :cond_b
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearData:Lcom/android/settings/applications/ButtonPreference;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/settings/applications/ButtonPreference;->setEnabled(Z)V

    goto :goto_1

    .line 660
    :cond_c
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearCache:Lcom/android/settings/applications/ButtonPreference;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/settings/applications/ButtonPreference;->setEnabled(Z)V

    .line 661
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearCache:Lcom/android/settings/applications/ButtonPreference;

    invoke-virtual {v6, p0}, Lcom/android/settings/applications/ButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/16 :goto_0
.end method

.method private refreshUi()Z
    .locals 24

    .prologue
    .line 296
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mMoveInProgress:Z

    move/from16 v20, v0

    if-eqz v20, :cond_0

    .line 297
    const/16 v20, 0x1

    .line 384
    :goto_0
    return v20

    .line 299
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    .line 300
    .local v6, args:Landroid/os/Bundle;
    if-eqz v6, :cond_2

    const-string v20, "package"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 301
    .local v15, packageName:Ljava/lang/String;
    :goto_1
    if-nez v15, :cond_1

    .line 302
    if-nez v6, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    .line 304
    .local v13, intent:Landroid/content/Intent;
    :goto_2
    if-eqz v13, :cond_1

    .line 305
    invoke-virtual {v13}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v15

    .line 308
    .end local v13           #intent:Landroid/content/Intent;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mState:Lcom/android/settings/applications/ApplicationsState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lcom/android/settings/applications/ApplicationsState;->getEntry(Ljava/lang/String;)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-object/from16 v20, v0

    if-nez v20, :cond_4

    .line 311
    const/16 v20, 0x0

    goto :goto_0

    .line 300
    .end local v15           #packageName:Ljava/lang/String;
    :cond_2
    const/4 v15, 0x0

    goto :goto_1

    .line 302
    .restart local v15       #packageName:Ljava/lang/String;
    :cond_3
    const-string v20, "intent"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v20

    check-cast v20, Landroid/content/Intent;

    move-object/from16 v13, v20

    goto :goto_2

    .line 316
    :cond_4
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x2240

    invoke-virtual/range {v20 .. v22}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 329
    .local v16, prefActList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 330
    .local v14, intentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v1, v15}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 333
    const/4 v12, 0x0

    .line 335
    .local v12, hasUsbDefaults:Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUsbManager:Landroid/hardware/usb/IUsbManagerProxy;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/hardware/usb/IUsbManagerProxy;->hasDefaults(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v12

    .line 339
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/appwidget/AppWidgetManager;->hasBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result v11

    .line 342
    .local v11, hasBindAppWidgetPermission:Z
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v20

    if-gtz v20, :cond_5

    if-eqz v12, :cond_6

    :cond_5
    const/4 v8, 0x1

    .line 343
    .local v8, autoLaunchEnabled:Z
    :goto_4
    if-nez v8, :cond_7

    if-nez v11, :cond_7

    .line 344
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->resetLaunchDefaultsUi(Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 379
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->checkForceStop()V

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V

    .line 381
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->refreshButtons()V

    .line 382
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->refreshSizeInfo()V

    .line 384
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 320
    .end local v8           #autoLaunchEnabled:Z
    .end local v11           #hasBindAppWidgetPermission:Z
    .end local v12           #hasUsbDefaults:Z
    .end local v14           #intentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    .end local v16           #prefActList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :catch_0
    move-exception v10

    .line 321
    .local v10, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v20, "InstalledAppDetails"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Exception when retrieving package:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 322
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 336
    .end local v10           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v12       #hasUsbDefaults:Z
    .restart local v14       #intentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    .restart local v16       #prefActList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :catch_1
    move-exception v10

    .line 337
    .local v10, e:Landroid/os/RemoteException;
    const-string v20, "InstalledAppDetails"

    const-string v21, "mUsbManager.hasDefaults"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 342
    .end local v10           #e:Landroid/os/RemoteException;
    .restart local v11       #hasBindAppWidgetPermission:Z
    :cond_6
    const/4 v8, 0x0

    goto :goto_4

    .line 346
    .restart local v8       #autoLaunchEnabled:Z
    :cond_7
    if-eqz v11, :cond_c

    if-eqz v8, :cond_c

    const/16 v19, 0x1

    .line 348
    .local v19, useBullets:Z
    :goto_6
    const/16 v18, 0x0

    .line 349
    .local v18, text:Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0e000b

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 351
    .local v9, bulletIndent:I
    if-eqz v8, :cond_9

    .line 352
    const v20, 0x7f0c03eb

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 353
    .local v7, autoLaunchEnableText:Ljava/lang/CharSequence;
    new-instance v17, Landroid/text/SpannableString;

    move-object/from16 v0, v17

    invoke-direct {v0, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 354
    .local v17, s:Landroid/text/SpannableString;
    if-eqz v19, :cond_8

    .line 355
    new-instance v20, Landroid/text/style/BulletSpan;

    move-object/from16 v0, v20

    invoke-direct {v0, v9}, Landroid/text/style/BulletSpan;-><init>(I)V

    const/16 v21, 0x0

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v22

    const/16 v23, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 357
    :cond_8
    if-nez v18, :cond_d

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v17, v20, v21

    const/16 v21, 0x1

    const-string v22, "\n"

    aput-object v22, v20, v21

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v18

    .line 360
    .end local v7           #autoLaunchEnableText:Ljava/lang/CharSequence;
    .end local v17           #s:Landroid/text/SpannableString;
    :cond_9
    :goto_7
    if-eqz v11, :cond_b

    .line 361
    const v20, 0x7f0c03ec

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 363
    .local v5, alwaysAllowBindAppWidgetsText:Ljava/lang/CharSequence;
    new-instance v17, Landroid/text/SpannableString;

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 364
    .restart local v17       #s:Landroid/text/SpannableString;
    if-eqz v19, :cond_a

    .line 365
    new-instance v20, Landroid/text/style/BulletSpan;

    move-object/from16 v0, v20

    invoke-direct {v0, v9}, Landroid/text/style/BulletSpan;-><init>(I)V

    const/16 v21, 0x0

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v22

    const/16 v23, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 368
    :cond_a
    if-nez v18, :cond_e

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v17, v20, v21

    const/16 v21, 0x1

    const-string v22, "\n"

    aput-object v22, v20, v21

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v18

    .line 371
    .end local v5           #alwaysAllowBindAppWidgetsText:Ljava/lang/CharSequence;
    .end local v17           #s:Landroid/text/SpannableString;
    :cond_b
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearDefaultSettings:Landroid/preference/Preference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearDefaultSettings:Landroid/preference/Preference;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearDefaultSettings:Landroid/preference/Preference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/16 :goto_5

    .line 346
    .end local v9           #bulletIndent:I
    .end local v18           #text:Ljava/lang/CharSequence;
    .end local v19           #useBullets:Z
    :cond_c
    const/16 v19, 0x0

    goto/16 :goto_6

    .line 357
    .restart local v7       #autoLaunchEnableText:Ljava/lang/CharSequence;
    .restart local v9       #bulletIndent:I
    .restart local v17       #s:Landroid/text/SpannableString;
    .restart local v18       #text:Ljava/lang/CharSequence;
    .restart local v19       #useBullets:Z
    :cond_d
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v18, v20, v21

    const/16 v21, 0x1

    const-string v22, "\n"

    aput-object v22, v20, v21

    const/16 v21, 0x2

    aput-object v17, v20, v21

    const/16 v21, 0x3

    const-string v22, "\n"

    aput-object v22, v20, v21

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v18

    goto/16 :goto_7

    .line 368
    .end local v7           #autoLaunchEnableText:Ljava/lang/CharSequence;
    .restart local v5       #alwaysAllowBindAppWidgetsText:Ljava/lang/CharSequence;
    :cond_e
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v18, v20, v21

    const/16 v21, 0x1

    const-string v22, "\n"

    aput-object v22, v20, v21

    const/16 v21, 0x2

    aput-object v17, v20, v21

    const/16 v21, 0x3

    const-string v22, "\n"

    aput-object v22, v20, v21

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v18

    goto :goto_8
.end method

.method private resetLaunchDefaultsUi(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2
    .parameter "title"
    .parameter "autoLaunchView"

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearDefaultSettings:Landroid/preference/Preference;

    const v1, 0x7f0c03ed

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 509
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearDefaultSettings:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 510
    return-void
.end method

.method private setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V
    .locals 7
    .parameter "pkgInfo"

    .prologue
    .line 388
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mState:Lcom/android/settings/applications/ApplicationsState;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/ApplicationsState;->ensureIcon(Lcom/android/settings/applications/ApplicationsState$AppEntry;)V

    .line 390
    const/4 v1, 0x0

    .line 391
    .local v1, versionVisible:Z
    const/4 v0, 0x0

    .line 392
    .local v0, appVersion:Ljava/lang/String;
    if-eqz p1, :cond_0

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 393
    const/4 v1, 0x1

    .line 394
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c041e

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 397
    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefAppInfo:Lcom/android/settings/applications/AppInfoPreference;

    new-instance v3, Lcom/android/settings/applications/AppInfoPreference$AppInfo;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v0, v1}, Lcom/android/settings/applications/AppInfoPreference$AppInfo;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/AppInfoPreference;->setAppInfo(Lcom/android/settings/applications/AppInfoPreference$AppInfo;)V

    .line 398
    return-void
.end method

.method private setFloatingWindowEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    const/high16 v1, 0x800

    .line 915
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPm:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v3, v1, v0}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 918
    return-void

    .line 915
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setIntentAndFinish(ZZ)V
    .locals 3
    .parameter "finish"
    .parameter "appChanged"

    .prologue
    .line 500
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 501
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "chg"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 502
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity;

    .line 503
    .local v1, pa:Landroid/preference/PreferenceActivity;
    const/4 v2, -0x1

    invoke-virtual {v1, p0, v2, v0}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 504
    return-void
.end method

.method private setNotificationsEnabled(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    .line 904
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 905
    .local v2, packageName:Ljava/lang/String;
    const-string v3, "notification"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 908
    .local v1, nm:Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1, v2, p1}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 912
    :goto_0
    return-void

    .line 909
    :catch_0
    move-exception v0

    .line 910
    .local v0, ex:Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefNotificationSwitch:Landroid/preference/CheckBoxPreference;

    if-nez p1, :cond_0

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private showDialogInner(II)V
    .locals 4
    .parameter "id"
    .parameter "moveErrorCode"

    .prologue
    .line 433
    invoke-static {p1, p2}, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->newInstance(II)Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;

    move-result-object v0

    .line 434
    .local v0, newFragment:Landroid/app/DialogFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 435
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 436
    return-void
.end method

.method private uninstallPkg(Ljava/lang/String;)V
    .locals 5
    .parameter "packageName"

    .prologue
    const/4 v4, 0x1

    .line 492
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 493
    .local v0, packageURI:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 494
    .local v1, uninstallIntent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->startActivity(Landroid/content/Intent;)V

    .line 495
    invoke-direct {p0, v4, v4}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->setIntentAndFinish(ZZ)V

    .line 496
    return-void
.end method

.method private updateForceStopButton(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 1028
    iput-boolean p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mFinishEnable:Z

    .line 1029
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mItemFinish:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1030
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mItemFinish:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mFinishEnable:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1032
    :cond_0
    return-void
.end method

.method private updateUnintallItem(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 1104
    iput-boolean p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUninstallEnable:Z

    .line 1106
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mItemUninstall:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1107
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mItemUninstall:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1108
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mItemUninstall:Landroid/view/MenuItem;

    iget v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUninstallTextRes:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1109
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mItemUninstall:Landroid/view/MenuItem;

    iget v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUninstallIconRes:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1111
    :cond_0
    return-void
.end method


# virtual methods
.method public onAllSizesComputed()V
    .locals 0

    .prologue
    .line 464
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 468
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    .line 228
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 230
    const v6, 0x7f0c03e4

    iput v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUninstallTextRes:I

    .line 231
    const v6, 0x7f020101

    iput v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUninstallIconRes:I

    .line 233
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0c041b

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mComputingStr:Ljava/lang/CharSequence;

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080056

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 236
    .local v5, tempList:[Ljava/lang/String;
    new-instance v6, Ljava/util/HashSet;

    array-length v7, v5

    invoke-direct {v6, v7}, Ljava/util/HashSet;-><init>(I)V

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAlwaysEnabledAppList:Ljava/util/HashSet;

    .line 237
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 238
    .local v4, str:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAlwaysEnabledAppList:Ljava/util/HashSet;

    invoke-virtual {v6, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 237
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 241
    .end local v4           #str:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settings/applications/ApplicationsState;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mState:Lcom/android/settings/applications/ApplicationsState;

    .line 242
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v6, p0}, Lcom/android/settings/applications/ApplicationsState;->newSession(Lcom/android/settings/applications/ApplicationsState$Callbacks;)Lcom/android/settings/applications/ApplicationsState$Session;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mSession:Lcom/android/settings/applications/ApplicationsState$Session;

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPm:Landroid/content/pm/PackageManager;

    .line 244
    const-string v6, "usb"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 245
    .local v1, b:Landroid/os/IBinder;
    new-instance v6, Landroid/hardware/usb/IUsbManagerProxy;

    invoke-static {v1}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/hardware/usb/IUsbManagerProxy;-><init>(Landroid/hardware/usb/IUsbManager;)V

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUsbManager:Landroid/hardware/usb/IUsbManagerProxy;

    .line 246
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 247
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "device_policy"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/admin/DevicePolicyManager;

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 249
    new-instance v6, Lcom/android/settings/applications/CanBeOnSdCardChecker;

    invoke-direct {v6}, Lcom/android/settings/applications/CanBeOnSdCardChecker;-><init>()V

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mCanBeOnSdCardChecker:Lcom/android/settings/applications/CanBeOnSdCardChecker;

    .line 251
    const v6, 0x7f060034

    invoke-virtual {p0, v6}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->addPreferencesFromResource(I)V

    .line 253
    const-string v6, "applications_info"

    invoke-virtual {p0, v6}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/AppInfoPreference;

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefAppInfo:Lcom/android/settings/applications/AppInfoPreference;

    .line 254
    const-string v6, "total_size"

    invoke-virtual {p0, v6}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lmiui/preference/ValuePreference;

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefTotalSize:Lmiui/preference/ValuePreference;

    .line 255
    const-string v6, "application_size"

    invoke-virtual {p0, v6}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lmiui/preference/ValuePreference;

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefApplicationSize:Lmiui/preference/ValuePreference;

    .line 256
    const-string v6, "external_code_size"

    invoke-virtual {p0, v6}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lmiui/preference/ValuePreference;

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefExternalCodeSize:Lmiui/preference/ValuePreference;

    .line 257
    const-string v6, "data_size"

    invoke-virtual {p0, v6}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lmiui/preference/ValuePreference;

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefDataSize:Lmiui/preference/ValuePreference;

    .line 258
    const-string v6, "external_data_size"

    invoke-virtual {p0, v6}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lmiui/preference/ValuePreference;

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefExternalDataSize:Lmiui/preference/ValuePreference;

    .line 259
    const-string v6, "cache_size"

    invoke-virtual {p0, v6}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lmiui/preference/ValuePreference;

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefCacheSize:Lmiui/preference/ValuePreference;

    .line 260
    const-string v6, "clear_data"

    invoke-virtual {p0, v6}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/ButtonPreference;

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearData:Lcom/android/settings/applications/ButtonPreference;

    .line 261
    const-string v6, "clear_cache"

    invoke-virtual {p0, v6}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/ButtonPreference;

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearCache:Lcom/android/settings/applications/ButtonPreference;

    .line 262
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearCache:Lcom/android/settings/applications/ButtonPreference;

    const v7, 0x7f0c03db

    invoke-virtual {v6, v7}, Lcom/android/settings/applications/ButtonPreference;->setText(I)V

    .line 263
    const-string v6, "notification_switch"

    invoke-virtual {p0, v6}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefNotificationSwitch:Landroid/preference/CheckBoxPreference;

    .line 264
    const-string v6, "floating_window_switch"

    invoke-virtual {p0, v6}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefFloatingWindowSwitch:Landroid/preference/CheckBoxPreference;

    .line 265
    const-string v6, "clear_default_settings"

    invoke-virtual {p0, v6}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearDefaultSettings:Landroid/preference/Preference;

    .line 266
    const-string v6, "permission_detail_info"

    invoke-virtual {p0, v6}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefPermissionDetailInfo:Landroid/preference/Preference;

    .line 267
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefPermissionDetailInfo:Landroid/preference/Preference;

    invoke-virtual {v6, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 268
    const-string v6, "permission_manage"

    invoke-virtual {p0, v6}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefPermissionManage:Landroid/preference/Preference;

    .line 269
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefPermissionManage:Landroid/preference/Preference;

    invoke-virtual {v6, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 271
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->setHasOptionsMenu(Z)V

    .line 272
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 979
    const v0, 0x7f0c090a

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mItemFinish:Landroid/view/MenuItem;

    .line 980
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mItemFinish:Landroid/view/MenuItem;

    const v1, 0x60200e1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 981
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mItemFinish:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mFinishEnable:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 982
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mItemFinish:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 984
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUninstallTextRes:I

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mItemUninstall:Landroid/view/MenuItem;

    .line 985
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mItemUninstall:Landroid/view/MenuItem;

    iget v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUninstallIconRes:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 986
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mItemUninstall:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUninstallEnable:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 987
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mItemUninstall:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 988
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    .line 993
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1017
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 995
    :pswitch_0
    const/4 v0, 0x5

    invoke-direct {p0, v0, v3}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->showDialogInner(II)V

    goto :goto_0

    .line 999
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUpdatedSysApp:Z

    if-eqz v0, :cond_0

    .line 1000
    const/4 v0, 0x2

    invoke-direct {p0, v0, v3}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->showDialogInner(II)V

    goto :goto_0

    .line 1002
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 1003
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_1

    .line 1004
    const/4 v0, 0x7

    invoke-direct {p0, v0, v3}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->showDialogInner(II)V

    goto :goto_0

    .line 1006
    :cond_1
    new-instance v1, Lcom/android/settings/applications/InstalledAppDetailsFragment$DisableChanger;

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1, p0, v0, v3}, Lcom/android/settings/applications/InstalledAppDetailsFragment$DisableChanger;-><init>(Lcom/android/settings/applications/InstalledAppDetailsFragment;Landroid/content/pm/ApplicationInfo;I)V

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/InstalledAppDetailsFragment$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1011
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->uninstallPkg(Ljava/lang/String;)V

    goto :goto_0

    .line 993
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPackageIconChanged()V
    .locals 0

    .prologue
    .line 453
    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    .prologue
    .line 444
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->refreshUi()Z

    .line 445
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->refreshSizeInfo()V

    .line 460
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 291
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 292
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mSession:Lcom/android/settings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState$Session;->pause()V

    .line 293
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 922
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 923
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 925
    const-string v2, "notification_switch"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 926
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefNotificationSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 927
    const/16 v0, 0x8

    invoke-direct {p0, v0, v4}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->showDialogInner(II)V

    .line 974
    :cond_0
    :goto_0
    return v4

    .line 929
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->setNotificationsEnabled(Z)V

    goto :goto_0

    .line 931
    :cond_2
    const-string v2, "floating_window_switch"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 932
    const/16 v0, 0x9

    invoke-direct {p0, v0, v4}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->showDialogInner(II)V

    goto :goto_0

    .line 933
    :cond_3
    const-string v2, "clear_data"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 934
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 935
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 936
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 937
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 939
    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 942
    :cond_4
    invoke-direct {p0, v3, v4}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->showDialogInner(II)V

    goto :goto_0

    .line 944
    :cond_5
    const-string v2, "clear_cache"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 945
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mClearCacheObserver:Lcom/android/settings/applications/InstalledAppDetailsFragment$ClearCacheObserver;

    if-nez v0, :cond_6

    .line 946
    new-instance v0, Lcom/android/settings/applications/InstalledAppDetailsFragment$ClearCacheObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$ClearCacheObserver;-><init>(Lcom/android/settings/applications/InstalledAppDetailsFragment;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mClearCacheObserver:Lcom/android/settings/applications/InstalledAppDetailsFragment$ClearCacheObserver;

    .line 948
    :cond_6
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mClearCacheObserver:Lcom/android/settings/applications/InstalledAppDetailsFragment$ClearCacheObserver;

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    goto :goto_0

    .line 949
    :cond_7
    const-string v2, "clear_default_settings"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 950
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 952
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUsbManager:Landroid/hardware/usb/IUsbManagerProxy;

    invoke-virtual {v0, v1}, Landroid/hardware/usb/IUsbManagerProxy;->clearDefaults(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 956
    :goto_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, v1, v4}, Landroid/appwidget/AppWidgetManager;->setBindAppWidgetPermission(Ljava/lang/String;Z)V

    .line 957
    invoke-direct {p0, v5, v5}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->resetLaunchDefaultsUi(Landroid/widget/TextView;Landroid/widget/TextView;)V

    goto/16 :goto_0

    .line 953
    :catch_0
    move-exception v0

    .line 954
    const-string v2, "InstalledAppDetails"

    const-string v3, "mUsbManager.clearDefaults"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 958
    :cond_8
    const-string v1, "permission_detail_info"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 959
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/applications/PermissionInfoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 960
    const-string v1, "extra_package_uid"

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 961
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 962
    :cond_9
    const-string v1, "permission_manage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 964
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 965
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "com.android.settings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 966
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.settings.permission.AppPermissionsEditor"

    invoke-direct {v2, v1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 967
    const-string v1, "extra_package_uid"

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 968
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 969
    :catch_1
    move-exception v0

    .line 970
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 449
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 276
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 278
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mSession:Lcom/android/settings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState$Session;->resume()V

    .line 279
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    invoke-direct {p0, v5, v5}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->setIntentAndFinish(ZZ)V

    .line 287
    :goto_0
    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/applications/PermissionInfoActivity;->parsePermission(ILandroid/content/Context;)V

    .line 285
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefPermissionDetailInfo:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c08fe

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/settings/applications/PermissionInfoActivity;->getSecurityCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {}, Lcom/android/settings/applications/PermissionInfoActivity;->getPrivacyCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-static {}, Lcom/android/settings/applications/PermissionInfoActivity;->getOtherCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onRunningStateChanged(Z)V
    .locals 0
    .parameter "running"

    .prologue
    .line 440
    return-void
.end method
