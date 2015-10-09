.class Landroid/view/ViewRootImpl$RunQueue$HandlerAction;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl$RunQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HandlerAction"
.end annotation


# instance fields
.field action:Ljava/lang/Runnable;

.field delay:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/ViewRootImpl$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/ViewRootImpl$1;

    .prologue
    .line 6429
    invoke-direct {p0}, Landroid/view/ViewRootImpl$RunQueue$HandlerAction;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6435
    if-ne p0, p1, :cond_1

    .line 6439
    :cond_0
    :goto_0
    return v1

    .line 6436
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 6438
    check-cast v0, Landroid/view/ViewRootImpl$RunQueue$HandlerAction;

    .line 6439
    .local v0, "that":Landroid/view/ViewRootImpl$RunQueue$HandlerAction;
    iget-object v3, p0, Landroid/view/ViewRootImpl$RunQueue$HandlerAction;->action:Ljava/lang/Runnable;

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/view/ViewRootImpl$RunQueue$HandlerAction;->action:Ljava/lang/Runnable;

    iget-object v4, v0, Landroid/view/ViewRootImpl$RunQueue$HandlerAction;->action:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v3, v0, Landroid/view/ViewRootImpl$RunQueue$HandlerAction;->action:Ljava/lang/Runnable;

    if-nez v3, :cond_4

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    .line 6445
    iget-object v1, p0, Landroid/view/ViewRootImpl$RunQueue$HandlerAction;->action:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/ViewRootImpl$RunQueue$HandlerAction;->action:Ljava/lang/Runnable;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 6446
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroid/view/ViewRootImpl$RunQueue$HandlerAction;->delay:J

    iget-wide v4, p0, Landroid/view/ViewRootImpl$RunQueue$HandlerAction;->delay:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 6447
    return v0

    .line 6445
    .end local v0    # "result":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
