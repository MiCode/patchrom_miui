.class final Landroid/view/ViewDebug$6;
.super Ljava/lang/Object;
.source "ViewDebug.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewDebug;->performViewCapture(Landroid/view/View;Z)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cache:[Landroid/graphics/Bitmap;

.field final synthetic val$captureView:Landroid/view/View;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$skipChildren:Z


# direct methods
.method constructor <init>([Landroid/graphics/Bitmap;Landroid/view/View;ZLjava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 756
    iput-object p1, p0, Landroid/view/ViewDebug$6;->val$cache:[Landroid/graphics/Bitmap;

    iput-object p2, p0, Landroid/view/ViewDebug$6;->val$captureView:Landroid/view/View;

    iput-boolean p3, p0, Landroid/view/ViewDebug$6;->val$skipChildren:Z

    iput-object p4, p0, Landroid/view/ViewDebug$6;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 759
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewDebug$6;->val$cache:[Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/view/ViewDebug$6;->val$captureView:Landroid/view/View;

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x0

    iget-boolean v6, p0, Landroid/view/ViewDebug$6;->val$skipChildren:Z

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/View;->createSnapshot(Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 764
    iget-object v1, p0, Landroid/view/ViewDebug$6;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 766
    :goto_0
    return-void

    .line 761
    :catch_0
    move-exception v0

    .line 762
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    :try_start_1
    const-string v1, "View"

    const-string v2, "Out of memory for bitmap"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 764
    iget-object v1, p0, Landroid/view/ViewDebug$6;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/view/ViewDebug$6;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v1
.end method
