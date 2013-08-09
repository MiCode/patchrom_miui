.class public Lcom/mediatek/wifi/hotspot/ButtonPreference;
.super Landroid/preference/Preference;
.source "ButtonPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/wifi/hotspot/ButtonPreference$OnButtonClickCallback;
    }
.end annotation


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mCallBack:Lcom/mediatek/wifi/hotspot/ButtonPreference$OnButtonClickCallback;

.field private mHotspotClient:Landroid/net/wifi/HotspotClient;

.field private mMacAddress:Ljava/lang/String;

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/HotspotClient;Lcom/mediatek/wifi/hotspot/ButtonPreference$OnButtonClickCallback;)V
    .locals 1
    .parameter "context"
    .parameter "hotspotClient"
    .parameter "listner"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 54
    const v0, 0x7f04007d

    invoke-virtual {p0, v0}, Lcom/mediatek/wifi/hotspot/ButtonPreference;->setWidgetLayoutResource(I)V

    .line 55
    iput-object p2, p0, Lcom/mediatek/wifi/hotspot/ButtonPreference;->mHotspotClient:Landroid/net/wifi/HotspotClient;

    .line 56
    iput-object p3, p0, Lcom/mediatek/wifi/hotspot/ButtonPreference;->mCallBack:Lcom/mediatek/wifi/hotspot/ButtonPreference$OnButtonClickCallback;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    const v0, 0x7f04007d

    invoke-virtual {p0, v0}, Lcom/mediatek/wifi/hotspot/ButtonPreference;->setWidgetLayoutResource(I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    const v0, 0x7f04007d

    invoke-virtual {p0, v0}, Lcom/mediatek/wifi/hotspot/ButtonPreference;->setWidgetLayoutResource(I)V

    .line 45
    return-void
.end method


# virtual methods
.method public getMacAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/ButtonPreference;->mMacAddress:Ljava/lang/String;

    return-object v0
.end method

.method public isBlocked()Z
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/ButtonPreference;->mHotspotClient:Landroid/net/wifi/HotspotClient;

    iget-boolean v0, v0, Landroid/net/wifi/HotspotClient;->isBlocked:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 62
    const v0, 0x7f090118

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/wifi/hotspot/ButtonPreference;->mButton:Landroid/widget/Button;

    .line 63
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/ButtonPreference;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/ButtonPreference;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/ButtonPreference;->mButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 65
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/ButtonPreference;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 71
    if-nez p1, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/ButtonPreference;->mCallBack:Lcom/mediatek/wifi/hotspot/ButtonPreference$OnButtonClickCallback;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/ButtonPreference;->mCallBack:Lcom/mediatek/wifi/hotspot/ButtonPreference$OnButtonClickCallback;

    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/ButtonPreference;->mHotspotClient:Landroid/net/wifi/HotspotClient;

    invoke-interface {v0, p1, v1}, Lcom/mediatek/wifi/hotspot/ButtonPreference$OnButtonClickCallback;->onClick(Landroid/view/View;Landroid/net/wifi/HotspotClient;)V

    goto :goto_0
.end method

.method public setButtonText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/mediatek/wifi/hotspot/ButtonPreference;->mText:Ljava/lang/String;

    .line 81
    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/ButtonPreference;->notifyChanged()V

    .line 82
    return-void
.end method

.method public setMacAddress(Ljava/lang/String;)V
    .locals 1
    .parameter "macAddress"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/mediatek/wifi/hotspot/ButtonPreference;->mMacAddress:Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/ButtonPreference;->mMacAddress:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mediatek/wifi/hotspot/ButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 87
    return-void
.end method
