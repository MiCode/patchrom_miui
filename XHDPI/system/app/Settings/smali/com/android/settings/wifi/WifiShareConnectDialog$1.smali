.class Lcom/android/settings/wifi/WifiShareConnectDialog$1;
.super Ljava/lang/Object;
.source "WifiShareConnectDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiShareConnectDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiShareConnectDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiShareConnectDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/settings/wifi/WifiShareConnectDialog$1;->this$0:Lcom/android/settings/wifi/WifiShareConnectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 32
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 33
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$WifiSettingsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareConnectDialog$1;->this$0:Lcom/android/settings/wifi/WifiShareConnectDialog;

    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/WifiShareConnectDialog;->startActivity(Landroid/content/Intent;)V

    .line 35
    return-void
.end method
