.class Lcom/android/settings/VirusScanAppActivity$1;
.super Ljava/lang/Object;
.source "VirusScanAppActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/VirusScanAppActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/VirusScanAppActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/VirusScanAppActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/settings/VirusScanAppActivity$1;->this$0:Lcom/android/settings/VirusScanAppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity$1;->this$0:Lcom/android/settings/VirusScanAppActivity;

    check-cast p2, Lcom/android/settings/VirusScanService$ScanBinder;

    .end local p2
    iput-object p2, v0, Lcom/android/settings/VirusScanAppActivity;->mBinder:Lcom/android/settings/VirusScanService$ScanBinder;

    .line 118
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity$1;->this$0:Lcom/android/settings/VirusScanAppActivity;

    #calls: Lcom/android/settings/VirusScanAppActivity;->updateData()V
    invoke-static {v0}, Lcom/android/settings/VirusScanAppActivity;->access$000(Lcom/android/settings/VirusScanAppActivity;)V

    .line 120
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity$1;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v1, p0, Lcom/android/settings/VirusScanAppActivity$1;->this$0:Lcom/android/settings/VirusScanAppActivity;

    #calls: Lcom/android/settings/VirusScanAppActivity;->buildScanImp()Lcom/android/settings/VirusScanAppActivity$ScanImp;
    invoke-static {v1}, Lcom/android/settings/VirusScanAppActivity;->access$100(Lcom/android/settings/VirusScanAppActivity;)Lcom/android/settings/VirusScanAppActivity$ScanImp;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/VirusScanAppActivity;->mScanImp:Lcom/android/settings/VirusScanAppActivity$ScanImp;

    .line 122
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity$1;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->mBinder:Lcom/android/settings/VirusScanService$ScanBinder;

    invoke-virtual {v0}, Lcom/android/settings/VirusScanService$ScanBinder;->startScan()V

    .line 123
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity$1;->this$0:Lcom/android/settings/VirusScanAppActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/settings/VirusScanAppActivity;->mBinder:Lcom/android/settings/VirusScanService$ScanBinder;

    .line 128
    return-void
.end method
