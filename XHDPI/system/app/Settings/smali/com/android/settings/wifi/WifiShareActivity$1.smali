.class Lcom/android/settings/wifi/WifiShareActivity$1;
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
    .line 56
    iput-object p1, p0, Lcom/android/settings/wifi/WifiShareActivity$1;->this$0:Lcom/android/settings/wifi/WifiShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareActivity$1;->this$0:Lcom/android/settings/wifi/WifiShareActivity;

    const/4 v1, 0x0

    #calls: Lcom/android/settings/wifi/WifiShareActivity;->enableWifiShare(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiShareActivity;->access$000(Lcom/android/settings/wifi/WifiShareActivity;Z)V

    .line 60
    return-void
.end method
