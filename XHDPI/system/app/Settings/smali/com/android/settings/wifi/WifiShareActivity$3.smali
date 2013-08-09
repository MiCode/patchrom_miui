.class Lcom/android/settings/wifi/WifiShareActivity$3;
.super Ljava/lang/Object;
.source "WifiShareActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiShareActivity;->updateUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiShareActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiShareActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/settings/wifi/WifiShareActivity$3;->this$0:Lcom/android/settings/wifi/WifiShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareActivity$3;->this$0:Lcom/android/settings/wifi/WifiShareActivity;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareActivity$3;->this$0:Lcom/android/settings/wifi/WifiShareActivity;

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiShareUtils;->addAccount(Landroid/content/Context;Landroid/accounts/AccountManagerCallback;)V

    .line 74
    return-void
.end method
