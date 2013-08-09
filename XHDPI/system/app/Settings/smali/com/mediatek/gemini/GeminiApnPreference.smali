.class public Lcom/mediatek/gemini/GeminiApnPreference;
.super Lcom/android/settings/MiuiApnPreference;
.source "GeminiApnPreference.java"


# instance fields
.field private mEditable:Z

.field private mSelectable:Z

.field private mSimId:I

.field private mSourceType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 56
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiApnPreference;-><init>(Landroid/content/Context;)V

    .line 59
    iput-boolean v1, p0, Lcom/mediatek/gemini/GeminiApnPreference;->mSelectable:Z

    .line 61
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/gemini/GeminiApnPreference;->mSourceType:I

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/gemini/GeminiApnPreference;->mSimId:I

    .line 63
    iput-boolean v1, p0, Lcom/mediatek/gemini/GeminiApnPreference;->mEditable:Z

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x1

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/settings/MiuiApnPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    iput-boolean v1, p0, Lcom/mediatek/gemini/GeminiApnPreference;->mSelectable:Z

    .line 61
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/gemini/GeminiApnPreference;->mSourceType:I

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/gemini/GeminiApnPreference;->mSimId:I

    .line 63
    iput-boolean v1, p0, Lcom/mediatek/gemini/GeminiApnPreference;->mEditable:Z

    .line 50
    return-void
.end method


# virtual methods
.method public getSelectable()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/mediatek/gemini/GeminiApnPreference;->mSelectable:Z

    return v0
.end method

.method public getSourceType()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/mediatek/gemini/GeminiApnPreference;->mSourceType:I

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/android/settings/MiuiApnPreference;->onBindView(Landroid/view/View;)V

    .line 95
    iget-boolean v2, p0, Lcom/mediatek/gemini/GeminiApnPreference;->mSelectable:Z

    if-nez v2, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiApnPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x60a0036

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 99
    .local v0, paddingLeft:I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 101
    const v2, 0x1020001

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 102
    .local v1, rb:Landroid/widget/RadioButton;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 104
    .end local v0           #paddingLeft:I
    .end local v1           #rb:Landroid/widget/RadioButton;
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiApnPreference;->showDetail()V

    .line 68
    return-void
.end method

.method public setApnEditable(Z)V
    .locals 0
    .parameter "isEditable"

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/mediatek/gemini/GeminiApnPreference;->mEditable:Z

    .line 121
    return-void
.end method

.method public setSelectable(Z)V
    .locals 0
    .parameter "selectable"

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/mediatek/gemini/GeminiApnPreference;->mSelectable:Z

    .line 108
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiApnPreference;->notifyHierarchyChanged()V

    .line 109
    return-void
.end method

.method public setSimId(I)V
    .locals 0
    .parameter "simid"

    .prologue
    .line 116
    iput p1, p0, Lcom/mediatek/gemini/GeminiApnPreference;->mSimId:I

    .line 117
    return-void
.end method

.method public setSourceType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 128
    iput p1, p0, Lcom/mediatek/gemini/GeminiApnPreference;->mSourceType:I

    .line 129
    return-void
.end method

.method public showDetail()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 71
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiApnPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 72
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiApnPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 75
    .local v3, pos:I
    iget v6, p0, Lcom/mediatek/gemini/GeminiApnPreference;->mSimId:I

    if-ne v6, v5, :cond_1

    .line 76
    sget-object v2, Landroid/provider/Telephony$Carriers$SIM2Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 83
    .local v2, orig:Landroid/net/Uri;
    :goto_0
    int-to-long v6, v3

    invoke-static {v2, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 85
    .local v4, url:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v6, "gemini.intent.action.EDIT"

    invoke-direct {v1, v6, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 86
    .local v1, it:Landroid/content/Intent;
    const-string v6, "simId"

    iget v7, p0, Lcom/mediatek/gemini/GeminiApnPreference;->mSimId:I

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    const-string v6, "readOnly"

    iget-boolean v7, p0, Lcom/mediatek/gemini/GeminiApnPreference;->mEditable:Z

    if-nez v7, :cond_3

    :goto_1
    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 88
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 90
    .end local v1           #it:Landroid/content/Intent;
    .end local v2           #orig:Landroid/net/Uri;
    .end local v3           #pos:I
    .end local v4           #url:Landroid/net/Uri;
    :cond_0
    return-void

    .line 77
    .restart local v3       #pos:I
    :cond_1
    iget v6, p0, Lcom/mediatek/gemini/GeminiApnPreference;->mSimId:I

    if-nez v6, :cond_2

    .line 78
    sget-object v2, Landroid/provider/Telephony$Carriers$SIM1Carriers;->CONTENT_URI:Landroid/net/Uri;

    .restart local v2       #orig:Landroid/net/Uri;
    goto :goto_0

    .line 80
    .end local v2           #orig:Landroid/net/Uri;
    :cond_2
    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    .restart local v2       #orig:Landroid/net/Uri;
    goto :goto_0

    .line 87
    .restart local v1       #it:Landroid/content/Intent;
    .restart local v4       #url:Landroid/net/Uri;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method
