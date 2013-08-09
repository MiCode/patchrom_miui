.class Lcom/android/settings/wifi/WifiStatusTest$3;
.super Ljava/lang/Object;
.source "WifiStatusTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiStatusTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiStatusTest;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiStatusTest;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/settings/wifi/WifiStatusTest$3;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/16 v6, 0x2e

    .line 177
    iget-object v4, p0, Lcom/android/settings/wifi/WifiStatusTest$3;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    #getter for: Lcom/android/settings/wifi/WifiStatusTest;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v4}, Lcom/android/settings/wifi/WifiStatusTest;->access$600(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 179
    .local v3, wifiInfo:Landroid/net/wifi/WifiInfo;
    iget-object v4, p0, Lcom/android/settings/wifi/WifiStatusTest$3;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiStatusTest$3;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    #getter for: Lcom/android/settings/wifi/WifiStatusTest;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v5}, Lcom/android/settings/wifi/WifiStatusTest;->access$600(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v5

    #calls: Lcom/android/settings/wifi/WifiStatusTest;->setWifiStateText(I)V
    invoke-static {v4, v5}, Lcom/android/settings/wifi/WifiStatusTest;->access$700(Lcom/android/settings/wifi/WifiStatusTest;I)V

    .line 180
    iget-object v4, p0, Lcom/android/settings/wifi/WifiStatusTest$3;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    #getter for: Lcom/android/settings/wifi/WifiStatusTest;->mBSSID:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/settings/wifi/WifiStatusTest;->access$800(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v4, p0, Lcom/android/settings/wifi/WifiStatusTest$3;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    #getter for: Lcom/android/settings/wifi/WifiStatusTest;->mHiddenSSID:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/settings/wifi/WifiStatusTest;->access$900(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getHiddenSSID()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    .line 183
    .local v0, ipAddr:I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 184
    .local v1, ipBuf:Ljava/lang/StringBuffer;
    and-int/lit16 v4, v0, 0xff

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    ushr-int/lit8 v0, v0, 0x8

    and-int/lit16 v5, v0, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    ushr-int/lit8 v0, v0, 0x8

    and-int/lit16 v5, v0, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    ushr-int/lit8 v0, v0, 0x8

    and-int/lit16 v5, v0, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 189
    iget-object v4, p0, Lcom/android/settings/wifi/WifiStatusTest$3;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    #getter for: Lcom/android/settings/wifi/WifiStatusTest;->mIPAddr:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/settings/wifi/WifiStatusTest;->access$1000(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v4, p0, Lcom/android/settings/wifi/WifiStatusTest$3;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    #getter for: Lcom/android/settings/wifi/WifiStatusTest;->mLinkSpeed:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/settings/wifi/WifiStatusTest;->access$1100(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Mbps"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v4, p0, Lcom/android/settings/wifi/WifiStatusTest$3;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    #getter for: Lcom/android/settings/wifi/WifiStatusTest;->mMACAddr:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/settings/wifi/WifiStatusTest;->access$1200(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v4, p0, Lcom/android/settings/wifi/WifiStatusTest$3;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    #getter for: Lcom/android/settings/wifi/WifiStatusTest;->mNetworkId:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/settings/wifi/WifiStatusTest;->access$1300(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v4, p0, Lcom/android/settings/wifi/WifiStatusTest$3;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    #getter for: Lcom/android/settings/wifi/WifiStatusTest;->mRSSI:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/settings/wifi/WifiStatusTest;->access$1400(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v4, p0, Lcom/android/settings/wifi/WifiStatusTest$3;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    #getter for: Lcom/android/settings/wifi/WifiStatusTest;->mSSID:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/settings/wifi/WifiStatusTest;->access$1500(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v2

    .line 197
    .local v2, supplicantState:Landroid/net/wifi/SupplicantState;
    iget-object v4, p0, Lcom/android/settings/wifi/WifiStatusTest$3;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    #calls: Lcom/android/settings/wifi/WifiStatusTest;->setSupplicantStateText(Landroid/net/wifi/SupplicantState;)V
    invoke-static {v4, v2}, Lcom/android/settings/wifi/WifiStatusTest;->access$1600(Lcom/android/settings/wifi/WifiStatusTest;Landroid/net/wifi/SupplicantState;)V

    .line 198
    return-void
.end method
