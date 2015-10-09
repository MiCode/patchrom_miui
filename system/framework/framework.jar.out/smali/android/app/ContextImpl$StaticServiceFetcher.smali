.class abstract Landroid/app/ContextImpl$StaticServiceFetcher;
.super Landroid/app/ContextImpl$ServiceFetcher;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "StaticServiceFetcher"
.end annotation


# instance fields
.field private mCachedInstance:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 283
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createStaticService()Ljava/lang/Object;
.end method

.method public final getService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 2
    .param p1, "unused"    # Landroid/app/ContextImpl;

    .prologue
    .line 288
    monitor-enter p0

    .line 289
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl$StaticServiceFetcher;->mCachedInstance:Ljava/lang/Object;

    .line 290
    .local v0, "service":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 291
    monitor-exit p0

    .line 293
    .end local v0    # "service":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "service":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Landroid/app/ContextImpl$StaticServiceFetcher;->createStaticService()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "service":Ljava/lang/Object;
    iput-object v0, p0, Landroid/app/ContextImpl$StaticServiceFetcher;->mCachedInstance:Ljava/lang/Object;

    monitor-exit p0

    goto :goto_0

    .line 294
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
