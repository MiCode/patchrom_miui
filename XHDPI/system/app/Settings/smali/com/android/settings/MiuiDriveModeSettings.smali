.class public Lcom/android/settings/MiuiDriveModeSettings;
.super Landroid/preference/PreferenceActivity;
.source "MiuiDriveModeSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static KEY_CALLING_AUTO_SMS_REPLY:Ljava/lang/String;

.field public static KEY_DRIVE_MODE:Ljava/lang/String;

.field public static KEY_DRIVE_MODE_ENABLE:Ljava/lang/String;

.field public static KEY_INVERT_STOP_REPORT:Ljava/lang/String;

.field public static KEY_ONLY_CONTACT_REPLY:Ljava/lang/String;

.field public static KEY_PHONE_REPORT:Ljava/lang/String;

.field public static KEY_SMS_AUTO_REPLY_CONTENT:Ljava/lang/String;

.field public static KEY_SMS_AUTO_SMS_REPLY:Ljava/lang/String;

.field public static KEY_SMS_REPORT:Ljava/lang/String;

.field public static PREFIX:Ljava/lang/String;


# instance fields
.field private mCallingAutoSmsReplyPref:Landroid/preference/TwoStatePreference;

.field private mEnableDriveMode:Landroid/preference/CheckBoxPreference;

.field private final mKeyGuardReceiver:Landroid/content/BroadcastReceiver;

.field private mKeyguard:Z

.field private mOnlyContactReplyPref:Landroid/preference/TwoStatePreference;

.field private mPhoneReportPref:Landroid/preference/TwoStatePreference;

.field private mSmsAutoReplyContentPref:Landroid/preference/EditTextPreference;

.field private mSmsAutoSmsReplyPref:Landroid/preference/TwoStatePreference;

.field private mSmsReportPref:Landroid/preference/TwoStatePreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "drive_mode_"

    sput-object v0, Lcom/android/settings/MiuiDriveModeSettings;->PREFIX:Ljava/lang/String;

    .line 23
    const-string v0, "drive_mode"

    sput-object v0, Lcom/android/settings/MiuiDriveModeSettings;->KEY_DRIVE_MODE:Ljava/lang/String;

    .line 24
    const-string v0, "phone_report"

    sput-object v0, Lcom/android/settings/MiuiDriveModeSettings;->KEY_PHONE_REPORT:Ljava/lang/String;

    .line 25
    const-string v0, "sms_report"

    sput-object v0, Lcom/android/settings/MiuiDriveModeSettings;->KEY_SMS_REPORT:Ljava/lang/String;

    .line 26
    const-string v0, "invert_stop_report"

    sput-object v0, Lcom/android/settings/MiuiDriveModeSettings;->KEY_INVERT_STOP_REPORT:Ljava/lang/String;

    .line 27
    const-string v0, "calling_auto_sms_reply"

    sput-object v0, Lcom/android/settings/MiuiDriveModeSettings;->KEY_CALLING_AUTO_SMS_REPLY:Ljava/lang/String;

    .line 28
    const-string v0, "sms_auto_sms_reply"

    sput-object v0, Lcom/android/settings/MiuiDriveModeSettings;->KEY_SMS_AUTO_SMS_REPLY:Ljava/lang/String;

    .line 29
    const-string v0, "only_contact_reply"

    sput-object v0, Lcom/android/settings/MiuiDriveModeSettings;->KEY_ONLY_CONTACT_REPLY:Ljava/lang/String;

    .line 30
    const-string v0, "sms_auto_reply_content"

    sput-object v0, Lcom/android/settings/MiuiDriveModeSettings;->KEY_SMS_AUTO_REPLY_CONTENT:Ljava/lang/String;

    .line 31
    const-string v0, "enable_drive_mode"

    sput-object v0, Lcom/android/settings/MiuiDriveModeSettings;->KEY_DRIVE_MODE_ENABLE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 186
    new-instance v0, Lcom/android/settings/MiuiDriveModeSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiDriveModeSettings$1;-><init>(Lcom/android/settings/MiuiDriveModeSettings;)V

    iput-object v0, p0, Lcom/android/settings/MiuiDriveModeSettings;->mKeyGuardReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/MiuiDriveModeSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/android/settings/MiuiDriveModeSettings;->mKeyguard:Z

    return p1
