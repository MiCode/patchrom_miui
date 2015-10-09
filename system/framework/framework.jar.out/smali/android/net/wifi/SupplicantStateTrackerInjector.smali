.class public final Landroid/net/wifi/SupplicantStateTrackerInjector;
.super Ljava/lang/Object;
.source "SupplicantStateTrackerInjector.java"


# static fields
.field private static sNetid:I

.field private static sNetworksDisabledDuringConnect:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, -0x1

    sput v0, Landroid/net/wifi/SupplicantStateTrackerInjector;->sNetid:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleConnectNetwork(I)V
    .locals 1
    .param p0, "netid"    # I

    .prologue
    .line 53
    sput p0, Landroid/net/wifi/SupplicantStateTrackerInjector;->sNetid:I

    .line 54
    const/4 v0, 0x1

    sput-boolean v0, Landroid/net/wifi/SupplicantStateTrackerInjector;->sNetworksDisabledDuringConnect:Z

    .line 55
    return-void
.end method

.method public static handleNetworkConnectionComplete()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-boolean v0, Landroid/net/wifi/SupplicantStateTrackerInjector;->sNetworksDisabledDuringConnect:Z

    .line 19
    const/4 v0, -0x1

    sput v0, Landroid/net/wifi/SupplicantStateTrackerInjector;->sNetid:I

    .line 20
    return-void
.end method

.method public static handleNetworkConnectionFailure(Landroid/content/Context;Ljava/util/List;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "netid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v5, -0x1

    .line 23
    sget-boolean v4, Landroid/net/wifi/SupplicantStateTrackerInjector;->sNetworksDisabledDuringConnect:Z

    if-eqz v4, :cond_0

    sget v4, Landroid/net/wifi/SupplicantStateTrackerInjector;->sNetid:I

    if-ne v4, p2, :cond_0

    .line 24
    const/4 v4, 0x0

    sput-boolean v4, Landroid/net/wifi/SupplicantStateTrackerInjector;->sNetworksDisabledDuringConnect:Z

    .line 25
    sput v5, Landroid/net/wifi/SupplicantStateTrackerInjector;->sNetid:I

    .line 30
    if-eq p2, v5, :cond_0

    if-nez p1, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    const/4 v3, 0x0

    .line 35
    .local v3, "network":Landroid/net/wifi/WifiConfiguration;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 36
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v4, p2, :cond_2

    .line 37
    move-object v3, v0

    .line 42
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_3
    if-eqz v3, :cond_0

    iget v4, v3, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    iget v4, v3, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 46
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "miui.intent.action.WIFI_CONNECTION_FAILURE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 47
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v4, 0x14000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 48
    const-string/jumbo v4, "wifiConfiguration"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 49
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method public static isConformAuthFailure(I)Z
    .locals 1
    .param p0, "netid"    # I

    .prologue
    .line 58
    sget-boolean v0, Landroid/net/wifi/SupplicantStateTrackerInjector;->sNetworksDisabledDuringConnect:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    sget v0, Landroid/net/wifi/SupplicantStateTrackerInjector;->sNetid:I

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
