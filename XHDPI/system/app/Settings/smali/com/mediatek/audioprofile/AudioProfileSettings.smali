.class public Lcom/mediatek/audioprofile/AudioProfileSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AudioProfileSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/audioprofile/AudioProfileSettings$ResetTask;
    }
.end annotation


# instance fields
.field private mAudioEnhParent:Landroid/preference/PreferenceCategory;

.field private mAudioManager:Landroid/media/AudioManager;

.field public mCurrentDialogId:I

.field private mCustomParent:Landroid/preference/PreferenceCategory;

.field private mCustomerExist:Z

.field private mCustomerProfilePrefList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/audioprofile/AudioProfilePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultKey:Ljava/lang/String;

.field private mDirac:Landroid/preference/Preference;

.field private mEditText:Landroid/widget/EditText;

.field private mErrorType:I

.field private mExt:Lcom/android/settings/ext/IAudioProfileExt;

.field private mGeneralPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

.field private mHandler:Landroid/os/Handler;

.field private final mListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

.field private mMenuId:I

.field private mMusicPlusPrf:Landroid/preference/CheckBoxPreference;

.field private mPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

.field private mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

.field private final mProfileSettingListener:Landroid/view/View$OnClickListener;

.field private mRenameDialogtext:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 112
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCurrentDialogId:I

    .line 114
    iput-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mHandler:Landroid/os/Handler;

    .line 117
    iput-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomerExist:Z

    .line 124
    iput-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mEditText:Landroid/widget/EditText;

    .line 150
    new-instance v0, Lcom/mediatek/audioprofile/AudioProfileSettings$1;

    invoke-direct {v0, p0}, Lcom/mediatek/audioprofile/AudioProfileSettings$1;-><init>(Lcom/mediatek/audioprofile/AudioProfileSettings;)V

    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    .line 297
    new-instance v0, Lcom/mediatek/audioprofile/AudioProfileSettings$3;

    invoke-direct {v0, p0}, Lcom/mediatek/audioprofile/AudioProfileSettings$3;-><init>(Lcom/mediatek/audioprofile/AudioProfileSettings;)V

    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileSettingListener:Landroid/view/View$OnClickListener;

    .line 677
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/audioprofile/AudioProfileSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mDefaultKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/audioprofile/AudioProfileSettings;)Lcom/mediatek/audioprofile/AudioProfilePreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mGeneralPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/audioprofile/AudioProfileSettings;)Lcom/mediatek/audioprofile/AudioProfileManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/audioprofile/AudioProfileSettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfilePreference;
    .locals 6
    .parameter "root"
    .parameter "key"

    .prologue
    .line 272
    invoke-static {p2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v2

    .line 273
    .local v2, scenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    const/4 v1, 0x0

    .line 274
    .local v1, preference:Lcom/mediatek/audioprofile/AudioProfilePreference;
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v3, v2}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 275
    new-instance v1, Lcom/mediatek/audioprofile/AudioProfilePreference;

    .end local v1           #preference:Lcom/mediatek/audioprofile/AudioProfilePreference;
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/mediatek/audioprofile/AudioProfilePreference;-><init>(Landroid/content/Context;)V

    .line 276
    .restart local v1       #preference:Lcom/mediatek/audioprofile/AudioProfilePreference;
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileSettingListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Lcom/mediatek/audioprofile/AudioProfilePreference;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    invoke-virtual {v1, p2}, Lcom/mediatek/audioprofile/AudioProfilePreference;->setProfileKey(Ljava/lang/String;)V

    .line 278
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomerProfilePrefList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    const-string v3, "Settings/AudioP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioProfileSettings:Add into profile list"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfilePreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-boolean v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomerExist:Z

    if-nez v3, :cond_0

    .line 282
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 283
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomerExist:Z

    .line 285
    :cond_0
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 287
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v3, p2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 290
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lcom/mediatek/audioprofile/AudioProfilePreference;->setTitle(Ljava/lang/String;Z)V

    .line 291
    const-string v3, "Settings/AudioP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioProfileSettings:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfilePreference;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    .end local v0           #name:Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method private dynamicshowSummary()V
    .locals 3

    .prologue
    .line 326
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mGeneralPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

    invoke-virtual {v2}, Lcom/mediatek/audioprofile/AudioProfilePreference;->dynamicShowSummary()V

    .line 327
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomerProfilePrefList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/audioprofile/AudioProfilePreference;

    .line 328
    .local v1, pref:Lcom/mediatek/audioprofile/AudioProfilePreference;
    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfilePreference;->dynamicShowSummary()V

    goto :goto_0

    .line 330
    .end local v1           #pref:Lcom/mediatek/audioprofile/AudioProfilePreference;
    :cond_0
    return-void
