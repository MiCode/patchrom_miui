.class public Lcom/android/settings/wifi/MiuiAccessPoint;
.super Lcom/android/settings/wifi/AccessPoint;
.source "MiuiAccessPoint.java"


# instance fields
.field private mArrowClickListener:Landroid/view/View$OnClickListener;

.field private mHasDetail:Z

.field private mIsSortBySignal:Z

.field private mIsWifiShare:Z

.field private mWifiShareConnectListener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V
    .locals 1
    .parameter "context"
    .parameter "result"

    .prologue
    const/4 v0, 0x1

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    .line 31
    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiAccessPoint;->mHasDetail:Z

    .line 33
    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiAccessPoint;->mIsSortBySignal:Z

    .line 46
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .parameter "context"
    .parameter "config"

    .prologue
    const/4 v0, 0x1

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 31
    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiAccessPoint;->mHasDetail:Z

    .line 33
    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiAccessPoint;->mIsSortBySignal:Z

    .line 42
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1
    .parameter "context"
    .parameter "savedState"

    .prologue
    const/4 v0, 0x1

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 31
    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiAccessPoint;->mHasDetail:Z

    .line 33
    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiAccessPoint;->mIsSortBySignal:Z

    .line 38
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 3
    .parameter "preference"

    .prologue
    .line 105
    iget-boolean v1, p0, Lcom/android/settings/wifi/MiuiAccessPoint;->mIsSortBySignal:Z

    if-eqz v1, :cond_0

    .line 106
    invoke-super {p0, p1}, Lcom/android/settings/wifi/AccessPoint;->compareTo(Landroid/preference/Preference;)I

    move-result v1

    .line 113
    :goto_0
    return v1

    .line 108
    :cond_0
    instance-of v1, p1, Lcom/android/settings/wifi/AccessPoint;

    if-nez v1, :cond_1

    .line 109
    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 111
    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 113
    .local v0, other:Lcom/android/settings/wifi/AccessPoint;
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAccessPoint;->ssid:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    check-cast p1, Landroid/preference/Preference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/MiuiAccessPoint;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public getWifiConfigurationSecurity()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 120
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-object v0

    .line 124
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 125
    const-string v0, "WPA"

    goto :goto_0

    .line 126
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    .line 132
    const-string v0, "WEP"

    goto :goto_0
.end method

.method public isConnectedOrConnecting()Z
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo$DetailedState;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo$DetailedState;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWifiShare()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiAccessPoint;->mIsWifiShare:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/4 v6, 0x0

    .line 50
    invoke-super {p0, p1}, Lcom/android/settings/wifi/AccessPoint;->onBindView(Landroid/view/View;)V

    .line 51
    const v4, 0x7f090017

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 52
    .local v0, detailArrow:Landroid/widget/ImageView;
    const v4, 0x602012b

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 53
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiAccessPoint;->mArrowClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-boolean v4, p0, Lcom/android/settings/wifi/MiuiAccessPoint;->mHasDetail:Z

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 56
    const v4, 0x7f09015a

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 57
    .local v1, siginalBg:Landroid/view/View;
    const v4, 0x7f09015c

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 58
    .local v2, signal:Landroid/widget/ImageView;
    const v4, 0x7f09015b

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 59
    .local v3, signalText:Landroid/widget/TextView;
    iget-boolean v4, p0, Lcom/android/settings/wifi/MiuiAccessPoint;->mIsWifiShare:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/wifi/MiuiAccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/wifi/MiuiAccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v4}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v5}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 60
    :cond_0
    const v4, 0x7f0201a7

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 61
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiAccessPoint;->mWifiShareConnectListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    iget v4, p0, Lcom/android/settings/wifi/MiuiAccessPoint;->mRssi:I

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_2

    .line 64
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    :cond_1
    :goto_0
    return-void

    .line 66
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiAccessPoint;->getLevel()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 67
    const v4, 0x7f0201af

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 70
    :cond_3
    invoke-virtual {v1, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 71
    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiAccessPoint;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/MiuiAccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/settings/wifi/WifiConfigurationManager;->isConnectWifiShare(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 74
    const v4, 0x7f0201b0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setArrowClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "onClickListener"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiAccessPoint;->mArrowClickListener:Landroid/view/View$OnClickListener;

    .line 85
    return-void
.end method

.method public setHasDetail(Z)V
    .locals 0
    .parameter "hasDetail"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/settings/wifi/MiuiAccessPoint;->mHasDetail:Z

    .line 81
    return-void
.end method

.method public setIsSortBySignal(Z)V
    .locals 0
    .parameter "isSortBySignal"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/settings/wifi/MiuiAccessPoint;->mIsSortBySignal:Z

    .line 93
    return-void
.end method

.method public setWifiShare(Z)V
    .locals 0
    .parameter "wifiShare"

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/android/settings/wifi/MiuiAccessPoint;->mIsWifiShare:Z

    .line 97
    return-void
.end method

.method public setWifiShareConnectListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "onClickListener"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiAccessPoint;->mWifiShareConnectListener:Landroid/view/View$OnClickListener;

    .line 89
    return-void
.end method
