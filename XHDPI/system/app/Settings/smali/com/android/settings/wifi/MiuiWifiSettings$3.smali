.class Lcom/android/settings/wifi/MiuiWifiSettings$3;
.super Ljava/lang/Object;
.source "MiuiWifiSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/MiuiWifiSettings;->constructAccessPoints()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

.field final synthetic val$accessPoint:Lcom/android/settings/wifi/MiuiAccessPoint;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/MiuiWifiSettings;Lcom/android/settings/wifi/MiuiAccessPoint;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 570
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$3;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    iput-object p2, p0, Lcom/android/settings/wifi/MiuiWifiSettings$3;->val$accessPoint:Lcom/android/settings/wifi/MiuiAccessPoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$3;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$3;->val$accessPoint:Lcom/android/settings/wifi/MiuiAccessPoint;

    #calls: Lcom/android/settings/wifi/MiuiWifiSettings;->connectWifiShare(Lcom/android/settings/wifi/MiuiAccessPoint;)V
    invoke-static {v0, v1}, Lcom/android/settings/wifi/MiuiWifiSettings;->access$100(Lcom/android/settings/wifi/MiuiWifiSettings;Lcom/android/settings/wifi/MiuiAccessPoint;)V

    .line 574
    return-void
.end method
