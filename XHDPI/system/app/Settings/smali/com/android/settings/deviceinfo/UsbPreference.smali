.class public Lcom/android/settings/deviceinfo/UsbPreference;
.super Landroid/preference/Preference;
.source "UsbPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mChecked:Z

.field private mPreferenceButton:Landroid/widget/RadioButton;

.field private mPreferenceSummary:Landroid/widget/TextView;

.field private mPreferenceTitle:Landroid/widget/TextView;

.field private mSummaryValue:Ljava/lang/CharSequence;

.field private mTitleValue:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/deviceinfo/UsbPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/deviceinfo/UsbPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbPreference;->mPreferenceTitle:Landroid/widget/TextView;

    .line 19
    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbPreference;->mPreferenceSummary:Landroid/widget/TextView;

    .line 20
    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbPreference;->mPreferenceButton:Landroid/widget/RadioButton;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbPreference;->mTitleValue:Ljava/lang/CharSequence;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbPreference;->mSummaryValue:Ljava/lang/CharSequence;

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbPreference;->mChecked:Z

    .line 61
    const v0, 0x7f040097

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/UsbPreference;->setLayoutResource(I)V

    .line 64
    invoke-super {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    invoke-super {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbPreference;->mTitleValue:Ljava/lang/CharSequence;

    .line 69
    :cond_0
    invoke-super {p0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 70
    invoke-super {p0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbPreference;->mSummaryValue:Ljava/lang/CharSequence;

    .line 72
    :cond_1
    return-void
.end method


# virtual methods
.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbPreference;->mSummaryValue:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbPreference;->mTitleValue:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 76
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 77
    .local v0, view:Landroid/view/View;
    const-string v1, "UsbPreference"

    const-string v2, "getview"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const v1, 0x7f090151

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/UsbPreference;->mPreferenceTitle:Landroid/widget/TextView;

    .line 79
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbPreference;->mPreferenceTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbPreference;->mTitleValue:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    const v1, 0x7f090152

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/UsbPreference;->mPreferenceSummary:Landroid/widget/TextView;

    .line 81
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbPreference;->mPreferenceSummary:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbPreference;->mSummaryValue:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    const v1, 0x7f090150

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/UsbPreference;->mPreferenceButton:Landroid/widget/RadioButton;

    .line 83
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbPreference;->mPreferenceButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbPreference;->mPreferenceButton:Landroid/widget/RadioButton;

    iget-boolean v2, p0, Lcom/android/settings/deviceinfo/UsbPreference;->mChecked:Z

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 85
    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbPreference;->mChecked:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 196
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x60a0036

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 199
    .local v1, paddingRight:I
    move v0, v1

    .line 200
    .local v0, paddingLeft:I
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x60a0033

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 204
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 206
    return-void
.end method

.method protected onClick()V
    .locals 3

    .prologue
    .line 156
    invoke-super {p0}, Landroid/preference/Preference;->onClick()V

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 160
    .local v0, newValue:Z
    :goto_0
    if-nez v0, :cond_2

    .line 161
    const-string v1, "UsbPreference"

    const-string v2, "preference.onClick return"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_0
    :goto_1
    return-void

    .line 158
    .end local v0           #newValue:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 165
    .restart local v0       #newValue:Z
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/UsbPreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 167
    const-string v1, "UsbPreference"

    const-string v2, "preference.onClick"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 142
    .local v0, newValue:Z
    :goto_0
    if-nez v0, :cond_2

    .line 143
    const-string v1, "UsbPreference"

    const-string v2, "button.onClick return"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    :goto_1
    return-void

    .line 140
    .end local v0           #newValue:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 147
    .restart local v0       #newValue:Z
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/UsbPreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 149
    const-string v1, "UsbPreference"

    const-string v2, "button.onClick"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setChecked(Z)Z
    .locals 3
    .parameter "checked"

    .prologue
    const/4 v0, 0x0

    .line 179
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbPreference;->mPreferenceButton:Landroid/widget/RadioButton;

    if-nez v1, :cond_1

    .line 180
    const-string v1, "UsbPreference"

    const-string v2, "setChecked return"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/UsbPreference;->mChecked:Z

    .line 190
    :cond_0
    :goto_0
    return v0

    .line 185
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/deviceinfo/UsbPreference;->mChecked:Z

    if-eq v1, p1, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbPreference;->mPreferenceButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 187
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/UsbPreference;->mChecked:Z

    .line 188
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "summary"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbPreference;->mPreferenceSummary:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 112
    iput-object p1, p0, Lcom/android/settings/deviceinfo/UsbPreference;->mSummaryValue:Ljava/lang/CharSequence;

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbPreference;->mSummaryValue:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 115
    iput-object p1, p0, Lcom/android/settings/deviceinfo/UsbPreference;->mSummaryValue:Ljava/lang/CharSequence;

    .line 116
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbPreference;->mPreferenceSummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbPreference;->mSummaryValue:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    :cond_1
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbPreference;->mPreferenceTitle:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 91
    iput-object p1, p0, Lcom/android/settings/deviceinfo/UsbPreference;->mTitleValue:Ljava/lang/CharSequence;

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbPreference;->mTitleValue:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    iput-object p1, p0, Lcom/android/settings/deviceinfo/UsbPreference;->mTitleValue:Ljava/lang/CharSequence;

    .line 95
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbPreference;->mPreferenceTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbPreference;->mTitleValue:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    :cond_1
    return-void
.end method
