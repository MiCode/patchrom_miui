.class public Lcom/android/settings/VirusScanService$ScanBinder;
.super Landroid/os/Binder;
.source "VirusScanService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/VirusScanService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScanBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/VirusScanService;


# direct methods
.method public constructor <init>(Lcom/android/settings/VirusScanService;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/settings/VirusScanService$ScanBinder;->this$0:Lcom/android/settings/VirusScanService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public Finish()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/settings/VirusScanService$ScanBinder;->this$0:Lcom/android/settings/VirusScanService;

    const/4 v1, 0x3

    #setter for: Lcom/android/settings/VirusScanService;->mScanState:I
    invoke-static {v0, v1}, Lcom/android/settings/VirusScanService;->access$102(Lcom/android/settings/VirusScanService;I)I

    .line 152
    return-void
.end method

.method public getData(I)Lcom/android/settings/ScanAppData;
    .locals 1
    .parameter "index"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/settings/VirusScanService$ScanBinder;->this$0:Lcom/android/settings/VirusScanService;

    #getter for: Lcom/android/settings/VirusScanService;->mAppData:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/settings/VirusScanService;->access$000(Lcom/android/settings/VirusScanService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ScanAppData;

    return-object v0
.end method

.method public getRiskCount()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/settings/VirusScanService$ScanBinder;->this$0:Lcom/android/settings/VirusScanService;

    #getter for: Lcom/android/settings/VirusScanService;->mRiskDataIndex:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/settings/VirusScanService;->access$900(Lcom/android/settings/VirusScanService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getRiskItemIndex(I)I
    .locals 1
    .parameter "pos"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/settings/VirusScanService$ScanBinder;->this$0:Lcom/android/settings/VirusScanService;

    #getter for: Lcom/android/settings/VirusScanService;->mRiskDataIndex:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/settings/VirusScanService;->access$900(Lcom/android/settings/VirusScanService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getScanDataCount()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/VirusScanService$ScanBinder;->this$0:Lcom/android/settings/VirusScanService;

    #getter for: Lcom/android/settings/VirusScanService;->mAppData:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/settings/VirusScanService;->access$000(Lcom/android/settings/VirusScanService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getScannedCount()I
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings/VirusScanService$ScanBinder;->this$0:Lcom/android/settings/VirusScanService;

    #getter for: Lcom/android/settings/VirusScanService;->mScannedCount:I
    invoke-static {v0}, Lcom/android/settings/VirusScanService;->access$800(Lcom/android/settings/VirusScanService;)I

    move-result v0

    return v0
.end method

.method public getSelectedRiskCount()I
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/settings/VirusScanService$ScanBinder;->this$0:Lcom/android/settings/VirusScanService;

    #getter for: Lcom/android/settings/VirusScanService;->mSelectedRiskCount:I
    invoke-static {v0}, Lcom/android/settings/VirusScanService;->access$500(Lcom/android/settings/VirusScanService;)I

    move-result v0

    return v0
.end method

.method public getUninstallCount()I
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/settings/VirusScanService$ScanBinder;->this$0:Lcom/android/settings/VirusScanService;

    #getter for: Lcom/android/settings/VirusScanService;->mUninstalledCount:I
    invoke-static {v0}, Lcom/android/settings/VirusScanService;->access$1000(Lcom/android/settings/VirusScanService;)I

    move-result v0

    return v0
.end method

.method public isForceStopped()Z
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/settings/VirusScanService$ScanBinder;->this$0:Lcom/android/settings/VirusScanService;

    #getter for: Lcom/android/settings/VirusScanService;->mScanState:I
    invoke-static {v0}, Lcom/android/settings/VirusScanService;->access$100(Lcom/android/settings/VirusScanService;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 155
    iget-object v1, p0, Lcom/android/settings/VirusScanService$ScanBinder;->this$0:Lcom/android/settings/VirusScanService;

    #getter for: Lcom/android/settings/VirusScanService;->mScanState:I
    invoke-static {v1}, Lcom/android/settings/VirusScanService;->access$100(Lcom/android/settings/VirusScanService;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public selectUninstallApp(IZ)V
    .locals 3
    .parameter "index"
    .parameter "selected"

    .prologue
    .line 108
    iget-object v1, p0, Lcom/android/settings/VirusScanService$ScanBinder;->this$0:Lcom/android/settings/VirusScanService;

    #getter for: Lcom/android/settings/VirusScanService;->mAppData:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/settings/VirusScanService;->access$000(Lcom/android/settings/VirusScanService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ScanAppData;

    .line 109
    .local v0, data:Lcom/android/settings/ScanAppData;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/settings/ScanState;->ESS_RISK:Lcom/android/settings/ScanState;

    iget-object v2, v0, Lcom/android/settings/ScanAppData;->mState:Lcom/android/settings/ScanState;

    if-ne v1, v2, :cond_0

    .line 110
    if-eqz p2, :cond_1

    .line 111
    iget-object v1, p0, Lcom/android/settings/VirusScanService$ScanBinder;->this$0:Lcom/android/settings/VirusScanService;

    invoke-static {v1}, Lcom/android/settings/VirusScanService;->access$504(Lcom/android/settings/VirusScanService;)I

    .line 114
    :goto_0
    iput-boolean p2, v0, Lcom/android/settings/ScanAppData;->mChecked:Z

    .line 116
    :cond_0
    return-void

    .line 113
    :cond_1
    iget-object v1, p0, Lcom/android/settings/VirusScanService$ScanBinder;->this$0:Lcom/android/settings/VirusScanService;

    invoke-static {v1}, Lcom/android/settings/VirusScanService;->access$506(Lcom/android/settings/VirusScanService;)I

    goto :goto_0
.end method

.method public setOnVirusLibUpdateListener(Lcom/android/settings/VirusScanService$OnVirusLibUpdateListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/settings/VirusScanService$ScanBinder;->this$0:Lcom/android/settings/VirusScanService;

    #setter for: Lcom/android/settings/VirusScanService;->mOnVirusLibUpdateListener:Lcom/android/settings/VirusScanService$OnVirusLibUpdateListener;
    invoke-static {v0, p1}, Lcom/android/settings/VirusScanService;->access$302(Lcom/android/settings/VirusScanService;Lcom/android/settings/VirusScanService$OnVirusLibUpdateListener;)Lcom/android/settings/VirusScanService$OnVirusLibUpdateListener;

    .line 101
    return-void
.end method

.method public setOnVirusScanListener(Lcom/android/settings/VirusScanService$OnVirusScanListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/settings/VirusScanService$ScanBinder;->this$0:Lcom/android/settings/VirusScanService;

    #setter for: Lcom/android/settings/VirusScanService;->mVirusScanListener:Lcom/android/settings/VirusScanService$OnVirusScanListener;
    invoke-static {v0, p1}, Lcom/android/settings/VirusScanService;->access$202(Lcom/android/settings/VirusScanService;Lcom/android/settings/VirusScanService$OnVirusScanListener;)Lcom/android/settings/VirusScanService$OnVirusScanListener;

    .line 97
    return-void
.end method

.method public startScan()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/settings/VirusScanService$ScanBinder;->this$0:Lcom/android/settings/VirusScanService;

    #calls: Lcom/android/settings/VirusScanService;->startScan()V
    invoke-static {v0}, Lcom/android/settings/VirusScanService;->access$600(Lcom/android/settings/VirusScanService;)V

    .line 120
    return-void
.end method

.method public stopScan()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/settings/VirusScanService$ScanBinder;->this$0:Lcom/android/settings/VirusScanService;

    const/4 v1, 0x2

    #setter for: Lcom/android/settings/VirusScanService;->mScanState:I
    invoke-static {v0, v1}, Lcom/android/settings/VirusScanService;->access$102(Lcom/android/settings/VirusScanService;I)I

    .line 148
    return-void
.end method

.method public uninstallApps()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/settings/VirusScanService$ScanBinder;->this$0:Lcom/android/settings/VirusScanService;

    #calls: Lcom/android/settings/VirusScanService;->uninstallApps()V
    invoke-static {v0}, Lcom/android/settings/VirusScanService;->access$400(Lcom/android/settings/VirusScanService;)V

    .line 105
    return-void
.end method

.method public updateVirusLib()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/settings/VirusScanService$ScanBinder;->this$0:Lcom/android/settings/VirusScanService;

    #calls: Lcom/android/settings/VirusScanService;->updateVirusLib()V
    invoke-static {v0}, Lcom/android/settings/VirusScanService;->access$700(Lcom/android/settings/VirusScanService;)V

    .line 124
    return-void
.end method
