.class public Lcom/android/settings/permission/AppPermsEditorPreference;
.super Landroid/preference/ListPreference;
.source "AppPermsEditorPreference.java"


# instance fields
.field private mStateRes:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 15
    const v0, 0x7f040070

    invoke-virtual {p0, v0}, Lcom/android/settings/permission/AppPermsEditorPreference;->setLayoutResource(I)V

    .line 16
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onBindView(Landroid/view/View;)V

    .line 21
    const v0, 0x7f090109

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/settings/permission/AppPermsEditorPreference;->mStateRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 22
    return-void
.end method

.method public setState(I)V
    .locals 0
    .parameter "stateRes"

    .prologue
    .line 25
    iput p1, p0, Lcom/android/settings/permission/AppPermsEditorPreference;->mStateRes:I

    .line 26
    invoke-virtual {p0}, Lcom/android/settings/permission/AppPermsEditorPreference;->notifyChanged()V

    .line 27
    return-void
.end method
