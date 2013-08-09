.class public Lcom/android/settings/deviceinfo/LockDeviceReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LockDeviceReceiver.java"


# instance fields
.field private mLockSettingsService:Lcom/android/internal/widget/ILockSettings;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private getLockDeviceUtils()Lcom/android/settings/deviceinfo/LockDeviceUtils;
    .locals 3

    .prologue
    .line 90
    :try_start_0
    const-string v2, "com.mediatek.gemini.GeminiLockDeviceUtils"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 91
    .local v1, lockDeviceUtilsFactory:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/LockDeviceUtils;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v1           #lockDeviceUtilsFactory:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    return-object v0

    .line 95
    :catch_0
    move-exception v2

    .line 98
    :cond_0
    new-instance v0, Lcom/android/settings/deviceinfo/LockDeviceUtils;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/LockDeviceUtils;-><init>()V

    goto :goto_0
.end method

.method private getLockSettings()Lcom/android/internal/widget/ILockSettings;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings/deviceinfo/LockDeviceReceiver;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_0

    .line 113
    const-string v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/LockDeviceReceiver;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/LockDeviceReceiver;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-object v0
.end method

.method public static isFindDeviceEnabled(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 152
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 153
    .local v1, accountManager:Landroid/accounts/AccountManager;
    const-string v4, "com.xiaomi"

    invoke-virtual {v1, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 154
    .local v2, accounts:[Landroid/accounts/Account;
    array-length v4, v2

    if-gtz v4, :cond_0

    .line 158
    :goto_0
    return v3

    .line 157
    :cond_0
    aget-object v0, v2, v3

    .line 158
    .local v0, account:Landroid/accounts/Account;
    const-string v3, "true"

    const-string v4, "extra_find_device_enabled"

    invoke-virtual {v1, v0, v4}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method private removeCheckSimAlarm(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 130
    const-string v3, "alarm"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 132
    .local v0, alarm:Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "miui.intent.action.DELAY_SIM_CHECK"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    .local v1, intent:Landroid/content/Intent;
    const/4 v3, 0x0

    const/high16 v4, 0x800

    invoke-static {p1, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 134
    .local v2, sender:Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 135
    return-void
.end method

.method private setCheckSimAlarm(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    .line 120
    const-string v1, "alarm"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 121
    .local v0, alarm:Landroid/app/AlarmManager;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 122
    .local v7, calendar:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x7530

    add-long/2addr v1, v3

    invoke-virtual {v7, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 124
    new-instance v8, Landroid/content/Intent;

    const-string v1, "miui.intent.action.DELAY_SIM_CHECK"

    invoke-direct {v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    .local v8, intent:Landroid/content/Intent;
    const/4 v1, 0x0

    const/high16 v2, 0x800

    invoke-static {p1, v1, v8, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 126
    .local v6, sender:Landroid/app/PendingIntent;
    const/4 v1, 0x1

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 127
    return-void
.end method

.method private setSalt(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 103
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 104
    .local v0, lDigest:Ljava/security/MessageDigest;
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 105
    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v1

    .line 106
    .local v1, salt:J
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/LockDeviceReceiver;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    const-string v4, "lockscreen.password_salt"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v0           #lDigest:Ljava/security/MessageDigest;
    .end local v1           #salt:J
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private static updateRegisterNumber(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 139
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lmiui/provider/ExtraSettings$Secure;->REGISTER_FIND_DEVICE_SIM_NUMBER:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, regitsterNumber:Ljava/lang/String;
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 142
    .local v2, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, currentPhoneNumber:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p0}, Lcom/android/settings/deviceinfo/LockDeviceReceiver;->isFindDeviceEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 146
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lmiui/provider/ExtraSettings$Secure;->REGISTER_FIND_DEVICE_SIM_NUMBER:Ljava/lang/String;

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 149
    :cond_2
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 40
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, action:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    const-string v8, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {p1}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 46
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/LockDeviceReceiver;->setCheckSimAlarm(Landroid/content/Context;)V

    .line 47
    invoke-static {p1}, Lcom/android/settings/deviceinfo/LockDeviceReceiver;->updateRegisterNumber(Landroid/content/Context;)V

    goto :goto_0

    .line 51
    :cond_2
    const-string v8, "miui.intent.action.LOCK_DEVICE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 53
    const-string v6, "android.intent.extra.lock_password"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 54
    .local v4, password:Ljava/lang/String;
    const-string v6, "android.intent.extra.device_token"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 55
    .local v5, token:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 57
    :try_start_0
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v3, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 58
    .local v3, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 59
    invoke-direct {p0, p1, v5}, Lcom/android/settings/deviceinfo/LockDeviceReceiver;->setSalt(Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/LockDeviceReceiver;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Lcom/android/internal/widget/ILockSettings;->setLockPassword([BI)V

    .line 61
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/LockDeviceReceiver;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v6

    const-string v7, "lockscreen.password_type"

    const-wide/32 v8, 0x20000

    const/4 v10, 0x0

    invoke-interface {v6, v7, v8, v9, v10}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V

    .line 62
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/LockDeviceReceiver;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v6

    const-string v7, "lockscreen.password_type_alternate"

    const-wide/32 v8, 0x20000

    const/4 v10, 0x0

    invoke-interface {v6, v7, v8, v9, v10}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lmiui/provider/ExtraSettings$Secure;->FIND_DEVICE_PIN_LOCK:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v3           #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/LockDeviceReceiver;->getLockDeviceUtils()Lcom/android/settings/deviceinfo/LockDeviceUtils;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/android/settings/deviceinfo/LockDeviceUtils;->showLockScreen(Landroid/content/Context;)V

    goto :goto_0

    .line 71
    .end local v4           #password:Ljava/lang/String;
    .end local v5           #token:Ljava/lang/String;
    :cond_4
    const-string v8, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "miui.intent.action.DELAY_SIM_CHECK"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v8, "LOADED"

    const-string v9, "ss"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 75
    :cond_5
    invoke-static {p1}, Lcom/android/settings/deviceinfo/LockDeviceReceiver;->updateRegisterNumber(Landroid/content/Context;)V

    .line 76
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/LockDeviceReceiver;->getLockDeviceUtils()Lcom/android/settings/deviceinfo/LockDeviceUtils;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/android/settings/deviceinfo/LockDeviceUtils;->updateLockState(Landroid/content/Context;)Z

    move-result v2

    .line 77
    .local v2, isSimChange:Z
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lmiui/provider/ExtraSettings$Secure;->PERMANENTLY_LOCK_SIM_CHANGE:Ljava/lang/String;

    if-eqz v2, :cond_6

    :goto_2
    invoke-static {v8, v9, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 80
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/LockDeviceReceiver;->removeCheckSimAlarm(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_6
    move v6, v7

    .line 77
    goto :goto_2

    .line 82
    .end local v2           #isSimChange:Z
    :cond_7
    const-string v6, "com.xiaomi.action.FIND_DEVICE_STATUS_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 83
    const-string v6, "find_device_enabled"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 84
    .local v1, enabled:Z
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/LockDeviceReceiver;->getLockDeviceUtils()Lcom/android/settings/deviceinfo/LockDeviceUtils;

    move-result-object v6

    invoke-virtual {v6, p1, v1}, Lcom/android/settings/deviceinfo/LockDeviceUtils;->setRegisterSim(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 64
    .end local v1           #enabled:Z
    .restart local v4       #password:Ljava/lang/String;
    .restart local v5       #token:Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_1
.end method
