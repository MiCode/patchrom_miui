.class Landroid/net/wifi/p2p/WifiP2pGroupList$1;
.super Landroid/util/LruCache;
.source "WifiP2pGroupList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/p2p/WifiP2pGroupList;-><init>(Landroid/net/wifi/p2p/WifiP2pGroupList;Landroid/net/wifi/p2p/WifiP2pGroupList$GroupDeleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/Integer;",
        "Landroid/net/wifi/p2p/WifiP2pGroup;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/p2p/WifiP2pGroupList;


# direct methods
.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pGroupList;I)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 51
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pGroupList$1;->this$0:Landroid/net/wifi/p2p/WifiP2pGroupList;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected entryRemoved(ZLjava/lang/Integer;Landroid/net/wifi/p2p/WifiP2pGroup;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 2
    .param p1, "evicted"    # Z
    .param p2, "netId"    # Ljava/lang/Integer;
    .param p3, "oldValue"    # Landroid/net/wifi/p2p/WifiP2pGroup;
    .param p4, "newValue"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .prologue
    .line 55
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroupList$1;->this$0:Landroid/net/wifi/p2p/WifiP2pGroupList;

    # getter for: Landroid/net/wifi/p2p/WifiP2pGroupList;->mListener:Landroid/net/wifi/p2p/WifiP2pGroupList$GroupDeleteListener;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pGroupList;->access$000(Landroid/net/wifi/p2p/WifiP2pGroupList;)Landroid/net/wifi/p2p/WifiP2pGroupList$GroupDeleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroupList$1;->this$0:Landroid/net/wifi/p2p/WifiP2pGroupList;

    # getter for: Landroid/net/wifi/p2p/WifiP2pGroupList;->isClearCalled:Z
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pGroupList;->access$100(Landroid/net/wifi/p2p/WifiP2pGroupList;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroupList$1;->this$0:Landroid/net/wifi/p2p/WifiP2pGroupList;

    # getter for: Landroid/net/wifi/p2p/WifiP2pGroupList;->mListener:Landroid/net/wifi/p2p/WifiP2pGroupList$GroupDeleteListener;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pGroupList;->access$000(Landroid/net/wifi/p2p/WifiP2pGroupList;)Landroid/net/wifi/p2p/WifiP2pGroupList$GroupDeleteListener;

    move-result-object v0

    invoke-virtual {p3}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/net/wifi/p2p/WifiP2pGroupList$GroupDeleteListener;->onDeleteGroup(I)V

    .line 58
    :cond_0
    return-void
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Z
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Ljava/lang/Object;

    .prologue
    .line 51
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "x1":Ljava/lang/Object;
    check-cast p3, Landroid/net/wifi/p2p/WifiP2pGroup;

    .end local p3    # "x2":Ljava/lang/Object;
    check-cast p4, Landroid/net/wifi/p2p/WifiP2pGroup;

    .end local p4    # "x3":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/net/wifi/p2p/WifiP2pGroupList$1;->entryRemoved(ZLjava/lang/Integer;Landroid/net/wifi/p2p/WifiP2pGroup;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    return-void
.end method
