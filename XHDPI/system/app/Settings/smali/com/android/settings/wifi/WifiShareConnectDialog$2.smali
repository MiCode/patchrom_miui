.class Lcom/android/settings/wifi/WifiShareConnectDialog$2;
.super Ljava/lang/Object;
.source "WifiShareConnectDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 39
    iput-object p1, p0, Lcom/android/settings/wifi/WifiShareConnectDialog$2;->this$0:Lcom/android/settings/wifi/WifiShareConnectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 42
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 43
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareConnectDialog$2;->this$0:Lcom/android/settings/wifi/WifiShareConnectDialog;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/wifi/WifiShareConnectDialog;->mDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiShareConnectDialog;->access$002(Lcom/android/settings/wifi/WifiShareConnectDialog;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 44
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareConnectDialog$2;->this$0:Lcom/android/settings/wifi/WifiShareConnectDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiShareConnectDialog;->finish()V

    .line 45
    return-void
.end method
