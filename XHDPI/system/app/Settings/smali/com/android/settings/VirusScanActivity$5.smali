.class Lcom/android/settings/VirusScanActivity$5;
.super Ljava/lang/Object;
.source "VirusScanActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/VirusScanActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/VirusScanActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/VirusScanActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 297
    iput-object p1, p0, Lcom/android/settings/VirusScanActivity$5;->this$0:Lcom/android/settings/VirusScanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/settings/VirusScanActivity$5;->this$0:Lcom/android/settings/VirusScanActivity;

    check-cast p2, Lcom/android/settings/VirusScanService$ScanBinder;

    #setter for: Lcom/android/settings/VirusScanActivity;->mBinder:Lcom/android/settings/VirusScanService$ScanBinder;
    invoke-static {v0, p2}, Lcom/android/settings/VirusScanActivity;->access$702(Lcom/android/settings/VirusScanActivity;Lcom/android/settings/VirusScanService$ScanBinder;)Lcom/android/settings/VirusScanService$ScanBinder;

    .line 301
    iget-object v0, p0, Lcom/android/settings/VirusScanActivity$5;->this$0:Lcom/android/settings/VirusScanActivity;

    #getter for: Lcom/android/settings/VirusScanActivity;->mBinder:Lcom/android/settings/VirusScanService$ScanBinder;
    invoke-static {v0}, Lcom/android/settings/VirusScanActivity;->access$700(Lcom/android/settings/VirusScanActivity;)Lcom/android/settings/VirusScanService$ScanBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/VirusScanActivity$5;->this$0:Lcom/android/settings/VirusScanActivity;

    invoke-virtual {v0, v1}, Lcom/android/settings/VirusScanService$ScanBinder;->setOnVirusLibUpdateListener(Lcom/android/settings/VirusScanService$OnVirusLibUpdateListener;)V

    .line 302
    iget-object v0, p0, Lcom/android/settings/VirusScanActivity$5;->this$0:Lcom/android/settings/VirusScanActivity;

    #getter for: Lcom/android/settings/VirusScanActivity;->mBinder:Lcom/android/settings/VirusScanService$ScanBinder;
    invoke-static {v0}, Lcom/android/settings/VirusScanActivity;->access$700(Lcom/android/settings/VirusScanActivity;)Lcom/android/settings/VirusScanService$ScanBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/VirusScanActivity$5;->this$0:Lcom/android/settings/VirusScanActivity;

    #getter for: Lcom/android/settings/VirusScanActivity;->mBinder:Lcom/android/settings/VirusScanService$ScanBinder;
    invoke-static {v0}, Lcom/android/settings/VirusScanActivity;->access$700(Lcom/android/settings/VirusScanActivity;)Lcom/android/settings/VirusScanService$ScanBinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/VirusScanService$ScanBinder;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/VirusScanActivity$5;->this$0:Lcom/android/settings/VirusScanActivity;

    const-class v2, Lcom/android/settings/VirusScanAppActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 304
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 305
    iget-object v1, p0, Lcom/android/settings/VirusScanActivity$5;->this$0:Lcom/android/settings/VirusScanActivity;

    invoke-virtual {v1, v0}, Lcom/android/settings/VirusScanActivity;->startActivity(Landroid/content/Intent;)V

    .line 307
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/settings/VirusScanActivity$5;->this$0:Lcom/android/settings/VirusScanActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/VirusScanActivity;->mBinder:Lcom/android/settings/VirusScanService$ScanBinder;
    invoke-static {v0, v1}, Lcom/android/settings/VirusScanActivity;->access$702(Lcom/android/settings/VirusScanActivity;Lcom/android/settings/VirusScanService$ScanBinder;)Lcom/android/settings/VirusScanService$ScanBinder;

    .line 312
    return-void
.end method
