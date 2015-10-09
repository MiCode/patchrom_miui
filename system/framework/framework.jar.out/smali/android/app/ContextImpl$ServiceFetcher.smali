.class Landroid/app/ContextImpl$ServiceFetcher;
.super Ljava/lang/Object;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ServiceFetcher"
.end annotation


# instance fields
.field mContextCacheIndex:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/ContextImpl$ServiceFetcher;->mContextCacheIndex:I

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 2
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 276
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 5
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 248
    iget-object v0, p1, Landroid/app/ContextImpl;->mServiceCache:Ljava/util/ArrayList;

    .line 250
    .local v0, "cache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    monitor-enter v0

    .line 251
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 256
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    # getter for: Landroid/app/ContextImpl;->sNextPerContextServiceCacheIndex:I
    invoke-static {}, Landroid/app/ContextImpl;->access$000()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 257
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 260
    .end local v1    # "i":I
    :cond_0
    iget v4, p0, Landroid/app/ContextImpl$ServiceFetcher;->mContextCacheIndex:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 261
    .local v2, "service":Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 262
    monitor-exit v0

    move-object v3, v2

    .line 267
    .end local v2    # "service":Ljava/lang/Object;
    .local v3, "service":Ljava/lang/Object;
    :goto_1
    return-object v3

    .line 265
    .end local v3    # "service":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0, p1}, Landroid/app/ContextImpl$ServiceFetcher;->createService(Landroid/app/ContextImpl;)Ljava/lang/Object;

    move-result-object v2

    .line 266
    .restart local v2    # "service":Ljava/lang/Object;
    iget v4, p0, Landroid/app/ContextImpl$ServiceFetcher;->mContextCacheIndex:I

    invoke-virtual {v0, v4, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 267
    monitor-exit v0

    move-object v3, v2

    .end local v2    # "service":Ljava/lang/Object;
    .restart local v3    # "service":Ljava/lang/Object;
    goto :goto_1

    .line 268
    .end local v3    # "service":Ljava/lang/Object;
    :catchall_0
    move-exception v4

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
