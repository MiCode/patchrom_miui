.class public Lcom/android/settings/net/UidDetailProvider;
.super Ljava/lang/Object;
.source "UidDetailProvider.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mUidDetailCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/net/UidDetail;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/net/UidDetailProvider;->mContext:Landroid/content/Context;

    .line 51
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    .line 52
    return-void
.end method

.method public static buildKeyForUser(I)I
    .locals 1
    .parameter "userHandle"

    .prologue
    .line 46
    add-int/lit16 v0, p0, 0x7d0

    neg-int v0, v0

    return v0
.end method

.method private buildUidDetail(I)Lcom/android/settings/net/UidDetail;
    .locals 18
    .parameter "uid"

    .prologue
    .line 90
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/net/UidDetailProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 91
    .local v11, res:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/net/UidDetailProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 93
    .local v10, pm:Landroid/content/pm/PackageManager;
    new-instance v3, Lcom/android/settings/net/UidDetail;

    invoke-direct {v3}, Lcom/android/settings/net/UidDetail;-><init>()V

    .line 94
    .local v3, detail:Lcom/android/settings/net/UidDetail;
    move/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 95
    invoke-virtual {v10}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iput-object v14, v3, Lcom/android/settings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    .line 98
    sparse-switch p1, :sswitch_data_0

    .line 118
    const/16 v14, -0x7d0

    move/from16 v0, p1

    if-gt v0, v14, :cond_2

    .line 119
    move/from16 v0, p1

    neg-int v14, v0

    add-int/lit16 v13, v14, -0x7d0

    .line 120
    .local v13, userHandle:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/net/UidDetailProvider;->mContext:Landroid/content/Context;

    const-string v15, "user"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/UserManager;

    .line 121
    .local v12, um:Landroid/os/UserManager;
    invoke-virtual {v12, v13}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    .line 122
    .local v5, info:Landroid/content/pm/UserInfo;
    if-eqz v5, :cond_2

    .line 123
    const v14, 0x7f0c0441

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    iget-object v0, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    invoke-virtual {v11, v14, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 124
    invoke-static {v12, v5, v11}, Lcom/android/settings/users/UserUtils;->getUserIcon(Landroid/os/UserManager;Landroid/content/pm/UserInfo;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iput-object v14, v3, Lcom/android/settings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    .line 159
    .end local v5           #info:Landroid/content/pm/UserInfo;
    .end local v12           #um:Landroid/os/UserManager;
    .end local v13           #userHandle:I
    :cond_0
    :goto_0
    return-object v3

    .line 100
    :sswitch_0
    const v14, 0x7f0c0530

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 101
    invoke-virtual {v10}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iput-object v14, v3, Lcom/android/settings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 104
    :sswitch_1
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v14

    if-eqz v14, :cond_1

    const v14, 0x7f0c0668

    :goto_1
    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 107
    invoke-virtual {v10}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iput-object v14, v3, Lcom/android/settings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 104
    :cond_1
    const v14, 0x7f0c0667

    goto :goto_1

    .line 110
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/net/UidDetailProvider;->mContext:Landroid/content/Context;

    const-string v15, "connectivity"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 112
    .local v2, cm:Landroid/net/ConnectivityManager;
    invoke-static {v2}, Lcom/android/settings/Utils;->getTetheringLabel(Landroid/net/ConnectivityManager;)I

    move-result v14

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 113
    invoke-virtual {v10}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iput-object v14, v3, Lcom/android/settings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 130
    .end local v2           #cm:Landroid/net/ConnectivityManager;
    :cond_2
    move/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v9

    .line 131
    .local v9, packageNames:[Ljava/lang/String;
    if-eqz v9, :cond_4

    array-length v6, v9

    .line 133
    .local v6, length:I
    :goto_2
    const/4 v14, 0x1

    if-ne v6, v14, :cond_5

    .line 134
    const/4 v14, 0x0

    :try_start_0
    aget-object v14, v9, v14

    const/4 v15, 0x0

    invoke-virtual {v10, v14, v15}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 135
    .local v5, info:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v5, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 136
    invoke-virtual {v5, v10}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iput-object v14, v3, Lcom/android/settings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .end local v5           #info:Landroid/content/pm/ApplicationInfo;
    :cond_3
    :goto_3
    iget-object v14, v3, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 156
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    goto :goto_0

    .line 131
    .end local v6           #length:I
    :cond_4
    const/4 v6, 0x0

    goto :goto_2

    .line 137
    .restart local v6       #length:I
    :cond_5
    const/4 v14, 0x1

    if-le v6, v14, :cond_3

    .line 138
    :try_start_1
    new-array v14, v6, [Ljava/lang/CharSequence;

    iput-object v14, v3, Lcom/android/settings/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    .line 139
    const/4 v4, 0x0

    .local v4, i:I
    :goto_4
    if-ge v4, v6, :cond_3

    .line 140
    aget-object v8, v9, v4

    .line 141
    .local v8, packageName:Ljava/lang/String;
    const/4 v14, 0x0

    invoke-virtual {v10, v8, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 142
    .local v7, packageInfo:Landroid/content/pm/PackageInfo;
    const/4 v14, 0x0

    invoke-virtual {v10, v8, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 144
    .local v1, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v14, v3, Lcom/android/settings/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    invoke-virtual {v1, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v4

    .line 145
    iget v14, v7, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    if-eqz v14, :cond_6

    .line 146
    iget v14, v7, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    iget-object v15, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v10, v8, v14, v15}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 148
    invoke-virtual {v1, v10}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iput-object v14, v3, Lcom/android/settings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 139
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 152
    .end local v1           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v4           #i:I
    .end local v7           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v8           #packageName:Ljava/lang/String;
    :catch_0
    move-exception v14

    goto :goto_3

    .line 98
    nop

    :sswitch_data_0
    .sparse-switch
        -0x5 -> :sswitch_2
        -0x4 -> :sswitch_1
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public clearCache()V
    .locals 2

    .prologue
    .line 55
    iget-object v1, p0, Lcom/android/settings/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    monitor-enter v1

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 57
    monitor-exit v1

    .line 58
    return-void

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUidDetail(IZ)Lcom/android/settings/net/UidDetail;
    .locals 3
    .parameter "uid"
    .parameter "blocking"

    .prologue
    .line 66
    iget-object v2, p0, Lcom/android/settings/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    monitor-enter v2

    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/net/UidDetail;

    .line 68
    .local v0, detail:Lcom/android/settings/net/UidDetail;
    monitor-exit v2

    .line 70
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 82
    :goto_0
    return-object v1

    .line 68
    .end local v0           #detail:Lcom/android/settings/net/UidDetail;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 72
    .restart local v0       #detail:Lcom/android/settings/net/UidDetail;
    :cond_0
    if-nez p2, :cond_1

    .line 73
    const/4 v1, 0x0

    goto :goto_0

    .line 76
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/net/UidDetailProvider;->buildUidDetail(I)Lcom/android/settings/net/UidDetail;

    move-result-object v0

    .line 78
    iget-object v2, p0, Lcom/android/settings/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    monitor-enter v2

    .line 79
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 80
    monitor-exit v2

    move-object v1, v0

    .line 82
    goto :goto_0

    .line 80
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method
