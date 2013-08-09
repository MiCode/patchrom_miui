.class Lcom/android/settings/wifi/WifiShareUploadFragment$2;
.super Ljava/lang/Object;
.source "WifiShareUploadFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiShareUploadFragment;->updateUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiShareUploadFragment;

.field final synthetic val$isWifiShareTurnOn:Z


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiShareUploadFragment;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/settings/wifi/WifiShareUploadFragment$2;->this$0:Lcom/android/settings/wifi/WifiShareUploadFragment;

    iput-boolean p2, p0, Lcom/android/settings/wifi/WifiShareUploadFragment$2;->val$isWifiShareTurnOn:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 126
    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareUploadFragment$2;->this$0:Lcom/android/settings/wifi/WifiShareUploadFragment;

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiShareUploadFragment$2;->val$isWifiShareTurnOn:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #calls: Lcom/android/settings/wifi/WifiShareUploadFragment;->enableWifiShare(Z)V
    invoke-static {v1, v0}, Lcom/android/settings/wifi/WifiShareUploadFragment;->access$200(Lcom/android/settings/wifi/WifiShareUploadFragment;Z)V

    .line 127
    return-void

    .line 126
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
