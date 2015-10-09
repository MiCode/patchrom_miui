.class public Landroid/provider/MiuiSettings;
.super Ljava/lang/Object;
.source "MiuiSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/MiuiSettings$MiuiVoip;,
        Landroid/provider/MiuiSettings$VirtualSim;,
        Landroid/provider/MiuiSettings$Telephony;,
        Landroid/provider/MiuiSettings$AntiVirus;,
        Landroid/provider/MiuiSettings$AntiSpam;,
        Landroid/provider/MiuiSettings$Secure;,
        Landroid/provider/MiuiSettings$System;
    }
.end annotation


# static fields
.field public static final ACTION_ACCOUNT_LIST:Ljava/lang/String; = "android.settings.ACCOUNT_LIST"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2495
    return-void
.end method

.method public static getConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;I)V
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "outConfig"    # Landroid/content/res/Configuration;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v0, 0x1

    .line 2517
    const-string/jumbo v2, "ui_mode_scale"

    invoke-static {p0, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2518
    .local v1, "scaleMode":I
    and-int/lit8 v1, v1, 0xf

    .line 2520
    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    const/16 v2, 0xe

    if-eq v1, v2, :cond_0

    const/16 v2, 0xf

    if-eq v1, v2, :cond_0

    const/16 v2, 0xb

    if-ne v1, v2, :cond_2

    .line 2525
    .local v0, "isLargeUiMode":Z
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 2526
    invoke-static {v1}, Landroid/content/res/MiuiConfiguration;->getFontScale(I)F

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 2528
    :cond_1
    return-void

    .line 2520
    .end local v0    # "isLargeUiMode":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
