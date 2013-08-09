.class public Lcom/android/settings/wifi/MiuiWifiConfigController;
.super Lcom/android/settings/wifi/WifiConfigController;
.source "MiuiWifiConfigController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/MiuiWifiConfigController$OnSubmitStateChangeListener;
    }
.end annotation


# instance fields
.field private final mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field private final mActivity:Landroid/app/Activity;

.field private mHasIporProxy:Z

.field private final mOnSubmitStateChangeListener:Lcom/android/settings/wifi/MiuiWifiConfigController$OnSubmitStateChangeListener;

.field private mShowAdvance:Z

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;ZLcom/android/settings/wifi/MiuiWifiConfigController$OnSubmitStateChangeListener;)V
    .locals 13
    .parameter "activity"
    .parameter "view"
    .parameter "accessPoint"
    .parameter "showAdvance"
    .parameter "onSubmitStateChangeListener"

    .prologue
    .line 41
    move-object/from16 v0, p3

    invoke-direct {p0, p2, v0}, Lcom/android/settings/wifi/WifiConfigController;-><init>(Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;)V

    .line 42
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mActivity:Landroid/app/Activity;

    .line 43
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mOnSubmitStateChangeListener:Lcom/android/settings/wifi/MiuiWifiConfigController$OnSubmitStateChangeListener;

    .line 45
    iput-object p2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    .line 46
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 47
    if-nez p3, :cond_1

    const/4 v10, 0x0

    :goto_0
    iput v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPointSecurity:I

    .line 49
    move/from16 v0, p4

    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mShowAdvance:Z

    .line 51
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 53
    .local v7, resources:Landroid/content/res/Resources;
    iget-object v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v10, :cond_2

    .line 54
    iget-object v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v11, 0x7f090225

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mSsidView:Landroid/widget/TextView;

    .line 55
    iget-object v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v10, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 56
    iget-object v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v11, 0x7f0901ef

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 122
    :cond_0
    :goto_1
    return-void

    .line 47
    .end local v7           #resources:Landroid/content/res/Resources;
    :cond_1
    move-object/from16 v0, p3

    iget v10, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    goto :goto_0

    .line 58
    .restart local v7       #resources:Landroid/content/res/Resources;
    :cond_2
    iget-object v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v11, 0x7f09024e

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Spinner;

    iput-object v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    .line 59
    iget-object v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v11, 0x7f090247

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Spinner;

    iput-object v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    .line 61
    iget-object v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v11, 0x7f090224

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 63
    .local v3, group:Landroid/view/ViewGroup;
    iget-object v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v10}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v9

    .line 64
    .local v9, state:Landroid/net/NetworkInfo$DetailedState;
    if-eqz v9, :cond_3

    .line 65
    const v10, 0x7f0c0204

    invoke-static {p1, v9}, Lcom/android/settings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v3, v10, v11}, Lcom/android/settings/wifi/MiuiWifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 68
    :cond_3
    iget-object v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v10}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v6

    .line 69
    .local v6, level:I
    const/4 v10, -0x1

    if-eq v6, v10, :cond_4

    .line 70
    const v10, 0x7f080019

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 71
    .local v8, signal:[Ljava/lang/String;
    const v10, 0x7f0c0203

    aget-object v11, v8, v6

    invoke-direct {p0, v3, v10, v11}, Lcom/android/settings/wifi/MiuiWifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 74
    .end local v8           #signal:[Ljava/lang/String;
    :cond_4
    iget-object v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v10}, Lcom/android/settings/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    .line 75
    .local v5, info:Landroid/net/wifi/WifiInfo;
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_5

    .line 76
    const v10, 0x7f0c0205

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Mbps"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v3, v10, v11}, Lcom/android/settings/wifi/MiuiWifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 79
    :cond_5
    const v10, 0x7f0c0202

    iget-object v11, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/settings/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v3, v10, v11}, Lcom/android/settings/wifi/MiuiWifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 81
    iget-object v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v10}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 82
    .local v2, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v2, :cond_8

    .line 83
    iget-object v10, v2, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v11, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-ne v10, v11, :cond_6

    .line 84
    iget-object v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/Spinner;->setSelection(I)V

    .line 85
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mHasIporProxy:Z

    .line 89
    :goto_2
    iget-object v10, v2, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    sget-object v11, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    if-ne v10, v11, :cond_7

    .line 90
    iget-object v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/Spinner;->setSelection(I)V

    .line 91
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mHasIporProxy:Z

    .line 95
    :goto_3
    iget-object v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v10, v10, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_8

    .line 97
    iget-object v10, v2, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v10}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 98
    .local v1, a:Ljava/net/InetAddress;
    const v10, 0x7f0c0206

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v3, v10, v11}, Lcom/android/settings/wifi/MiuiWifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    goto :goto_4

    .line 87
    .end local v1           #a:Ljava/net/InetAddress;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_6
    iget-object v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_2

    .line 93
    :cond_7
    iget-object v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    .line 102
    :cond_8
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    const v11, 0x6010036

    invoke-virtual {v10, v11}, Landroid/view/View;->setAdditionalState(I)V

    .line 103
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v3, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    const v11, 0x6010037

    invoke-virtual {v10, v11}, Landroid/view/View;->setAdditionalState(I)V

    .line 105
    iget-boolean v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mShowAdvance:Z

    if-eqz v10, :cond_0

    .line 106
    iget-object v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v11, 0x7f090239

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 107
    iget-object v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v11, 0x7f090265

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 108
    iget-object v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v11, 0x7f09024a

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    .line 109
    iget-object v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v10, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 110
    iget-object v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v11, 0x7f09024b

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    .line 111
    iget-object v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v10, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 112
    iget-object v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v11, 0x7f09024c

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    .line 113
    iget-object v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v10, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiConfigController;->showProxyFields()V

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiConfigController;->showIpConfigFields()V

    .line 118
    iget-object v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v10, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 119
    iget-object v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v10, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto/16 :goto_1
