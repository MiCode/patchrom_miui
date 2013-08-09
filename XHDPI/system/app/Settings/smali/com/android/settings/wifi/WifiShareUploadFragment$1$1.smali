.class Lcom/android/settings/wifi/WifiShareUploadFragment$1$1;
.super Ljava/lang/Object;
.source "WifiShareUploadFragment.java"

# interfaces
.implements Lmiui/net/WifiShareManager$WifiShareListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiShareUploadFragment$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/wifi/WifiShareUploadFragment$1;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiShareUploadFragment$1;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/settings/wifi/WifiShareUploadFragment$1$1;->this$1:Lcom/android/settings/wifi/WifiShareUploadFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .parameter "code"
    .parameter "message"
    .parameter "result"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareUploadFragment$1$1;->this$1:Lcom/android/settings/wifi/WifiShareUploadFragment$1;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiShareUploadFragment$1;->this$0:Lcom/android/settings/wifi/WifiShareUploadFragment;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareUploadFragment$1$1;->this$1:Lcom/android/settings/wifi/WifiShareUploadFragment$1;

    iget v1, v1, Lcom/android/settings/wifi/WifiShareUploadFragment$1;->val$position:I

    const/4 v2, 0x0

    #calls: Lcom/android/settings/wifi/WifiShareUploadFragment;->updateState(IZ)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/wifi/WifiShareUploadFragment;->access$000(Lcom/android/settings/wifi/WifiShareUploadFragment;IZ)V

    .line 82
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareUploadFragment$1$1;->this$1:Lcom/android/settings/wifi/WifiShareUploadFragment$1;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiShareUploadFragment$1;->this$0:Lcom/android/settings/wifi/WifiShareUploadFragment;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareUploadFragment$1$1;->this$1:Lcom/android/settings/wifi/WifiShareUploadFragment$1;

    iget v1, v1, Lcom/android/settings/wifi/WifiShareUploadFragment$1;->val$position:I

    const/4 v2, 0x1

    #calls: Lcom/android/settings/wifi/WifiShareUploadFragment;->updateState(IZ)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/wifi/WifiShareUploadFragment;->access$000(Lcom/android/settings/wifi/WifiShareUploadFragment;IZ)V

    .line 76
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareUploadFragment$1$1;->this$1:Lcom/android/settings/wifi/WifiShareUploadFragment$1;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiShareUploadFragment$1;->this$0:Lcom/android/settings/wifi/WifiShareUploadFragment;

    #calls: Lcom/android/settings/wifi/WifiShareUploadFragment;->updateTitle()V
    invoke-static {v0}, Lcom/android/settings/wifi/WifiShareUploadFragment;->access$100(Lcom/android/settings/wifi/WifiShareUploadFragment;)V

    .line 77
    return-void
.end method
