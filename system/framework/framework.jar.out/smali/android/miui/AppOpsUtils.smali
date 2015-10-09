.class public Landroid/miui/AppOpsUtils;
.super Ljava/lang/Object;
.source "AppOpsUtils.java"


# static fields
.field private static final ALARM_WHITE_LIST:[Ljava/lang/String;

.field private static final AUTO_START_WHITE_LIST:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "AppOpsUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "com.xiaomi.channel"

    aput-object v1, v0, v2

    sput-object v0, Landroid/miui/AppOpsUtils;->AUTO_START_WHITE_LIST:[Ljava/lang/String;

    .line 26
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.deskclock"

    aput-object v1, v0, v2

    const-string v1, "com.xiaomi.xmsf"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "com.mobiletools.systemhelper"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.chinaunicom.registerhelper"

    aput-object v2, v0, v1

    sput-object v0, Landroid/miui/AppOpsUtils;->ALARM_WHITE_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApplicationAutoStart(Landroid/content/Context;Ljava/lang/String;)I
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/16 v13, 0x32

    const/4 v10, 0x1

    .line 46
    const/4 v9, -0x1

    .line 48
    .local v9, "uid":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    invoke-virtual {v11, p1, v12}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 54
    const-string v11, "appops"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 55
    .local v0, "aom":Landroid/app/AppOpsManager;
    new-array v11, v10, [I

    aput v13, v11, v4

    invoke-virtual {v0, v9, p1, v11}, Landroid/app/AppOpsManager;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object v8

    .line 56
    .local v8, "pkgOpsList":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-nez v8, :cond_1

    .line 57
    invoke-static {p0, p1}, Landroid/miui/AppOpsUtils;->inAutoStartWhiteList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 58
    .local v4, "mode":I
    :goto_0
    invoke-virtual {v0, v13, v9, p1, v4}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    move v10, v4

    .line 75
    .end local v0    # "aom":Landroid/app/AppOpsManager;
    .end local v4    # "mode":I
    .end local v8    # "pkgOpsList":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_1
    return v10

    .line 49
    :catch_0
    move-exception v1

    .line 50
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v11, "AppOpsUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Can\'t obtain the uid for package: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "aom":Landroid/app/AppOpsManager;
    .restart local v8    # "pkgOpsList":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_0
    move v4, v10

    .line 57
    goto :goto_0

    .line 62
    :cond_1
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AppOpsManager$PackageOps;

    .line 63
    .local v7, "pkgOps":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v7}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v6

    .line 64
    .local v6, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    if-eqz v6, :cond_2

    .line 67
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$OpEntry;

    .line 68
    .local v5, "op":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v5}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v11

    if-ne v11, v13, :cond_3

    .line 69
    invoke-virtual {v5}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v10

    goto :goto_1

    .line 74
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "op":Landroid/app/AppOpsManager$OpEntry;
    .end local v6    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v7    # "pkgOps":Landroid/app/AppOpsManager$PackageOps;
    :cond_4
    const-string v11, "AppOpsUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Very wield, we should never arrive here for package: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getExactAlarm(Landroid/content/Context;I)I
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I

    .prologue
    const/16 v12, 0x38

    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v11, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v7

    .line 92
    .local v7, "packages":[Ljava/lang/String;
    const-string v11, "appops"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 94
    .local v0, "aom":Landroid/app/AppOpsManager;
    if-eqz v7, :cond_4

    array-length v11, v7

    if-lez v11, :cond_4

    .line 95
    aget-object v6, v7, v3

    .line 96
    .local v6, "packageName":Ljava/lang/String;
    new-array v11, v10, [I

    aput v12, v11, v3

    invoke-virtual {v0, p1, v6, v11}, Landroid/app/AppOpsManager;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object v9

    .line 97
    .local v9, "pkgOpsList":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-nez v9, :cond_1

    .line 98
    invoke-static {p0, v6}, Landroid/miui/AppOpsUtils;->inAlarmWhiteList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 115
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v9    # "pkgOpsList":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_0
    return v3

    .restart local v6    # "packageName":Ljava/lang/String;
    .restart local v9    # "pkgOpsList":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_0
    move v3, v10

    .line 98
    goto :goto_0

    .line 102
    :cond_1
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AppOpsManager$PackageOps;

    .line 103
    .local v8, "pkgOps":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v8}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v5

    .line 104
    .local v5, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    if-eqz v5, :cond_2

    .line 107
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$OpEntry;

    .line 108
    .local v4, "op":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v4}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v11

    if-ne v11, v12, :cond_3

    .line 109
    invoke-virtual {v4}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v3

    goto :goto_0

    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "op":Landroid/app/AppOpsManager$OpEntry;
    .end local v5    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v8    # "pkgOps":Landroid/app/AppOpsManager$PackageOps;
    .end local v9    # "pkgOpsList":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_4
    move v3, v10

    .line 115
    goto :goto_0
.end method

.method public static getWakeUpAlarm(Landroid/content/Context;I)I
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I

    .prologue
    const/16 v12, 0x3c

    const/4 v9, 0x1

    const/4 v11, 0x0

    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v10, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    .line 132
    .local v6, "packages":[Ljava/lang/String;
    const-string v10, "appops"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 134
    .local v0, "aom":Landroid/app/AppOpsManager;
    if-eqz v6, :cond_2

    array-length v10, v6

    if-lez v10, :cond_2

    .line 135
    aget-object v5, v6, v11

    .line 136
    .local v5, "packageName":Ljava/lang/String;
    new-array v10, v9, [I

    aput v12, v10, v11

    invoke-virtual {v0, p1, v5, v10}, Landroid/app/AppOpsManager;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object v8

    .line 137
    .local v8, "pkgOpsList":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v8, :cond_2

    .line 138
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AppOpsManager$PackageOps;

    .line 139
    .local v7, "pkgOps":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v7}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v4

    .line 140
    .local v4, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    if-eqz v4, :cond_0

    .line 143
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$OpEntry;

    .line 144
    .local v3, "op":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v3}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v10

    if-ne v10, v12, :cond_1

    .line 145
    invoke-virtual {v3}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v9

    .line 152
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "op":Landroid/app/AppOpsManager$OpEntry;
    .end local v4    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v7    # "pkgOps":Landroid/app/AppOpsManager$PackageOps;
    .end local v8    # "pkgOpsList":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_2
    return v9
.end method

.method private static inAlarmWhiteList(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 163
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Landroid/miui/AppOpsUtils;->ALARM_WHITE_LIST:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 164
    sget-object v2, Landroid/miui/AppOpsUtils;->ALARM_WHITE_LIST:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 166
    :cond_0
    :goto_1
    return v1

    .line 163
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_2
    sget-object v2, Lmiui/provider/CloudAppControll$TAG;->TAG_ACCURATE_ALARM_CLOCK:Lmiui/provider/CloudAppControll$TAG;

    invoke-static {p0, v2, p1}, Lmiui/provider/CloudAppControll;->get(Landroid/content/Context;Lmiui/provider/CloudAppControll$TAG;Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static inAutoStartWhiteList(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 156
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Landroid/miui/AppOpsUtils;->AUTO_START_WHITE_LIST:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 157
    sget-object v2, Landroid/miui/AppOpsUtils;->AUTO_START_WHITE_LIST:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 159
    :cond_0
    :goto_1
    return v1

    .line 156
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :cond_2
    sget-object v2, Lmiui/provider/CloudAppControll$TAG;->TAG_AUTO_START:Lmiui/provider/CloudAppControll$TAG;

    invoke-static {p0, v2, p1}, Lmiui/provider/CloudAppControll;->get(Landroid/content/Context;Lmiui/provider/CloudAppControll$TAG;Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static setApplicationAutoStart(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "autoStart"    # Z

    .prologue
    .line 34
    const/4 v2, -0x1

    .line 36
    .local v2, "uid":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 41
    const-string v3, "appops"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 42
    .local v0, "aom":Landroid/app/AppOpsManager;
    const/16 v4, 0x32

    if-eqz p2, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v4, v2, p1, v3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 43
    .end local v0    # "aom":Landroid/app/AppOpsManager;
    :goto_1
    return-void

    .line 37
    :catch_0
    move-exception v1

    .line 38
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "AppOpsUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t obtain the uid for package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 42
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "aom":Landroid/app/AppOpsManager;
    :cond_0
    const/4 v3, 0x2

    goto :goto_0
.end method

.method public static setExactAlarm(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "exactAlarm"    # Z

    .prologue
    .line 79
    const/4 v2, -0x1

    .line 81
    .local v2, "uid":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 86
    const-string v3, "appops"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 87
    .local v0, "aom":Landroid/app/AppOpsManager;
    const/16 v4, 0x38

    if-eqz p2, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v4, v2, p1, v3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 88
    .end local v0    # "aom":Landroid/app/AppOpsManager;
    :goto_1
    return-void

    .line 82
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "AppOpsUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t obtain the uid for package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 87
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "aom":Landroid/app/AppOpsManager;
    :cond_0
    const/4 v3, 0x2

    goto :goto_0
.end method

.method public static setWakeUpAlarm(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "wakeupAlarm"    # Z

    .prologue
    .line 119
    const/4 v2, -0x1

    .line 121
    .local v2, "uid":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 126
    const-string v3, "appops"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 127
    .local v0, "aom":Landroid/app/AppOpsManager;
    const/16 v4, 0x3c

    if-eqz p2, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v4, v2, p1, v3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 128
    .end local v0    # "aom":Landroid/app/AppOpsManager;
    :goto_1
    return-void

    .line 122
    :catch_0
    move-exception v1

    .line 123
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "AppOpsUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t obtain the uid for package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 127
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "aom":Landroid/app/AppOpsManager;
    :cond_0
    const/4 v3, 0x2

    goto :goto_0
.end method
