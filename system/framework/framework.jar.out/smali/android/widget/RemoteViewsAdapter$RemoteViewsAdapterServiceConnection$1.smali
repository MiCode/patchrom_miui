.class Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;
.super Ljava/lang/Object;
.source "RemoteViewsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->onServiceConnected(Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

.field final synthetic val$adapter:Landroid/widget/RemoteViewsAdapter;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;Landroid/widget/RemoteViewsAdapter;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->this$0:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    iput-object p2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->val$adapter:Landroid/widget/RemoteViewsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 209
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->val$adapter:Landroid/widget/RemoteViewsAdapter;

    # getter for: Landroid/widget/RemoteViewsAdapter;->mNotifyDataSetChangedAfterOnServiceConnected:Z
    invoke-static {v2}, Landroid/widget/RemoteViewsAdapter;->access$100(Landroid/widget/RemoteViewsAdapter;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 211
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->val$adapter:Landroid/widget/RemoteViewsAdapter;

    # invokes: Landroid/widget/RemoteViewsAdapter;->onNotifyDataSetChanged()V
    invoke-static {v2}, Landroid/widget/RemoteViewsAdapter;->access$200(Landroid/widget/RemoteViewsAdapter;)V

    .line 255
    :goto_0
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->val$adapter:Landroid/widget/RemoteViewsAdapter;

    # invokes: Landroid/widget/RemoteViewsAdapter;->enqueueDeferredUnbindServiceMessage()V
    invoke-static {v2}, Landroid/widget/RemoteViewsAdapter;->access$800(Landroid/widget/RemoteViewsAdapter;)V

    .line 256
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->this$0:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    const/4 v3, 0x1

    # setter for: Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnected:Z
    invoke-static {v2, v3}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->access$902(Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;Z)Z

    .line 257
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->this$0:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    const/4 v3, 0x0

    # setter for: Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnecting:Z
    invoke-static {v2, v3}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->access$1002(Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;Z)Z

    .line 258
    :goto_1
    return-void

    .line 213
    :cond_0
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->val$adapter:Landroid/widget/RemoteViewsAdapter;

    # getter for: Landroid/widget/RemoteViewsAdapter;->mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;
    invoke-static {v2}, Landroid/widget/RemoteViewsAdapter;->access$300(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->getRemoteViewsFactory()Lcom/android/internal/widget/IRemoteViewsFactory;

    move-result-object v1

    .line 216
    .local v1, "factory":Lcom/android/internal/widget/IRemoteViewsFactory;
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/widget/IRemoteViewsFactory;->isCreated()Z

    move-result v2

    if-nez v2, :cond_1

    .line 219
    invoke-interface {v1}, Lcom/android/internal/widget/IRemoteViewsFactory;->onDataSetChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 235
    :cond_1
    :goto_2
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->val$adapter:Landroid/widget/RemoteViewsAdapter;

    # invokes: Landroid/widget/RemoteViewsAdapter;->updateTemporaryMetaData()V
    invoke-static {v2}, Landroid/widget/RemoteViewsAdapter;->access$400(Landroid/widget/RemoteViewsAdapter;)V

    .line 238
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->val$adapter:Landroid/widget/RemoteViewsAdapter;

    # getter for: Landroid/widget/RemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;
    invoke-static {v2}, Landroid/widget/RemoteViewsAdapter;->access$700(Landroid/widget/RemoteViewsAdapter;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1$1;

    invoke-direct {v3, p0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1$1;-><init>(Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "RemoteViewsAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error notifying factory of data set changed in onServiceConnected(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 228
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "RemoteViewsAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error notifying factory of data set changed in onServiceConnected(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
