.class public Lcom/android/settings/SubSettings;
.super Lcom/android/settings/Settings;
.source "SubSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/settings/Settings;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigateUp()Z
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/android/settings/SubSettings;->finish()V

    .line 28
    const/4 v0, 0x1

    return v0
.end method
