.class public Lcom/android/settings/deviceinfo/MiuiUsbSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiUsbSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mBicr:Lcom/android/settings/deviceinfo/UsbPreference;

.field private mBicrExist:Z

.field private mCanUpdateToggle:Z

.field private mCharge:Lcom/android/settings/deviceinfo/UsbPreference;

.field private mChargeExist:Z

.field private mCurrentToggles:Ljava/lang/String;

.field private mIsHwUsbConnected:Z

.field private mIsPcKnowMe:Z

.field private mMtp:Lcom/android/settings/deviceinfo/UsbPreference;

.field private mPlugType:I

.field private mPtp:Lcom/android/settings/deviceinfo/UsbPreference;

.field private final mStateReceiver:Landroid/content/BroadcastReceiver;

.field private mUms:Lcom/android/settings/deviceinfo/UsbPreference;

.field private mUmsExist:Z

.field private mUsbAccessoryMode:Z

.field private mUsbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 38
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 59
    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mUmsExist:Z

    .line 60
    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mChargeExist:Z

    .line 61
    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mBicrExist:Z

    .line 62
    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mIsHwUsbConnected:Z

    .line 63
    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mIsPcKnowMe:Z

    .line 64
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mPlugType:I

    .line 65
    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mCanUpdateToggle:Z

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mCurrentToggles:Ljava/lang/String;

    .line 68
    new-instance v0, Lcom/android/settings/deviceinfo/MiuiUsbSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings$1;-><init>(Lcom/android/settings/deviceinfo/MiuiUsbSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/MiuiUsbSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->getCurrentFunction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/MiuiUsbSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mUsbAccessoryMode:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings/deviceinfo/MiuiUsbSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mUsbAccessoryMode:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/deviceinfo/MiuiUsbSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mIsHwUsbConnected:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/deviceinfo/MiuiUsbSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mIsHwUsbConnected:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/deviceinfo/MiuiUsbSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mIsPcKnowMe:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings/deviceinfo/MiuiUsbSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mIsPcKnowMe:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/deviceinfo/MiuiUsbSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mCurrentToggles:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/deviceinfo/MiuiUsbSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mCanUpdateToggle:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/deviceinfo/MiuiUsbSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mCanUpdateToggle:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/deviceinfo/MiuiUsbSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->updateToggles(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/deviceinfo/MiuiUsbSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mPlugType:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/settings/deviceinfo/MiuiUsbSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mPlugType:I

    return p1
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 141
    .local v4, root:Landroid/preference/PreferenceScreen;
    if-eqz v4, :cond_0

    .line 142
    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 144
    :cond_0
    const v5, 0x7f060075

    invoke-virtual {p0, v5}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->addPreferencesFromResource(I)V

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 147
    const-string v5, "usb_mtp"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/deviceinfo/UsbPreference;

    iput-object v5, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mMtp:Lcom/android/settings/deviceinfo/UsbPreference;

    .line 148
    iget-object v5, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mMtp:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v5, p0}, Lcom/android/settings/deviceinfo/UsbPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 150
    const-string v5, "usb_ptp"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/deviceinfo/UsbPreference;

    iput-object v5, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mPtp:Lcom/android/settings/deviceinfo/UsbPreference;

    .line 151
    iget-object v5, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mPtp:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v5, p0}, Lcom/android/settings/deviceinfo/UsbPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 153
    const-string v5, "usb_ums"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/deviceinfo/UsbPreference;

    iput-object v5, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mUms:Lcom/android/settings/deviceinfo/UsbPreference;

    .line 154
    iget-object v5, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mUms:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v5, p0}, Lcom/android/settings/deviceinfo/UsbPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 156
    const-string v5, "usb_charge"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/deviceinfo/UsbPreference;

    iput-object v5, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mCharge:Lcom/android/settings/deviceinfo/UsbPreference;

    .line 157
    iget-object v5, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mCharge:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v5, p0}, Lcom/android/settings/deviceinfo/UsbPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 159
    const-string v5, "usb_bicr"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/deviceinfo/UsbPreference;

    iput-object v5, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mBicr:Lcom/android/settings/deviceinfo/UsbPreference;

    .line 160
    iget-object v5, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mBicr:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v5, p0}, Lcom/android/settings/deviceinfo/UsbPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 162
    const-string v5, "ro.sys.usb.storage.type"

    const-string v6, "mtp"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 164
    .local v3, config:Ljava/lang/String;
    const-string v5, "mtp,mass_storage"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 166
    iget-object v5, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mUms:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 167
    iput-boolean v8, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mUmsExist:Z

    .line 170
    :cond_1
    const-string v5, "ro.sys.usb.charging.only"

    const-string v6, "no"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, chargeConfig:Ljava/lang/String;
    const-string v5, "UsbSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ro.sys.usb.charging.only: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const-string v5, "no"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 174
    const-string v5, "UsbSettings"

    const-string v6, "Usb Charge does not exist!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v5, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mCharge:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 176
    iput-boolean v8, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mChargeExist:Z

    .line 179
    :cond_2
    const-string v5, "ro.sys.usb.bicr"

    const-string v6, "no"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, bicrConfig:Ljava/lang/String;
    const-string v5, "UsbSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ro.sys.usb.bicr: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const-string v5, "no"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 183
    const-string v5, "UsbSettings"

    const-string v6, "Usb Bicr does not exist!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const-string v5, "usb_connect_as_cdrom_category"

    invoke-virtual {p0, v5}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 185
    .local v1, cdromCategory:Landroid/preference/PreferenceCategory;
    iget-object v5, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mBicr:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 186
    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 188
    iput-boolean v8, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mBicrExist:Z

    .line 191
    .end local v1           #cdromCategory:Landroid/preference/PreferenceCategory;
    :cond_3
    return-object v4
