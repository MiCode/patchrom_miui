.class Lcom/android/settings/VirusScanService$PackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "VirusScanService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/VirusScanService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageDeleteObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/VirusScanService;


# direct methods
.method private constructor <init>(Lcom/android/settings/VirusScanService;)V
    .locals 0
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/settings/VirusScanService$PackageDeleteObserver;->this$0:Lcom/android/settings/VirusScanService;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/VirusScanService;Lcom/android/settings/VirusScanService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/android/settings/VirusScanService$PackageDeleteObserver;-><init>(Lcom/android/settings/VirusScanService;)V

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 5
    .parameter "packageName"
    .parameter "returnCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 164
    iget-object v4, p0, Lcom/android/settings/VirusScanService$PackageDeleteObserver;->this$0:Lcom/android/settings/VirusScanService;

    #getter for: Lcom/android/settings/VirusScanService;->mAppData:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/settings/VirusScanService;->access$000(Lcom/android/settings/VirusScanService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 165
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 166
    iget-object v4, p0, Lcom/android/settings/VirusScanService$PackageDeleteObserver;->this$0:Lcom/android/settings/VirusScanService;

    #getter for: Lcom/android/settings/VirusScanService;->mAppData:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/settings/VirusScanService;->access$000(Lcom/android/settings/VirusScanService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ScanAppData;

    .line 167
    .local v0, data:Lcom/android/settings/ScanAppData;
    iget-object v4, v0, Lcom/android/settings/ScanAppData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 168
    sget-object v4, Lcom/android/settings/ScanState;->ESS_UNINSTALLED:Lcom/android/settings/ScanState;

    iput-object v4, v0, Lcom/android/settings/ScanAppData;->mState:Lcom/android/settings/ScanState;

    .line 169
    iget-object v4, p0, Lcom/android/settings/VirusScanService$PackageDeleteObserver;->this$0:Lcom/android/settings/VirusScanService;

    invoke-static {v4}, Lcom/android/settings/VirusScanService;->access$1004(Lcom/android/settings/VirusScanService;)I

    .line 170
    iget-object v4, p0, Lcom/android/settings/VirusScanService$PackageDeleteObserver;->this$0:Lcom/android/settings/VirusScanService;

    invoke-static {v4}, Lcom/android/settings/VirusScanService;->access$506(Lcom/android/settings/VirusScanService;)I

    .line 171
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    iget-object v4, p0, Lcom/android/settings/VirusScanService$PackageDeleteObserver;->this$0:Lcom/android/settings/VirusScanService;

    #getter for: Lcom/android/settings/VirusScanService;->mRiskDataIndex:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/settings/VirusScanService;->access$900(Lcom/android/settings/VirusScanService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 172
    iget-object v4, p0, Lcom/android/settings/VirusScanService$PackageDeleteObserver;->this$0:Lcom/android/settings/VirusScanService;

    #getter for: Lcom/android/settings/VirusScanService;->mRiskDataIndex:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/settings/VirusScanService;->access$900(Lcom/android/settings/VirusScanService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v1, :cond_2

    .line 173
    iget-object v4, p0, Lcom/android/settings/VirusScanService$PackageDeleteObserver;->this$0:Lcom/android/settings/VirusScanService;

    #getter for: Lcom/android/settings/VirusScanService;->mRiskDataIndex:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/settings/VirusScanService;->access$900(Lcom/android/settings/VirusScanService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 177
    :cond_0
    iget-object v4, p0, Lcom/android/settings/VirusScanService$PackageDeleteObserver;->this$0:Lcom/android/settings/VirusScanService;

    #getter for: Lcom/android/settings/VirusScanService;->mVirusScanListener:Lcom/android/settings/VirusScanService$OnVirusScanListener;
    invoke-static {v4}, Lcom/android/settings/VirusScanService;->access$200(Lcom/android/settings/VirusScanService;)Lcom/android/settings/VirusScanService$OnVirusScanListener;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 178
    iget-object v4, p0, Lcom/android/settings/VirusScanService$PackageDeleteObserver;->this$0:Lcom/android/settings/VirusScanService;

    #getter for: Lcom/android/settings/VirusScanService;->mVirusScanListener:Lcom/android/settings/VirusScanService$OnVirusScanListener;
    invoke-static {v4}, Lcom/android/settings/VirusScanService;->access$200(Lcom/android/settings/VirusScanService;)Lcom/android/settings/VirusScanService$OnVirusScanListener;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/android/settings/VirusScanService$OnVirusScanListener;->onItemUninstalled(I)V

    .line 183
    .end local v0           #data:Lcom/android/settings/ScanAppData;
    .end local v2           #j:I
    :cond_1
    return-void

    .line 171
    .restart local v0       #data:Lcom/android/settings/ScanAppData;
    .restart local v2       #j:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 165
    .end local v2           #j:I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
