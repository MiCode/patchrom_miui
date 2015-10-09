.class Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1$1;
.super Ljava/lang/Object;
.source "RemoteViewsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1$1;->this$1:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 241
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1$1;->this$1:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;

    iget-object v1, v1, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->val$adapter:Landroid/widget/RemoteViewsAdapter;

    # getter for: Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;
    invoke-static {v1}, Landroid/widget/RemoteViewsAdapter;->access$500(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-result-object v2

    monitor-enter v2

    .line 242
    :try_start_0
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1$1;->this$1:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;

    iget-object v1, v1, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->val$adapter:Landroid/widget/RemoteViewsAdapter;

    # getter for: Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;
    invoke-static {v1}, Landroid/widget/RemoteViewsAdapter;->access$500(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->commitTemporaryMetaData()V

    .line 243
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1$1;->this$1:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;

    iget-object v1, v1, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->val$adapter:Landroid/widget/RemoteViewsAdapter;

    # getter for: Landroid/widget/RemoteViewsAdapter;->mCallback:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Landroid/widget/RemoteViewsAdapter;->access$600(Landroid/widget/RemoteViewsAdapter;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;

    .line 247
    .local v0, "callback":Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;
    if-eqz v0, :cond_0

    .line 248
    invoke-interface {v0}, Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;->onRemoteAdapterConnected()Z

    .line 250
    :cond_0
    return-void

    .line 243
    .end local v0    # "callback":Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
