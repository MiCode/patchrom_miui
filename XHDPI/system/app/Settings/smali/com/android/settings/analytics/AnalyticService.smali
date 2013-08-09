.class public Lcom/android/settings/analytics/AnalyticService;
.super Landroid/app/IntentService;
.source "AnalyticService.java"


# instance fields
.field private mTracker:Lmiui/analytics/XiaomiAnalytics;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "AnalyticService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method private getTraffic(Landroid/content/pm/PackageInfo;Landroid/net/NetworkStats;Landroid/net/INetworkStatsSession;JJ)J
    .locals 5
    .parameter "info"
    .parameter "stats"
    .parameter "session"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 262
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 263
    .local v0, entry:Landroid/net/NetworkStats$Entry;
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p2, v0, v1}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;I)Landroid/net/NetworkStats$Entry;

    .line 264
    iget-wide v1, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v3, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v1, v3

    return-wide v1
.end method

.method private trackApkInstaller()V
    .locals 22

    .prologue
    .line 161
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/analytics/AnalyticService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 163
    .local v15, pm:Landroid/content/pm/PackageManager;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 164
    .local v2, calendar:Ljava/util/Calendar;
    const/16 v19, 0xb

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 165
    const/16 v19, 0xc

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 166
    const/16 v19, 0xd

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 167
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 168
    .local v4, end:J
    const-wide/32 v19, 0x5265c00

    sub-long v17, v4, v19

    .line 170
    .local v17, start:J
    sget-object v12, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 171
    .local v12, miuiVersion:Ljava/lang/String;
    const-string v19, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/analytics/AnalyticService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/telephony/TelephonyManager;

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    .line 172
    .local v7, imei:Ljava/lang/String;
    const-string v11, ""

    .line 174
    .local v11, marketVersion:Ljava/lang/String;
    :try_start_0
    const-string v19, "com.xiaomi.market"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 175
    .local v10, marketInfo:Landroid/content/pm/PackageInfo;
    iget-object v11, v10, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .end local v10           #marketInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v14

    .line 182
    .local v14, pkgList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageInfo;

    .line 183
    .local v8, info:Landroid/content/pm/PackageInfo;
    iget-object v0, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x1

    if-nez v19, :cond_0

    iget-wide v0, v8, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    move-wide/from16 v19, v0

    cmp-long v19, v19, v17

    if-lez v19, :cond_0

    iget-wide v0, v8, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    move-wide/from16 v19, v0

    cmp-long v19, v19, v4

    if-gtz v19, :cond_0

    .line 186
    :try_start_1
    iget-object v0, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x40

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    .line 191
    iget-object v0, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 192
    .local v16, source:Ljava/lang/String;
    if-nez v16, :cond_1

    const-string v9, "null"

    .line 193
    .local v9, installer:Ljava/lang/String;
    :goto_2
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 194
    .local v13, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v19, "package"

    iget-object v0, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const-string v19, "installer"

    move-object/from16 v0, v19

    invoke-interface {v13, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v19, "version"

    iget-object v0, v8, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const-string v19, "miui_version"

    move-object/from16 v0, v19

    invoke-interface {v13, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string v19, "imei"

    move-object/from16 v0, v19

    invoke-interface {v13, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const-string v19, "market_version"

    move-object/from16 v0, v19

    invoke-interface {v13, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/analytics/AnalyticService;->mTracker:Lmiui/analytics/XiaomiAnalytics;

    move-object/from16 v19, v0

    const-string v20, "source"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Lmiui/analytics/XiaomiAnalytics;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1

    .line 176
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v8           #info:Landroid/content/pm/PackageInfo;
    .end local v9           #installer:Ljava/lang/String;
    .end local v13           #params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14           #pkgList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v16           #source:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 177
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v19, "AnalyticService"

    const-string v20, "Getting packageInfo of xiaomi market has occured errors"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 187
    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v8       #info:Landroid/content/pm/PackageInfo;
    .restart local v14       #pkgList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :catch_1
    move-exception v3

    .line 188
    .restart local v3       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v19, "AnalyticService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Fail to get package info for package: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v16       #source:Ljava/lang/String;
    :cond_1
    move-object/from16 v9, v16

    .line 192
    goto :goto_2

    .line 203
    .end local v8           #info:Landroid/content/pm/PackageInfo;
    .end local v16           #source:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private trackApkTraffic()V
    .locals 38
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 206
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v19

    .line 207
    .local v19, calendar:Ljava/util/Calendar;
    const/16 v8, 0xb

    const/4 v10, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v10}, Ljava/util/Calendar;->set(II)V

    .line 208
    const/16 v8, 0xc

    const/4 v10, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v10}, Ljava/util/Calendar;->set(II)V

    .line 209
    const/16 v8, 0xd

    const/4 v10, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v10}, Ljava/util/Calendar;->set(II)V

    .line 210
    invoke-virtual/range {v19 .. v19}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 211
    .local v6, endQueryTime:J
    const-wide/32 v12, 0x5265c00

    sub-long v4, v6, v12

    .line 213
    .local v4, startQueryTime:J
    const-string v8, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/settings/analytics/AnalyticService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/telephony/TelephonyManager;

    .line 215
    .local v34, telephony:Landroid/telephony/TelephonyManager;
    const-string v8, "netstats"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v33

    .line 217
    .local v33, statsService:Landroid/net/INetworkStatsService;
    invoke-interface/range {v33 .. v33}, Landroid/net/INetworkStatsService;->forceUpdate()V

    .line 218
    invoke-interface/range {v33 .. v33}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v2

    .line 219
    .local v2, session:Landroid/net/INetworkStatsSession;
    invoke-virtual/range {v34 .. v34}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v3

    .line 221
    .local v3, mobileTemplate:Landroid/net/NetworkTemplate;
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v9

    .line 222
    .local v9, wifiTemplate:Landroid/net/NetworkTemplate;
    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Landroid/net/INetworkStatsSession;->getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;

    move-result-object v25

    .line 223
    .local v25, mobileStats:Landroid/net/NetworkStats;
    const/4 v14, 0x0

    move-object v8, v2

    move-wide v10, v4

    move-wide v12, v6

    invoke-interface/range {v8 .. v14}, Landroid/net/INetworkStatsSession;->getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;

    move-result-object v35

    .line 224
    .local v35, wifiStats:Landroid/net/NetworkStats;
    invoke-virtual/range {v34 .. v34}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v20

    .line 225
    .local v20, deviceId:Ljava/lang/String;
    if-nez v20, :cond_0

    .line 226
    const-string v20, ""

    .line 229
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/analytics/AnalyticService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v32

    .line 230
    .local v32, pm:Landroid/content/pm/PackageManager;
    const/4 v8, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v31

    .line 231
    .local v31, pkgList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_1
    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PackageInfo;

    .line 233
    .local v11, info:Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v8, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v10, 0x1000

    move-object/from16 v0, v32

    invoke-virtual {v0, v8, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 238
    iget-object v0, v11, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    move-object/from16 v30, v0

    .line 239
    .local v30, permssions:[Ljava/lang/String;
    if-eqz v30, :cond_1

    move-object/from16 v0, v30

    array-length v8, v0

    if-lez v8, :cond_1

    .line 240
    move-object/from16 v18, v30

    .local v18, arr$:[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v24, v0

    .local v24, len$:I
    const/16 v23, 0x0

    .local v23, i$:I
    :goto_1
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_1

    aget-object v29, v18, v23

    .line 241
    .local v29, perm:Ljava/lang/String;
    const-string v8, "android.permission.INTERNET"

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move-object/from16 v10, p0

    move-object/from16 v12, v25

    move-object v13, v2

    move-wide v14, v4

    move-wide/from16 v16, v6

    .line 242
    invoke-direct/range {v10 .. v17}, Lcom/android/settings/analytics/AnalyticService;->getTraffic(Landroid/content/pm/PackageInfo;Landroid/net/NetworkStats;Landroid/net/INetworkStatsSession;JJ)J

    move-result-wide v26

    .local v26, mobileTraffic:J
    move-object/from16 v10, p0

    move-object/from16 v12, v35

    move-object v13, v2

    move-wide v14, v4

    move-wide/from16 v16, v6

    .line 243
    invoke-direct/range {v10 .. v17}, Lcom/android/settings/analytics/AnalyticService;->getTraffic(Landroid/content/pm/PackageInfo;Landroid/net/NetworkStats;Landroid/net/INetworkStatsSession;JJ)J

    move-result-wide v36

    .line 244
    .local v36, wifiTraffic:J
    const-wide/16 v12, 0x0

    cmp-long v8, v26, v12

    if-gtz v8, :cond_2

    const-wide/16 v12, 0x0

    cmp-long v8, v36, v12

    if-lez v8, :cond_1

    .line 245
    :cond_2
    new-instance v28, Ljava/util/HashMap;

    invoke-direct/range {v28 .. v28}, Ljava/util/HashMap;-><init>()V

    .line 246
    .local v28, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "mobileTraffic"

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v28

    invoke-interface {v0, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    const-string v8, "wifiTraffic"

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v28

    invoke-interface {v0, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-string v8, "deviceId"

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/analytics/AnalyticService;->mTracker:Lmiui/analytics/XiaomiAnalytics;

    iget-object v10, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v8, v10, v0}, Lmiui/analytics/XiaomiAnalytics;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 234
    .end local v18           #arr$:[Ljava/lang/String;
    .end local v23           #i$:I
    .end local v24           #len$:I
    .end local v26           #mobileTraffic:J
    .end local v28           #params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v29           #perm:Ljava/lang/String;
    .end local v30           #permssions:[Ljava/lang/String;
    .end local v36           #wifiTraffic:J
    :catch_0
    move-exception v21

    .line 235
    .local v21, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "AnalyticService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Fail to get package info for package: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v12, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v21

    invoke-static {v8, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 240
    .end local v21           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v18       #arr$:[Ljava/lang/String;
    .restart local v23       #i$:I
    .restart local v24       #len$:I
    .restart local v29       #perm:Ljava/lang/String;
    .restart local v30       #permssions:[Ljava/lang/String;
    :cond_3
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_1

    .line 257
    .end local v11           #info:Landroid/content/pm/PackageInfo;
    .end local v18           #arr$:[Ljava/lang/String;
    .end local v23           #i$:I
    .end local v24           #len$:I
    .end local v29           #perm:Ljava/lang/String;
    .end local v30           #permssions:[Ljava/lang/String;
    :cond_4
    invoke-interface {v2}, Landroid/net/INetworkStatsSession;->close()V

    .line 258
    return-void
.end method

.method private trackCommonEvent(Landroid/content/Intent;)V
    .locals 10
    .parameter "intent"

    .prologue
    .line 91
    const-string v8, "eventId"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, eventId:Ljava/lang/String;
    const-string v8, "eventObj"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 93
    .local v1, eventObj:Ljava/lang/Object;
    const-string v8, "eventBundle"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 94
    .local v2, eventbBundle:Landroid/os/Bundle;
    if-eqz v2, :cond_3

    .line 95
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 96
    .local v6, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 97
    .local v5, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 98
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 99
    .local v4, key:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 100
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 101
    .local v7, value:Ljava/lang/Object;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_1
    invoke-interface {v6, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v8, "null"

    goto :goto_1

    .line 106
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #key:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/Object;
    :cond_2
    iget-object v8, p0, Lcom/android/settings/analytics/AnalyticService;->mTracker:Lmiui/analytics/XiaomiAnalytics;

    invoke-virtual {v8, v0, v6}, Lmiui/analytics/XiaomiAnalytics;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 112
    .end local v5           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6           #params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_2
    return-void

    .line 107
    :cond_3
    if-eqz v1, :cond_4

    .line 108
    iget-object v8, p0, Lcom/android/settings/analytics/AnalyticService;->mTracker:Lmiui/analytics/XiaomiAnalytics;

    invoke-virtual {v8, v0, v1}, Lmiui/analytics/XiaomiAnalytics;->trackEvent(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 110
    :cond_4
    iget-object v8, p0, Lcom/android/settings/analytics/AnalyticService;->mTracker:Lmiui/analytics/XiaomiAnalytics;

    const-string v9, "null"

    invoke-virtual {v8, v0, v9}, Lmiui/analytics/XiaomiAnalytics;->trackEvent(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private trackInnerStorageUsage()V
    .locals 12

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/android/settings/analytics/AnalyticService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0012

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 151
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    .line 152
    .local v4, path:Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 153
    .local v5, stat:Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 154
    .local v2, blockSize:J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v6, v6

    mul-long v0, v6, v2

    .line 156
    .local v0, availableSize:J
    iget-object v6, p0, Lcom/android/settings/analytics/AnalyticService;->mTracker:Lmiui/analytics/XiaomiAnalytics;

    const-string v7, "data_avail"

    long-to-double v8, v0

    const-wide v10, 0x41cdcd6500000000L

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lmiui/analytics/XiaomiAnalytics;->trackEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    .end local v0           #availableSize:J
    .end local v2           #blockSize:J
    .end local v4           #path:Ljava/io/File;
    .end local v5           #stat:Landroid/os/StatFs;
    :cond_0
    return-void
.end method

.method private trackSimCard()V
    .locals 2

    .prologue
    .line 115
    invoke-static {}, Lcom/android/settings/MiuiUtils;->getInstance()Lcom/android/settings/MiuiUtils;

    move-result-object v0

    .line 116
    .local v0, utils:Lcom/android/settings/MiuiUtils;
    iget-object v1, p0, Lcom/android/settings/analytics/AnalyticService;->mTracker:Lmiui/analytics/XiaomiAnalytics;

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/MiuiUtils;->trackSimCard(Landroid/content/Context;Lmiui/analytics/XiaomiAnalytics;)V

    .line 117
    return-void
.end method

.method private trackUnlockType()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    .line 120
    new-instance v0, Lmiui/security/MiuiLockPatternUtils;

    invoke-direct {v0, p0}, Lmiui/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 122
    .local v0, lockPatternUtils:Lmiui/security/MiuiLockPatternUtils;
    invoke-virtual {v0}, Lmiui/security/MiuiLockPatternUtils;->getActivePasswordQuality()I

    move-result v1

    .line 124
    .local v1, passwordQuality:I
    sparse-switch v1, :sswitch_data_0

    .line 140
    const-string v2, "unknown"

    .line 143
    .local v2, passwordQualityString:Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/android/settings/analytics/AnalyticService;->mTracker:Lmiui/analytics/XiaomiAnalytics;

    const-string v5, "unlockscreen_type"

    invoke-virtual {v4, v5, v2}, Lmiui/analytics/XiaomiAnalytics;->trackEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 144
    iget-object v4, p0, Lcom/android/settings/analytics/AnalyticService;->mTracker:Lmiui/analytics/XiaomiAnalytics;

    const-string v5, "lock_screen_disabled"

    invoke-virtual {v0}, Lmiui/security/MiuiLockPatternUtils;->isLockScreenDisabled()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lmiui/analytics/XiaomiAnalytics;->trackEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    iget-object v4, p0, Lcom/android/settings/analytics/AnalyticService;->mTracker:Lmiui/analytics/XiaomiAnalytics;

    const-string v5, "skip_lockscreen"

    invoke-virtual {p0}, Lcom/android/settings/analytics/AnalyticService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "show_lock_before_unlock"

    invoke-static {v6, v7, v3}, Lmiui/provider/ExtraSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_0

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lmiui/analytics/XiaomiAnalytics;->trackEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    return-void

    .line 126
    .end local v2           #passwordQualityString:Ljava/lang/String;
    :sswitch_0
    const-string v2, "pattern"

    .line 127
    .restart local v2       #passwordQualityString:Ljava/lang/String;
    goto :goto_0

    .line 129
    .end local v2           #passwordQualityString:Ljava/lang/String;
    :sswitch_1
    const-string v2, "facial"

    .line 130
    .restart local v2       #passwordQualityString:Ljava/lang/String;
    goto :goto_0

    .line 132
    .end local v2           #passwordQualityString:Ljava/lang/String;
    :sswitch_2
    const-string v2, "numeric"

    .line 133
    .restart local v2       #passwordQualityString:Ljava/lang/String;
    goto :goto_0

    .line 137
    .end local v2           #passwordQualityString:Ljava/lang/String;
    :sswitch_3
    const-string v2, "mixed"

    .line 138
    .restart local v2       #passwordQualityString:Ljava/lang/String;
    goto :goto_0

    .line 145
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 124
    nop

    :sswitch_data_0
    .sparse-switch
        0x8000 -> :sswitch_1
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_2
        0x40000 -> :sswitch_3
        0x50000 -> :sswitch_3
        0x60000 -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 56
    invoke-static {}, Lmiui/analytics/XiaomiAnalytics;->getInstance()Lmiui/analytics/XiaomiAnalytics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/analytics/AnalyticService;->mTracker:Lmiui/analytics/XiaomiAnalytics;

    .line 57
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/analytics/AnalyticService;->mTracker:Lmiui/analytics/XiaomiAnalytics;

    .line 63
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 67
    iget-object v2, p0, Lcom/android/settings/analytics/AnalyticService;->mTracker:Lmiui/analytics/XiaomiAnalytics;

    invoke-virtual {v2, p0}, Lmiui/analytics/XiaomiAnalytics;->startSession(Landroid/content/Context;)V

    .line 69
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, action:Ljava/lang/String;
    const-string v2, "miui.intent.action.TRACK_EVENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    invoke-direct {p0, p1}, Lcom/android/settings/analytics/AnalyticService;->trackCommonEvent(Landroid/content/Intent;)V

    .line 87
    :goto_0
    iget-object v2, p0, Lcom/android/settings/analytics/AnalyticService;->mTracker:Lmiui/analytics/XiaomiAnalytics;

    invoke-virtual {v2}, Lmiui/analytics/XiaomiAnalytics;->endSession()V

    .line 88
    return-void

    .line 73
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/analytics/AnalyticService;->trackUnlockType()V

    .line 75
    invoke-direct {p0}, Lcom/android/settings/analytics/AnalyticService;->trackInnerStorageUsage()V

    .line 77
    invoke-direct {p0}, Lcom/android/settings/analytics/AnalyticService;->trackSimCard()V

    .line 80
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/analytics/AnalyticService;->trackApkInstaller()V

    .line 81
    invoke-direct {p0}, Lcom/android/settings/analytics/AnalyticService;->trackApkTraffic()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    :catch_0
    move-exception v1

    .line 83
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
