.class Lcom/android/settings/VirusScanAppActivity$4;
.super Landroid/os/Handler;
.source "VirusScanAppActivity.java"


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
    .line 163
    iput-object p1, p0, Lcom/android/settings/VirusScanAppActivity$4;->this$0:Lcom/android/settings/VirusScanAppActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 166
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 167
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "index"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 168
    .local v1, index:I
    iget-object v2, p0, Lcom/android/settings/VirusScanAppActivity$4;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v2, v2, Lcom/android/settings/VirusScanAppActivity;->mAdapter:Lcom/android/settings/VirusScanAppActivity$VirusScanAdapter;

    invoke-virtual {v2}, Lcom/android/settings/VirusScanAppActivity$VirusScanAdapter;->notifyDataSetChanged()V

    .line 169
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v4, v2, :cond_1

    .line 170
    iget-object v2, p0, Lcom/android/settings/VirusScanAppActivity$4;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v2, v2, Lcom/android/settings/VirusScanAppActivity;->mContentList:Landroid/widget/ListView;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 171
    iget-object v2, p0, Lcom/android/settings/VirusScanAppActivity$4;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v2, v2, Lcom/android/settings/VirusScanAppActivity;->mProgress:Lmiui/v5/widget/NumberProgressView;

    add-int/lit8 v3, v1, 0x1

    mul-int/lit8 v3, v3, 0x64

    iget-object v4, p0, Lcom/android/settings/VirusScanAppActivity$4;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v4, v4, Lcom/android/settings/VirusScanAppActivity;->mAppData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    div-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lmiui/v5/widget/NumberProgressView;->setProgress(I)Z

    .line 172
    iget-object v2, p0, Lcom/android/settings/VirusScanAppActivity$4;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v2, v2, Lcom/android/settings/VirusScanAppActivity;->mScanImp:Lcom/android/settings/VirusScanAppActivity$ScanImp;

    instance-of v2, v2, Lcom/android/settings/VirusScanAppActivity$NormalScan;

    if-nez v2, :cond_0

    .line 173
    iget-object v2, p0, Lcom/android/settings/VirusScanAppActivity$4;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v3, p0, Lcom/android/settings/VirusScanAppActivity$4;->this$0:Lcom/android/settings/VirusScanAppActivity;

    #calls: Lcom/android/settings/VirusScanAppActivity;->buildScanImp()Lcom/android/settings/VirusScanAppActivity$ScanImp;
    invoke-static {v3}, Lcom/android/settings/VirusScanAppActivity;->access$100(Lcom/android/settings/VirusScanAppActivity;)Lcom/android/settings/VirusScanAppActivity$ScanImp;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/VirusScanAppActivity;->mScanImp:Lcom/android/settings/VirusScanAppActivity$ScanImp;

    .line 186
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 187
    return-void

    .line 175
    :cond_1
    const/4 v2, 0x2

    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v2, v3, :cond_2

    .line 176
    iget-object v2, p0, Lcom/android/settings/VirusScanAppActivity$4;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v2, v2, Lcom/android/settings/VirusScanAppActivity;->mContentList:Landroid/widget/ListView;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 177
    :cond_2
    const/4 v2, 0x3

    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v2, v3, :cond_3

    .line 178
    iget-object v2, p0, Lcom/android/settings/VirusScanAppActivity$4;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v3, p0, Lcom/android/settings/VirusScanAppActivity$4;->this$0:Lcom/android/settings/VirusScanAppActivity;

    #calls: Lcom/android/settings/VirusScanAppActivity;->buildScanImp()Lcom/android/settings/VirusScanAppActivity$ScanImp;
    invoke-static {v3}, Lcom/android/settings/VirusScanAppActivity;->access$100(Lcom/android/settings/VirusScanAppActivity;)Lcom/android/settings/VirusScanAppActivity$ScanImp;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/VirusScanAppActivity;->mScanImp:Lcom/android/settings/VirusScanAppActivity$ScanImp;

    goto :goto_0

    .line 179
    :cond_3
    const/4 v2, 0x4

    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v2, v3, :cond_0

    .line 180
    iget-object v2, p0, Lcom/android/settings/VirusScanAppActivity$4;->this$0:Lcom/android/settings/VirusScanAppActivity;

    #getter for: Lcom/android/settings/VirusScanAppActivity;->mUninstallCount:I
    invoke-static {v2}, Lcom/android/settings/VirusScanAppActivity;->access$300(Lcom/android/settings/VirusScanAppActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/VirusScanAppActivity$4;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v3, v3, Lcom/android/settings/VirusScanAppActivity;->mBinder:Lcom/android/settings/VirusScanService$ScanBinder;

    invoke-virtual {v3}, Lcom/android/settings/VirusScanService$ScanBinder;->getUninstallCount()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 181
    iget-object v2, p0, Lcom/android/settings/VirusScanAppActivity$4;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v2, v2, Lcom/android/settings/VirusScanAppActivity;->mButtonFinish:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 183
    :cond_4
    iget-object v2, p0, Lcom/android/settings/VirusScanAppActivity$4;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v2, v2, Lcom/android/settings/VirusScanAppActivity;->mScanImp:Lcom/android/settings/VirusScanAppActivity$ScanImp;

    invoke-virtual {v2}, Lcom/android/settings/VirusScanAppActivity$ScanImp;->updateUi()V

    goto :goto_0
.end method
