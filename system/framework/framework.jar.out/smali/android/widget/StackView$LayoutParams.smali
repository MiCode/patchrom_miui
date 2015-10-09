.class Landroid/widget/StackView$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "StackView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/StackView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LayoutParams"
.end annotation


# instance fields
.field private final globalInvalidateRect:Landroid/graphics/Rect;

.field horizontalOffset:I

.field private final invalidateRect:Landroid/graphics/Rect;

.field private final invalidateRectf:Landroid/graphics/RectF;

.field mView:Landroid/view/View;

.field private final parentRect:Landroid/graphics/Rect;

.field final synthetic this$0:Landroid/widget/StackView;

.field verticalOffset:I


# direct methods
.method constructor <init>(Landroid/widget/StackView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 1286
    iput-object p1, p0, Landroid/widget/StackView$LayoutParams;->this$0:Landroid/widget/StackView;

    .line 1287
    invoke-direct {p0, p2, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1272
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/StackView$LayoutParams;->parentRect:Landroid/graphics/Rect;

    .line 1273
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/StackView$LayoutParams;->invalidateRect:Landroid/graphics/Rect;

    .line 1274
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    .line 1275
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    .line 1288
    iput v1, p0, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    .line 1289
    iput v1, p0, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    .line 1290
    iput v1, p0, Landroid/widget/StackView$LayoutParams;->width:I

    .line 1291
    iput v1, p0, Landroid/widget/StackView$LayoutParams;->height:I

    .line 1292
    return-void
.end method

.method constructor <init>(Landroid/widget/StackView;Landroid/view/View;)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 1277
    iput-object p1, p0, Landroid/widget/StackView$LayoutParams;->this$0:Landroid/widget/StackView;

    .line 1278
    invoke-direct {p0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1272
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/StackView$LayoutParams;->parentRect:Landroid/graphics/Rect;

    .line 1273
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/StackView$LayoutParams;->invalidateRect:Landroid/graphics/Rect;

    .line 1274
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    .line 1275
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    .line 1279
    iput v1, p0, Landroid/widget/StackView$LayoutParams;->width:I

    .line 1280
    iput v1, p0, Landroid/widget/StackView$LayoutParams;->height:I

    .line 1281
    iput v1, p0, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    .line 1282
    iput v1, p0, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    .line 1283
    iput-object p2, p0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    .line 1284
    return-void
.end method


# virtual methods
.method getInvalidateRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1322
    iget-object v0, p0, Landroid/widget/StackView$LayoutParams;->invalidateRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "r"    # Landroid/graphics/Rect;

    .prologue
    const/4 v5, 0x0

    .line 1296
    iget-object v2, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1297
    iget-object v2, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/widget/StackView$LayoutParams;->this$0:Landroid/widget/StackView;

    invoke-virtual {v3}, Landroid/widget/StackView;->getWidth()I

    move-result v3

    iget-object v4, p0, Landroid/widget/StackView$LayoutParams;->this$0:Landroid/widget/StackView;

    invoke-virtual {v4}, Landroid/widget/StackView;->getHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;->union(IIII)V

    .line 1298
    move-object v1, p1

    .line 1299
    .local v1, "p":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-nez v2, :cond_1

    .line 1319
    :cond_0
    :goto_0
    return-void

    .line 1301
    :cond_1
    const/4 v0, 0x1

    .line 1302
    .local v0, "firstPass":Z
    iget-object v2, p0, Landroid/widget/StackView$LayoutParams;->parentRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1304
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/StackView$LayoutParams;->parentRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1305
    if-nez v0, :cond_2

    .line 1306
    iget-object v2, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 1309
    :cond_2
    const/4 v0, 0x0

    .line 1310
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .end local v1    # "p":Landroid/view/View;
    check-cast v1, Landroid/view/View;

    .line 1311
    .restart local v1    # "p":Landroid/view/View;
    iget-object v2, p0, Landroid/widget/StackView$LayoutParams;->parentRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1313
    iget-object v2, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_1

    .line 1317
    :cond_3
    iget-object v2, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Landroid/widget/StackView$LayoutParams;->globalInvalidateRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->invalidate(IIII)V

    goto/16 :goto_0
.end method

.method resetInvalidateRect()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1326
    iget-object v0, p0, Landroid/widget/StackView$LayoutParams;->invalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1327
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 1
    .param p1, "newHorizontalOffset"    # I

    .prologue
    .line 1335
    iget v0, p0, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    invoke-virtual {p0, p1, v0}, Landroid/widget/StackView$LayoutParams;->setOffsets(II)V

    .line 1336
    return-void
.end method

.method public setOffsets(II)V
    .locals 15
    .param p1, "newHorizontalOffset"    # I
    .param p2, "newVerticalOffset"    # I

    .prologue
    .line 1339
    iget v9, p0, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    sub-int v2, p1, v9

    .line 1340
    .local v2, "horizontalOffsetDelta":I
    move/from16 v0, p1

    iput v0, p0, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    .line 1341
    iget v9, p0, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    sub-int v6, p2, v9

    .line 1342
    .local v6, "verticalOffsetDelta":I
    move/from16 v0, p2

    iput v0, p0, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    .line 1344
    iget-object v9, p0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    if-eqz v9, :cond_0

    .line 1345
    iget-object v9, p0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->requestLayout()V

    .line 1346
    iget-object v9, p0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v9

    add-int/2addr v9, v2

    iget-object v10, p0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1347
    .local v3, "left":I
    iget-object v9, p0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v9

    add-int/2addr v9, v2

    iget-object v10, p0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1348
    .local v4, "right":I
    iget-object v9, p0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    add-int/2addr v9, v6

    iget-object v10, p0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1349
    .local v5, "top":I
    iget-object v9, p0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    add-int/2addr v9, v6

    iget-object v10, p0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1351
    .local v1, "bottom":I
    iget-object v9, p0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    int-to-float v10, v3

    int-to-float v11, v5

    int-to-float v12, v4

    int-to-float v13, v1

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1353
    iget-object v9, p0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    neg-float v7, v9

    .line 1354
    .local v7, "xoffset":F
    iget-object v9, p0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    neg-float v8, v9

    .line 1355
    .local v8, "yoffset":F
    iget-object v9, p0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    invoke-virtual {v9, v7, v8}, Landroid/graphics/RectF;->offset(FF)V

    .line 1356
    iget-object v9, p0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v9

    iget-object v10, p0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    invoke-virtual {v9, v10}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1357
    iget-object v9, p0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    neg-float v10, v7

    neg-float v11, v8

    invoke-virtual {v9, v10, v11}, Landroid/graphics/RectF;->offset(FF)V

    .line 1359
    iget-object v9, p0, Landroid/widget/StackView$LayoutParams;->invalidateRect:Landroid/graphics/Rect;

    iget-object v10, p0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v10, v10

    iget-object v11, p0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->top:F

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    double-to-int v11, v11

    iget-object v12, p0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->right:F

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v12, v12

    iget-object v13, p0, Landroid/widget/StackView$LayoutParams;->invalidateRectf:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->bottom:F

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-int v13, v13

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 1364
    iget-object v9, p0, Landroid/widget/StackView$LayoutParams;->mView:Landroid/view/View;

    iget-object v10, p0, Landroid/widget/StackView$LayoutParams;->invalidateRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v9, v10}, Landroid/widget/StackView$LayoutParams;->invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1366
    .end local v1    # "bottom":I
    .end local v3    # "left":I
    .end local v4    # "right":I
    .end local v5    # "top":I
    .end local v7    # "xoffset":F
    .end local v8    # "yoffset":F
    :cond_0
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 1
    .param p1, "newVerticalOffset"    # I

    .prologue
    .line 1331
    iget v0, p0, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    invoke-virtual {p0, v0, p1}, Landroid/widget/StackView$LayoutParams;->setOffsets(II)V

    .line 1332
    return-void
.end method
