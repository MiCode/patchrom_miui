.class final Landroid/view/ViewDebug$4;
.super Ljava/lang/Object;
.source "ViewDebug.java"

# interfaces
.implements Landroid/view/ViewDebug$ViewOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewDebug;->profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/ViewDebug$ViewOperation",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 551
    iput-object p1, p0, Landroid/view/ViewDebug$4;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs post([Ljava/lang/Object;)V
    .locals 3
    .param p1, "data"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 572
    aget-object v0, p1, v1

    if-eqz v0, :cond_0

    .line 573
    aget-object v0, p1, v1

    check-cast v0, Landroid/graphics/Canvas;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 575
    :cond_0
    aget-object v0, p1, v2

    if-eqz v0, :cond_1

    .line 576
    aget-object v0, p1, v2

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 578
    :cond_1
    return-void
.end method

.method public pre()[Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 553
    iget-object v3, p0, Landroid/view/ViewDebug$4;->val$view:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/view/ViewDebug$4;->val$view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/view/ViewDebug$4;->val$view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 556
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    :goto_0
    if-eqz v2, :cond_2

    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 559
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    if-eqz v0, :cond_0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 560
    .local v1, "canvas":Landroid/graphics/Canvas;
    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    return-object v3

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "metrics":Landroid/util/DisplayMetrics;
    :cond_1
    move-object v2, v1

    .line 553
    goto :goto_0

    .restart local v2    # "metrics":Landroid/util/DisplayMetrics;
    :cond_2
    move-object v0, v1

    .line 556
    goto :goto_1
.end method

.method public varargs run([Ljava/lang/Object;)V
    .locals 3
    .param p1, "data"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 566
    aget-object v0, p1, v2

    if-eqz v0, :cond_0

    .line 567
    iget-object v1, p0, Landroid/view/ViewDebug$4;->val$view:Landroid/view/View;

    aget-object v0, p1, v2

    check-cast v0, Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 569
    :cond_0
    return-void
.end method
