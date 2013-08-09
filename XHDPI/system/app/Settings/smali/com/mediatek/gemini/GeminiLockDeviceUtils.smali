.class public Lcom/mediatek/gemini/GeminiLockDeviceUtils;
.super Lcom/android/settings/deviceinfo/LockDeviceUtils;
.source "GeminiLockDeviceUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/LockDeviceUtils;-><init>()V

    return-void
.end method

.method private getSimMap(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 7
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    const-string v6, "phone"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 81
    .local v5, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {p1}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 82
    .local v3, simInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 83
    .local v4, slot2Sim:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;

    .line 84
    .local v2, simInfo:Landroid/provider/Telephony$SIMInfo;
    iget v6, v2, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->getSubscriberIdGemini(I)Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, sim:Ljava/lang/String;
    iget v6, v2, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 87
    .end local v1           #sim:Ljava/lang/String;
    .end local v2           #simInfo:Landroid/provider/Telephony$SIMInfo;
    :cond_0
    return-object v4
.end method


# virtual methods
.method public setRegisterSim(Landroid/content/Context;Z)V
    .locals 5
    .parameter "context"
    .parameter "enabled"

    .prologue
    .line 22
    const-string v0, ""

    .line 23
    .local v0, sim1:Ljava/lang/String;
    const-string v1, ""

    .line 25
    .local v1, sim2:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 26
    invoke-direct {p0, p1}, Lcom/mediatek/gemini/GeminiLockDeviceUtils;->getSimMap(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v2

    .line 27
    .local v2, slot2Sim:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #sim1:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 28
    .restart local v0       #sim1:Ljava/lang/String;
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #sim2:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 30
    .end local v2           #slot2Sim:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v1       #sim2:Ljava/lang/String;
    :cond_0
    if-eqz v0, :cond_1

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lmiui/provider/ExtraSettings$Secure;->REGISTER_FIND_DEVICE_SIM_NUMBER:Ljava/lang/String;

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 34
    :cond_1
    if-eqz v1, :cond_2

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lmiui/provider/ExtraSettings$Secure;->REGISTER_FIND_DEVICE_SIM2_NUMBER:Ljava/lang/String;

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 38
    :cond_2
    return-void
.end method

.method public updateLockState(Landroid/content/Context;)Z
    .locals 14
    .parameter "context"

    .prologue
    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Lmiui/provider/ExtraSettings$Secure;->REGISTER_FIND_DEVICE_SIM_NUMBER:Ljava/lang/String;

    invoke-static {v11, v12}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 44
    .local v5, regitsterSim1:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Lmiui/provider/ExtraSettings$Secure;->REGISTER_FIND_DEVICE_SIM2_NUMBER:Ljava/lang/String;

    invoke-static {v11, v12}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 47
    .local v6, regitsterSim2:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/mediatek/gemini/GeminiLockDeviceUtils;->getSimMap(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v10

    .line 48
    .local v10, slot2Sim:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 49
    .local v7, sim1:Ljava/lang/String;
    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 52
    .local v8, sim2:Ljava/lang/String;
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v4, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 53
    .local v4, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    const/4 v3, 0x0

    .line 54
    .local v3, isSimChange:Z
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_8

    const/4 v1, 0x1

    .line 55
    .local v1, hasRegisterSim1:Z
    :goto_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_9

    const/4 v2, 0x1

    .line 56
    .local v2, hasRegisterSim2:Z
    :goto_1
    if-nez v1, :cond_0

    if-eqz v2, :cond_a

    :cond_0
    const/4 v0, 0x1

    .line 57
    .local v0, hasRegister:Z
    :goto_2
    const/4 v9, 0x0

    .line 58
    .local v9, simMatch:Z
    if-eqz v1, :cond_2

    .line 59
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    :cond_1
    const/4 v9, 0x1

    .line 61
    :cond_2
    :goto_3
    if-eqz v2, :cond_4

    if-nez v9, :cond_4

    .line 62
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    :cond_3
    const/4 v9, 0x1

    .line 64
    :cond_4
    :goto_4
    if-eqz v0, :cond_6

    if-eqz v9, :cond_5

    invoke-static {p1}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 65
    :cond_5
    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 66
    const/4 v3, 0x1

    .line 67
    invoke-virtual {p0, p1}, Lcom/mediatek/gemini/GeminiLockDeviceUtils;->showLockScreen(Landroid/content/Context;)V

    .line 70
    :cond_6
    if-eqz v0, :cond_7

    if-eqz v9, :cond_7

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Lmiui/provider/ExtraSettings$Secure;->PERMANENTLY_LOCK_SIM_CHANGE:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_7

    .line 74
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 76
    :cond_7
    return v3

    .line 54
    .end local v0           #hasRegister:Z
    .end local v1           #hasRegisterSim1:Z
    .end local v2           #hasRegisterSim2:Z
    .end local v9           #simMatch:Z
    :cond_8
    const/4 v1, 0x0

    goto :goto_0

    .line 55
    .restart local v1       #hasRegisterSim1:Z
    :cond_9
    const/4 v2, 0x0

    goto :goto_1

    .line 56
    .restart local v2       #hasRegisterSim2:Z
    :cond_a
    const/4 v0, 0x0

    goto :goto_2

    .line 59
    .restart local v0       #hasRegister:Z
    .restart local v9       #simMatch:Z
    :cond_b
    const/4 v9, 0x0

    goto :goto_3

    .line 62
    :cond_c
    const/4 v9, 0x0

    goto :goto_4
.end method