.end method

.method private updateActivePreference()V
    .locals 5

    .prologue
    .line 312
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getActiveProfileKey()Ljava/lang/String;

    move-result-object v1

    .line 313
    .local v1, key:Ljava/lang/String;
    const-string v2, "Settings/AudioP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioProfileSettings:key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mDefaultKey:Ljava/lang/String;

    .end local v1           #key:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/AudioProfilePreference;

    .line 316
    .local v0, activePreference:Lcom/mediatek/audioprofile/AudioProfilePreference;
    if-eqz v0, :cond_1

    .line 317
    invoke-virtual {v0}, Lcom/mediatek/audioprofile/AudioProfilePreference;->setChecked()V

    .line 319
    :cond_1
    return-void
.end method

.method private updatePreferenceHierarchy()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 227
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 229
    .local v4, root:Landroid/preference/PreferenceScreen;
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v7}, Lcom/mediatek/audioprofile/AudioProfileManager;->getAllProfileKeys()Ljava/util/List;

    move-result-object v3

    .line 230
    .local v3, profileKeys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v3, :cond_0

    .line 231
    const-string v6, "Settings/AudioP"

    const-string v7, "AudioProfileSettings:profileKey size is 0"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :goto_0
    return-void

    .line 234
    :cond_0
    const-string v7, "Settings/AudioP"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AudioProfileSettings:profileKey size"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_3

    .line 237
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 238
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 239
    iput-boolean v6, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomerExist:Z

    .line 249
    :cond_1
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    const-string v8, "GetMusicPlusStatus"

    invoke-virtual {v7, v8}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 250
    .local v5, state:Ljava/lang/String;
    const-string v7, "Settings/AudioP"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AudioProfileSettings:get the state: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/4 v1, 0x0

    .line 252
    .local v1, isChecked:Z
    if-eqz v5, :cond_2

    .line 253
    const-string v7, "GetMusicPlusStatus=1"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v1, 0x1

    .line 256
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mMusicPlusPrf:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 241
    .end local v1           #isChecked:Z
    .end local v5           #state:Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 242
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomerProfilePrefList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 243
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 244
    .local v2, profileKey:Ljava/lang/String;
    invoke-direct {p0, v4, v2}, Lcom/mediatek/audioprofile/AudioProfileSettings;->addPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfilePreference;

    goto :goto_2

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #profileKey:Ljava/lang/String;
    .restart local v1       #isChecked:Z
    .restart local v5       #state:Ljava/lang/String;
    :cond_4
    move v1, v6

    .line 253
    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialogInterface"
    .parameter "button"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 603
    const-string v3, "Settings/AudioP"

    const-string v4, "onClick"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    const-string v3, "Settings/AudioP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    const/4 v3, -0x1

    if-eq p2, v3, :cond_1

    .line 606
    const-string v3, "Settings/AudioP"

    const-string v4, "return"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    :cond_0
    :goto_0
    return-void

    .line 609
    :cond_1
    iget v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCurrentDialogId:I

    packed-switch v3, :pswitch_data_0

    .line 671
    const-string v3, "Settings/AudioP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioProfileSettings:unrecongnized dialog id is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCurrentDialogId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 611
    :pswitch_0
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mEditText:Landroid/widget/EditText;

    if-nez v3, :cond_2

    const-string v2, ""

    .line 614
    .local v2, title:Ljava/lang/String;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 615
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 616
    iput v7, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mErrorType:I

    .line 617
    invoke-virtual {p0, v7}, Lcom/mediatek/audioprofile/AudioProfileSettings;->showDialog(I)V

    goto :goto_0

    .line 611
    .end local v2           #title:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 618
    .restart local v2       #title:Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v3, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->isNameExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 619
    iput v6, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mErrorType:I

    .line 620
    invoke-virtual {p0, v7}, Lcom/mediatek/audioprofile/AudioProfileSettings;->showDialog(I)V

    goto :goto_0

    .line 622
    :cond_4
    iget v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mMenuId:I

    if-ne v3, v7, :cond_6

    .line 623
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->addProfile()Ljava/lang/String;

    move-result-object v1

    .line 624
    .local v1, profileKey:Ljava/lang/String;
    const-string v3, "Settings/AudioP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioProfileSettings:add profile Key"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v3, v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->setProfileName(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/mediatek/audioprofile/AudioProfileSettings;->addPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfilePreference;

    move-result-object v0

    .line 629
    .local v0, activePreference:Lcom/mediatek/audioprofile/AudioProfilePreference;
    if-nez v0, :cond_5

    .line 630
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mDefaultKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mediatek/audioprofile/AudioProfileManager;->setActiveProfile(Ljava/lang/String;)V

    .line 631
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mGeneralPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfilePreference;->setChecked()V

    goto/16 :goto_0

    .line 633
    :cond_5
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v3, v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->setActiveProfile(Ljava/lang/String;)V

    .line 634
    invoke-virtual {v0}, Lcom/mediatek/audioprofile/AudioProfilePreference;->setChecked()V

    .line 635
    invoke-virtual {v0}, Lcom/mediatek/audioprofile/AudioProfilePreference;->dynamicShowSummary()V

    goto/16 :goto_0

    .line 638
    .end local v0           #activePreference:Lcom/mediatek/audioprofile/AudioProfilePreference;
    .end local v1           #profileKey:Ljava/lang/String;
    :cond_6
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

    invoke-virtual {v3, v2, v7}, Lcom/mediatek/audioprofile/AudioProfilePreference;->setTitle(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 643
    .end local v2           #title:Ljava/lang/String;
    :pswitch_1
    iget v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mErrorType:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 644
    invoke-virtual {p0, v6}, Lcom/mediatek/audioprofile/AudioProfileSettings;->showDialog(I)V

    goto/16 :goto_0

    .line 648
    :pswitch_2
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfilePreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 649
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mDefaultKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mediatek/audioprofile/AudioProfileManager;->setActiveProfile(Ljava/lang/String;)V

    .line 650
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mGeneralPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfilePreference;->setChecked()V

    .line 652
    :cond_7
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

    invoke-virtual {v4}, Lcom/mediatek/audioprofile/AudioProfilePreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/audioprofile/AudioProfileManager;->deleteProfile(Ljava/lang/String;)Z

    .line 653
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomParent:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 654
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomerProfilePrefList:Ljava/util/List;

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 655
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 656
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 657
    iput-boolean v6, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomerExist:Z

    goto/16 :goto_0

    .line 661
    :pswitch_3
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomParent:Landroid/preference/PreferenceCategory;

    if-eqz v3, :cond_8

    .line 662
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 663
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 664
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomerProfilePrefList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 665
    iput-boolean v6, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomerExist:Z

    .line 667
    :cond_8
    const-string v3, "predefine"

    invoke-virtual {p0, v3}, Lcom/mediatek/audioprofile/AudioProfileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 668
    new-instance v3, Lcom/mediatek/audioprofile/AudioProfileSettings$ResetTask;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/mediatek/audioprofile/AudioProfileSettings$ResetTask;-><init>(Lcom/mediatek/audioprofile/AudioProfileSettings;Lcom/mediatek/audioprofile/AudioProfileSettings$1;)V

    new-array v4, v6, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mediatek/audioprofile/AudioProfileSettings$ResetTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 609
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v6, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 492
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 494
    .local v0, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    iget v5, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 496
    .local v1, pref:Landroid/preference/Preference;
    instance-of v4, v1, Lcom/mediatek/audioprofile/AudioProfilePreference;

    if-eqz v4, :cond_0

    .line 497
    check-cast v1, Lcom/mediatek/audioprofile/AudioProfilePreference;

    .end local v1           #pref:Landroid/preference/Preference;
    iput-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

    .line 498
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    move v2, v3

    .line 514
    :goto_0
    return v2

    .line 500
    :pswitch_0
    invoke-virtual {p0, v6}, Lcom/mediatek/audioprofile/AudioProfileSettings;->showDialog(I)V

    goto :goto_0

    .line 503
    :pswitch_1
    iput v6, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mMenuId:I

    .line 504
    invoke-virtual {p0, v3}, Lcom/mediatek/audioprofile/AudioProfileSettings;->showDialog(I)V

    goto :goto_0

    .line 507
    :pswitch_2
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

    invoke-virtual {v4}, Lcom/mediatek/audioprofile/AudioProfilePreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/audioprofile/AudioProfileManager;->setActiveProfile(Ljava/lang/String;)V

    .line 508
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfilePreference;->setChecked()V

    goto :goto_0

    .restart local v1       #pref:Landroid/preference/Preference;
    :cond_0
    move v2, v3

    .line 514
    goto :goto_0

    .line 498
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 170
    const-string v2, "Settings/AudioP"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 173
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/gemini/SimUtils;->getAudioProfilePlgin(Landroid/content/Context;)Lcom/android/settings/ext/IAudioProfileExt;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mExt:Lcom/android/settings/ext/IAudioProfileExt;

    .line 175
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomerProfilePrefList:Ljava/util/List;

    .line 176
    const-string v2, "audioprofile"

    invoke-virtual {p0, v2}, Lcom/mediatek/audioprofile/AudioProfileSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/audioprofile/AudioProfileManager;

    iput-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    .line 177
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/mediatek/audioprofile/AudioProfileSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 178
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 179
    .local v1, root:Landroid/preference/PreferenceScreen;
    if-eqz v1, :cond_0

    .line 180
    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 182
    :cond_0
    const v2, 0x7f060012

    invoke-virtual {p0, v2}, Lcom/mediatek/audioprofile/AudioProfileSettings;->addPreferencesFromResource(I)V

    .line 183
    const-string v2, "custom"

    invoke-virtual {p0, v2}, Lcom/mediatek/audioprofile/AudioProfileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCustomParent:Landroid/preference/PreferenceCategory;

    .line 185
    const-string v2, "mtk_audioprofile_general"

    invoke-virtual {p0, v2}, Lcom/mediatek/audioprofile/AudioProfileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/AudioProfilePreference;

    .line 186
    .local v0, pref:Lcom/mediatek/audioprofile/AudioProfilePreference;
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileSettingListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/mediatek/audioprofile/AudioProfilePreference;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    const-string v2, "mtk_audioprofile_silent"

    invoke-virtual {p0, v2}, Lcom/mediatek/audioprofile/AudioProfileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .end local v0           #pref:Lcom/mediatek/audioprofile/AudioProfilePreference;
    check-cast v0, Lcom/mediatek/audioprofile/AudioProfilePreference;

    .line 188
    .restart local v0       #pref:Lcom/mediatek/audioprofile/AudioProfilePreference;
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileSettingListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/mediatek/audioprofile/AudioProfilePreference;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    const-string v2, "mtk_audioprofile_meeting"

    invoke-virtual {p0, v2}, Lcom/mediatek/audioprofile/AudioProfileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .end local v0           #pref:Lcom/mediatek/audioprofile/AudioProfilePreference;
    check-cast v0, Lcom/mediatek/audioprofile/AudioProfilePreference;

    .line 190
    .restart local v0       #pref:Lcom/mediatek/audioprofile/AudioProfilePreference;
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileSettingListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/mediatek/audioprofile/AudioProfilePreference;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    const-string v2, "mtk_audioprofile_outdoor"

    invoke-virtual {p0, v2}, Lcom/mediatek/audioprofile/AudioProfileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .end local v0           #pref:Lcom/mediatek/audioprofile/AudioProfilePreference;
    check-cast v0, Lcom/mediatek/audioprofile/AudioProfilePreference;

    .line 192
    .restart local v0       #pref:Lcom/mediatek/audioprofile/AudioProfilePreference;
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileSettingListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/mediatek/audioprofile/AudioProfilePreference;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mtk_audioprofile_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mDefaultKey:Ljava/lang/String;

    .line 196
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mDefaultKey:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/mediatek/audioprofile/AudioProfileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/mediatek/audioprofile/AudioProfilePreference;

    iput-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mGeneralPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

    .line 198
    new-instance v2, Lcom/mediatek/audioprofile/AudioProfileSettings$2;

    invoke-direct {v2, p0}, Lcom/mediatek/audioprofile/AudioProfileSettings$2;-><init>(Lcom/mediatek/audioprofile/AudioProfileSettings;)V

    iput-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mHandler:Landroid/os/Handler;

    .line 207
    const-string v2, "music_plus"

    invoke-virtual {p0, v2}, Lcom/mediatek/audioprofile/AudioProfileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mMusicPlusPrf:Landroid/preference/CheckBoxPreference;

    .line 208
    const-string v2, "sound_enhance"

    invoke-virtual {p0, v2}, Lcom/mediatek/audioprofile/AudioProfileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mAudioEnhParent:Landroid/preference/PreferenceCategory;

    .line 213
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mAudioEnhParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 214
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mAudioEnhParent:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 216
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/mediatek/audioprofile/AudioProfileSettings;->setHasOptionsMenu(Z)V

    .line 218
    const-string v2, "dirac_control"

    invoke-virtual {p0, v2}, Lcom/mediatek/audioprofile/AudioProfileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mDirac:Landroid/preference/Preference;

    .line 219
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    const/4 v6, 0x0

    .line 463
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    move-object v0, p3

    .line 464
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 465
    .local v0, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    iget v5, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference;

    .line 467
    .local v2, pref:Landroid/preference/Preference;
    instance-of v4, v2, Lcom/mediatek/audioprofile/AudioProfilePreference;

    if-eqz v4, :cond_0

    .line 468
    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 469
    .local v1, key:Ljava/lang/String;
    check-cast v2, Lcom/mediatek/audioprofile/AudioProfilePreference;

    .end local v2           #pref:Landroid/preference/Preference;
    invoke-virtual {v2}, Lcom/mediatek/audioprofile/AudioProfilePreference;->getTitle()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mRenameDialogtext:Ljava/lang/String;

    .line 470
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mRenameDialogtext:Ljava/lang/String;

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 471
    const/4 v4, 0x2

    const v5, 0x7f0c09f8

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 472
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-static {v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v3

    .line 473
    .local v3, senario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    sget-object v4, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v4, v3}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 474
    const/4 v4, 0x3

    const v5, 0x7f0c09f9

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 476
    const/4 v4, 0x4

    const v5, 0x7f0c09fa

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 480
    .end local v1           #key:Ljava/lang/String;
    .end local v3           #senario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    :cond_0
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 11
    .parameter "id"

    .prologue
    const v6, 0x1080027

    const/high16 v10, 0x104

    const/4 v9, 0x0

    const v8, 0x104000a

    const/4 v5, 0x1

    .line 530
    const/4 v1, 0x0

    .line 531
    .local v1, dialog:Landroid/app/Dialog;
    iput p1, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mCurrentDialogId:I

    .line 532
    if-nez p1, :cond_4

    .line 533
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f04003b

    invoke-virtual {v3, v4, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 535
    .local v0, content:Landroid/view/View;
    const v3, 0x7f09008a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mEditText:Landroid/widget/EditText;

    .line 536
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mEditText:Landroid/widget/EditText;

    if-eqz v3, :cond_0

    .line 537
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mEditText:Landroid/widget/EditText;

    const v4, 0x10001

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 539
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mEditText:Landroid/widget/EditText;

    iget v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mMenuId:I

    if-ne v3, v5, :cond_2

    const-string v3, ""

    :goto_0
    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 542
    :cond_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v4, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mMenuId:I

    if-ne v3, v5, :cond_3

    const v3, 0x7f0c09f7

    :goto_1
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c09fc

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v10, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 550
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x24

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 591
    .end local v0           #content:Landroid/view/View;
    :cond_1
    :goto_2
    return-object v1

    .line 539
    .restart local v0       #content:Landroid/view/View;
    :cond_2
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mRenameDialogtext:Ljava/lang/String;

    goto :goto_0

    .line 542
    :cond_3
    const v3, 0x7f0c09f9

    goto :goto_1

    .line 554
    .end local v0           #content:Landroid/view/View;
    :cond_4
    if-ne p1, v5, :cond_5

    .line 555
    const/4 v2, 0x0

    .line 556
    .local v2, stringId:I
    iget v3, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mErrorType:I

    packed-switch v3, :pswitch_data_0

    .line 569
    :goto_3
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0c0abf

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 574
    goto :goto_2

    .line 558
    :pswitch_0
    const v2, 0x7f0c0a00

    .line 559
    goto :goto_3

    .line 561
    :pswitch_1
    const v2, 0x7f0c09fd

    .line 562
    goto :goto_3

    .line 564
    :pswitch_2
    const v2, 0x7f0c09fe

    .line 565
    goto :goto_3

    .line 574
    .end local v2           #stringId:I
    :cond_5
    const/4 v3, 0x2

    if-ne p1, v3, :cond_6

    .line 575
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0c09f6

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c09fb

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v10, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_2

    .line 581
    :cond_6
    const/4 v3, 0x3

    if-ne p1, v3, :cond_1

    .line 582
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0c09fa

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c09ff

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mPref:Lcom/mediatek/audioprofile/AudioProfilePreference;

    invoke-virtual {v7}, Lcom/mediatek/audioprofile/AudioProfilePreference;->getTitle()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/mediatek/audioprofile/AudioProfileSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v10, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_2

    .line 556
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 409
    const/4 v0, 0x1

    const v1, 0x7f0c09f7

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x60200f9

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 416
    const/4 v0, 0x2

    const v1, 0x7f0c09f6

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200cf

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 422
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x2

    const/4 v0, 0x1

    .line 433
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 434
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileCount()I

    move-result v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_0

    .line 435
    iput v4, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mErrorType:I

    .line 436
    invoke-virtual {p0, v0}, Lcom/mediatek/audioprofile/AudioProfileSettings;->showDialog(I)V

    .line 446
    :goto_0
    return v0

    .line 439
    :cond_0
    iput v0, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mMenuId:I

    .line 440
    invoke-virtual {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileSettings;->showDialog(I)V

    goto :goto_0

    .line 442
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 443
    invoke-virtual {p0, v4}, Lcom/mediatek/audioprofile/AudioProfileSettings;->showDialog(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 446
    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 358
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 359
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->listenAudioProfie(Lcom/mediatek/common/audioprofile/AudioProfileListener;I)V

    .line 361
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 373
    instance-of v0, p2, Lcom/mediatek/audioprofile/AudioProfilePreference;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 374
    check-cast v0, Lcom/mediatek/audioprofile/AudioProfilePreference;

    .line 375
    invoke-virtual {v0}, Lcom/mediatek/audioprofile/AudioProfilePreference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 376
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mExt:Lcom/android/settings/ext/IAudioProfileExt;

    invoke-interface {v2}, Lcom/android/settings/ext/IAudioProfileExt;->isPrefEditable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 377
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 378
    const-string v0, "profileKey"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/mediatek/audioprofile/Editprofile;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v5, v4

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 388
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mMusicPlusPrf:Landroid/preference/CheckBoxPreference;

    if-ne v0, p2, :cond_1

    move-object v0, p2

    .line 389
    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 390
    if-eqz v0, :cond_3

    const-string v0, "SetMusicPlusStatus=1"

    .line 391
    :goto_1
    const-string v1, "Settings/AudioP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioProfileSettings: set command about music plus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 396
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 382
    :cond_2
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v2, v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->setActiveProfile(Ljava/lang/String;)V

    .line 383
    invoke-virtual {v0}, Lcom/mediatek/audioprofile/AudioProfilePreference;->setChecked()V

    goto :goto_0

    .line 390
    :cond_3
    const-string v0, "SetMusicPlusStatus=0"

    goto :goto_1
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 337
    const-string v1, "Settings/AudioP"

    const-string v2, "AudioProfileSettings:onResume"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 340
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileSettings;->updatePreferenceHierarchy()V

    .line 342
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileSettings;->dynamicshowSummary()V

    .line 343
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileSettings;->updateActivePreference()V

    .line 345
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileSettings;->registerForContextMenu(Landroid/view/View;)V

    .line 346
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->listenAudioProfie(Lcom/mediatek/common/audioprofile/AudioProfileListener;I)V

    .line 349
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 350
    .local v0, activity:Landroid/app/Activity;
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileSettings;->mDirac:Landroid/preference/Preference;

    invoke-static {}, Lcom/android/settings/dirac/DiracUtils;->getInstance()Lcom/android/settings/dirac/DiracUtils;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/settings/dirac/DiracUtils;->getDiracStateSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 351
    return-void
.end method
