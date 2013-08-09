.class Lcom/android/settings/wifi/WifiShareUploadFragment$1;
.super Landroid/os/AsyncTask;
.source "WifiShareUploadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiShareUploadFragment;->upload(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiShareUploadFragment;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$position:I

.field final synthetic val$wifiShareManager:Lmiui/net/WifiShareManager;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiShareUploadFragment;Lmiui/net/WifiShareManager;Landroid/app/Activity;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/settings/wifi/WifiShareUploadFragment$1;->this$0:Lcom/android/settings/wifi/WifiShareUploadFragment;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiShareUploadFragment$1;->val$wifiShareManager:Lmiui/net/WifiShareManager;

    iput-object p3, p0, Lcom/android/settings/wifi/WifiShareUploadFragment$1;->val$activity:Landroid/app/Activity;

    iput p4, p0, Lcom/android/settings/wifi/WifiShareUploadFragment$1;->val$position:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiShareUploadFragment$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .parameter "params"

    .prologue
    const/4 v3, 0x0

    .line 71
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareUploadFragment$1;->val$wifiShareManager:Lmiui/net/WifiShareManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareUploadFragment$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/WifiShareUploadFragment$1$1;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiShareUploadFragment$1$1;-><init>(Lcom/android/settings/wifi/WifiShareUploadFragment$1;)V

    invoke-virtual {v0, v1, v3, v2}, Lmiui/net/WifiShareManager;->uploadWifi(Landroid/content/Context;Landroid/os/Bundle;Lmiui/net/WifiShareManager$WifiShareListener;)V

    .line 84
    return-object v3
.end method
