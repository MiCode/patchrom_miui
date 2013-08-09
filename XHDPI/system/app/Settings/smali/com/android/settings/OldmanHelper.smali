.class public Lcom/android/settings/OldmanHelper;
.super Ljava/lang/Object;
.source "OldmanHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isOldmanMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 10
    invoke-static {}, Lmiui/os/Build;->getUserMode()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOldmanModeSettingsHidden(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, -0x1

    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "elder.settings.oldman_mode_settings_hidden"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 19
    .local v0, hidden:I
    if-ne v0, v3, :cond_0

    .line 20
    const/4 v0, 0x1

    .line 21
    sget-boolean v1, Lmiui/os/Build;->IS_HONGMI:Z

    if-eqz v1, :cond_0

    .line 22
    const/4 v0, 0x0

    .line 24
    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isStatusBarSettingsHidden(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    invoke-static {}, Lcom/android/settings/OldmanHelper;->isOldmanMode()Z

    move-result v4

    if-nez v4, :cond_0

    .line 35
    :goto_0
    return v2

    .line 30
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "elder.settings.status_bar_settings_hidden"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 31
    .local v1, hidden:I
    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "elder.systemui.allow_status_expand"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v0, v3

    .line 33
    .local v0, allowExpand:Z
    :goto_1
    if-eqz v0, :cond_3

    move v1, v2

    .line 35
    .end local v0           #allowExpand:Z
    :cond_1
    :goto_2
    if-eqz v1, :cond_4

    :goto_3
    move v2, v3

    goto :goto_0

    :cond_2
    move v0, v2

    .line 32
    goto :goto_1

    .restart local v0       #allowExpand:Z
    :cond_3
    move v1, v3

    .line 33
    goto :goto_2

    .end local v0           #allowExpand:Z
    :cond_4
    move v3, v2

    .line 35
    goto :goto_3
.end method

.method public static setOldmanMode(Landroid/content/Context;Z)V
    .locals 1
    .parameter "context"
    .parameter "is"

    .prologue
    .line 14
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v0}, Lmiui/os/Build;->setUserMode(Landroid/content/Context;I)V

    .line 15
    return-void

    .line 14
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
