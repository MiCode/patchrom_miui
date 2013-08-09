.class Lcom/android/settings/wifi/WifiConfigActivity$1;
.super Ljava/lang/Object;
.source "WifiConfigActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiConfigActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiConfigActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiConfigActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigActivity$1;->this$0:Lcom/android/settings/wifi/WifiConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/wifi/WifiConfigActivity;->access$002(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigActivity$1;->this$0:Lcom/android/settings/wifi/WifiConfigActivity;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigActivity;->finish()V

    .line 43
    return-void
.end method
