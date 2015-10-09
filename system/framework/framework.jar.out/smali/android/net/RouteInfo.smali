.class public Landroid/net/RouteInfo;
.super Ljava/lang/Object;
.source "RouteInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDestination:Landroid/net/LinkAddress;

.field private final mGateway:Ljava/net/InetAddress;

.field private final mHasGateway:Z

.field private final mInterface:Ljava/lang/String;

.field private final mIsDefault:Z

.field private final mIsHost:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 243
    new-instance v0, Landroid/net/RouteInfo$1;

    invoke-direct {v0}, Landroid/net/RouteInfo$1;-><init>()V

    sput-object v0, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/net/LinkAddress;)V
    .locals 1
    .param p1, "host"    # Landroid/net/LinkAddress;

    .prologue
    const/4 v0, 0x0

    .line 120
    invoke-direct {p0, p1, v0, v0}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;)V
    .locals 1
    .param p1, "destination"    # Landroid/net/LinkAddress;
    .param p2, "gateway"    # Ljava/net/InetAddress;

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;Ljava/lang/String;)V
    .locals 3
    .param p1, "destination"    # Landroid/net/LinkAddress;
    .param p2, "gateway"    # Ljava/net/InetAddress;
    .param p3, "iface"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    if-nez p1, :cond_0

    .line 82
    if-eqz p2, :cond_4

    .line 83
    instance-of v1, p2, Ljava/net/Inet4Address;

    if-eqz v1, :cond_3

    .line 84
    new-instance p1, Landroid/net/LinkAddress;

    .end local p1    # "destination":Landroid/net/LinkAddress;
    sget-object v1, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-direct {p1, v1, v0}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 94
    .restart local p1    # "destination":Landroid/net/LinkAddress;
    :cond_0
    :goto_0
    if-nez p2, :cond_1

    .line 95
    invoke-virtual {p1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    instance-of v1, v1, Ljava/net/Inet4Address;

    if-eqz v1, :cond_5

    .line 96
    sget-object p2, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    .line 101
    :cond_1
    :goto_1
    invoke-virtual {p2}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Landroid/net/RouteInfo;->mHasGateway:Z

    .line 103
    new-instance v0, Landroid/net/LinkAddress;

    invoke-virtual {p1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v2

    invoke-static {v1, v2}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v0, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/LinkAddress;

    .line 105
    iput-object p2, p0, Landroid/net/RouteInfo;->mGateway:Ljava/net/InetAddress;

    .line 106
    iput-object p3, p0, Landroid/net/RouteInfo;->mInterface:Ljava/lang/String;

    .line 107
    invoke-direct {p0}, Landroid/net/RouteInfo;->isDefault()Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/RouteInfo;->mIsDefault:Z

    .line 108
    invoke-direct {p0}, Landroid/net/RouteInfo;->isHost()Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/RouteInfo;->mIsHost:Z

    .line 109
    return-void

    .line 86
    :cond_3
    new-instance p1, Landroid/net/LinkAddress;

    .end local p1    # "destination":Landroid/net/LinkAddress;
    sget-object v1, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    invoke-direct {p1, v1, v0}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .restart local p1    # "destination":Landroid/net/LinkAddress;
    goto :goto_0

    .line 90
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid arguments passed in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_5
    sget-object p2, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    goto :goto_1
.end method

.method public constructor <init>(Ljava/net/InetAddress;)V
    .locals 1
    .param p1, "gateway"    # Ljava/net/InetAddress;

    .prologue
    const/4 v0, 0x0

    .line 116
    invoke-direct {p0, v0, p1, v0}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method private isDefault()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, "val":Z
    iget-object v3, p0, Landroid/net/RouteInfo;->mGateway:Ljava/net/InetAddress;

    if-eqz v3, :cond_1

    .line 147
    iget-object v3, p0, Landroid/net/RouteInfo;->mGateway:Ljava/net/InetAddress;

    instance-of v3, v3, Ljava/net/Inet4Address;

    if-eqz v3, :cond_3

    .line 148
    iget-object v3, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/LinkAddress;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/LinkAddress;

    invoke-virtual {v3}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move v0, v2

    .line 153
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 148
    goto :goto_0

    .line 150
    :cond_3
    iget-object v3, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/LinkAddress;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/LinkAddress;

    invoke-virtual {v3}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    move v0, v2

    :goto_1
    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method private isHost()Z
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/LinkAddress;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/LinkAddress;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/LinkAddress;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/LinkAddress;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static makeHostRoute(Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;
    .locals 1
    .param p0, "host"    # Ljava/net/InetAddress;
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    move-result-object v0

    return-object v0
.end method

.method public static makeHostRoute(Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;
    .locals 3
    .param p0, "host"    # Ljava/net/InetAddress;
    .param p1, "gateway"    # Ljava/net/InetAddress;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    .line 128
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 133
    :goto_0
    return-object v0

    .line 130
    :cond_0
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_1

    .line 131
    new-instance v0, Landroid/net/RouteInfo;

    new-instance v1, Landroid/net/LinkAddress;

    const/16 v2, 0x20

    invoke-direct {v1, p0, v2}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v0, v1, p1, p2}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :cond_1
    new-instance v0, Landroid/net/RouteInfo;

    new-instance v1, Landroid/net/LinkAddress;

    const/16 v2, 0x80

    invoke-direct {v1, p0, v2}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v0, v1, p1, p2}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;
    .locals 5
    .param p1, "dest"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/RouteInfo;",
            ">;",
            "Ljava/net/InetAddress;",
            ")",
            "Landroid/net/RouteInfo;"
        }
    .end annotation

    .prologue
    .line 301
    .local p0, "routes":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 315
    :cond_1
    return-object v0

    .line 303
    :cond_2
    const/4 v0, 0x0

    .line 305
    .local v0, "bestRoute":Landroid/net/RouteInfo;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 306
    .local v2, "route":Landroid/net/RouteInfo;
    iget-object v3, v2, Landroid/net/RouteInfo;->mDestination:Landroid/net/LinkAddress;

    invoke-virtual {v3}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/net/NetworkUtils;->addressTypeMatches(Ljava/net/InetAddress;Ljava/net/InetAddress;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 307
    if-eqz v0, :cond_4

    iget-object v3, v0, Landroid/net/RouteInfo;->mDestination:Landroid/net/LinkAddress;

    invoke-virtual {v3}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v3

    iget-object v4, v2, Landroid/net/RouteInfo;->mDestination:Landroid/net/LinkAddress;

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 312
    :cond_4
    invoke-virtual {v2, p1}, Landroid/net/RouteInfo;->matches(Ljava/net/InetAddress;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 213
    if-ne p0, p1, :cond_1

    .line 231
    :cond_0
    :goto_0
    return v4

    .line 215
    :cond_1
    instance-of v6, p1, Landroid/net/RouteInfo;

    if-nez v6, :cond_2

    move v4, v5

    goto :goto_0

    :cond_2
    move-object v3, p1

    .line 217
    check-cast v3, Landroid/net/RouteInfo;

    .line 219
    .local v3, "target":Landroid/net/RouteInfo;
    iget-object v6, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/LinkAddress;

    if-nez v6, :cond_5

    invoke-virtual {v3}, Landroid/net/RouteInfo;->getDestination()Landroid/net/LinkAddress;

    move-result-object v6

    if-nez v6, :cond_4

    move v1, v4

    .line 223
    .local v1, "sameDestination":Z
    :goto_1
    iget-object v6, p0, Landroid/net/RouteInfo;->mGateway:Ljava/net/InetAddress;

    if-nez v6, :cond_7

    invoke-virtual {v3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v6

    if-nez v6, :cond_6

    move v0, v4

    .line 227
    .local v0, "sameAddress":Z
    :goto_2
    iget-object v6, p0, Landroid/net/RouteInfo;->mInterface:Ljava/lang/String;

    if-nez v6, :cond_9

    invoke-virtual {v3}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_8

    move v2, v4

    .line 231
    .local v2, "sameInterface":Z
    :goto_3
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    iget-boolean v6, p0, Landroid/net/RouteInfo;->mIsDefault:Z

    iget-boolean v7, v3, Landroid/net/RouteInfo;->mIsDefault:Z

    if-eq v6, v7, :cond_0

    :cond_3
    move v4, v5

    goto :goto_0

    .end local v0    # "sameAddress":Z
    .end local v1    # "sameDestination":Z
    .end local v2    # "sameInterface":Z
    :cond_4
    move v1, v5

    .line 219
    goto :goto_1

    :cond_5
    iget-object v6, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/LinkAddress;

    invoke-virtual {v3}, Landroid/net/RouteInfo;->getDestination()Landroid/net/LinkAddress;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/LinkAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1

    .restart local v1    # "sameDestination":Z
    :cond_6
    move v0, v5

    .line 223
    goto :goto_2

    :cond_7
    iget-object v6, p0, Landroid/net/RouteInfo;->mGateway:Ljava/net/InetAddress;

    invoke-virtual {v3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2

    .restart local v0    # "sameAddress":Z
    :cond_8
    move v2, v5

    .line 227
    goto :goto_3

    :cond_9
    iget-object v6, p0, Landroid/net/RouteInfo;->mInterface:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_3
.end method

.method public getDestination()Landroid/net/LinkAddress;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/LinkAddress;

    return-object v0
.end method

.method public getGateway()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Landroid/net/RouteInfo;->mGateway:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getInterface()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Landroid/net/RouteInfo;->mInterface:Ljava/lang/String;

    return-object v0
.end method

.method public hasGateway()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Landroid/net/RouteInfo;->mHasGateway:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 237
    iget-object v0, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/LinkAddress;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Landroid/net/RouteInfo;->mGateway:Ljava/net/InetAddress;

    if-nez v2, :cond_1

    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    iget-object v2, p0, Landroid/net/RouteInfo;->mInterface:Ljava/lang/String;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v1, v0

    iget-boolean v0, p0, Landroid/net/RouteInfo;->mIsDefault:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    :goto_3
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/LinkAddress;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x29

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/net/RouteInfo;->mGateway:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->hashCode()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2f

    goto :goto_1

    :cond_2
    iget-object v1, p0, Landroid/net/RouteInfo;->mInterface:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x43

    goto :goto_2

    :cond_3
    const/4 v0, 0x7

    goto :goto_3
.end method

.method public isDefaultRoute()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Landroid/net/RouteInfo;->mIsDefault:Z

    return v0
.end method

.method public isHostRoute()Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Landroid/net/RouteInfo;->mIsHost:Z

    return v0
.end method

.method protected matches(Ljava/net/InetAddress;)Z
    .locals 2
    .param p1, "destination"    # Ljava/net/InetAddress;

    .prologue
    .line 284
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 290
    :goto_0
    return v1

    .line 287
    :cond_0
    iget-object v1, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/LinkAddress;

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v1

    invoke-static {p1, v1}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v0

    .line 290
    .local v0, "dstNet":Ljava/net/InetAddress;
    iget-object v1, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/LinkAddress;

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 182
    const-string v0, ""

    .line 183
    .local v0, "val":Ljava/lang/String;
    iget-object v1, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/LinkAddress;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/LinkAddress;

    invoke-virtual {v1}, Landroid/net/LinkAddress;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    :cond_0
    iget-object v1, p0, Landroid/net/RouteInfo;->mGateway:Ljava/net/InetAddress;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/RouteInfo;->mGateway:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    :cond_1
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 193
    iget-object v0, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/LinkAddress;

    if-nez v0, :cond_0

    .line 194
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 201
    :goto_0
    iget-object v0, p0, Landroid/net/RouteInfo;->mGateway:Ljava/net/InetAddress;

    if-nez v0, :cond_1

    .line 202
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 208
    :goto_1
    iget-object v0, p0, Landroid/net/RouteInfo;->mInterface:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 209
    return-void

    .line 196
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 197
    iget-object v0, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/LinkAddress;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 198
    iget-object v0, p0, Landroid/net/RouteInfo;->mDestination:Landroid/net/LinkAddress;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 204
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 205
    iget-object v0, p0, Landroid/net/RouteInfo;->mGateway:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_1
.end method
