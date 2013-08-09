.class Lcom/android/settings/VirusScanAppActivity$FinishNoRiskScan;
.super Lcom/android/settings/VirusScanAppActivity$ScanImp;
.source "VirusScanAppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/VirusScanAppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FinishNoRiskScan"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/VirusScanAppActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/VirusScanAppActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 456
    iput-object p1, p0, Lcom/android/settings/VirusScanAppActivity$FinishNoRiskScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    invoke-direct {p0, p1}, Lcom/android/settings/VirusScanAppActivity$ScanImp;-><init>(Lcom/android/settings/VirusScanAppActivity;)V

    return-void
.end method


# virtual methods
.method getState()Lcom/android/settings/VirusScanAppActivity$RunState;
    .locals 1

    .prologue
    .line 464
    sget-object v0, Lcom/android/settings/VirusScanAppActivity$RunState;->RS_NoRisk:Lcom/android/settings/VirusScanAppActivity$RunState;

    return-object v0
.end method

.method getStringDesp()Ljava/lang/String;
    .locals 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity$FinishNoRiskScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    invoke-virtual {v0}, Lcom/android/settings/VirusScanAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0894

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateUi()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 474
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity$FinishNoRiskScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->mProgress:Lmiui/v5/widget/NumberProgressView;

    invoke-virtual {v0, v2}, Lmiui/v5/widget/NumberProgressView;->setVisibility(I)V

    .line 475
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity$FinishNoRiskScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->mTitle:Landroid/widget/LinearLayout;

    const v1, 0x7f020195

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 476
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity$FinishNoRiskScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->mButtonFinish:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 477
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity$FinishNoRiskScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->mButtonScan:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 479
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity$FinishNoRiskScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->mStatus:Landroid/widget/TextView;

    const v1, 0x7f0c0894

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 480
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity$FinishNoRiskScan;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->mInfo:Landroid/widget/TextView;

    const v1, 0x7f0c0895

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 481
    return-void
.end method
