.class public Lcom/android/settings/WarnedListPreference;
.super Landroid/preference/ListPreference;
.source "WarnedListPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method


# virtual methods
.method public click()V
    .locals 0

    .prologue
    .line 34
    invoke-super {p0}, Landroid/preference/ListPreference;->onClick()V

    .line 35
    return-void
.end method

.method protected onClick()V
    .locals 0

    .prologue
    .line 31
    return-void
.end method
