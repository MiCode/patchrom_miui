.class public Lcom/lbe/security/service/privacy/HIPSService;
.super Ljava/lang/Object;
.source "HIPSService.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mFilterSysPackage:Z

.field private mService:Lcom/lbe/security/service/privacy/IHIPSService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lbe/security/service/privacy/IHIPSService;)V
    .locals 1
    .parameter "context"
    .parameter "service"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/lbe/security/service/privacy/HIPSService;->mContext:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/lbe/security/service/privacy/HIPSService;->mService:Lcom/lbe/security/service/privacy/IHIPSService;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lbe/security/service/privacy/HIPSService;->mFilterSysPackage:Z

    .line 32
    return-void
.end method


# virtual methods
.method public deleteEventLog(Lcom/lbe/security/service/privacy/EventFilter;)V
    .locals 1
    .parameter "filter"

    .prologue
    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/lbe/security/service/privacy/HIPSService;->mService:Lcom/lbe/security/service/privacy/IHIPSService;

    invoke-interface {v0, p1}, Lcom/lbe/security/service/privacy/IHIPSService;->deleteLog(Lcom/lbe/security/service/privacy/EventFilter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public findPackageByUid(I)Lcom/lbe/security/bean/Package;
    .locals 2
    .parameter "uid"

    .prologue
    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/lbe/security/service/privacy/HIPSService;->mService:Lcom/lbe/security/service/privacy/IHIPSService;

    invoke-interface {v1, p1}, Lcom/lbe/security/service/privacy/IHIPSService;->findPackageByUid(I)Lcom/lbe/security/bean/Package;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 120
    :goto_0
    return-object v1

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEventLogCount(Lcom/lbe/security/service/privacy/EventFilter;)I
    .locals 2
    .parameter "filter"

    .prologue
    .line 168
    :try_start_0
    iget-object v1, p0, Lcom/lbe/security/service/privacy/HIPSService;->mService:Lcom/lbe/security/service/privacy/IHIPSService;

    invoke-interface {v1, p1}, Lcom/lbe/security/service/privacy/IHIPSService;->getEventLogCount(Lcom/lbe/security/service/privacy/EventFilter;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 170
    :goto_0
    return v1

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPackageCount(Lcom/lbe/security/service/privacy/PackageFilter;)I
    .locals 2
    .parameter "filter"

    .prologue
    .line 62
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/lbe/security/service/privacy/HIPSService;->queryPackage(Lcom/lbe/security/service/privacy/PackageFilter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 64
    :goto_0
    return v1

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public queryLog(Lcom/lbe/security/service/privacy/EventFilter;Ljava/lang/String;Z)Ljava/util/List;
    .locals 2
    .parameter "filter"
    .parameter "orderBy"
    .parameter "ascending"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lbe/security/service/privacy/EventFilter;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/lbe/security/bean/EventLog;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    :try_start_0
    iget-object v1, p0, Lcom/lbe/security/service/privacy/HIPSService;->mService:Lcom/lbe/security/service/privacy/IHIPSService;

    invoke-interface {v1, p1, p2, p3}, Lcom/lbe/security/service/privacy/IHIPSService;->queryLog(Lcom/lbe/security/service/privacy/EventFilter;Ljava/lang/String;Z)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 185
    :goto_0
    return-object v1

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public queryPackage(Lcom/lbe/security/service/privacy/PackageFilter;)Ljava/util/List;
    .locals 9
    .parameter "filter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lbe/security/service/privacy/PackageFilter;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lbe/security/bean/Package;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, aidShell:Lcom/lbe/security/bean/Package;
    :try_start_0
    iget-object v7, p0, Lcom/lbe/security/service/privacy/HIPSService;->mService:Lcom/lbe/security/service/privacy/IHIPSService;

    invoke-interface {v7, p1}, Lcom/lbe/security/service/privacy/IHIPSService;->find(Lcom/lbe/security/service/privacy/PackageFilter;)Ljava/util/List;

    move-result-object v5

    .line 78
    .local v5, pkgList:Ljava/util/List;,"Ljava/util/List<Lcom/lbe/security/bean/Package;>;"
    const/4 v2, 0x0

    .local v2, i:I
    move v3, v2

    .end local v2           #i:I
    .local v3, i:I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lt v3, v7, :cond_2

    .line 88
    iget-boolean v7, p0, Lcom/lbe/security/service/privacy/HIPSService;->mFilterSysPackage:Z

    if-eqz v7, :cond_0

    .line 89
    iget-object v7, p0, Lcom/lbe/security/service/privacy/HIPSService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 90
    .local v6, pm:Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .end local v3           #i:I
    .restart local v2       #i:I
    move v3, v2

    .end local v2           #i:I
    .restart local v3       #i:I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lt v3, v7, :cond_4

    .line 101
    .end local v6           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    invoke-virtual {p1}, Lcom/lbe/security/service/privacy/PackageFilter;->hasRootPermission()Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz v0, :cond_1

    .line 102
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    .end local v3           #i:I
    .end local v5           #pkgList:Ljava/util/List;,"Ljava/util/List<Lcom/lbe/security/bean/Package;>;"
    :cond_1
    :goto_2
    return-object v5

    .line 79
    .restart local v3       #i:I
    .restart local v5       #pkgList:Ljava/util/List;,"Ljava/util/List<Lcom/lbe/security/bean/Package;>;"
    :cond_2
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lbe/security/bean/Package;

    .line 80
    .local v4, pkg:Lcom/lbe/security/bean/Package;
    invoke-virtual {v4}, Lcom/lbe/security/bean/Package;->getUid()I

    move-result v7

    const/16 v8, 0x2710

    if-ge v7, v8, :cond_6

    .line 81
    add-int/lit8 v2, v3, -0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    invoke-interface {v5, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 83
    :goto_3
    invoke-virtual {v4}, Lcom/lbe/security/bean/Package;->getUid()I

    move-result v7

    const/16 v8, 0x7d0

    if-ne v7, v8, :cond_3

    .line 84
    move-object v0, v4

    .line 78
    :cond_3
    add-int/lit8 v2, v2, 0x1

    move v3, v2

    .end local v2           #i:I
    .restart local v3       #i:I
    goto :goto_0

    .line 91
    .end local v4           #pkg:Lcom/lbe/security/bean/Package;
    .restart local v6       #pm:Landroid/content/pm/PackageManager;
    :cond_4
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lbe/security/bean/Package;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .restart local v4       #pkg:Lcom/lbe/security/bean/Package;
    :try_start_1
    invoke-virtual {v4}, Lcom/lbe/security/bean/Package;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x2000

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_5

    .line 94
    add-int/lit8 v2, v3, -0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    :try_start_2
    invoke-interface {v5, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 90
    :goto_4
    add-int/lit8 v2, v2, 0x1

    move v3, v2

    .end local v2           #i:I
    .restart local v3       #i:I
    goto :goto_1

    .line 106
    .end local v3           #i:I
    .end local v4           #pkg:Lcom/lbe/security/bean/Package;
    .end local v5           #pkgList:Ljava/util/List;,"Ljava/util/List<Lcom/lbe/security/bean/Package;>;"
    .end local v6           #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 107
    .local v1, e:Ljava/lang/Exception;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2

    .line 96
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v3       #i:I
    .restart local v4       #pkg:Lcom/lbe/security/bean/Package;
    .restart local v5       #pkgList:Ljava/util/List;,"Ljava/util/List<Lcom/lbe/security/bean/Package;>;"
    .restart local v6       #pm:Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v7

    move v2, v3

    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_4

    :catch_2
    move-exception v7

    goto :goto_4

    .end local v2           #i:I
    .restart local v3       #i:I
    :cond_5
    move v2, v3

    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_4

    .end local v2           #i:I
    .end local v6           #pm:Landroid/content/pm/PackageManager;
    .restart local v3       #i:I
    :cond_6
    move v2, v3

    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_3
.end method

.method public setFilterSystemPackage(Z)V
    .locals 0
    .parameter "filter"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/lbe/security/service/privacy/HIPSService;->mFilterSysPackage:Z

    .line 41
    return-void
.end method

.method public setPackagePermission(Lcom/lbe/security/bean/Package;II)V
    .locals 1
    .parameter "pkg"
    .parameter "permId"
    .parameter "newAction"

    .prologue
    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/lbe/security/service/privacy/HIPSService;->mService:Lcom/lbe/security/service/privacy/IHIPSService;

    invoke-interface {v0, p1, p2, p3}, Lcom/lbe/security/service/privacy/IHIPSService;->setPackagePermission(Lcom/lbe/security/bean/Package;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public trustPackage(Lcom/lbe/security/bean/Package;Z)V
    .locals 1
    .parameter "pkg"
    .parameter "trust"

    .prologue
    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/lbe/security/service/privacy/HIPSService;->mService:Lcom/lbe/security/service/privacy/IHIPSService;

    invoke-interface {v0, p1, p2}, Lcom/lbe/security/service/privacy/IHIPSService;->trust(Lcom/lbe/security/bean/Package;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    goto :goto_0
.end method
