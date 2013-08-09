.class public Lcom/mediatek/audioprofile/AudioProfilePreference;
.super Landroid/preference/Preference;
.source "AudioProfilePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static sActiveKey:Ljava/lang/String;

.field private static sCurrentChecked:Landroid/widget/CompoundButton;


# instance fields
.field private mCheckboxButton:Landroid/widget/RadioButton;

.field private mContext:Landroid/content/Context;

.field private mExt:Lcom/android/settings/ext/IAudioProfileExt;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mKey:Ljava/lang/String;

.field private mOnSettingsClickListener:Landroid/view/View$OnClickListener;

.field private mPreferenceSummary:Ljava/lang/String;

.field private mPreferenceTitle:Ljava/lang/String;

.field private mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

.field private mSummary:Landroid/widget/TextView;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 69
    sput-object v0, Lcom/mediatek/audioprofile/AudioProfilePreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    .line 70
    sput-object v0, Lcom/mediatek/audioprofile/AudioProfilePreference;->sActiveKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/audioprofile/AudioProfilePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 148
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/audioprofile/AudioProfilePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mPreferenceTitle:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mPreferenceSummary:Ljava/lang/String;

    .line 75
    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mTextView:Landroid/widget/TextView;

    .line 76
    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mSummary:Landroid/widget/TextView;

    .line 77
    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mCheckboxButton:Landroid/widget/RadioButton;

    .line 103
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mContext:Landroid/content/Context;

    .line 105
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mInflater:Landroid/view/LayoutInflater;

    .line 108
    invoke-super {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    invoke-super {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mPreferenceTitle:Ljava/lang/String;

    .line 113
    :cond_0
    invoke-super {p0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 114
    invoke-super {p0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mPreferenceSummary:Ljava/lang/String;

    .line 117
    :cond_1
    const-string v0, "audioprofile"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/AudioProfileManager;

    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    .line 120
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfilePreference;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mKey:Ljava/lang/String;

    .line 122
    invoke-static {p1}, Lcom/mediatek/gemini/SimUtils;->getAudioProfilePlgin(Landroid/content/Context;)Lcom/android/settings/ext/IAudioProfileExt;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mExt:Lcom/android/settings/ext/IAudioProfileExt;

    .line 123
    return-void
.end method

.method static synthetic access$000()Landroid/widget/CompoundButton;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/mediatek/audioprofile/AudioProfilePreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method static synthetic access$002(Landroid/widget/CompoundButton;)Landroid/widget/CompoundButton;
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    sput-object p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mediatek/audioprofile/AudioProfilePreference;)Landroid/widget/RadioButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mCheckboxButton:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/audioprofile/AudioProfilePreference;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/audioprofile/AudioProfilePreference;)Lcom/mediatek/audioprofile/AudioProfileManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    return-object v0
.end method


# virtual methods
.method public dynamicShowSummary()V
    .locals 5

    .prologue
    .line 259
    const-string v2, "Settings/AudioP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioProfilePreference:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dynamicShowSummary"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mSummary:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 262
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mKey:Ljava/lang/String;

    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v0

    .line 263
    .local v0, scenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    sget-object v2, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v2, v0}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v2, v0}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 266
    :cond_0
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getVibrationEnabled(Ljava/lang/String;)Z

    move-result v1

    .line 269
    .local v1, vibrationEnabled:Z
    const-string v2, "Settings/AudioP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioProfilePreference:vibrationEnabled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    if-eqz v1, :cond_2

    .line 272
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mSummary:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mContext:Landroid/content/Context;

    const v4, 0x7f0c09f2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    .end local v0           #scenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .end local v1           #vibrationEnabled:Z
    :cond_1
    :goto_0
    return-void

    .line 275
    .restart local v0       #scenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .restart local v1       #vibrationEnabled:Z
    :cond_2
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mSummary:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mContext:Landroid/content/Context;

    const v4, 0x7f0c09f1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 278
    .end local v1           #vibrationEnabled:Z
    :cond_3
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mPreferenceSummary:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 279
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mSummary:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mPreferenceSummary:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public bridge synthetic getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfilePreference;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mPreferenceTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isChecked()Z
    .locals 2

    .prologue
    .line 312
    sget-object v0, Lcom/mediatek/audioprofile/AudioProfilePreference;->sActiveKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfilePreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mediatek/audioprofile/AudioProfilePreference;->sActiveKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 315
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 241
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 242
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfilePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x60a0036

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 244
    .local v1, paddingRight:I
    move v0, v1

    .line 245
    .local v0, paddingLeft:I
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfilePreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfilePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x60a0033

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 249
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

    .line 251
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 294
    const-string v0, "Settings/AudioP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioProfilePreference:onCheckedChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfilePreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    if-eqz p2, :cond_1

    .line 297
    sget-object v0, Lcom/mediatek/audioprofile/AudioProfilePreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_0

    .line 298
    sget-object v0, Lcom/mediatek/audioprofile/AudioProfilePreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 300
    :cond_0
    sput-object p1, Lcom/mediatek/audioprofile/AudioProfilePreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    .line 302
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->setActiveProfile(Ljava/lang/String;)V

    .line 304
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 372
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 375
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "parent"

    .prologue
    const/16 v7, 0x8

    .line 170
    const-string v4, "Settings/AudioP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AudioProfilePreference:onCreateView "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfilePreference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mExt:Lcom/android/settings/ext/IAudioProfileExt;

    const v5, 0x7f04000e

    invoke-interface {v4, v5}, Lcom/android/settings/ext/IAudioProfileExt;->createView(I)Landroid/view/View;

    move-result-object v3

    .line 173
    .local v3, view:Landroid/view/View;
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mExt:Lcom/android/settings/ext/IAudioProfileExt;

    const v5, 0x7f090012

    invoke-interface {v4, v5}, Lcom/android/settings/ext/IAudioProfileExt;->getPrefRadioButton(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mCheckboxButton:Landroid/widget/RadioButton;

    .line 175
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mExt:Lcom/android/settings/ext/IAudioProfileExt;

    const v5, 0x7f090013

    invoke-interface {v4, v5}, Lcom/android/settings/ext/IAudioProfileExt;->getPreferenceTitle(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mTextView:Landroid/widget/TextView;

    .line 176
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mExt:Lcom/android/settings/ext/IAudioProfileExt;

    const v5, 0x7f090014

    invoke-interface {v4, v5}, Lcom/android/settings/ext/IAudioProfileExt;->getPreferenceSummary(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mSummary:Landroid/widget/TextView;

    .line 178
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mCheckboxButton:Landroid/widget/RadioButton;

    if-eqz v4, :cond_0

    .line 180
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mCheckboxButton:Landroid/widget/RadioButton;

    new-instance v5, Lcom/mediatek/audioprofile/AudioProfilePreference$1;

    invoke-direct {v5, p0}, Lcom/mediatek/audioprofile/AudioProfilePreference$1;-><init>(Lcom/mediatek/audioprofile/AudioProfilePreference;)V

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mCheckboxButton:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfilePreference;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 202
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfilePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 203
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfilePreference;->setChecked()V

    .line 207
    :cond_0
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mPreferenceTitle:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    .line 208
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mPreferenceTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfilePreference;->dynamicShowSummary()V

    .line 215
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mExt:Lcom/android/settings/ext/IAudioProfileExt;

    const v5, 0x7f090016

    invoke-interface {v4, v5}, Lcom/android/settings/ext/IAudioProfileExt;->getPrefImageView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 217
    .local v0, detailsView:Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mExt:Lcom/android/settings/ext/IAudioProfileExt;

    const v5, 0x7f090015

    invoke-interface {v4, v5}, Lcom/android/settings/ext/IAudioProfileExt;->getPrefImageView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 220
    .local v1, mDividerImage:Landroid/widget/ImageView;
    const v4, 0x7f090017

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #detailsView:Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    .line 223
    .restart local v0       #detailsView:Landroid/widget/ImageView;
    if-eqz v0, :cond_2

    .line 224
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 225
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mKey:Ljava/lang/String;

    invoke-static {v4}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v2

    .line 226
    .local v2, scenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    sget-object v4, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v4, v2}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v4, v2}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 228
    :cond_1
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    .end local v2           #scenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    :cond_2
    :goto_1
    return-object v3

    .line 210
    .end local v0           #detailsView:Landroid/widget/ImageView;
    .end local v1           #mDividerImage:Landroid/widget/ImageView;
    :cond_3
    const-string v4, "Settings/AudioP"

    const-string v5, "AudioProfilePreference:PreferenceTitle is null"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 230
    .restart local v0       #detailsView:Landroid/widget/ImageView;
    .restart local v1       #mDividerImage:Landroid/widget/ImageView;
    .restart local v2       #scenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    :cond_4
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 231
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 232
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public setChecked()V
    .locals 3

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfilePreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/audioprofile/AudioProfilePreference;->sActiveKey:Ljava/lang/String;

    .line 324
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mCheckboxButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_2

    .line 325
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mCheckboxButton:Landroid/widget/RadioButton;

    sget-object v1, Lcom/mediatek/audioprofile/AudioProfilePreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 326
    sget-object v0, Lcom/mediatek/audioprofile/AudioProfilePreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_0

    .line 327
    sget-object v0, Lcom/mediatek/audioprofile/AudioProfilePreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 329
    :cond_0
    const-string v0, "Settings/AudioP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioProfilePreference:setChecked"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfilePreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mCheckboxButton:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 331
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mCheckboxButton:Landroid/widget/RadioButton;

    sput-object v0, Lcom/mediatek/audioprofile/AudioProfilePreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    .line 337
    :cond_1
    :goto_0
    return-void

    .line 335
    :cond_2
    const-string v0, "Settings/AudioP"

    const-string v1, "AudioProfilePreference:mCheckboxButton is null"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 367
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    .line 368
    return-void
.end method

.method public setProfileKey(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfilePreference;->setKey(Ljava/lang/String;)V

    .line 158
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mKey:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setTitle(Ljava/lang/String;Z)V
    .locals 2
    .parameter "title"
    .parameter "setToProfile"

    .prologue
    .line 348
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mPreferenceTitle:Ljava/lang/String;

    .line 349
    if-eqz p2, :cond_0

    .line 350
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->setProfileName(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 353
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfilePreference;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    :cond_1
    return-void
.end method
