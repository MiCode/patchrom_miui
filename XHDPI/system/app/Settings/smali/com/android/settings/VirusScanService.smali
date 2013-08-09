.class public Lcom/android/settings/VirusScanService;
.super Landroid/app/Service;
.source "VirusScanService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/VirusScanService$UpdateVirusLibTask;,
        Lcom/android/settings/VirusScanService$PackageDeleteObserver;,
        Lcom/android/settings/VirusScanService$ScanBinder;,
        Lcom/android/settings/VirusScanService$OnVirusLibUpdateListener;,
        Lcom/android/settings/VirusScanService$OnVirusScanListener;
    }
.end annotation


# instance fields
.field private mAppData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/ScanAppData;",
            ">;"
        }
    .end annotation
.end field

.field private mBinder:Lcom/android/settings/VirusScanService$ScanBinder;

.field private mOnVirusLibUpdateListener:Lcom/android/settings/VirusScanService$OnVirusLibUpdateListener;

.field private mRiskDataIndex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mScanState:I

.field private mScannedCount:I

.field private mSelectedRiskCount:I

.field private mUninstalledCount:I

.field private mVirusScanListener:Lcom/android/settings/VirusScanService$OnVirusScanListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/VirusScanService;->mAppData:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/VirusScanService;->mRiskDataIndex:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Lcom/android/settings/VirusScanService$ScanBinder;

    invoke-direct {v0, p0}, Lcom/android/settings/VirusScanService$ScanBinder;-><init>(Lcom/android/settings/VirusScanService;)V

    iput-object v0, p0, Lcom/android/settings/VirusScanService;->mBinder:Lcom/android/settings/VirusScanService$ScanBinder;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/VirusScanService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/VirusScanService;->mAppData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/VirusScanService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/settings/VirusScanService;->mScanState:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/VirusScanService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/settings/VirusScanService;->mUninstalledCount:I

    return v0
.end method

.method static synthetic access$1004(Lcom/android/settings/VirusScanService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/settings/VirusScanService;->mUninstalledCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/VirusScanService;->mUninstalledCount:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings/VirusScanService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput p1, p0, Lcom/android/settings/VirusScanService;->mScanState:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/VirusScanService;)Lcom/android/settings/VirusScanService$OnVirusScanListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/VirusScanService;->mVirusScanListener:Lcom/android/settings/VirusScanService$OnVirusScanListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/VirusScanService;Lcom/android/settings/VirusScanService$OnVirusScanListener;)Lcom/android/settings/VirusScanService$OnVirusScanListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/settings/VirusScanService;->mVirusScanListener:Lcom/android/settings/VirusScanService$OnVirusScanListener;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/VirusScanService;)Lcom/android/settings/VirusScanService$OnVirusLibUpdateListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/VirusScanService;->mOnVirusLibUpdateListener:Lcom/android/settings/VirusScanService$OnVirusLibUpdateListener;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/VirusScanService;Lcom/android/settings/VirusScanService$OnVirusLibUpdateListener;)Lcom/android/settings/VirusScanService$OnVirusLibUpdateListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/settings/VirusScanService;->mOnVirusLibUpdateListener:Lcom/android/settings/VirusScanService$OnVirusLibUpdateListener;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings/VirusScanService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/VirusScanService;->uninstallApps()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/VirusScanService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/settings/VirusScanService;->mSelectedRiskCount:I

    return v0
.end method