.end method

.method private addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 4
    .parameter "group"
    .parameter "nameId"
    .parameter "value"

    .prologue
    .line 125
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400d7

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 126
    .local v0, row:Landroid/view/View;
    const v1, 0x6010038

    invoke-virtual {v0, v1}, Landroid/view/View;->setAdditionalState(I)V

    .line 127
    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 128
    const v1, 0x1020010

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 130
    return-void
.end method

.method private ipAndProxyFieldsAreValid()Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 277
    const/4 v7, 0x0

    .line 278
    .local v7, ret:Z
    iget-object v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v8}, Landroid/net/LinkProperties;->clear()V

    .line 279
    iget-object v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v8

    if-ne v8, v10, :cond_0

    sget-object v8, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    :goto_0
    iput-object v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 283
    iget-object v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v9, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-ne v8, v9, :cond_2

    .line 284
    iget-object v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/MiuiWifiConfigController;->validateIpConfigFields(Landroid/net/LinkProperties;)I

    move-result v6

    .line 285
    .local v6, result:I
    if-eqz v6, :cond_1

    .line 286
    const/4 v8, 0x0

    .line 319
    .end local v6           #result:I
    :goto_1
    return v8

    .line 279
    :cond_0
    sget-object v8, Landroid/net/wifi/WifiConfiguration$IpAssignment;->DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    goto :goto_0

    .line 288
    .restart local v6       #result:I
    :cond_1
    const/4 v7, 0x1

    .line 291
    .end local v6           #result:I
    :cond_2
    iget-object v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v8

    if-ne v8, v10, :cond_5

    sget-object v8, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    :goto_2
    iput-object v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 295
    iget-object v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    sget-object v9, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    if-ne v8, v9, :cond_3

    .line 296
    iget-object v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 297
    .local v2, host:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 298
    .local v4, portStr:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 299
    .local v1, exclusionList:Ljava/lang/String;
    const/4 v3, 0x0

    .line 300
    .local v3, port:I
    const/4 v6, 0x0

    .line 302
    .restart local v6       #result:I
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 303
    invoke-static {v2, v4, v1}, Lcom/android/settings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 307
    :goto_3
    if-nez v6, :cond_6

    .line 308
    new-instance v5, Landroid/net/ProxyProperties;

    invoke-direct {v5, v2, v3, v1}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 309
    .local v5, proxyProperties:Landroid/net/ProxyProperties;
    iget-object v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v8, v5}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    .line 310
    const/4 v7, 0x1

    .line 316
    .end local v1           #exclusionList:Ljava/lang/String;
    .end local v2           #host:Ljava/lang/String;
    .end local v3           #port:I
    .end local v4           #portStr:Ljava/lang/String;
    .end local v5           #proxyProperties:Landroid/net/ProxyProperties;
    .end local v6           #result:I
    :cond_3
    :goto_4
    iget-boolean v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mHasIporProxy:Z

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    sget-object v9, Landroid/net/wifi/WifiConfiguration$ProxySettings;->NONE:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    if-ne v8, v9, :cond_4

    .line 317
    const/4 v7, 0x1

    :cond_4
    move v8, v7

    .line 319
    goto :goto_1

    .line 291
    :cond_5
    sget-object v8, Landroid/net/wifi/WifiConfiguration$ProxySettings;->NONE:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    goto :goto_2

    .line 304
    .restart local v1       #exclusionList:Ljava/lang/String;
    .restart local v2       #host:Ljava/lang/String;
    .restart local v3       #port:I
    .restart local v4       #portStr:Ljava/lang/String;
    .restart local v6       #result:I
    :catch_0
    move-exception v0

    .line 305
    .local v0, e:Ljava/lang/NumberFormatException;
    const v6, 0x7f0c00ad

    goto :goto_3

    .line 312
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_6
    const/4 v7, 0x0

    goto :goto_4
