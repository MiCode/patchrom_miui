.class Lcom/android/settings/wifi/WifiRestoreService$WifiLocationListener;
.super Ljava/lang/Object;
.source "WifiRestoreService.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiRestoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiLocationListener"
.end annotation


# instance fields
.field private mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

.field final synthetic this$0:Lcom/android/settings/wifi/WifiRestoreService;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/WifiRestoreService;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/settings/wifi/WifiRestoreService$WifiLocationListener;->this$0:Lcom/android/settings/wifi/WifiRestoreService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/WifiRestoreService;Lcom/android/settings/wifi/WifiRestoreService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiRestoreService$WifiLocationListener;-><init>(Lcom/android/settings/wifi/WifiRestoreService;)V

    return-void
.end method


# virtual methods
.method public getConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService$WifiLocationListener;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 5
    .parameter "location"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService$WifiLocationListener;->this$0:Lcom/android/settings/wifi/WifiRestoreService;

    #getter for: Lcom/android/settings/wifi/WifiRestoreService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiRestoreService;->access$500(Lcom/android/settings/wifi/WifiRestoreService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 202
    iget-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService$WifiLocationListener;->this$0:Lcom/android/settings/wifi/WifiRestoreService;

    #getter for: Lcom/android/settings/wifi/WifiRestoreService;->mWifiConfigurationManager:Lcom/android/settings/wifi/WifiConfigurationManager;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiRestoreService;->access$200(Lcom/android/settings/wifi/WifiRestoreService;)Lcom/android/settings/wifi/WifiConfigurationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiRestoreService$WifiLocationListener;->this$0:Lcom/android/settings/wifi/WifiRestoreService;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiRestoreService$WifiLocationListener;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/wifi/WifiConfigurationManager;->updateCurrentWifi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V

    .line 204
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 208
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 212
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 216
    return-void
.end method

.method public setWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .parameter "wifiConfiguration"

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/settings/wifi/WifiRestoreService$WifiLocationListener;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 193
    return-void
.end method
