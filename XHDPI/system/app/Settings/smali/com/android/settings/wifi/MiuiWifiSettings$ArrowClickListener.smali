.class Lcom/android/settings/wifi/MiuiWifiSettings$ArrowClickListener;
.super Ljava/lang/Object;
.source "MiuiWifiSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/MiuiWifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArrowClickListener"
.end annotation


# instance fields
.field private mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field final synthetic this$0:Lcom/android/settings/wifi/MiuiWifiSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/MiuiWifiSettings;Lcom/android/settings/wifi/AccessPoint;)V
    .locals 0
    .parameter
    .parameter "accessPoint"

    .prologue
    .line 465
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$ArrowClickListener;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 466
    iput-object p2, p0, Lcom/android/settings/wifi/MiuiWifiSettings$ArrowClickListener;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 467
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 471
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 472
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$ArrowClickListener;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    .line 473
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings$ArrowClickListener;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-virtual {v2}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings/EditActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 474
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 475
    const-string v0, "edit_type"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 476
    const-string v0, "ssid"

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings$ArrowClickListener;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 477
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$ArrowClickListener;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    const/16 v2, 0xc8

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wifi/MiuiWifiSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 478
    return-void
.end method
