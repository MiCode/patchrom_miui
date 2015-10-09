.class final Landroid/app/ContextImpl$ApplicationContentResolver;
.super Landroid/content/ContentResolver;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ApplicationContentResolver"
.end annotation


# instance fields
.field private final mMainThread:Landroid/app/ActivityThread;

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/ActivityThread;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mainThread"    # Landroid/app/ActivityThread;
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 2214
    invoke-direct {p0, p1}, Landroid/content/ContentResolver;-><init>(Landroid/content/Context;)V

    .line 2215
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread;

    iput-object v0, p0, Landroid/app/ContextImpl$ApplicationContentResolver;->mMainThread:Landroid/app/ActivityThread;

    .line 2216
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    iput-object v0, p0, Landroid/app/ContextImpl$ApplicationContentResolver;->mUser:Landroid/os/UserHandle;

    .line 2217
    return-void
.end method


# virtual methods
.method protected acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "auth"    # Ljava/lang/String;

    .prologue
    .line 2226
    iget-object v0, p0, Landroid/app/ContextImpl$ApplicationContentResolver;->mMainThread:Landroid/app/ActivityThread;

    iget-object v1, p0, Landroid/app/ContextImpl$ApplicationContentResolver;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/app/ActivityThread;->acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/content/IContentProvider;

    move-result-object v0

    return-object v0
.end method

.method protected acquireProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "auth"    # Ljava/lang/String;

    .prologue
    .line 2221
    iget-object v0, p0, Landroid/app/ContextImpl$ApplicationContentResolver;->mMainThread:Landroid/app/ActivityThread;

    iget-object v1, p0, Landroid/app/ContextImpl$ApplicationContentResolver;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/app/ActivityThread;->acquireProvider(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/content/IContentProvider;

    move-result-object v0

    return-object v0
.end method

.method protected acquireUnstableProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .locals 3
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "auth"    # Ljava/lang/String;

    .prologue
    .line 2236
    iget-object v0, p0, Landroid/app/ContextImpl$ApplicationContentResolver;->mMainThread:Landroid/app/ActivityThread;

    iget-object v1, p0, Landroid/app/ContextImpl$ApplicationContentResolver;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/app/ActivityThread;->acquireProvider(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/content/IContentProvider;

    move-result-object v0

    return-object v0
.end method

.method public appNotRespondingViaProvider(Landroid/content/IContentProvider;)V
    .locals 2
    .param p1, "icp"    # Landroid/content/IContentProvider;

    .prologue
    .line 2251
    iget-object v0, p0, Landroid/app/ContextImpl$ApplicationContentResolver;->mMainThread:Landroid/app/ActivityThread;

    invoke-interface {p1}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread;->appNotRespondingViaProvider(Landroid/os/IBinder;)V

    .line 2252
    return-void
.end method

.method public releaseProvider(Landroid/content/IContentProvider;)Z
    .locals 2
    .param p1, "provider"    # Landroid/content/IContentProvider;

    .prologue
    .line 2231
    iget-object v0, p0, Landroid/app/ContextImpl$ApplicationContentResolver;->mMainThread:Landroid/app/ActivityThread;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityThread;->releaseProvider(Landroid/content/IContentProvider;Z)Z

    move-result v0

    return v0
.end method

.method public releaseUnstableProvider(Landroid/content/IContentProvider;)Z
    .locals 2
    .param p1, "icp"    # Landroid/content/IContentProvider;

    .prologue
    .line 2241
    iget-object v0, p0, Landroid/app/ContextImpl$ApplicationContentResolver;->mMainThread:Landroid/app/ActivityThread;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityThread;->releaseProvider(Landroid/content/IContentProvider;Z)Z

    move-result v0

    return v0
.end method

.method public unstableProviderDied(Landroid/content/IContentProvider;)V
    .locals 3
    .param p1, "icp"    # Landroid/content/IContentProvider;

    .prologue
    .line 2246
    iget-object v0, p0, Landroid/app/ContextImpl$ApplicationContentResolver;->mMainThread:Landroid/app/ActivityThread;

    invoke-interface {p1}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityThread;->handleUnstableProviderDied(Landroid/os/IBinder;Z)V

    .line 2247
    return-void
.end method
