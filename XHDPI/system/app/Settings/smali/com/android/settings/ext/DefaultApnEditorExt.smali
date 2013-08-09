.class public Lcom/android/settings/ext/DefaultApnEditorExt;
.super Ljava/lang/Object;
.source "DefaultApnEditorExt.java"

# interfaces
.implements Lcom/android/settings/ext/IApnEditorExt;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApnTypeArray(Landroid/content/Context;III)[Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "orangeId"
    .parameter "cmccId"
    .parameter "normalId"

    .prologue
    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApnTypeArrayByCard(Landroid/content/Context;Ljava/lang/String;ZIII[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "numeric"
    .parameter "isTether"
    .parameter "tether"
    .parameter "cmcc"
    .parameter "generic"
    .parameter "oldArray"

    .prologue
    .line 26
    const/4 v0, 0x0

    .line 30
    .local v0, resArray:[Ljava/lang/String;
    move-object v0, p7

    .line 32
    return-object v0
.end method

.method public getUriFromIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/net/Uri;
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public setPreferenceState(Landroid/preference/DialogPreference;)V
    .locals 0
    .parameter "preference"

    .prologue
    .line 15
    return-void
.end method
