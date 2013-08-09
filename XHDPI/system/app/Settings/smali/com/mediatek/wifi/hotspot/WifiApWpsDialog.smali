.class public Lcom/mediatek/wifi/hotspot/WifiApWpsDialog;
.super Landroid/app/AlertDialog;
.source "WifiApWpsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mView:Landroid/view/View;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWpsMode:I

.field private mWpsModeSpinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/wifi/hotspot/WifiApWpsDialog;->mWpsMode:I

    .line 82
    iput-object p1, p0, Lcom/mediatek/wifi/hotspot/WifiApWpsDialog;->mContext:Landroid/content/Context;

    .line 83
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialogInterface"
    .parameter "button"

    .prologue
    const/4 v2, 0x1

    .line 105
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 106
    new-instance v0, Landroid/net/wifi/WpsInfo;

    invoke-direct {v0}, Landroid/net/wifi/WpsInfo;-><init>()V

    .line 107
    .local v0, config:Landroid/net/wifi/WpsInfo;
    iget v1, p0, Lcom/mediatek/wifi/hotspot/WifiApWpsDialog;->mWpsMode:I

    if-nez v1, :cond_2

    .line 108
    const/4 v1, 0x0

    iput v1, v0, Landroid/net/wifi/WpsInfo;->setup:I

    .line 109
    const-string v1, "any"

    iput-object v1, v0, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    .line 114
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/WifiApWpsDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->startApWps(Landroid/net/wifi/WpsInfo;)Z

    .line 116
    .end local v0           #config:Landroid/net/wifi/WpsInfo;
    :cond_1
    return-void

    .line 110
    .restart local v0       #config:Landroid/net/wifi/WpsInfo;
    :cond_2
    iget v1, p0, Lcom/mediatek/wifi/hotspot/WifiApWpsDialog;->mWpsMode:I

    if-ne v1, v2, :cond_0

    .line 111
    iput v2, v0, Landroid/net/wifi/WpsInfo;->setup:I

    .line 112
    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/WifiApWpsDialog;->mView:Landroid/view/View;

    const v2, 0x7f090232

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 87
    const-string v0, "WifiApWpsDialog"

    const-string v1, "onCreate, return dialog"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/WifiApWpsDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400d2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/wifi/hotspot/WifiApWpsDialog;->mView:Landroid/view/View;

    .line 90
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/WifiApWpsDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/mediatek/wifi/hotspot/WifiApWpsDialog;->setView(Landroid/view/View;)V

    .line 91
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/wifi/hotspot/WifiApWpsDialog;->setInverseBackgroundForced(Z)V

    .line 92
    const v0, 0x7f0c0ad2

    invoke-virtual {p0, v0}, Lcom/mediatek/wifi/hotspot/WifiApWpsDialog;->setTitle(I)V

    .line 94
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/WifiApWpsDialog;->mView:Landroid/view/View;

    const v1, 0x7f090230

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/mediatek/wifi/hotspot/WifiApWpsDialog;->mWpsModeSpinner:Landroid/widget/Spinner;

    .line 95
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/WifiApWpsDialog;->mWpsModeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 96
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/WifiApWpsDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0229

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p0}, Lcom/mediatek/wifi/hotspot/WifiApWpsDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 97
    const/4 v0, -0x2

    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/WifiApWpsDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f0c022f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p0}, Lcom/mediatek/wifi/hotspot/WifiApWpsDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 99
    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/WifiApWpsDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/mediatek/wifi/hotspot/WifiApWpsDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 101
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 102
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const v2, 0x7f090231

    .line 120
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/WifiApWpsDialog;->mWpsModeSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iput p3, p0, Lcom/mediatek/wifi/hotspot/WifiApWpsDialog;->mWpsMode:I

    .line 122
    iget v0, p0, Lcom/mediatek/wifi/hotspot/WifiApWpsDialog;->mWpsMode:I

    if-nez v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/WifiApWpsDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iget v0, p0, Lcom/mediatek/wifi/hotspot/WifiApWpsDialog;->mWpsMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/WifiApWpsDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
