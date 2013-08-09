.class Lcom/android/settings/wifi/WifiRestoreService$WorkThread;
.super Landroid/os/Handler;
.source "WifiRestoreService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiRestoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiRestoreService;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/WifiRestoreService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 299
    iput-object p1, p0, Lcom/android/settings/wifi/WifiRestoreService$WorkThread;->this$0:Lcom/android/settings/wifi/WifiRestoreService;

    .line 300
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 301
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    .line 305
    iget-object v7, p0, Lcom/android/settings/wifi/WifiRestoreService$WorkThread;->this$0:Lcom/android/settings/wifi/WifiRestoreService;

    invoke-static {v7}, Lcom/android/settings/wifi/WifiShareUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    iget-object v7, p0, Lcom/android/settings/wifi/WifiRestoreService$WorkThread;->this$0:Lcom/android/settings/wifi/WifiRestoreService;

    const-string v8, "com.xiaomi.action.WIFI_SHARE_UPLOAD"

    invoke-static {v7, v8}, Lcom/android/settings/wifi/WifiConfigurationManager;->requestWifiShare(Landroid/content/Context;Ljava/lang/String;)V

    .line 309
    iget-object v7, p0, Lcom/android/settings/wifi/WifiRestoreService$WorkThread;->this$0:Lcom/android/settings/wifi/WifiRestoreService;

    const-string v8, "com.xiaomi.action.WIFI_SHARE_FEEDBACK"

    invoke-static {v7, v8}, Lcom/android/settings/wifi/WifiConfigurationManager;->requestWifiShare(Landroid/content/Context;Ljava/lang/String;)V

    .line 310
    iget v7, p1, Landroid/os/Message;->what:I

    iget-object v8, p0, Lcom/android/settings/wifi/WifiRestoreService$WorkThread;->this$0:Lcom/android/settings/wifi/WifiRestoreService;

    #getter for: Lcom/android/settings/wifi/WifiRestoreService;->MSG_AUTO_DOWNLOAD_WIFI_SHARE:I
    invoke-static {v8}, Lcom/android/settings/wifi/WifiRestoreService;->access$600(Lcom/android/settings/wifi/WifiRestoreService;)I

    move-result v8

    if-ne v7, v8, :cond_0

    .line 311
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 312
    .local v1, bssidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 313
    .local v4, ssidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/settings/wifi/WifiRestoreService$WorkThread;->this$0:Lcom/android/settings/wifi/WifiRestoreService;

    invoke-static {v7}, Lcom/android/settings/wifi/WifiConfigurationManager;->getWifiShareValidBssid(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v5

    .line 314
    .local v5, validBssidSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/settings/wifi/WifiRestoreService$WorkThread;->this$0:Lcom/android/settings/wifi/WifiRestoreService;

    #getter for: Lcom/android/settings/wifi/WifiRestoreService;->sCacheScanBssid2Ssid:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/android/settings/wifi/WifiRestoreService;->access$700(Lcom/android/settings/wifi/WifiRestoreService;)Ljava/util/HashMap;

    move-result-object v8

    monitor-enter v8

    .line 315
    :try_start_0
    iget-object v7, p0, Lcom/android/settings/wifi/WifiRestoreService$WorkThread;->this$0:Lcom/android/settings/wifi/WifiRestoreService;

    #getter for: Lcom/android/settings/wifi/WifiRestoreService;->sCacheScanBssid2Ssid:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/android/settings/wifi/WifiRestoreService;->access$700(Lcom/android/settings/wifi/WifiRestoreService;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 316
    .local v0, bssid:Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 319
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    iget-object v7, p0, Lcom/android/settings/wifi/WifiRestoreService$WorkThread;->this$0:Lcom/android/settings/wifi/WifiRestoreService;

    #getter for: Lcom/android/settings/wifi/WifiRestoreService;->sCacheScanBssid2Ssid:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/android/settings/wifi/WifiRestoreService;->access$700(Lcom/android/settings/wifi/WifiRestoreService;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 322
    .end local v0           #bssid:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_3
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 324
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 325
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 326
    .local v2, bundle:Landroid/os/Bundle;
    const-string v7, "miui.intent.extra.BSSIDS"

    invoke-virtual {v2, v7, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 327
    const-string v7, "miui.intent.extra.BSSID"

    invoke-virtual {v2, v7, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 328
    iget-object v7, p0, Lcom/android/settings/wifi/WifiRestoreService$WorkThread;->this$0:Lcom/android/settings/wifi/WifiRestoreService;

    invoke-static {v7}, Lmiui/net/WifiShareManager;->get(Landroid/content/Context;)Lmiui/net/WifiShareManager;

    move-result-object v6

    .line 329
    .local v6, wifiShareManager:Lmiui/net/WifiShareManager;
    iget-object v7, p0, Lcom/android/settings/wifi/WifiRestoreService$WorkThread;->this$0:Lcom/android/settings/wifi/WifiRestoreService;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v2, v8}, Lmiui/net/WifiShareManager;->downloadWifi(Landroid/content/Context;Landroid/os/Bundle;Lmiui/net/WifiShareManager$WifiShareListener;)V

    goto/16 :goto_0
.end method
