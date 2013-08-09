.class public Lcom/android/settings/ext/DefaultSimRoamingExt;
.super Ljava/lang/Object;
.source "DefaultSimRoamingExt.java"

# interfaces
.implements Lcom/android/settings/ext/ISimRoamingExt;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRoamingWarningMsg(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "res"

    .prologue
    .line 17
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setSummary(Landroid/preference/Preference;)V
    .locals 0
    .parameter "pref"

    .prologue
    .line 24
    return-void
.end method
