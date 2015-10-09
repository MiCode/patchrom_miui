.class public Landroid/net/wifi/p2p/WifiP2pGroupList;
.super Ljava/lang/Object;
.source "WifiP2pGroupList.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/WifiP2pGroupList$GroupDeleteListener;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pGroupList;",
            ">;"
        }
    .end annotation
.end field

.field private static final CREDENTIAL_MAX_NUM:I = 0x20


# instance fields
.field private isClearCalled:Z

.field private final mGroups:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/net/wifi/p2p/WifiP2pGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mListener:Landroid/net/wifi/p2p/WifiP2pGroupList$GroupDeleteListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 221
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pGroupList$2;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pGroupList$2;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pGroupList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, v0, v0}, Landroid/net/wifi/p2p/WifiP2pGroupList;-><init>(Landroid/net/wifi/p2p/WifiP2pGroupList;Landroid/net/wifi/p2p/WifiP2pGroupList$GroupDeleteListener;)V

    .line 47
    return-void
.end method

.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pGroupList;Landroid/net/wifi/p2p/WifiP2pGroupList$GroupDeleteListener;)V
    .locals 5
    .param p1, "source"    # Landroid/net/wifi/p2p/WifiP2pGroupList;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pGroupList$GroupDeleteListener;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/net/wifi/p2p/WifiP2pGroupList;->isClearCalled:Z

    .line 50
    iput-object p2, p0, Landroid/net/wifi/p2p/WifiP2pGroupList;->mListener:Landroid/net/wifi/p2p/WifiP2pGroupList$GroupDeleteListener;

    .line 51
    new-instance v2, Landroid/net/wifi/p2p/WifiP2pGroupList$1;

    const/16 v3, 0x20

    invoke-direct {v2, p0, v3}, Landroid/net/wifi/p2p/WifiP2pGroupList$1;-><init>(Landroid/net/wifi/p2p/WifiP2pGroupList;I)V

    iput-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroupList;->mGroups:Landroid/util/LruCache;

    .line 61
    if-eqz p1, :cond_0

    .line 62
    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pGroupList;->mGroups:Landroid/util/LruCache;

    invoke-virtual {v2}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 63
    .local v1, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/net/wifi/p2p/WifiP2pGroup;>;"
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroupList;->mGroups:Landroid/util/LruCache;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 66
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/net/wifi/p2p/WifiP2pGroup;>;"
    :cond_0
    return-void
.end method

.method static synthetic access$000(Landroid/net/wifi/p2p/WifiP2pGroupList;)Landroid/net/wifi/p2p/WifiP2pGroupList$GroupDeleteListener;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pGroupList;

    .prologue
    .line 32
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroupList;->mListener:Landroid/net/wifi/p2p/WifiP2pGroupList$GroupDeleteListener;

    return-object v0
.end method

.method static synthetic access$100(Landroid/net/wifi/p2p/WifiP2pGroupList;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pGroupList;

    .prologue
    .line 32
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pGroupList;->isClearCalled:Z

    return v0
.end method


# virtual methods
.method add(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 2
    .param p1, "group"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .prologue
    .line 83
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroupList;->mGroups:Landroid/util/LruCache;

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    return-void
.end method

.method clear()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 108
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroupList;->mGroups:Landroid/util/LruCache;

    invoke-virtual {v2}, Landroid/util/LruCache;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 112
    :goto_0
    return v0

    .line 109
    :cond_0
    iput-boolean v1, p0, Landroid/net/wifi/p2p/WifiP2pGroupList;->isClearCalled:Z

    .line 110
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroupList;->mGroups:Landroid/util/LruCache;

    invoke-virtual {v2}, Landroid/util/LruCache;->evictAll()V

    .line 111
    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pGroupList;->isClearCalled:Z

    move v0, v1

    .line 112
    goto :goto_0
.end method

.method contains(I)Z
    .locals 4
    .param p1, "netId"    # I

    .prologue
    .line 187
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pGroupList;->mGroups:Landroid/util/LruCache;

    invoke-virtual {v3}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 188
    .local v0, "groups":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/p2p/WifiP2pGroup;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 189
    .local v1, "grp":Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkId()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 190
    const/4 v3, 0x1

    .line 193
    .end local v1    # "grp":Landroid/net/wifi/p2p/WifiP2pGroup;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method public getGroupList()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroupList;->mGroups:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method getNetworkId(Ljava/lang/String;)I
    .locals 5
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 125
    if-nez p1, :cond_1

    .line 135
    :cond_0
    :goto_0
    return v3

    .line 127
    :cond_1
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pGroupList;->mGroups:Landroid/util/LruCache;

    invoke-virtual {v4}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 128
    .local v0, "groups":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/p2p/WifiP2pGroup;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 129
    .local v1, "grp":Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 131
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pGroupList;->mGroups:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkId()I

    move-result v3

    goto :goto_0
.end method

.method getNetworkId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 147
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 161
    :cond_0
    :goto_0
    return v3

    .line 151
    :cond_1
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pGroupList;->mGroups:Landroid/util/LruCache;

    invoke-virtual {v4}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 152
    .local v0, "groups":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/p2p/WifiP2pGroup;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 153
    .local v1, "grp":Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 156
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pGroupList;->mGroups:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkId()I

    move-result v3

    goto :goto_0
.end method

.method getOwnerAddr(I)Ljava/lang/String;
    .locals 3
    .param p1, "netId"    # I

    .prologue
    .line 171
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pGroupList;->mGroups:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 172
    .local v0, "grp":Landroid/net/wifi/p2p/WifiP2pGroup;
    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 175
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method remove(I)V
    .locals 2
    .param p1, "netId"    # I

    .prologue
    .line 92
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroupList;->mGroups:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    return-void
.end method

.method remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pGroupList;->getNetworkId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/p2p/WifiP2pGroupList;->remove(I)V

    .line 102
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 197
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 199
    .local v3, "sbuf":Ljava/lang/StringBuffer;
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pGroupList;->mGroups:Landroid/util/LruCache;

    invoke-virtual {v4}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 200
    .local v0, "groups":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/p2p/WifiP2pGroup;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 201
    .local v1, "grp":Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 203
    .end local v1    # "grp":Landroid/net/wifi/p2p/WifiP2pGroup;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 213
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pGroupList;->mGroups:Landroid/util/LruCache;

    invoke-virtual {v3}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 214
    .local v1, "groups":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/p2p/WifiP2pGroup;>;"
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 216
    .local v0, "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 218
    .end local v0    # "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    :cond_0
    return-void
.end method
