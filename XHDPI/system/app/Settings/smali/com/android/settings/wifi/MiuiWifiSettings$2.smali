.class Lcom/android/settings/wifi/MiuiWifiSettings$2;
.super Landroid/os/AsyncTask;
.source "MiuiWifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/MiuiWifiSettings;->downloadWifiShare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Landroid/net/wifi/WifiConfiguration;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$wifiShareManager:Lmiui/net/WifiShareManager;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/MiuiWifiSettings;Lmiui/net/WifiShareManager;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$2;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    iput-object p2, p0, Lcom/android/settings/wifi/MiuiWifiSettings$2;->val$wifiShareManager:Lmiui/net/WifiShareManager;

    iput-object p3, p0, Lcom/android/settings/wifi/MiuiWifiSettings$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/MiuiWifiSettings$2;->doInBackground([Ljava/lang/Void;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/HashMap;
    .locals 14
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 149
    iget-object v12, p0, Lcom/android/settings/wifi/MiuiWifiSettings$2;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-virtual {v12}, Lcom/android/settings/wifi/MiuiWifiSettings;->isAdded()Z

    move-result v12

    if-nez v12, :cond_1

    move-object v10, v11

    .line 194
    :cond_0
    return-object v10

    .line 152
    :cond_1
    iget-object v12, p0, Lcom/android/settings/wifi/MiuiWifiSettings$2;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    iget-object v12, v12, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v7

    .line 153
    .local v7, results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const/4 v10, 0x0

    .line 155
    .local v10, wifiShareConfigMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v7, :cond_0

    .line 156
    iget-object v12, p0, Lcom/android/settings/wifi/MiuiWifiSettings$2;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-virtual {v12}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/wifi/WifiConfigurationManager;->getWifiShareValidBssid(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v9

    .line 157
    .local v9, validBssidSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 158
    .local v1, bssid2Ssid:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v2, bssidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v8, ssidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    .line 162
    .local v6, result:Landroid/net/wifi/ScanResult;
    iget-object v12, v6, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v12, :cond_2

    iget-object v12, v6, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_2

    iget-object v12, v6, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v13, "[IBSS]"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 166
    iget-object v12, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v13, v6, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v12, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 168
    iget-object v12, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    iget-object v12, v6, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 173
    .end local v6           #result:Landroid/net/wifi/ScanResult;
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_4

    .line 174
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 175
    .local v3, bundle:Landroid/os/Bundle;
    const-string v12, "miui.intent.extra.BSSIDS"

    invoke-virtual {v3, v12, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 176
    const-string v12, "miui.intent.extra.BSSID"

    invoke-virtual {v3, v12, v8}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 177
    iget-object v12, p0, Lcom/android/settings/wifi/MiuiWifiSettings$2;->val$wifiShareManager:Lmiui/net/WifiShareManager;

    iget-object v13, p0, Lcom/android/settings/wifi/MiuiWifiSettings$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v13}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v12, v13, v3, v11}, Lmiui/net/WifiShareManager;->downloadWifi(Landroid/content/Context;Landroid/os/Bundle;Lmiui/net/WifiShareManager$WifiShareListener;)V

    .line 180
    .end local v3           #bundle:Landroid/os/Bundle;
    :cond_4
    new-instance v10, Ljava/util/HashMap;

    .end local v10           #wifiShareConfigMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;>;"
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 181
    .restart local v10       #wifiShareConfigMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v11, p0, Lcom/android/settings/wifi/MiuiWifiSettings$2;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    #getter for: Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiShareConfigMap:Ljava/util/HashMap;
    invoke-static {v11}, Lcom/android/settings/wifi/MiuiWifiSettings;->access$000(Lcom/android/settings/wifi/MiuiWifiSettings;)Ljava/util/HashMap;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 182
    iget-object v11, p0, Lcom/android/settings/wifi/MiuiWifiSettings$2;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    #getter for: Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiShareConfigMap:Ljava/util/HashMap;
    invoke-static {v11}, Lcom/android/settings/wifi/MiuiWifiSettings;->access$000(Lcom/android/settings/wifi/MiuiWifiSettings;)Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 184
    :cond_5
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 185
    .local v0, bssid:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/settings/wifi/MiuiWifiSettings$2;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-virtual {v11}, Lcom/android/settings/wifi/MiuiWifiSettings;->isAdded()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 188
    iget-object v11, p0, Lcom/android/settings/wifi/MiuiWifiSettings$2;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-virtual {v11}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11, v0}, Lcom/android/settings/wifi/WifiConfigurationManager;->getWifiShareConfiguration(Landroid/content/Context;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 189
    .local v4, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v4, :cond_6

    .line 190
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    check-cast p1, Ljava/util/HashMap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/MiuiWifiSettings$2;->onPostExecute(Ljava/util/HashMap;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/HashMap;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p1, wifiShareConfigMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$2;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$2;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    #setter for: Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiShareConfigMap:Ljava/util/HashMap;
    invoke-static {v0, p1}, Lcom/android/settings/wifi/MiuiWifiSettings;->access$002(Lcom/android/settings/wifi/MiuiWifiSettings;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 203
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$2;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->updateAccessPoints()V

    goto :goto_0
.end method