.end method


# virtual methods
.method enableSubmitIfAppropriate()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x1

    .line 134
    const/4 v0, 0x0

    .line 137
    .local v0, enabled:Z
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mSsidView:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v2

    if-lez v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eq v2, v3, :cond_5

    move v0, v1

    .line 140
    :goto_0
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPointSecurity:I

    if-ne v2, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPointSecurity:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-ge v1, v3, :cond_2

    .line 143
    :cond_1
    const/4 v0, 0x0

    .line 146
    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mShowAdvance:Z

    if-eqz v1, :cond_3

    .line 147
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiConfigController;->ipAndProxyFieldsAreValid()Z

    move-result v0

    .line 149
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mOnSubmitStateChangeListener:Lcom/android/settings/wifi/MiuiWifiConfigController$OnSubmitStateChangeListener;

    if-eqz v1, :cond_4

    .line 150
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mOnSubmitStateChangeListener:Lcom/android/settings/wifi/MiuiWifiConfigController$OnSubmitStateChangeListener;

    invoke-interface {v1, v0}, Lcom/android/settings/wifi/MiuiWifiConfigController$OnSubmitStateChangeListener;->onSubmitStateChange(Z)V

    .line 152
    :cond_4
    return-void

    .line 137
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 8

    .prologue
    const/4 v6, -0x1

    const/4 v1, 0x1

    const/4 v5, 0x0

    const/16 v7, 0x22

    .line 156
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 157
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v4, :cond_2

    .line 158
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 161
    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 172
    :cond_0
    :goto_0
    iget-boolean v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mShowAdvance:Z

    if-eqz v4, :cond_1

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v4, v6, :cond_4

    .line 173
    :cond_1
    iget v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPointSecurity:I

    packed-switch v4, :pswitch_data_0

    .line 265
    const/4 v0, 0x0

    .line 273
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :goto_1
    return-object v0

    .line 162
    .restart local v0       #config:Landroid/net/wifi/WifiConfiguration;
    :cond_2
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v4, v6, :cond_3

    .line 163
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v4, v4, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 165
    sget-boolean v4, Lmiui/os/Build;->IS_HONGMI:Z

    if-eqz v4, :cond_0

    .line 166
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v4, v4, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    goto :goto_0

    .line 169
    :cond_3
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_0

    .line 175
    :pswitch_0
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 269
    :cond_4
    :goto_2
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 270
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 271
    new-instance v4, Landroid/net/LinkProperties;

    iget-object v5, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v4, v5}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    goto :goto_1

    .line 179
    :pswitch_1
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 180
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 181
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v4, v1}, Ljava/util/BitSet;->set(I)V

    .line 182
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-eqz v4, :cond_4

    .line 183
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v2

    .line 184
    .local v2, length:I
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 186
    .local v3, password:Ljava/lang/String;
    const/16 v4, 0xa

    if-eq v2, v4, :cond_5

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_5

    const/16 v4, 0x3a

    if-ne v2, v4, :cond_6

    :cond_5
    const-string v4, "[0-9A-Fa-f]*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 188
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v3, v4, v5

    goto :goto_2

    .line 190
    :cond_6
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    goto :goto_2

    .line 196
    .end local v2           #length:I
    .end local v3           #password:Ljava/lang/String;
    :pswitch_2
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v1}, Ljava/util/BitSet;->set(I)V

    .line 197
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-eqz v4, :cond_4

    .line 198
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 199
    .restart local v3       #password:Ljava/lang/String;
    const-string v4, "[0-9A-Fa-f]{64}"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 200
    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 202
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 208
    .end local v3           #password:Ljava/lang/String;
    :pswitch_3
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 209
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-eqz v4, :cond_4

    .line 210
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 211
    .restart local v3       #password:Ljava/lang/String;
    sget-boolean v4, Lmiui/os/Build;->IS_MITWO:Z

    if-eqz v4, :cond_9

    .line 212
    const-string v4, "[0-9A-Fa-f]{64}"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 213
    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    .line 224
    :goto_3
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mWapiKeyTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    goto/16 :goto_2

    .line 215
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    goto :goto_3

    .line 218
    :cond_9
    const-string v4, "[0-9A-Fa-f]{64}"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 219
    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_3

    .line 221
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_3

    .line 230
    .end local v3           #password:Ljava/lang/String;
    :pswitch_4
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 231
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mCertificateAs:Ljava/lang/String;

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->wapiASCert:Ljava/lang/String;

    .line 232
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mCertificateUser:Ljava/lang/String;

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    goto/16 :goto_2

    .line 237
    :pswitch_5
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Ljava/util/BitSet;->set(I)V

    .line 238
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Ljava/util/BitSet;->set(I)V

    .line 239
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 241
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_b

    const-string v4, ""

    :goto_4
    invoke-virtual {v6, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 243
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_c

    const-string v4, ""

    :goto_5
    invoke-virtual {v6, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 246
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_d

    const-string v4, ""

    :goto_6
    invoke-virtual {v6, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 249
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_e

    .line 250
    .local v1, isEmptyKeyId:Z
    :goto_7
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->key_id:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-eqz v1, :cond_f

    const-string v4, ""

    :goto_8
    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 252
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->engine:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-eqz v1, :cond_10

    const-string v4, "0"

    :goto_9
    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 254
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->engine_id:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-eqz v1, :cond_11

    const-string v4, ""

    :goto_a
    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 255
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-nez v4, :cond_12

    const-string v4, ""

    :goto_b
    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 257
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-nez v4, :cond_13

    const-string v4, ""

    :goto_c
    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 259
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-eqz v4, :cond_4

    .line 260
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->password:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v5, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 241
    .end local v1           #isEmptyKeyId:Z
    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "auth="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4

    .line 243
    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "keystore://CACERT_"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_5

    .line 246
    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "keystore://USRCERT_"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_6

    :cond_e
    move v1, v5

    .line 249
    goto/16 :goto_7

    .line 250
    .restart local v1       #isEmptyKeyId:Z
    :cond_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "USRPKEY_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_8

    .line 252
    :cond_10
    const-string v4, "1"

    goto/16 :goto_9

    .line 254
    :cond_11
    const-string v4, "keystore"

    goto/16 :goto_a

    .line 255
    :cond_12
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_b

    .line 257
    :cond_13
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_c

    .line 173
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
