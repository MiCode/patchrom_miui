.class public Lcom/android/settings/wifi/WifiNotifyDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "WifiNotifyDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mNetworkId:I

.field private mSsid:Ljava/lang/String;

.field private mWm:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private createDialog()V
    .locals 4

    .prologue
    const/16 v3, 0xf

    const/4 v2, 0x5

    .line 53
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNotifyDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 54
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x108009b

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 55
    const v1, 0x7f0c0b43

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiNotifyDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 56
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiNotifyDialog;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 57
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 58
    iput v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingLeft:I

    .line 59
    iput v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingRight:I

    .line 60
    iput v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingTop:I

    .line 61
    iput v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingBottom:I

    .line 62
    const v1, 0x1040013

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiNotifyDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 63
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 64
    const v1, 0x1040009

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiNotifyDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 65
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiNotifyDialog;->setupAlert()V

    .line 67
    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 5

    .prologue
    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createView mSsid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiNotifyDialog;->mSsid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/wifi/WifiNotifyDialog;->log(Ljava/lang/String;)V

    .line 71
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 72
    .local v0, messageView:Landroid/widget/TextView;
    const v1, 0x7f0c0bb5

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/wifi/WifiNotifyDialog;->mSsid:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/wifi/WifiNotifyDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 26
    const-string v0, "WifiNotifyDialog"

    invoke-static {v0, p0}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-void
.end method

.method private onCancel()V
    .locals 2

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCancel mNetworkId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/wifi/WifiNotifyDialog;->mNetworkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/WifiNotifyDialog;->log(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNotifyDialog;->mWm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->suspendNotification()Z

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiNotifyDialog;->finish()V

    .line 92
    return-void
.end method

.method private onOK()V
    .locals 3

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOK mNetworkId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/wifi/WifiNotifyDialog;->mNetworkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/WifiNotifyDialog;->log(Ljava/lang/String;)V

    .line 83
    const-string v0, "onOK auto connect AP"

    invoke-static {v0}, Lcom/android/settings/wifi/WifiNotifyDialog;->log(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNotifyDialog;->mWm:Landroid/net/wifi/WifiManager;

    iget v1, p0, Lcom/android/settings/wifi/WifiNotifyDialog;->mNetworkId:I

    iget-object v2, p0, Lcom/android/settings/wifi/WifiNotifyDialog;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiNotifyDialog;->finish()V

    .line 86
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 95
    packed-switch p2, :pswitch_data_0

    .line 103
    :goto_0
    return-void

    .line 97
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiNotifyDialog;->onOK()V

    goto :goto_0

    .line 100
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiNotifyDialog;->onCancel()V

    goto :goto_0

    .line 95
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, -0x1

    .line 31
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiNotifyDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiNotifyDialog;->mWm:Landroid/net/wifi/WifiManager;

    .line 33
    new-instance v2, Lcom/android/settings/wifi/WifiNotifyDialog$1;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiNotifyDialog$1;-><init>(Lcom/android/settings/wifi/WifiNotifyDialog;)V

    iput-object v2, p0, Lcom/android/settings/wifi/WifiNotifyDialog;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 40
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiNotifyDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 41
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, action:Ljava/lang/String;
    const-string v2, "ssid"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiNotifyDialog;->mSsid:Ljava/lang/String;

    .line 43
    const-string v2, "network_id"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/wifi/WifiNotifyDialog;->mNetworkId:I

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiNotifyDialog onCreate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/wifi/WifiNotifyDialog;->log(Ljava/lang/String;)V

    .line 45
    const-string v2, "android.net.wifi.WIFI_NOTIFICATION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/settings/wifi/WifiNotifyDialog;->mNetworkId:I

    if-ne v2, v4, :cond_1

    .line 46
    :cond_0
    const-string v2, "WifiNotifyDialog"

    const-string v3, "Error: this activity may be started only with intent WIFI_NOTIFICATION_ACTION"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiNotifyDialog;->finish()V

    .line 49
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiNotifyDialog;->createDialog()V

    .line 50
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 78
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 79
    return-void
.end method
