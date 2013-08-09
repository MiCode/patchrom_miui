.class Lcom/android/settings/VirusScanAppActivity$NormalScan;
.super Lcom/android/settings/VirusScanAppActivity$ScanImp;
.source "VirusScanAppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/VirusScanAppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NormalScan"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/VirusScanAppActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/VirusScanAppActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 377
    iput-object p1, p0, Lcom/android/settings/VirusScanAppActivity$NormalScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    invoke-direct {p0, p1}, Lcom/android/settings/VirusScanAppActivity$ScanImp;-><init>(Lcom/android/settings/VirusScanAppActivity;)V

    return-void
.end method


# virtual methods
.method getState()Lcom/android/settings/VirusScanAppActivity$RunState;
    .locals 1

    .prologue
    .line 387
    sget-object v0, Lcom/android/settings/VirusScanAppActivity$RunState;->RS_Scanning:Lcom/android/settings/VirusScanAppActivity$RunState;

    return-object v0
.end method

.method getStringDesp()Ljava/lang/String;
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity$NormalScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    invoke-virtual {v0}, Lcom/android/settings/VirusScanAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c088a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onScanClick()V
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity$NormalScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->mButtonScan:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 382
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity$NormalScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->mBinder:Lcom/android/settings/VirusScanService$ScanBinder;

    invoke-virtual {v0}, Lcom/android/settings/VirusScanService$ScanBinder;->stopScan()V

    .line 383
    return-void
.end method

.method public updateUi()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 397
    iget-object v1, p0, Lcom/android/settings/VirusScanAppActivity$NormalScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v1, v1, Lcom/android/settings/VirusScanAppActivity;->mBinder:Lcom/android/settings/VirusScanService$ScanBinder;

    invoke-virtual {v1}, Lcom/android/settings/VirusScanService$ScanBinder;->getScannedCount()I

    move-result v0

    .line 398
    .local v0, scannedCount:I
    iget-object v1, p0, Lcom/android/settings/VirusScanAppActivity$NormalScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v1, v1, Lcom/android/settings/VirusScanAppActivity;->mContentList:Landroid/widget/ListView;

    add-int/lit8 v2, v0, -0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 399
    iget-object v1, p0, Lcom/android/settings/VirusScanAppActivity$NormalScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v1, v1, Lcom/android/settings/VirusScanAppActivity;->mProgress:Lmiui/v5/widget/NumberProgressView;

    invoke-virtual {v1, v4}, Lmiui/v5/widget/NumberProgressView;->setVisibility(I)V

    .line 400
    iget-object v1, p0, Lcom/android/settings/VirusScanAppActivity$NormalScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v1, v1, Lcom/android/settings/VirusScanAppActivity;->mProgress:Lmiui/v5/widget/NumberProgressView;

    mul-int/lit8 v2, v0, 0x64

    iget-object v3, p0, Lcom/android/settings/VirusScanAppActivity$NormalScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v3, v3, Lcom/android/settings/VirusScanAppActivity;->mAppData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    div-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lmiui/v5/widget/NumberProgressView;->setProgress(I)Z

    .line 401
    iget-object v1, p0, Lcom/android/settings/VirusScanAppActivity$NormalScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v1, v1, Lcom/android/settings/VirusScanAppActivity;->mTitle:Landroid/widget/LinearLayout;

    const v2, 0x7f020198

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 402
    iget-object v1, p0, Lcom/android/settings/VirusScanAppActivity$NormalScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v1, v1, Lcom/android/settings/VirusScanAppActivity;->mButtonFinish:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 403
    iget-object v1, p0, Lcom/android/settings/VirusScanAppActivity$NormalScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v1, v1, Lcom/android/settings/VirusScanAppActivity;->mButtonScan:Landroid/widget/Button;

    const v2, 0x7f0c088e

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 404
    iget-object v1, p0, Lcom/android/settings/VirusScanAppActivity$NormalScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v1, v1, Lcom/android/settings/VirusScanAppActivity;->mButtonScan:Landroid/widget/Button;

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 405
    iget-object v1, p0, Lcom/android/settings/VirusScanAppActivity$NormalScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v1, v1, Lcom/android/settings/VirusScanAppActivity;->mContentList:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 407
    iget-object v1, p0, Lcom/android/settings/VirusScanAppActivity$NormalScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v1, v1, Lcom/android/settings/VirusScanAppActivity;->mStatus:Landroid/widget/TextView;

    const v2, 0x7f0c0888

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 408
    iget-object v1, p0, Lcom/android/settings/VirusScanAppActivity$NormalScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v1, v1, Lcom/android/settings/VirusScanAppActivity;->mInfo:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    return-void
.end method
