.class Lcom/android/settings/applications/InstalledAppDetailsFragment$PackageMoveObserver;
.super Landroid/content/pm/IPackageMoveObserver$Stub;
.source "InstalledAppDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/InstalledAppDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageMoveObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/InstalledAppDetailsFragment;


# virtual methods
.method public packageMoved(Ljava/lang/String;I)V
    .locals 3
    .parameter "packageName"
    .parameter "returnCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 213
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment$PackageMoveObserver;->this$0:Lcom/android/settings/applications/InstalledAppDetailsFragment;

    #getter for: Lcom/android/settings/applications/InstalledAppDetailsFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->access$400(Lcom/android/settings/applications/InstalledAppDetailsFragment;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 214
    .local v0, msg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 215
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment$PackageMoveObserver;->this$0:Lcom/android/settings/applications/InstalledAppDetailsFragment;

    #getter for: Lcom/android/settings/applications/InstalledAppDetailsFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->access$400(Lcom/android/settings/applications/InstalledAppDetailsFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 216
    return-void
.end method