.method static synthetic access$504(Lcom/android/settings/VirusScanService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/settings/VirusScanService;->mSelectedRiskCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/VirusScanService;->mSelectedRiskCount:I

    return v0
.end method

.method static synthetic access$506(Lcom/android/settings/VirusScanService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/settings/VirusScanService;->mSelectedRiskCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/VirusScanService;->mSelectedRiskCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings/VirusScanService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/VirusScanService;->startScan()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/VirusScanService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/VirusScanService;->updateVirusLib()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/VirusScanService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/settings/VirusScanService;->mScannedCount:I

    return v0
.end method

.method static synthetic access$804(Lcom/android/settings/VirusScanService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/settings/VirusScanService;->mScannedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/VirusScanService;->mScannedCount:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/VirusScanService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/VirusScanService;->mRiskDataIndex:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getAppData()V
    .locals 7

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/android/settings/VirusScanService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 292
    .local v3, packages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 293
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 294
    .local v2, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 295
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_0

    .line 296
    new-instance v4, Lcom/android/settings/ScanAppData;

    invoke-direct {v4}, Lcom/android/settings/ScanAppData;-><init>()V

    .line 297
    .local v4, tmpInfo:Lcom/android/settings/ScanAppData;
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v5, v4, Lcom/android/settings/ScanAppData;->mPackageName:Ljava/lang/String;

    .line 298
    invoke-virtual {p0}, Lcom/android/settings/VirusScanService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/settings/ScanAppData;->mAppName:Ljava/lang/String;

    .line 299
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v5, v4, Lcom/android/settings/ScanAppData;->mFullPath:Ljava/lang/String;

    .line 300
    iget-object v5, p0, Lcom/android/settings/VirusScanService;->mAppData:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    .end local v4           #tmpInfo:Lcom/android/settings/ScanAppData;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 303
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v2           #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_1
    return-void
.end method

.method private startScan()V
    .locals 2

    .prologue
    .line 197
    iget v0, p0, Lcom/android/settings/VirusScanService;->mScanState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 198
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/VirusScanService$1;

    invoke-direct {v1, p0}, Lcom/android/settings/VirusScanService$1;-><init>(Lcom/android/settings/VirusScanService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 265
    :cond_0
    return-void
.end method

.method private uninstallApps()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 187
    iput v6, p0, Lcom/android/settings/VirusScanService;->mUninstalledCount:I

    .line 188
    iget-object v2, p0, Lcom/android/settings/VirusScanService;->mAppData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ScanAppData;

    .line 189
    .local v0, data:Lcom/android/settings/ScanAppData;
    iget-object v2, v0, Lcom/android/settings/ScanAppData;->mState:Lcom/android/settings/ScanState;

    sget-object v3, Lcom/android/settings/ScanState;->ESS_RISK:Lcom/android/settings/ScanState;

    if-ne v2, v3, :cond_0

    iget-boolean v2, v0, Lcom/android/settings/ScanAppData;->mChecked:Z

    if-eqz v2, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/VirusScanService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, v0, Lcom/android/settings/ScanAppData;->mPackageName:Ljava/lang/String;

    new-instance v4, Lcom/android/settings/VirusScanService$PackageDeleteObserver;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/settings/VirusScanService$PackageDeleteObserver;-><init>(Lcom/android/settings/VirusScanService;Lcom/android/settings/VirusScanService$1;)V

    invoke-virtual {v2, v3, v4, v6}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    goto :goto_0

    .line 194
    .end local v0           #data:Lcom/android/settings/ScanAppData;
    :cond_1
    return-void
.end method

.method private updateVirusLib()V
    .locals 2

    .prologue
    .line 268
    new-instance v0, Lcom/android/settings/VirusScanService$UpdateVirusLibTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/VirusScanService$UpdateVirusLibTask;-><init>(Lcom/android/settings/VirusScanService;Lcom/android/settings/VirusScanService$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/VirusScanService$UpdateVirusLibTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 269
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/settings/VirusScanService;->mBinder:Lcom/android/settings/VirusScanService$ScanBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 273
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 274
    invoke-direct {p0}, Lcom/android/settings/VirusScanService;->getAppData()V

    .line 275
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 284
    if-eqz p1, :cond_0

    const-string v0, "miui.intent.action.UPDATE_VIRUS_LIB"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    invoke-direct {p0}, Lcom/android/settings/VirusScanService;->updateVirusLib()V

    .line 287
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