.end method

.method private refreshPreference()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 99
    invoke-static {}, Lmiui/net/FirewallManager;->getInstance()Lmiui/net/FirewallManager;

    move-result-object v4

    const/4 v7, 0x4

    invoke-virtual {v4, v7}, Lmiui/net/FirewallManager;->getOneShotFlag(I)Z

    move-result v0

    .line 100
    .local v0, driveModeOn:Z
    iget-object v4, p0, Lcom/android/settings/MiuiDriveModeSettings;->mEnableDriveMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 101
    if-nez v0, :cond_0

    .line 102
    iget-object v4, p0, Lcom/android/settings/MiuiDriveModeSettings;->mPhoneReportPref:Landroid/preference/TwoStatePreference;

    invoke-virtual {v4, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 103
    iget-object v4, p0, Lcom/android/settings/MiuiDriveModeSettings;->mPhoneReportPref:Landroid/preference/TwoStatePreference;

    invoke-virtual {v4, v6}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    .line 104
    iget-object v4, p0, Lcom/android/settings/MiuiDriveModeSettings;->mSmsReportPref:Landroid/preference/TwoStatePreference;

    invoke-virtual {v4, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 105
    iget-object v4, p0, Lcom/android/settings/MiuiDriveModeSettings;->mSmsReportPref:Landroid/preference/TwoStatePreference;

    invoke-virtual {v4, v6}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    .line 106
    iget-object v4, p0, Lcom/android/settings/MiuiDriveModeSettings;->mCallingAutoSmsReplyPref:Landroid/preference/TwoStatePreference;

    invoke-virtual {v4, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 107
    iget-object v4, p0, Lcom/android/settings/MiuiDriveModeSettings;->mCallingAutoSmsReplyPref:Landroid/preference/TwoStatePreference;

    invoke-virtual {v4, v6}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    .line 108
    iget-object v4, p0, Lcom/android/settings/MiuiDriveModeSettings;->mSmsAutoSmsReplyPref:Landroid/preference/TwoStatePreference;

    invoke-virtual {v4, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 109
    iget-object v4, p0, Lcom/android/settings/MiuiDriveModeSettings;->mSmsAutoSmsReplyPref:Landroid/preference/TwoStatePreference;

    invoke-virtual {v4, v6}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    .line 110
    iget-object v4, p0, Lcom/android/settings/MiuiDriveModeSettings;->mOnlyContactReplyPref:Landroid/preference/TwoStatePreference;

    invoke-virtual {v4, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 111
    iget-object v4, p0, Lcom/android/settings/MiuiDriveModeSettings;->mOnlyContactReplyPref:Landroid/preference/TwoStatePreference;

    invoke-virtual {v4, v6}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    .line 112
    iget-object v4, p0, Lcom/android/settings/MiuiDriveModeSettings;->mSmsAutoReplyContentPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v6}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 165
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v4, p0, Lcom/android/settings/MiuiDriveModeSettings;->mPhoneReportPref:Landroid/preference/TwoStatePreference;

    invoke-virtual {v4, v5}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    .line 115
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/settings/MiuiDriveModeSettings;->PREFIX:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v7, Lcom/android/settings/MiuiDriveModeSettings;->KEY_PHONE_REPORT:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/MiuiDriveModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v1, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 117
    .local v2, pr:I
    if-ne v2, v8, :cond_1

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/MiuiDriveModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 120
    const/4 v2, 0x1

    .line 122
    :cond_1
    iget-object v7, p0, Lcom/android/settings/MiuiDriveModeSettings;->mPhoneReportPref:Landroid/preference/TwoStatePreference;

    if-ne v2, v5, :cond_8

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 123
    iget-object v4, p0, Lcom/android/settings/MiuiDriveModeSettings;->mSmsReportPref:Landroid/preference/TwoStatePreference;

    invoke-virtual {v4, v5}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    .line 124
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/settings/MiuiDriveModeSettings;->PREFIX:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v7, Lcom/android/settings/MiuiDriveModeSettings;->KEY_SMS_REPORT:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/MiuiDriveModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v1, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 126
    if-ne v2, v8, :cond_2

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/MiuiDriveModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 128
    const/4 v2, 0x1

    .line 130
    :cond_2
    iget-object v7, p0, Lcom/android/settings/MiuiDriveModeSettings;->mSmsReportPref:Landroid/preference/TwoStatePreference;

    if-ne v2, v5, :cond_9

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 131
    iget-object v4, p0, Lcom/android/settings/MiuiDriveModeSettings;->mCallingAutoSmsReplyPref:Landroid/preference/TwoStatePreference;

    invoke-virtual {v4, v5}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    .line 132
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/settings/MiuiDriveModeSettings;->PREFIX:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v7, Lcom/android/settings/MiuiDriveModeSettings;->KEY_CALLING_AUTO_SMS_REPLY:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/MiuiDriveModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v1, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 134
    if-ne v2, v8, :cond_3

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/MiuiDriveModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 136
    const/4 v2, 0x1

    .line 138
    :cond_3
    iget-object v7, p0, Lcom/android/settings/MiuiDriveModeSettings;->mCallingAutoSmsReplyPref:Landroid/preference/TwoStatePreference;

    if-ne v2, v5, :cond_a

    move v4, v5

    :goto_3
    invoke-virtual {v7, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 139
    iget-object v4, p0, Lcom/android/settings/MiuiDriveModeSettings;->mSmsAutoSmsReplyPref:Landroid/preference/TwoStatePreference;

    invoke-virtual {v4, v5}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    .line 140
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/settings/MiuiDriveModeSettings;->PREFIX:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v7, Lcom/android/settings/MiuiDriveModeSettings;->KEY_SMS_AUTO_SMS_REPLY:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/MiuiDriveModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v1, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 142
    if-ne v2, v8, :cond_4

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/MiuiDriveModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v1, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 144
    const/4 v2, 0x0

    .line 146
    :cond_4
    iget-object v7, p0, Lcom/android/settings/MiuiDriveModeSettings;->mSmsAutoSmsReplyPref:Landroid/preference/TwoStatePreference;

    if-ne v2, v5, :cond_b

    move v4, v5

    :goto_4
    invoke-virtual {v7, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 147
    iget-object v4, p0, Lcom/android/settings/MiuiDriveModeSettings;->mOnlyContactReplyPref:Landroid/preference/TwoStatePreference;

    invoke-virtual {v4, v5}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    .line 148
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/settings/MiuiDriveModeSettings;->PREFIX:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v7, Lcom/android/settings/MiuiDriveModeSettings;->KEY_ONLY_CONTACT_REPLY:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/MiuiDriveModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v1, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 150
    if-ne v2, v8, :cond_5

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/MiuiDriveModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 152
    const/4 v2, 0x1

    .line 154
    :cond_5
    iget-object v4, p0, Lcom/android/settings/MiuiDriveModeSettings;->mOnlyContactReplyPref:Landroid/preference/TwoStatePreference;

    if-ne v2, v5, :cond_6

    move v6, v5

    :cond_6
    invoke-virtual {v4, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 155
    iget-object v4, p0, Lcom/android/settings/MiuiDriveModeSettings;->mSmsAutoReplyContentPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 156
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/settings/MiuiDriveModeSettings;->PREFIX:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/settings/MiuiDriveModeSettings;->KEY_SMS_AUTO_REPLY_CONTENT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/MiuiDriveModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, v:Ljava/lang/String;
    if-nez v3, :cond_7

    .line 159
    const v4, 0x7f0c08fa

    invoke-virtual {p0, v4}, Lcom/android/settings/MiuiDriveModeSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 161
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/MiuiDriveModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v1, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 162
    iget-object v4, p0, Lcom/android/settings/MiuiDriveModeSettings;->mSmsAutoReplyContentPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v4, p0, Lcom/android/settings/MiuiDriveModeSettings;->mSmsAutoReplyContentPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v3           #v:Ljava/lang/String;
    :cond_8
    move v4, v6

    .line 122
    goto/16 :goto_1

    :cond_9
    move v4, v6

    .line 130
    goto/16 :goto_2

    :cond_a
    move v4, v6

    .line 138
    goto/16 :goto_3

    :cond_b
    move v4, v6

    .line 146
    goto :goto_4
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v1, 0x7f06002a

    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiDriveModeSettings;->addPreferencesFromResource(I)V

    .line 47
    sget-object v1, Lcom/android/settings/MiuiDriveModeSettings;->KEY_PHONE_REPORT:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiDriveModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/TwoStatePreference;

    iput-object v1, p0, Lcom/android/settings/MiuiDriveModeSettings;->mPhoneReportPref:Landroid/preference/TwoStatePreference;

    .line 48
    iget-object v1, p0, Lcom/android/settings/MiuiDriveModeSettings;->mPhoneReportPref:Landroid/preference/TwoStatePreference;

    invoke-virtual {v1, p0}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 49
    sget-object v1, Lcom/android/settings/MiuiDriveModeSettings;->KEY_SMS_REPORT:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiDriveModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/TwoStatePreference;

    iput-object v1, p0, Lcom/android/settings/MiuiDriveModeSettings;->mSmsReportPref:Landroid/preference/TwoStatePreference;

    .line 50
    iget-object v1, p0, Lcom/android/settings/MiuiDriveModeSettings;->mSmsReportPref:Landroid/preference/TwoStatePreference;

    invoke-virtual {v1, p0}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 51
    sget-object v1, Lcom/android/settings/MiuiDriveModeSettings;->KEY_CALLING_AUTO_SMS_REPLY:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiDriveModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/TwoStatePreference;

    iput-object v1, p0, Lcom/android/settings/MiuiDriveModeSettings;->mCallingAutoSmsReplyPref:Landroid/preference/TwoStatePreference;

    .line 52
    iget-object v1, p0, Lcom/android/settings/MiuiDriveModeSettings;->mCallingAutoSmsReplyPref:Landroid/preference/TwoStatePreference;

    invoke-virtual {v1, p0}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 53
    sget-object v1, Lcom/android/settings/MiuiDriveModeSettings;->KEY_SMS_AUTO_SMS_REPLY:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiDriveModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/TwoStatePreference;

    iput-object v1, p0, Lcom/android/settings/MiuiDriveModeSettings;->mSmsAutoSmsReplyPref:Landroid/preference/TwoStatePreference;

    .line 54
    iget-object v1, p0, Lcom/android/settings/MiuiDriveModeSettings;->mSmsAutoSmsReplyPref:Landroid/preference/TwoStatePreference;

    invoke-virtual {v1, p0}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 55
    sget-object v1, Lcom/android/settings/MiuiDriveModeSettings;->KEY_ONLY_CONTACT_REPLY:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiDriveModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/TwoStatePreference;

    iput-object v1, p0, Lcom/android/settings/MiuiDriveModeSettings;->mOnlyContactReplyPref:Landroid/preference/TwoStatePreference;

    .line 56
    iget-object v1, p0, Lcom/android/settings/MiuiDriveModeSettings;->mOnlyContactReplyPref:Landroid/preference/TwoStatePreference;

    invoke-virtual {v1, p0}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 57
    sget-object v1, Lcom/android/settings/MiuiDriveModeSettings;->KEY_SMS_AUTO_REPLY_CONTENT:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiDriveModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcom/android/settings/MiuiDriveModeSettings;->mSmsAutoReplyContentPref:Landroid/preference/EditTextPreference;

    .line 58
    iget-object v1, p0, Lcom/android/settings/MiuiDriveModeSettings;->mSmsAutoReplyContentPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/MiuiDriveModeSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0c08f1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 60
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/MiuiDriveModeSettings;->mKeyguard:Z

    .line 61
    sget-object v1, Lcom/android/settings/MiuiDriveModeSettings;->KEY_DRIVE_MODE_ENABLE:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiDriveModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/MiuiDriveModeSettings;->mEnableDriveMode:Landroid/preference/CheckBoxPreference;

    .line 62
    iget-object v1, p0, Lcom/android/settings/MiuiDriveModeSettings;->mEnableDriveMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 64
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 65
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcom/android/settings/MiuiDriveModeSettings;->mKeyGuardReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/MiuiDriveModeSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 67
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/MiuiDriveModeSettings;->mKeyGuardReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDriveModeSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 72
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 73
    return-void
.end method

.method public onPause()V
    .locals 5

    .prologue
    .line 89
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 90
    invoke-static {}, Lmiui/net/FirewallManager;->getInstance()Lmiui/net/FirewallManager;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lmiui/net/FirewallManager;->getOneShotFlag(I)Z

    move-result v0

    .line 91
    .local v0, driveModeOn:Z
    invoke-virtual {p0}, Lcom/android/settings/MiuiDriveModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "drive_mode_drive_mode"

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 92
    if-eqz v0, :cond_0

    .line 93
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.app.ExtraStatusBarManager.action_enter_drive_mode"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiDriveModeSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 96
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    return-void

    .line 91
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x0

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/settings/MiuiDriveModeSettings;->PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, key:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/MiuiDriveModeSettings;->mSmsAutoReplyContentPref:Landroid/preference/EditTextPreference;

    if-ne p1, v1, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/MiuiDriveModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 182
    .end local p2
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/MiuiDriveModeSettings;->refreshPreference()V

    .line 183
    return v2

    .line 172
    .restart local p2
    :cond_0
    iget-object v1, p0, Lcom/android/settings/MiuiDriveModeSettings;->mEnableDriveMode:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_2

    .line 173
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    invoke-static {}, Lmiui/net/FirewallManager;->getInstance()Lmiui/net/FirewallManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lmiui/net/FirewallManager;->addOneShotFlag(I)V

    .line 178
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/MiuiDriveModeSettings;->refreshPreference()V

    goto :goto_0

    .line 176
    :cond_1
    invoke-static {}, Lmiui/net/FirewallManager;->getInstance()Lmiui/net/FirewallManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lmiui/net/FirewallManager;->removeOneShotFlag(I)V

    goto :goto_1

    .line 180
    .restart local p2
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/MiuiDriveModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_2
    invoke-static {v3, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 77
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 78
    invoke-direct {p0}, Lcom/android/settings/MiuiDriveModeSettings;->refreshPreference()V

    .line 79
    invoke-static {}, Lmiui/net/FirewallManager;->getInstance()Lmiui/net/FirewallManager;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lmiui/net/FirewallManager;->getOneShotFlag(I)Z

    move-result v0

    .line 80
    .local v0, driveModeOn:Z
    const-string v3, "keyguard"

    invoke-virtual {p0, v3}, Lcom/android/settings/MiuiDriveModeSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .line 81
    .local v2, km:Landroid/app/KeyguardManager;
    if-eqz v0, :cond_0

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    if-nez v3, :cond_0

    .line 82
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.miui.app.ExtraStatusBarManager.action_leave_drive_mode"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiDriveModeSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 85
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
