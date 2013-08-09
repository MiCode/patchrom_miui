.class Lcom/android/settings/VirusScanAppActivity$FinishRiskScan$2;
.super Ljava/lang/Object;
.source "VirusScanAppActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/VirusScanAppActivity$FinishRiskScan;->updateListView(Lcom/android/settings/VirusScanAppActivity$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/VirusScanAppActivity$FinishRiskScan;

.field final synthetic val$data:Lcom/android/settings/VirusScanAppActivity$AppData;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/settings/VirusScanAppActivity$FinishRiskScan;Lcom/android/settings/VirusScanAppActivity$AppData;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 531
    iput-object p1, p0, Lcom/android/settings/VirusScanAppActivity$FinishRiskScan$2;->this$1:Lcom/android/settings/VirusScanAppActivity$FinishRiskScan;

    iput-object p2, p0, Lcom/android/settings/VirusScanAppActivity$FinishRiskScan$2;->val$data:Lcom/android/settings/VirusScanAppActivity$AppData;

    iput p3, p0, Lcom/android/settings/VirusScanAppActivity$FinishRiskScan$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity$FinishRiskScan$2;->val$data:Lcom/android/settings/VirusScanAppActivity$AppData;

    iput-boolean p2, v0, Lcom/android/settings/VirusScanAppActivity$AppData;->mChecked:Z

    .line 535
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity$FinishRiskScan$2;->this$1:Lcom/android/settings/VirusScanAppActivity$FinishRiskScan;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity$FinishRiskScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->mBinder:Lcom/android/settings/VirusScanService$ScanBinder;

    iget-object v1, p0, Lcom/android/settings/VirusScanAppActivity$FinishRiskScan$2;->this$1:Lcom/android/settings/VirusScanAppActivity$FinishRiskScan;

    iget-object v1, v1, Lcom/android/settings/VirusScanAppActivity$FinishRiskScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v1, v1, Lcom/android/settings/VirusScanAppActivity;->mBinder:Lcom/android/settings/VirusScanService$ScanBinder;

    iget v2, p0, Lcom/android/settings/VirusScanAppActivity$FinishRiskScan$2;->val$position:I

    invoke-virtual {v1, v2}, Lcom/android/settings/VirusScanService$ScanBinder;->getRiskItemIndex(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/android/settings/VirusScanService$ScanBinder;->selectUninstallApp(IZ)V

    .line 537
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity$FinishRiskScan$2;->this$1:Lcom/android/settings/VirusScanAppActivity$FinishRiskScan;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity$FinishRiskScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->mBinder:Lcom/android/settings/VirusScanService$ScanBinder;

    invoke-virtual {v0}, Lcom/android/settings/VirusScanService$ScanBinder;->getSelectedRiskCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity$FinishRiskScan$2;->this$1:Lcom/android/settings/VirusScanAppActivity$FinishRiskScan;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity$FinishRiskScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->mButtonFinish:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/VirusScanAppActivity$FinishRiskScan$2;->this$1:Lcom/android/settings/VirusScanAppActivity$FinishRiskScan;

    iget-object v1, v1, Lcom/android/settings/VirusScanAppActivity$FinishRiskScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    invoke-virtual {v1}, Lcom/android/settings/VirusScanAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0891

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/VirusScanAppActivity$FinishRiskScan$2;->this$1:Lcom/android/settings/VirusScanAppActivity$FinishRiskScan;

    iget-object v4, v4, Lcom/android/settings/VirusScanAppActivity$FinishRiskScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v4, v4, Lcom/android/settings/VirusScanAppActivity;->mBinder:Lcom/android/settings/VirusScanService$ScanBinder;

    invoke-virtual {v4}, Lcom/android/settings/VirusScanService$ScanBinder;->getSelectedRiskCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 541
    :goto_0
    return-void

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity$FinishRiskScan$2;->this$1:Lcom/android/settings/VirusScanAppActivity$FinishRiskScan;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity$FinishRiskScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->mButtonFinish:Landroid/widget/Button;

    const v1, 0x7f0c088f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method
