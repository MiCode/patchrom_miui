.class public Lcom/android/settings/wifi/WifiPrioritySettings;
.super Landroid/preference/PreferenceActivity;
.source "WifiPrioritySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private configuredApCount:I

.field private mConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field mConfiguredAps:Landroid/preference/PreferenceCategory;

.field private mPriorityOrder:[I

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private formerHasHigherPriority(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 6
    .parameter "former"
    .parameter "backer"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 136
    if-nez p1, :cond_1

    move v2, v3

    .line 195
    :cond_0
    :goto_0
    return v2

    .line 138
    :cond_1
    if-eqz p2, :cond_0

    .line 141
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget v5, p2, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-gt v4, v5, :cond_0

    .line 143
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget v5, p2, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-ge v4, v5, :cond_2

    move v2, v3

    .line 144
    goto :goto_0

    .line 146
    :cond_2
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v4, :cond_3

    const-string v1, ""

    .line 147
    .local v1, formerSSID:Ljava/lang/String;
    :goto_1
    iget-object v4, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v4, :cond_4

    const-string v0, ""

    .line 150
    .local v0, backerSSID:Ljava/lang/String;
    :goto_2
    const-string v4, "CMCC-AUTO"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 152
    const-string v3, "WifiPrioritySettings"

    const-string v4, "WifiSettingsExt formerHasHigherPriority() same true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 146
    .end local v0           #backerSSID:Ljava/lang/String;
    .end local v1           #formerSSID:Ljava/lang/String;
    :cond_3
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WifiPrioritySettings;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 147
    .restart local v1       #formerSSID:Ljava/lang/String;
    :cond_4
    iget-object v4, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WifiPrioritySettings;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 155
    .restart local v0       #backerSSID:Ljava/lang/String;
    :cond_5
    const-string v4, "CMCC"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 157
    const-string v4, "CMCC-AUTO"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 159
    const-string v3, "WifiPrioritySettings"

    const-string v4, "WifiSettingsExt formerHasHigherPriority() same true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 164
    :cond_6
    const-string v2, "WifiPrioritySettings"

    const-string v4, "WifiSettingsExt formerHasHigherPriority() same false"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 165
    goto :goto_0

    .line 169
    :cond_7
    const-string v4, "CMCC-EDU"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 171
    const-string v4, "CMCC"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "CMCC-AUTO"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 174
    const-string v3, "WifiPrioritySettings"

    const-string v4, "WifiSettingsExt formerHasHigherPriority() same true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 179
    :cond_8
    const-string v2, "WifiPrioritySettings"

    const-string v4, "WifiSettingsExt formerHasHigherPriority() same false"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 180
    goto/16 :goto_0

    .line 186
    :cond_9
    const-string v4, "CMCC"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "CMCC-AUTO"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "CMCC-EDU"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 190
    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_0

    move v2, v3

    goto/16 :goto_0

    .line 194
    :cond_a
    const-string v2, "WifiPrioritySettings"

    const-string v4, "WifiSettingsExt formerHasHigherPriority() same false"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 195
    goto/16 :goto_0
.end method

.method private removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "string"

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 298
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 299
    .local v0, length:I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 301
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 303
    .end local p1
    :cond_0
    return-object p1
.end method

.method private updateConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 3
    .parameter "config"

    .prologue
    .line 288
    const-string v1, "WifiPrioritySettings"

    const-string v2, "updateConfig()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    if-nez p1, :cond_0

    .line 296
    :goto_0
    return-void

    .line 292
    :cond_0
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 293
    .local v0, newConfig:Landroid/net/wifi/WifiConfiguration;
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 294
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 295
    iget-object v1, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    goto :goto_0
.end method


# virtual methods
.method public calculateInitPriority(Ljava/util/List;)[I
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez p1, :cond_1

    .line 103
    const/4 v5, 0x0

    .line 126
    :cond_0
    return-object v5

    .line 105
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 106
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    if-nez v1, :cond_2

    .line 107
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 108
    .restart local v1       #config:Landroid/net/wifi/WifiConfiguration;
    const-string v7, "ERROR"

    iput-object v7, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 109
    const/4 v7, 0x0

    iput v7, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    goto :goto_0

    .line 113
    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    .line 114
    .local v6, totalSize:I
    new-array v5, v6, [I

    .line 115
    .local v5, result:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v6, :cond_0

    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, biggestPoz:I
    const/4 v4, 0x1

    .local v4, j:I
    :goto_2
    if-ge v4, v6, :cond_5

    .line 118
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v7, v8}, Lcom/android/settings/wifi/WifiPrioritySettings;->formerHasHigherPriority(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 119
    move v0, v4

    .line 117
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 123
    :cond_5
    add-int/lit8 v7, v2, 0x1

    aput v7, v5, v0

    .line 124
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    const/4 v8, -0x1

    iput v8, v7, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 115
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public initPage()V
    .locals 9

    .prologue
    .line 46
    iget-object v6, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v6, :cond_1

    .line 47
    const-string v6, "WifiPrioritySettings"

    const-string v7, "Fail to get Wifi Manager service"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    iget-object v6, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mConfigs:Ljava/util/List;

    .line 52
    iget-object v6, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mConfigs:Ljava/util/List;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mConfiguredAps:Landroid/preference/PreferenceCategory;

    if-eqz v6, :cond_0

    .line 53
    iget-object v6, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mConfiguredAps:Landroid/preference/PreferenceCategory;

    invoke-virtual {v6}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 55
    iget-object v6, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mConfigs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    iput v6, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->configuredApCount:I

    .line 56
    iget v6, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->configuredApCount:I

    new-array v3, v6, [Ljava/lang/String;

    .line 58
    .local v3, priorityEntries:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v6, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->configuredApCount:I

    if-ge v1, v6, :cond_2

    .line 59
    add-int/lit8 v6, v1, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    .line 58
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 63
    :cond_2
    const/4 v1, 0x0

    :goto_2
    iget v6, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->configuredApCount:I

    if-ge v1, v6, :cond_3

    .line 64
    const-string v7, "WifiPrioritySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Before sorting: priority array="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mConfigs:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiConfiguration;

    iget v6, v6, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 67
    :cond_3
    iget-object v6, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mConfigs:Ljava/util/List;

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/WifiPrioritySettings;->calculateInitPriority(Ljava/util/List;)[I

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mPriorityOrder:[I

    .line 69
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPrioritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0bb4

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 71
    .local v5, summaryPreStr:Ljava/lang/String;
    const/4 v1, 0x0

    :goto_3
    iget v6, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->configuredApCount:I

    if-ge v1, v6, :cond_6

    .line 72
    const-string v6, "WifiPrioritySettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "After sorting: order array="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mPriorityOrder:[I

    aget v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v6, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mConfigs:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 74
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget v7, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->configuredApCount:I

    iget-object v8, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mPriorityOrder:[I

    aget v8, v8, v1

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    if-eq v6, v7, :cond_4

    .line 75
    iget v6, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->configuredApCount:I

    iget-object v7, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mPriorityOrder:[I

    aget v7, v7, v1

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 76
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiPrioritySettings;->updateConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 81
    :cond_4
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v6, :cond_5

    const-string v4, ""

    .line 82
    .local v4, ssidStr:Ljava/lang/String;
    :goto_4
    new-instance v2, Landroid/preference/ListPreference;

    invoke-direct {v2, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 83
    .local v2, pref:Landroid/preference/ListPreference;
    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 84
    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 85
    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 86
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mPriorityOrder:[I

    aget v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 88
    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 89
    iget-object v6, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mPriorityOrder:[I

    aget v6, v6, v1

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v2, v6}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 90
    iget-object v6, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mConfiguredAps:Landroid/preference/PreferenceCategory;

    invoke-virtual {v6, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 81
    .end local v2           #pref:Landroid/preference/ListPreference;
    .end local v4           #ssidStr:Ljava/lang/String;
    :cond_5
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/settings/wifi/WifiPrioritySettings;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 92
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_6
    iget-object v6, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->saveAPPriority()Z

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v0, 0x7f0400db

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiPrioritySettings;->addPreferencesFromResource(I)V

    .line 36
    const-string v0, "configured_ap_list"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiPrioritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mConfiguredAps:Landroid/preference/PreferenceCategory;

    .line 38
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiPrioritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 39
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPrioritySettings;->initPage()V

    .line 40
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 12
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 217
    instance-of v7, p1, Landroid/preference/ListPreference;

    if-eqz v7, :cond_6

    move-object v6, p1

    .line 218
    check-cast v6, Landroid/preference/ListPreference;

    .line 219
    .local v6, pref:Landroid/preference/ListPreference;
    const/4 v5, 0x0

    .line 220
    .local v5, oldOrder:I
    const/4 v4, 0x0

    .line 222
    .local v4, newOrder:I
    :try_start_0
    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 223
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 228
    :goto_0
    const-string v7, "WifiPrioritySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Priority old value="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", new value="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const v7, 0x7f0c0b4a

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    check-cast p2, Ljava/lang/String;

    .end local p2
    aput-object p2, v8, v11

    invoke-virtual {p0, v7, v8}, Lcom/android/settings/wifi/WifiPrioritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 232
    if-eq v5, v4, :cond_6

    iget-object v7, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mPriorityOrder:[I

    if-eqz v7, :cond_6

    .line 233
    if-le v5, v4, :cond_2

    .line 235
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v7, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mPriorityOrder:[I

    array-length v7, v7

    if-ge v3, v7, :cond_5

    .line 236
    iget-object v7, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mConfigs:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 237
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v7, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mPriorityOrder:[I

    aget v7, v7, v3

    if-lt v7, v4, :cond_1

    iget-object v7, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mPriorityOrder:[I

    aget v7, v7, v3

    if-ge v7, v5, :cond_1

    .line 238
    iget-object v7, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mPriorityOrder:[I

    aget v8, v7, v3

    add-int/lit8 v8, v8, 0x1

    aput v8, v7, v3

    .line 239
    iget v7, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->configuredApCount:I

    iget-object v8, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mPriorityOrder:[I

    aget v8, v8, v3

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    iput v7, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 240
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiPrioritySettings;->updateConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 235
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 224
    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v3           #i:I
    .restart local p2
    :catch_0
    move-exception v2

    .line 225
    .local v2, e:Ljava/lang/NumberFormatException;
    const-string v7, "WifiPrioritySettings"

    const-string v8, "Error happens when modify priority manually"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_0

    .line 241
    .end local v2           #e:Ljava/lang/NumberFormatException;
    .end local p2
    .restart local v1       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v3       #i:I
    :cond_1
    iget-object v7, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mPriorityOrder:[I

    aget v7, v7, v3

    if-ne v7, v5, :cond_0

    .line 242
    iget-object v7, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mPriorityOrder:[I

    aput v4, v7, v3

    .line 243
    iget v7, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->configuredApCount:I

    sub-int/2addr v7, v4

    add-int/lit8 v7, v7, 0x1

    iput v7, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 244
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiPrioritySettings;->updateConfig(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_2

    .line 249
    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v3           #i:I
    :cond_2
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_3
    iget-object v7, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mPriorityOrder:[I

    array-length v7, v7

    if-ge v3, v7, :cond_5

    .line 250
    iget-object v7, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mConfigs:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 251
    .restart local v1       #config:Landroid/net/wifi/WifiConfiguration;
    iget-object v7, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mPriorityOrder:[I

    aget v7, v7, v3

    if-gt v7, v4, :cond_4

    iget-object v7, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mPriorityOrder:[I

    aget v7, v7, v3

    if-le v7, v5, :cond_4

    .line 252
    iget-object v7, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mPriorityOrder:[I

    aget v8, v7, v3

    add-int/lit8 v8, v8, -0x1

    aput v8, v7, v3

    .line 253
    iget v7, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->configuredApCount:I

    iget-object v8, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mPriorityOrder:[I

    aget v8, v8, v3

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    iput v7, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 254
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiPrioritySettings;->updateConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 249
    :cond_3
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 255
    :cond_4
    iget-object v7, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mPriorityOrder:[I

    aget v7, v7, v3

    if-ne v7, v5, :cond_3

    .line 256
    iget-object v7, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mPriorityOrder:[I

    aput v4, v7, v3

    .line 257
    iget v7, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->configuredApCount:I

    sub-int/2addr v7, v4

    add-int/lit8 v7, v7, 0x1

    iput v7, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 258
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiPrioritySettings;->updateConfig(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_4

    .line 262
    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_5
    iget-object v7, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->saveAPPriority()Z

    .line 264
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPrioritySettings;->updateUI()V

    .line 267
    .end local v3           #i:I
    .end local v4           #newOrder:I
    .end local v5           #oldOrder:I
    .end local v6           #pref:Landroid/preference/ListPreference;
    :cond_6
    return v11
.end method

.method public updateUI()V
    .locals 6

    .prologue
    .line 274
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mPriorityOrder:[I

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 275
    iget-object v3, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mConfiguredAps:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 276
    .local v1, pref:Landroid/preference/Preference;
    if-eqz v1, :cond_0

    .line 277
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPrioritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0bb4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 278
    .local v2, summaryPreStr:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mPriorityOrder:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 280
    .end local v2           #summaryPreStr:Ljava/lang/String;
    :cond_0
    instance-of v3, v1, Landroid/preference/ListPreference;

    if-eqz v3, :cond_1

    .line 281
    check-cast v1, Landroid/preference/ListPreference;

    .end local v1           #pref:Landroid/preference/Preference;
    iget-object v3, p0, Lcom/android/settings/wifi/WifiPrioritySettings;->mPriorityOrder:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 274
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 285
    :cond_2
    return-void
.end method
