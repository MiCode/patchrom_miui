.class Landroid/net/CaptivePortalTrackerInjector;
.super Ljava/lang/Object;
.source "CaptivePortalTrackerInjector.java"


# static fields
.field private static final CN_CAPTIVE_PORTAL_SERVER:Ljava/lang/String; = "http://connect.rom.miui.com/generate_204"

.field private static final CN_OPERATOR:Ljava/lang/String; = "460"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final getCaptivePortalServer(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "server"    # Ljava/lang/String;

    .prologue
    .line 14
    const-string/jumbo v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 15
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 18
    .local v0, "networkOperator":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "CN"

    invoke-static {v2}, Lmiui/os/Build;->checkRegion(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-static {v0}, Landroid/net/CaptivePortalTrackerInjector;->isCnFromOperator(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 20
    :cond_1
    const-string p1, "http://connect.rom.miui.com/generate_204"

    .line 22
    :cond_2
    return-object p1
.end method

.method static isCnFromOperator(Ljava/lang/String;)Z
    .locals 3
    .param p0, "operator"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x3

    .line 26
    const-string v0, ""

    .line 27
    .local v0, "mcc":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v2, :cond_0

    .line 28
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 30
    :cond_0
    const-string v1, "460"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method
