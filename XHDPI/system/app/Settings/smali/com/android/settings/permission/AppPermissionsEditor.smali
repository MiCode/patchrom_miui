.class public Lcom/android/settings/permission/AppPermissionsEditor;
.super Landroid/preference/PreferenceActivity;
.source "AppPermissionsEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/permission/AppPermissionsEditor$LBEConnection;
    }
.end annotation


# instance fields
.field private mActionStates:[Ljava/lang/String;

.field private mActionValue:[Ljava/lang/String;

.field private mAppLabel:Ljava/lang/String;

.field private mAppVersion:Ljava/lang/String;

.field private mAutoStartUpListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mAutoStartupPref:Landroid/preference/CheckBoxPreference;

.field private mHipSService:Lcom/lbe/security/service/privacy/HIPSService;

.field private mLBEConnection:Lcom/android/settings/permission/AppPermissionsEditor$LBEConnection;

.field private mLogList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lbe/security/bean/EventLog;",
            ">;"
        }
    .end annotation
.end field

.field private mLogsCategory:Landroid/preference/PreferenceCategory;

.field private mManageItem:Landroid/view/MenuItem;

.field private mPackage:Lcom/lbe/security/bean/Package;

.field private mPermsListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mPkgInfo:Landroid/content/pm/PackageInfo;

.field private mPkgManager:Landroid/content/pm/PackageManager;

.field private mPkgName:Ljava/lang/String;

.field private mPrivacyCategory:Landroid/preference/PreferenceCategory;

.field private mPrivacyIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSDKHelper:Lcom/lbe/security/service/sdkhelper/SDKHelper;

.field private mSecurityCategory:Landroid/preference/PreferenceCategory;

.field private mSecurityIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTrustListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mTrustSwitchPref:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mPkgName:Ljava/lang/String;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mAppLabel:Ljava/lang/String;

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mAppVersion:Ljava/lang/String;

    .line 191
    new-instance v0, Lcom/android/settings/permission/AppPermissionsEditor$1;

    invoke-direct {v0, p0}, Lcom/android/settings/permission/AppPermissionsEditor$1;-><init>(Lcom/android/settings/permission/AppPermissionsEditor;)V

    iput-object v0, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mTrustListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 218
    new-instance v0, Lcom/android/settings/permission/AppPermissionsEditor$2;

    invoke-direct {v0, p0}, Lcom/android/settings/permission/AppPermissionsEditor$2;-><init>(Lcom/android/settings/permission/AppPermissionsEditor;)V

    iput-object v0, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mAutoStartUpListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 251
    new-instance v0, Lcom/android/settings/permission/AppPermissionsEditor$3;

    invoke-direct {v0, p0}, Lcom/android/settings/permission/AppPermissionsEditor$3;-><init>(Lcom/android/settings/permission/AppPermissionsEditor;)V

    iput-object v0, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mPermsListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 377
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/permission/AppPermissionsEditor;)Lcom/lbe/security/bean/Package;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mPackage:Lcom/lbe/security/bean/Package;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/permission/AppPermissionsEditor;)Lcom/lbe/security/service/privacy/HIPSService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mHipSService:Lcom/lbe/security/service/privacy/HIPSService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/permission/AppPermissionsEditor;Lcom/lbe/security/service/privacy/HIPSService;)Lcom/lbe/security/service/privacy/HIPSService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mHipSService:Lcom/lbe/security/service/privacy/HIPSService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/permission/AppPermissionsEditor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings/permission/AppPermissionsEditor;->initUI()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/permission/AppPermissionsEditor;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/permission/AppPermissionsEditor;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mPkgManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/permission/AppPermissionsEditor;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/settings/permission/AppPermissionsEditor;->getActionDrawableRes(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$602(Lcom/android/settings/permission/AppPermissionsEditor;Lcom/lbe/security/service/sdkhelper/SDKHelper;)Lcom/lbe/security/service/sdkhelper/SDKHelper;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mSDKHelper:Lcom/lbe/security/service/sdkhelper/SDKHelper;

    return-object p1
.end method

.method private buildLogs()V
    .locals 9

    .prologue
    .line 336
    iget-object v6, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mLogList:Ljava/util/List;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mLogList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 337
    iget-object v6, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mLogList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lbe/security/bean/EventLog;

    .line 338
    .local v3, log:Lcom/lbe/security/bean/EventLog;
    new-instance v4, Lcom/android/settings/permission/PermissionLogPreference;

    invoke-direct {v4, p0}, Lcom/android/settings/permission/PermissionLogPreference;-><init>(Landroid/content/Context;)V

    .line 339
    .local v4, pref:Lcom/android/settings/permission/PermissionLogPreference;
    invoke-virtual {v3}, Lcom/lbe/security/bean/EventLog;->getTimestamp()J

    move-result-wide v6

    const-string v8, "yyyy-MM-dd"

    invoke-direct {p0, v6, v7, v8}, Lcom/android/settings/permission/AppPermissionsEditor;->getFormatLogTime(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, data:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/lbe/security/bean/EventLog;->getTimestamp()J

    move-result-wide v6

    const-string v8, "HH:mm"

    invoke-direct {p0, v6, v7, v8}, Lcom/android/settings/permission/AppPermissionsEditor;->getFormatLogTime(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 341
    .local v5, time:Ljava/lang/String;
    invoke-virtual {v4, v0}, Lcom/android/settings/permission/PermissionLogPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 342
    invoke-virtual {v3}, Lcom/lbe/security/bean/EventLog;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/settings/permission/PermissionLogPreference;->setPermName(Ljava/lang/String;)V

    .line 343
    invoke-virtual {v4, v5}, Lcom/android/settings/permission/PermissionLogPreference;->setTime(Ljava/lang/String;)V

    .line 345
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mSDKHelper:Lcom/lbe/security/service/sdkhelper/SDKHelper;

    invoke-virtual {v3}, Lcom/lbe/security/bean/EventLog;->getAction()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/lbe/security/service/sdkhelper/SDKHelper;->getActionColoredName(I)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/settings/permission/PermissionLogPreference;->setPermState(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lcom/lbe/security/sdk/SDKException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    :goto_1
    iget-object v6, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mLogsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v6, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 346
    :catch_0
    move-exception v1

    .line 347
    .local v1, e:Lcom/lbe/security/sdk/SDKException;
    const-string v6, "AppPermissionsEditor"

    const-string v7, "build logs failed : getActionColoredName."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 352
    .end local v0           #data:Ljava/lang/String;
    .end local v1           #e:Lcom/lbe/security/sdk/SDKException;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #log:Lcom/lbe/security/bean/EventLog;
    .end local v4           #pref:Lcom/android/settings/permission/PermissionLogPreference;
    .end local v5           #time:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/permission/AppPermissionsEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mLogsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 354
    :cond_1
    return-void
.end method

.method private buildPermissions(Ljava/util/List;Landroid/preference/PreferenceCategory;)V
    .locals 10
    .parameter
    .parameter "cate"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/preference/PreferenceCategory;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, permsIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .line 306
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 307
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 308
    .local v3, id:I
    new-instance v5, Lcom/android/settings/permission/AppPermsEditorPreference;

    invoke-direct {v5, p0}, Lcom/android/settings/permission/AppPermsEditorPreference;-><init>(Landroid/content/Context;)V

    .line 309
    .local v5, prefItem:Lcom/android/settings/permission/AppPermsEditorPreference;
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/permission/AppPermsEditorPreference;->setKey(Ljava/lang/String;)V

    .line 311
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mSDKHelper:Lcom/lbe/security/service/sdkhelper/SDKHelper;

    invoke-virtual {v6, v3}, Lcom/lbe/security/service/sdkhelper/SDKHelper;->getPermissionName(I)Ljava/lang/String;

    move-result-object v4

    .line 312
    .local v4, name:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mSDKHelper:Lcom/lbe/security/service/sdkhelper/SDKHelper;

    iget-object v8, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mPackage:Lcom/lbe/security/bean/Package;

    invoke-virtual {v6, v8, v3}, Lcom/lbe/security/service/sdkhelper/SDKHelper;->getAction(Lcom/lbe/security/bean/Package;I)I

    move-result v0

    .line 313
    .local v0, action:I
    invoke-virtual {v5, v4}, Lcom/android/settings/permission/AppPermsEditorPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v6, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mSDKHelper:Lcom/lbe/security/service/sdkhelper/SDKHelper;

    invoke-virtual {v6, v3}, Lcom/lbe/security/service/sdkhelper/SDKHelper;->getPermissionDesc(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/permission/AppPermsEditorPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 315
    invoke-direct {p0, v0}, Lcom/android/settings/permission/AppPermissionsEditor;->getActionDrawableRes(I)I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_0

    .line 316
    invoke-direct {p0, v0}, Lcom/android/settings/permission/AppPermissionsEditor;->getActionDrawableRes(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/settings/permission/AppPermsEditorPreference;->setState(I)V

    .line 318
    :cond_0
    invoke-virtual {v5, v4}, Lcom/android/settings/permission/AppPermsEditorPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v6, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mActionStates:[Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/settings/permission/AppPermsEditorPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 320
    iget-object v6, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mActionValue:[Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/settings/permission/AppPermsEditorPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 321
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/permission/AppPermsEditorPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 322
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/settings/permission/AppPermsEditorPreference;->setPersistent(Z)V

    .line 323
    iget-object v6, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mPermsListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v5, v6}, Lcom/android/settings/permission/AppPermsEditorPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 324
    iget-object v6, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mTrustSwitchPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v5, v6}, Lcom/android/settings/permission/AppPermsEditorPreference;->setEnabled(Z)V

    .line 325
    invoke-virtual {p2, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Lcom/lbe/security/sdk/SDKException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 326
    .end local v0           #action:I
    .end local v4           #name:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 327
    .local v1, e:Lcom/lbe/security/sdk/SDKException;
    const-string v6, "AppPermissionsEditor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "build permissions failed!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/lbe/security/sdk/SDKException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v1           #e:Lcom/lbe/security/sdk/SDKException;
    .restart local v0       #action:I
    .restart local v4       #name:Ljava/lang/String;
    :cond_1
    move v6, v7

    .line 324
    goto :goto_1

    .line 331
    .end local v0           #action:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #id:I
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #prefItem:Lcom/android/settings/permission/AppPermsEditorPreference;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/permission/AppPermissionsEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 333
    :cond_3
    return-void
.end method

.method private buildPreferences()V
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mSecurityIdList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mSecurityCategory:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/permission/AppPermissionsEditor;->buildPermissions(Ljava/util/List;Landroid/preference/PreferenceCategory;)V

    .line 300
    iget-object v0, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mPrivacyIdList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mPrivacyCategory:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/permission/AppPermissionsEditor;->buildPermissions(Ljava/util/List;Landroid/preference/PreferenceCategory;)V

    .line 302
    invoke-direct {p0}, Lcom/android/settings/permission/AppPermissionsEditor;->buildLogs()V

    .line 303
    return-void
.end method

.method private getActionDrawableRes(I)I
    .locals 1
    .parameter "action"

    .prologue
    .line 363
    packed-switch p1, :pswitch_data_0

    .line 374
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 365
    :pswitch_0
    const v0, 0x7f020002

    .line 366
    .local v0, res:I
    goto :goto_0

    .line 368
    .end local v0           #res:I
    :pswitch_1
    const v0, 0x7f020182

    .line 369
    .restart local v0       #res:I
    goto :goto_0

    .line 371
    .end local v0           #res:I
    :pswitch_2
    const v0, 0x7f020184

    .line 372
    .restart local v0       #res:I
    goto :goto_0

    .line 363
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getFormatLogTime(JLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "date"
    .parameter "format"

    .prologue
    .line 357
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 358
    .local v0, formatter:Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private initUI()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/permission/AppPermissionsEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/permission/AppPermissionsEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 137
    :cond_0
    const v2, 0x7f06000f

    invoke-virtual {p0, v2}, Lcom/android/settings/permission/AppPermissionsEditor;->addPreferencesFromResource(I)V

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/permission/AppPermissionsEditor;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 140
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mHipSService:Lcom/lbe/security/service/privacy/HIPSService;

    const-string v5, "extra_package_uid"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/lbe/security/service/privacy/HIPSService;->findPackageByUid(I)Lcom/lbe/security/bean/Package;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mPackage:Lcom/lbe/security/bean/Package;

    .line 141
    iget-object v2, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mPackage:Lcom/lbe/security/bean/Package;

    if-nez v2, :cond_1

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/permission/AppPermissionsEditor;->finish()V

    .line 175
    :goto_0
    return-void

    .line 145
    :cond_1
    iget-object v2, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mPackage:Lcom/lbe/security/bean/Package;

    invoke-virtual {v2}, Lcom/lbe/security/bean/Package;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mPkgName:Ljava/lang/String;

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/permission/AppPermissionsEditor;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mPkgManager:Landroid/content/pm/PackageManager;

    .line 149
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mPkgManager:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mPkgName:Ljava/lang/String;

    const/16 v6, 0x1000

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mPkgInfo:Landroid/content/pm/PackageInfo;

    .line 150
    iget-object v2, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mPkgManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mAppLabel:Ljava/lang/String;

    .line 151
    const v2, 0x7f0c041e

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v2, v5}, Lcom/android/settings/permission/AppPermissionsEditor;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mAppVersion:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    invoke-direct {p0}, Lcom/android/settings/permission/AppPermissionsEditor;->setActionBarView()V

    .line 159
    invoke-direct {p0}, Lcom/android/settings/permission/AppPermissionsEditor;->parsePermissions()V

    .line 160
    invoke-direct {p0}, Lcom/android/settings/permission/AppPermissionsEditor;->parseLogs()V

    .line 162
    const-string v2, "trust_switch_pref"

    invoke-virtual {p0, v2}, Lcom/android/settings/permission/AppPermissionsEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mTrustSwitchPref:Landroid/preference/CheckBoxPreference;

    .line 163
    iget-object v2, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mTrustSwitchPref:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mPackage:Lcom/lbe/security/bean/Package;

    invoke-virtual {v5}, Lcom/lbe/security/bean/Package;->isTrust()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 164
    iget-object v2, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mTrustSwitchPref:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mTrustListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 165
    const-string v2, "auto_startup_pref"

    invoke-virtual {p0, v2}, Lcom/android/settings/permission/AppPermissionsEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mAutoStartupPref:Landroid/preference/CheckBoxPreference;

    .line 166
    iget-object v5, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mAutoStartupPref:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v6, 0x4000

    and-int/2addr v2, v6

    if-nez v2, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 168
    iget-object v2, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mAutoStartupPref:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mAutoStartUpListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 169
    const-string v2, "privacy_relative"

    invoke-virtual {p0, v2}, Lcom/android/settings/permission/AppPermissionsEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mPrivacyCategory:Landroid/preference/PreferenceCategory;

    .line 170
    const-string v2, "security_relative"

    invoke-virtual {p0, v2}, Lcom/android/settings/permission/AppPermissionsEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mSecurityCategory:Landroid/preference/PreferenceCategory;

    .line 171
    const-string v2, "logs"

    invoke-virtual {p0, v2}, Lcom/android/settings/permission/AppPermissionsEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mLogsCategory:Landroid/preference/PreferenceCategory;

    .line 173
    invoke-direct {p0}, Lcom/android/settings/permission/AppPermissionsEditor;->buildPreferences()V

    goto/16 :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {p0}, Lcom/android/settings/permission/AppPermissionsEditor;->finish()V

    goto/16 :goto_0

    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    move v2, v4

    .line 166
    goto :goto_1
.end method

.method private parseLogs()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    .line 286
    new-instance v1, Lcom/lbe/security/service/privacy/EventFilter;

    invoke-direct {v1}, Lcom/lbe/security/service/privacy/EventFilter;-><init>()V

    .line 287
    .local v1, eventFilter:Lcom/lbe/security/service/privacy/EventFilter;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/lbe/security/service/privacy/EventFilter;->timestop:Ljava/lang/Long;

    .line 288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide v4, 0x9a7ec800L

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/lbe/security/service/privacy/EventFilter;->timestart:Ljava/lang/Long;

    .line 289
    const/4 v2, 0x1

    new-array v0, v2, [I

    iget-object v2, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mPackage:Lcom/lbe/security/bean/Package;

    invoke-virtual {v2}, Lcom/lbe/security/bean/Package;->getUid()I

    move-result v2

    aput v2, v0, v6

    .line 290
    .local v0, a:[I
    iput-object v0, v1, Lcom/lbe/security/service/privacy/EventFilter;->pkgId:[I

    .line 291
    iget-object v2, v1, Lcom/lbe/security/service/privacy/EventFilter;->timestart:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v7

    if-gez v2, :cond_0

    .line 292
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/lbe/security/service/privacy/EventFilter;->timestart:Ljava/lang/Long;

    .line 295
    :cond_0
    iget-object v2, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mHipSService:Lcom/lbe/security/service/privacy/HIPSService;

    const-string v3, "timestamp"

    invoke-virtual {v2, v1, v3, v6}, Lcom/lbe/security/service/privacy/HIPSService;->queryLog(Lcom/lbe/security/service/privacy/EventFilter;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mLogList:Ljava/util/List;

    .line 296
    return-void
.end method

.method private parsePermissions()V
    .locals 7

    .prologue
    .line 263
    iget-object v5, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mSDKHelper:Lcom/lbe/security/service/sdkhelper/SDKHelper;

    iget-object v6, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mPackage:Lcom/lbe/security/bean/Package;

    invoke-virtual {v5, v6}, Lcom/lbe/security/service/sdkhelper/SDKHelper;->getPermissions(Lcom/lbe/security/bean/Package;)Ljava/util/List;

    move-result-object v2

    .line 264
    .local v2, permsIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mSDKHelper:Lcom/lbe/security/service/sdkhelper/SDKHelper;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/lbe/security/service/sdkhelper/SDKHelper;->findPermissionByGroup(I)Ljava/util/List;

    move-result-object v3

    .line 265
    .local v3, privacyIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mSDKHelper:Lcom/lbe/security/service/sdkhelper/SDKHelper;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/lbe/security/service/sdkhelper/SDKHelper;->findPermissionByGroup(I)Ljava/util/List;

    move-result-object v4

    .line 267
    .local v4, securityIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mPrivacyIdList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 268
    iget-object v5, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mSecurityIdList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 269
    if-eqz v2, :cond_2

    .line 270
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 271
    .local v1, id:I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 272
    iget-object v5, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mPrivacyIdList:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 273
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 274
    iget-object v5, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mSecurityIdList:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 278
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #id:I
    :cond_2
    return-void
.end method

.method private setActionBarView()V
    .locals 7

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/android/settings/permission/AppPermissionsEditor;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f04000a

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 179
    .local v1, custormView:Landroid/view/View;
    const v4, 0x7f09000f

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 180
    .local v3, title:Landroid/widget/TextView;
    const v4, 0x7f090010

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 182
    .local v2, subTitle:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings/permission/AppPermissionsEditor;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 183
    .local v0, actionBar:Landroid/app/ActionBar;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 184
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 185
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 187
    iget-object v4, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mAppLabel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v4, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mAppVersion:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mPrivacyIdList:Ljava/util/List;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mSecurityIdList:Ljava/util/List;

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/permission/AppPermissionsEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080075

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mActionStates:[Ljava/lang/String;

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/permission/AppPermissionsEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080074

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mActionValue:[Ljava/lang/String;

    .line 96
    new-instance v0, Lcom/android/settings/permission/AppPermissionsEditor$LBEConnection;

    const-string v1, "com.lbe.security.miui"

    invoke-direct {v0, p0, p0, v1}, Lcom/android/settings/permission/AppPermissionsEditor$LBEConnection;-><init>(Lcom/android/settings/permission/AppPermissionsEditor;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mLBEConnection:Lcom/android/settings/permission/AppPermissionsEditor$LBEConnection;

    .line 97
    iget-object v0, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mLBEConnection:Lcom/android/settings/permission/AppPermissionsEditor$LBEConnection;

    invoke-static {v0}, Lcom/lbe/security/sdk/SDKService;->bindSDKService(Lcom/lbe/security/sdk/SDKConnection;)Z

    .line 98
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 110
    const v0, 0x7f0c0768

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mManageItem:Landroid/view/MenuItem;

    .line 111
    iget-object v0, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mManageItem:Landroid/view/MenuItem;

    const v1, 0x7f0200b8

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 112
    iget-object v0, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mManageItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 113
    return v2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mHipSService:Lcom/lbe/security/service/privacy/HIPSService;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mLBEConnection:Lcom/android/settings/permission/AppPermissionsEditor$LBEConnection;

    invoke-static {v0}, Lcom/lbe/security/sdk/SDKService;->unbindSDKService(Lcom/lbe/security/sdk/SDKConnection;)V

    .line 105
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 106
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 118
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 130
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 120
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 121
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 122
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.applications.InstalledAppDetailsTop"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const-string v1, "package"

    iget-object v2, p0, Lcom/android/settings/permission/AppPermissionsEditor;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const-string v1, ":android:show_fragment_title"

    const v2, 0x7f0c03d4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 127
    invoke-virtual {p0, v0}, Lcom/android/settings/permission/AppPermissionsEditor;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