.end method

.method private getCurrentFunction()Ljava/lang/String;
    .locals 5

    .prologue
    .line 128
    const-string v2, "sys.usb.config"

    const-string v3, "none"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, functions:Ljava/lang/String;
    const-string v2, "UsbSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current function: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 132
    .local v0, commandIndex:I
    if-lez v0, :cond_0

    .line 133
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 135
    .end local v1           #functions:Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private updateToggles(Ljava/lang/String;)V
    .locals 4
    .parameter "function"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 225
    const-string v0, "mtp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 226
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mMtp:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 227
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mPtp:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 228
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mUmsExist:Z

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mUms:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 231
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mChargeExist:Z

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mCharge:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 234
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mBicrExist:Z

    if-eqz v0, :cond_2

    .line 235
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mBicr:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 299
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mUsbAccessoryMode:Z

    if-nez v0, :cond_15

    .line 301
    const-string v0, "UsbSettings"

    const-string v1, "USB Normal Mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mMtp:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/deviceinfo/UsbPreference;->setEnabled(Z)V

    .line 303
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mPtp:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/deviceinfo/UsbPreference;->setEnabled(Z)V

    .line 304
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mUmsExist:Z

    if-eqz v0, :cond_3

    .line 305
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mUms:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/deviceinfo/UsbPreference;->setEnabled(Z)V

    .line 307
    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mChargeExist:Z

    if-eqz v0, :cond_4

    .line 308
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mCharge:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/deviceinfo/UsbPreference;->setEnabled(Z)V

    .line 310
    :cond_4
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mBicrExist:Z

    if-eqz v0, :cond_5

    .line 311
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mBicr:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/deviceinfo/UsbPreference;->setEnabled(Z)V

    .line 328
    :cond_5
    :goto_1
    iput-object p1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mCurrentToggles:Ljava/lang/String;

    .line 329
    return-void

    .line 237
    :cond_6
    const-string v0, "ptp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 238
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mMtp:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 239
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mPtp:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 240
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mUmsExist:Z

    if-eqz v0, :cond_7

    .line 241
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mUms:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 243
    :cond_7
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mChargeExist:Z

    if-eqz v0, :cond_8

    .line 244
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mCharge:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 246
    :cond_8
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mBicrExist:Z

    if-eqz v0, :cond_2

    .line 247
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mBicr:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    goto :goto_0

    .line 249
    :cond_9
    const-string v0, "mass_storage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 250
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mMtp:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 251
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mPtp:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 252
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mUmsExist:Z

    if-eqz v0, :cond_a

    .line 253
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mUms:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 255
    :cond_a
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mChargeExist:Z

    if-eqz v0, :cond_b

    .line 256
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mCharge:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 258
    :cond_b
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mBicrExist:Z

    if-eqz v0, :cond_2

    .line 259
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mBicr:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    goto/16 :goto_0

    .line 261
    :cond_c
    const-string v0, "charging"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 262
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mMtp:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 263
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mPtp:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 264
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mUmsExist:Z

    if-eqz v0, :cond_d

    .line 265
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mUms:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 267
    :cond_d
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mChargeExist:Z

    if-eqz v0, :cond_e

    .line 268
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mCharge:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 270
    :cond_e
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mBicrExist:Z

    if-eqz v0, :cond_2

    .line 271
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mBicr:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    goto/16 :goto_0

    .line 273
    :cond_f
    const-string v0, "bicr"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 274
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mMtp:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 275
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mPtp:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 276
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mUmsExist:Z

    if-eqz v0, :cond_10

    .line 277
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mUms:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 279
    :cond_10
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mChargeExist:Z

    if-eqz v0, :cond_11

    .line 280
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mCharge:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 282
    :cond_11
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mBicrExist:Z

    if-eqz v0, :cond_2

    .line 283
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mBicr:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    goto/16 :goto_0

    .line 286
    :cond_12
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mMtp:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 287
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mPtp:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 288
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mUmsExist:Z

    if-eqz v0, :cond_13

    .line 289
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mUms:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 291
    :cond_13
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mChargeExist:Z

    if-eqz v0, :cond_14

    .line 292
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mCharge:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 294
    :cond_14
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mBicrExist:Z

    if-eqz v0, :cond_2

    .line 295
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mBicr:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    goto/16 :goto_0

    .line 314
    :cond_15
    const-string v0, "UsbSettings"

    const-string v1, "USB Accessory Mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mMtp:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/deviceinfo/UsbPreference;->setEnabled(Z)V

    .line 316
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mPtp:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/deviceinfo/UsbPreference;->setEnabled(Z)V

    .line 317
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mUmsExist:Z

    if-eqz v0, :cond_16

    .line 318
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mUms:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/deviceinfo/UsbPreference;->setEnabled(Z)V

    .line 320
    :cond_16
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mChargeExist:Z

    if-eqz v0, :cond_17

    .line 321
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mCharge:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/deviceinfo/UsbPreference;->setEnabled(Z)V

    .line 323
    :cond_17
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mBicrExist:Z

    if-eqz v0, :cond_5

    .line 324
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mBicr:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/deviceinfo/UsbPreference;->setEnabled(Z)V

    goto/16 :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 196
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 197
    const-string v0, "usb"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 198
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 202
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 204
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 334
    const-string v1, "UsbSettings"

    const-string v2, "onPreferenceChange"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 372
    :goto_0
    return v4

    .line 343
    :cond_0
    instance-of v1, p1, Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 344
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 345
    .local v0, checkBox:Landroid/preference/CheckBoxPreference;
    const-string v1, "UsbSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 347
    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 351
    .end local v0           #checkBox:Landroid/preference/CheckBoxPreference;
    :cond_1
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mMtp:Lcom/android/settings/deviceinfo/UsbPreference;

    if-ne p1, v1, :cond_3

    .line 352
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v2, "mtp"

    invoke-virtual {v1, v2, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 353
    const-string v1, "mtp"

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->updateToggles(Ljava/lang/String;)V

    .line 371
    :cond_2
    :goto_1
    iput-boolean v5, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mCanUpdateToggle:Z

    goto :goto_0

    .line 354
    :cond_3
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mPtp:Lcom/android/settings/deviceinfo/UsbPreference;

    if-ne p1, v1, :cond_4

    .line 355
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v2, "ptp"

    invoke-virtual {v1, v2, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 356
    const-string v1, "ptp"

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->updateToggles(Ljava/lang/String;)V

    goto :goto_1

    .line 357
    :cond_4
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mUms:Lcom/android/settings/deviceinfo/UsbPreference;

    if-ne p1, v1, :cond_5

    .line 358
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v2, "mass_storage"

    invoke-virtual {v1, v2, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 360
    const-string v1, "mass_storage"

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->updateToggles(Ljava/lang/String;)V

    goto :goto_1

    .line 361
    :cond_5
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mCharge:Lcom/android/settings/deviceinfo/UsbPreference;

    if-ne p1, v1, :cond_6

    .line 362
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v2, "charging"

    invoke-virtual {v1, v2, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 364
    const-string v1, "charging"

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->updateToggles(Ljava/lang/String;)V

    goto :goto_1

    .line 365
    :cond_6
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mBicr:Lcom/android/settings/deviceinfo/UsbPreference;

    if-ne p1, v1, :cond_2

    .line 366
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v2, "bicr"

    invoke-virtual {v1, v2, v5}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 367
    const-string v1, "bicr"

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->updateToggles(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 208
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 213
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 216
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 218
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 219
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 222
    return-void
.end method
