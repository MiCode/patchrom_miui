.class public final Landroid/content/res/AssetManager$AssetInputStream;
.super Ljava/io/InputStream;
.source "AssetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/AssetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AssetInputStream"
.end annotation


# instance fields
.field private mAsset:I

.field private mLength:J

.field private mMarkPos:J

.field final synthetic this$0:Landroid/content/res/AssetManager;


# direct methods
.method private constructor <init>(Landroid/content/res/AssetManager;I)V
    .locals 2
    .param p2, "asset"    # I

    .prologue
    .line 548
    iput-object p1, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 549
    iput p2, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:I

    .line 550
    # invokes: Landroid/content/res/AssetManager;->getAssetLength(I)J
    invoke-static {p1, p2}, Landroid/content/res/AssetManager;->access$100(Landroid/content/res/AssetManager;I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->mLength:J

    .line 551
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/res/AssetManager;ILandroid/content/res/AssetManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/res/AssetManager;
    .param p2, "x1"    # I
    .param p3, "x2"    # Landroid/content/res/AssetManager$1;

    .prologue
    .line 543
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager$AssetInputStream;-><init>(Landroid/content/res/AssetManager;I)V

    return-void
.end method


# virtual methods
.method public final available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 559
    iget-object v2, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    iget v3, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:I

    # invokes: Landroid/content/res/AssetManager;->getAssetRemainingLength(I)J
    invoke-static {v2, v3}, Landroid/content/res/AssetManager;->access$300(Landroid/content/res/AssetManager;I)J

    move-result-wide v0

    .line 560
    .local v0, "len":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const v2, 0x7fffffff

    :goto_0
    return v2

    :cond_0
    long-to-int v2, v0

    goto :goto_0
.end method

.method public final close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 563
    iget-object v1, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    monitor-enter v1

    .line 564
    :try_start_0
    iget v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:I

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    iget v2, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:I

    # invokes: Landroid/content/res/AssetManager;->destroyAsset(I)V
    invoke-static {v0, v2}, Landroid/content/res/AssetManager;->access$400(Landroid/content/res/AssetManager;I)V

    .line 566
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:I

    .line 567
    iget-object v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    # invokes: Landroid/content/res/AssetManager;->decRefsLocked(I)V
    invoke-static {v0, v2}, Landroid/content/res/AssetManager;->access$500(Landroid/content/res/AssetManager;I)V

    .line 569
    :cond_0
    monitor-exit v1

    .line 570
    return-void

    .line 569
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 596
    invoke-virtual {p0}, Landroid/content/res/AssetManager$AssetInputStream;->close()V

    .line 597
    return-void
.end method

.method public final getAssetInt()I
    .locals 1

    .prologue
    .line 545
    iget v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:I

    return v0
.end method

.method public final mark(I)V
    .locals 5
    .param p1, "readlimit"    # I

    .prologue
    .line 572
    iget-object v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    iget v1, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:I

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    # invokes: Landroid/content/res/AssetManager;->seekAsset(IJI)J
    invoke-static {v0, v1, v2, v3, v4}, Landroid/content/res/AssetManager;->access$600(Landroid/content/res/AssetManager;IJI)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->mMarkPos:J

    .line 573
    return-void
.end method

.method public final markSupported()Z
    .locals 1

    .prologue
    .line 556
    const/4 v0, 0x1

    return v0
.end method

.method public final read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 553
    iget-object v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    iget v1, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:I

    # invokes: Landroid/content/res/AssetManager;->readAssetChar(I)I
    invoke-static {v0, v1}, Landroid/content/res/AssetManager;->access$200(Landroid/content/res/AssetManager;I)I

    move-result v0

    return v0
.end method

.method public final read([B)I
    .locals 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 578
    iget-object v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    iget v1, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:I

    const/4 v2, 0x0

    array-length v3, p1

    # invokes: Landroid/content/res/AssetManager;->readAsset(I[BII)I
    invoke-static {v0, v1, p1, v2, v3}, Landroid/content/res/AssetManager;->access$700(Landroid/content/res/AssetManager;I[BII)I

    move-result v0

    return v0
.end method

.method public final read([BII)I
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 581
    iget-object v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    iget v1, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:I

    # invokes: Landroid/content/res/AssetManager;->readAsset(I[BII)I
    invoke-static {v0, v1, p1, p2, p3}, Landroid/content/res/AssetManager;->access$700(Landroid/content/res/AssetManager;I[BII)I

    move-result v0

    return v0
.end method

.method public final reset()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 575
    iget-object v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    iget v1, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:I

    iget-wide v2, p0, Landroid/content/res/AssetManager$AssetInputStream;->mMarkPos:J

    const/4 v4, -0x1

    # invokes: Landroid/content/res/AssetManager;->seekAsset(IJI)J
    invoke-static {v0, v1, v2, v3, v4}, Landroid/content/res/AssetManager;->access$600(Landroid/content/res/AssetManager;IJI)J

    .line 576
    return-void
.end method

.method public final skip(J)J
    .locals 9
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    .line 584
    iget-object v2, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    iget v3, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:I

    # invokes: Landroid/content/res/AssetManager;->seekAsset(IJI)J
    invoke-static {v2, v3, v7, v8, v6}, Landroid/content/res/AssetManager;->access$600(Landroid/content/res/AssetManager;IJI)J

    move-result-wide v0

    .line 585
    .local v0, "pos":J
    add-long v2, v0, p1

    iget-wide v4, p0, Landroid/content/res/AssetManager$AssetInputStream;->mLength:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 586
    iget-wide v2, p0, Landroid/content/res/AssetManager$AssetInputStream;->mLength:J

    sub-long p1, v2, v0

    .line 588
    :cond_0
    cmp-long v2, p1, v7

    if-lez v2, :cond_1

    .line 589
    iget-object v2, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    iget v3, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:I

    # invokes: Landroid/content/res/AssetManager;->seekAsset(IJI)J
    invoke-static {v2, v3, p1, p2, v6}, Landroid/content/res/AssetManager;->access$600(Landroid/content/res/AssetManager;IJI)J

    .line 591
    :cond_1
    return-wide p1
.end method
