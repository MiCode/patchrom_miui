.class public Landroid/media/MediaRouter$RouteCategory;
.super Ljava/lang/Object;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RouteCategory"
.end annotation


# instance fields
.field final mGroupable:Z

.field mIsSystem:Z

.field mName:Ljava/lang/CharSequence;

.field mNameResId:I

.field mTypes:I


# direct methods
.method constructor <init>(IIZ)V
    .locals 0
    .param p1, "nameResId"    # I
    .param p2, "types"    # I
    .param p3, "groupable"    # Z

    .prologue
    .line 2496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2497
    iput p1, p0, Landroid/media/MediaRouter$RouteCategory;->mNameResId:I

    .line 2498
    iput p2, p0, Landroid/media/MediaRouter$RouteCategory;->mTypes:I

    .line 2499
    iput-boolean p3, p0, Landroid/media/MediaRouter$RouteCategory;->mGroupable:Z

    .line 2500
    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;IZ)V
    .locals 0
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "types"    # I
    .param p3, "groupable"    # Z

    .prologue
    .line 2490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2491
    iput-object p1, p0, Landroid/media/MediaRouter$RouteCategory;->mName:Ljava/lang/CharSequence;

    .line 2492
    iput p2, p0, Landroid/media/MediaRouter$RouteCategory;->mTypes:I

    .line 2493
    iput-boolean p3, p0, Landroid/media/MediaRouter$RouteCategory;->mGroupable:Z

    .line 2494
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 2506
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, v0}, Landroid/media/MediaRouter$RouteCategory;->getName(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getName(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2516
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaRouter$RouteCategory;->getName(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method getName(Landroid/content/res/Resources;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 2520
    iget v0, p0, Landroid/media/MediaRouter$RouteCategory;->mNameResId:I

    if-eqz v0, :cond_0

    .line 2521
    iget v0, p0, Landroid/media/MediaRouter$RouteCategory;->mNameResId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2523
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/media/MediaRouter$RouteCategory;->mName:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getRoutes(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/MediaRouter$RouteInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2540
    .local p1, "out":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRouter$RouteInfo;>;"
    if-nez p1, :cond_1

    .line 2541
    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "out":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRouter$RouteInfo;>;"
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2546
    .restart local p1    # "out":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRouter$RouteInfo;>;"
    :goto_0
    invoke-static {}, Landroid/media/MediaRouter;->getRouteCountStatic()I

    move-result v0

    .line 2547
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 2548
    invoke-static {v1}, Landroid/media/MediaRouter;->getRouteAtStatic(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v2

    .line 2549
    .local v2, "route":Landroid/media/MediaRouter$RouteInfo;
    iget-object v3, v2, Landroid/media/MediaRouter$RouteInfo;->mCategory:Landroid/media/MediaRouter$RouteCategory;

    if-ne v3, p0, :cond_0

    .line 2550
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2547
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2543
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 2553
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_2
    return-object p1
.end method

.method public getSupportedTypes()I
    .locals 1

    .prologue
    .line 2560
    iget v0, p0, Landroid/media/MediaRouter$RouteCategory;->mTypes:I

    return v0
.end method

.method public isGroupable()Z
    .locals 1

    .prologue
    .line 2572
    iget-boolean v0, p0, Landroid/media/MediaRouter$RouteCategory;->mGroupable:Z

    return v0
.end method

.method public isSystem()Z
    .locals 1

    .prologue
    .line 2580
    iget-boolean v0, p0, Landroid/media/MediaRouter$RouteCategory;->mIsSystem:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RouteCategory{ name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaRouter$RouteCategory;->mName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " types="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/MediaRouter$RouteCategory;->mTypes:I

    invoke-static {v1}, Landroid/media/MediaRouter;->typesToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " groupable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/media/MediaRouter$RouteCategory;->mGroupable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
