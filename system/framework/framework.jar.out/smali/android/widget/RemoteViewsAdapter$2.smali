.class Landroid/widget/RemoteViewsAdapter$2;
.super Ljava/lang/Object;
.source "RemoteViewsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViewsAdapter;->loadNextIndexInBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/RemoteViewsAdapter;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViewsAdapter;)V
    .locals 0

    .prologue
    .line 951
    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter$2;->this$0:Landroid/widget/RemoteViewsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 954
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$2;->this$0:Landroid/widget/RemoteViewsAdapter;

    # getter for: Landroid/widget/RemoteViewsAdapter;->mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;
    invoke-static {v2}, Landroid/widget/RemoteViewsAdapter;->access$300(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 956
    const/4 v0, -0x1

    .line 957
    .local v0, "position":I
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$2;->this$0:Landroid/widget/RemoteViewsAdapter;

    # getter for: Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;
    invoke-static {v2}, Landroid/widget/RemoteViewsAdapter;->access$500(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-result-object v3

    monitor-enter v3

    .line 958
    :try_start_0
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$2;->this$0:Landroid/widget/RemoteViewsAdapter;

    # getter for: Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;
    invoke-static {v2}, Landroid/widget/RemoteViewsAdapter;->access$500(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getNextIndexToLoad()[I

    move-result-object v1

    .line 959
    .local v1, "res":[I
    const/4 v2, 0x0

    aget v0, v1, v2

    .line 960
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 961
    const/4 v2, -0x1

    if-le v0, v2, :cond_1

    .line 963
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$2;->this$0:Landroid/widget/RemoteViewsAdapter;

    const/4 v3, 0x1

    # invokes: Landroid/widget/RemoteViewsAdapter;->updateRemoteViews(IZ)V
    invoke-static {v2, v0, v3}, Landroid/widget/RemoteViewsAdapter;->access$1700(Landroid/widget/RemoteViewsAdapter;IZ)V

    .line 966
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$2;->this$0:Landroid/widget/RemoteViewsAdapter;

    # invokes: Landroid/widget/RemoteViewsAdapter;->loadNextIndexInBackground()V
    invoke-static {v2}, Landroid/widget/RemoteViewsAdapter;->access$1800(Landroid/widget/RemoteViewsAdapter;)V

    .line 972
    .end local v0    # "position":I
    .end local v1    # "res":[I
    :cond_0
    :goto_0
    return-void

    .line 960
    .restart local v0    # "position":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 969
    .restart local v1    # "res":[I
    :cond_1
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$2;->this$0:Landroid/widget/RemoteViewsAdapter;

    # invokes: Landroid/widget/RemoteViewsAdapter;->enqueueDeferredUnbindServiceMessage()V
    invoke-static {v2}, Landroid/widget/RemoteViewsAdapter;->access$800(Landroid/widget/RemoteViewsAdapter;)V

    goto :goto_0
.end method
