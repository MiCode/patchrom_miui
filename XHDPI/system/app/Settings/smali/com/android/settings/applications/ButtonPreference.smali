.class public Lcom/android/settings/applications/ButtonPreference;
.super Landroid/preference/Preference;
.source "ButtonPreference.java"


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private mText:Ljava/lang/String;

.field private mTextId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/applications/ButtonPreference;->mTextId:I

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/applications/ButtonPreference;->mTextId:I

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/applications/ButtonPreference;->mTextId:I

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/ButtonPreference;)Landroid/preference/Preference$OnPreferenceClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/settings/applications/ButtonPreference;->mListener:Landroid/preference/Preference$OnPreferenceClickListener;

    return-object v0
.end method

.method private updateUi()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/applications/ButtonPreference;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/settings/applications/ButtonPreference;->mText:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/android/settings/applications/ButtonPreference;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/applications/ButtonPreference;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget v0, p0, Lcom/android/settings/applications/ButtonPreference;->mTextId:I

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/settings/applications/ButtonPreference;->mButton:Landroid/widget/Button;

    iget v1, p0, Lcom/android/settings/applications/ButtonPreference;->mTextId:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 54
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 55
    invoke-direct {p0}, Lcom/android/settings/applications/ButtonPreference;->updateUi()V

    .line 56
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "parent"

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/android/settings/applications/ButtonPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04007c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 38
    .local v0, rootView:Landroid/view/View;
    const v1, 0x7f090118

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/applications/ButtonPreference;->mButton:Landroid/widget/Button;

    .line 39
    iget-object v1, p0, Lcom/android/settings/applications/ButtonPreference;->mButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/applications/ButtonPreference$1;

    invoke-direct {v2, p0}, Lcom/android/settings/applications/ButtonPreference$1;-><init>(Lcom/android/settings/applications/ButtonPreference;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    return-object v0
.end method

.method public setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V
    .locals 0
    .parameter "onPreferenceClickListener"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/settings/applications/ButtonPreference;->mListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 60
    return-void
.end method

.method public setText(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/ButtonPreference;->mText:Ljava/lang/String;

    .line 69
    iput p1, p0, Lcom/android/settings/applications/ButtonPreference;->mTextId:I

    .line 70
    invoke-direct {p0}, Lcom/android/settings/applications/ButtonPreference;->updateUi()V

    .line 71
    return-void
.end method
