.class Lcom/android/settings/wifi/WifiRestoreService$1;
.super Landroid/os/Handler;
.source "WifiRestoreService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiRestoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiRestoreService;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiRestoreService;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/settings/wifi/WifiRestoreService$1;->this$0:Lcom/android/settings/wifi/WifiRestoreService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const-wide/16 v3, 0x0

    .line 173
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 184
    :goto_0
    return-void

    .line 175
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService$1;->this$0:Lcom/android/settings/wifi/WifiRestoreService;

    #getter for: Lcom/android/settings/wifi/WifiRestoreService;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiRestoreService;->access$100(Lcom/android/settings/wifi/WifiRestoreService;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiRestoreService$1;->this$0:Lcom/android/settings/wifi/WifiRestoreService;

    #getter for: Lcom/android/settings/wifi/WifiRestoreService;->mWifiLocationListener:Lcom/android/settings/wifi/WifiRestoreService$WifiLocationListener;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiRestoreService;->access$000(Lcom/android/settings/wifi/WifiRestoreService;)Lcom/android/settings/wifi/WifiRestoreService$WifiLocationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 176
    iget-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService$1;->this$0:Lcom/android/settings/wifi/WifiRestoreService;

    #getter for: Lcom/android/settings/wifi/WifiRestoreService;->mWifiConfigurationManager:Lcom/android/settings/wifi/WifiConfigurationManager;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiRestoreService;->access$200(Lcom/android/settings/wifi/WifiRestoreService;)Lcom/android/settings/wifi/WifiConfigurationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiRestoreService$1;->this$0:Lcom/android/settings/wifi/WifiRestoreService;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiRestoreService$1;->this$0:Lcom/android/settings/wifi/WifiRestoreService;

    #getter for: Lcom/android/settings/wifi/WifiRestoreService;->mWifiLocationListener:Lcom/android/settings/wifi/WifiRestoreService$WifiLocationListener;
    invoke-static {v4}, Lcom/android/settings/wifi/WifiRestoreService;->access$000(Lcom/android/settings/wifi/WifiRestoreService;)Lcom/android/settings/wifi/WifiRestoreService$WifiLocationListener;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/wifi/WifiRestoreService$WifiLocationListener;->getConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/wifi/WifiConfigurationManager;->updateCurrentWifi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 181
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService$1;->this$0:Lcom/android/settings/wifi/WifiRestoreService;

    #calls: Lcom/android/settings/wifi/WifiRestoreService;->setWifiConfiguration()V
    invoke-static {v0}, Lcom/android/settings/wifi/WifiRestoreService;->access$300(Lcom/android/settings/wifi/WifiRestoreService;)V

    goto :goto_0

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
