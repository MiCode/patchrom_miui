.class public Lcom/android/settings/deviceinfo/PercentageBarChart;
.super Landroid/view/View;
.source "PercentageBarChart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;
    }
.end annotation


# instance fields
.field private final mEmptyPaint:Landroid/graphics/Paint;

.field private mEntries:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private mMinTickWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mEmptyPaint:Landroid/graphics/Paint;

    .line 45
    iput v3, p0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mMinTickWidth:I

    .line 67
    sget-object v2, Lcom/android/settings/R$styleable;->PercentageBarChart:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 68
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mMinTickWidth:I

    .line 71
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 72
    .local v1, emptyColor:I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    iget-object v2, p0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mEmptyPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    iget-object v2, p0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mEmptyPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 76
    return-void
.end method

.method public static createEntry(IFI)Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;
    .locals 2
    .parameter "order"
    .parameter "percentage"
    .parameter "color"

    .prologue
    .line 213
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 214
    .local v0, p:Landroid/graphics/Paint;
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 215
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 216
    new-instance v1, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;-><init>(IFLandroid/graphics/Paint;)V

    return-object v1
.end method

.method private drawMaskToCanvas(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "original"
    .parameter "mask"
    .parameter "canvas"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 187
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 188
    .local v1, result:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 189
    .local v2, tmpCanvas:Landroid/graphics/Canvas;
    new-instance v0, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 190
    .local v0, paint:Landroid/graphics/Paint;
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 191
    invoke-virtual {v2, p1, v6, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 192
    invoke-virtual {v2, p2, v6, v6, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 193
    invoke-virtual {p3, v1, v6, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 194
    return-void
.end method

.method private getBitmapFromNinePatch(IIIILandroid/graphics/drawable/NinePatchDrawable;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "ndBm"

    .prologue
    const/4 v5, 0x0

    .line 164
    sub-int v2, p3, p1

    sub-int v3, p4, p2

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 165
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz p5, :cond_0

    .line 166
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 167
    .local v1, canvas:Landroid/graphics/Canvas;
    sub-int v2, p3, p1

    sub-int v3, p4, p2

    invoke-virtual {p5, v5, v5, v2, v3}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    .line 168
    invoke-virtual {p5, v1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 170
    .end local v1           #canvas:Landroid/graphics/Canvas;
    :cond_0
    return-object v0
.end method

.method private paintRect(IIIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 15
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "iconResId"
    .parameter "paint"
    .parameter "canvas"

    .prologue
    .line 176
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PercentageBarChart;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move/from16 v0, p5

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/NinePatchDrawable;

    .local v6, icon:Landroid/graphics/drawable/NinePatchDrawable;
    move-object v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    .line 177
    invoke-direct/range {v1 .. v6}, Lcom/android/settings/deviceinfo/PercentageBarChart;->getBitmapFromNinePatch(IIIILandroid/graphics/drawable/NinePatchDrawable;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 178
    .local v14, scaleIcon:Landroid/graphics/Bitmap;
    move/from16 v0, p1

    int-to-float v1, v0

    move/from16 v0, p2

    int-to-float v2, v0

    const/4 v3, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v14, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .end local v6           #icon:Landroid/graphics/drawable/NinePatchDrawable;
    .end local v14           #scaleIcon:Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v13

    .line 180
    .local v13, e:Ljava/lang/Exception;
    move/from16 v0, p1

    int-to-float v8, v0

    move/from16 v0, p2

    int-to-float v9, v0

    move/from16 v0, p3

    int-to-float v10, v0

    move/from16 v0, p4

    int-to-float v11, v0

    move-object/from16 v7, p7

    move-object/from16 v12, p6

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 27
    .parameter "canvas"

    .prologue
    .line 80
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PercentageBarChart;->getPaddingLeft()I

    move-result v5

    .line 83
    .local v5, left:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PercentageBarChart;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PercentageBarChart;->getPaddingRight()I

    move-result v10

    sub-int v7, v4, v10

    .line 84
    .local v7, right:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PercentageBarChart;->getPaddingTop()I

    move-result v6

    .line 85
    .local v6, top:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PercentageBarChart;->getHeight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PercentageBarChart;->getPaddingBottom()I

    move-result v10

    sub-int v8, v4, v10

    .line 87
    .local v8, bottom:I
    sub-int v26, v7, v5

    .line 89
    .local v26, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PercentageBarChart;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v10, 0x7f020165

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    check-cast v9, Landroid/graphics/drawable/NinePatchDrawable;

    .local v9, memoryBarMask:Landroid/graphics/drawable/NinePatchDrawable;
    move-object/from16 v4, p0

    .line 90
    invoke-direct/range {v4 .. v9}, Lcom/android/settings/deviceinfo/PercentageBarChart;->getBitmapFromNinePatch(IIIILandroid/graphics/drawable/NinePatchDrawable;)Landroid/graphics/Bitmap;

    move-result-object v23

    .line 91
    .local v23, mask:Landroid/graphics/Bitmap;
    sub-int v4, v7, v5

    sub-int v10, v8, v6

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v25

    .line 92
    .local v25, tmp:Landroid/graphics/Bitmap;
    new-instance v17, Landroid/graphics/Canvas;

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 95
    .local v17, tmpCanvas:Landroid/graphics/Canvas;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PercentageBarChart;->isLayoutRtl()Z

    move-result v21

    .line 96
    .local v21, isLayoutRtl:Z
    if-eqz v21, :cond_3

    .line 97
    int-to-float v0, v7

    move/from16 v24, v0

    .line 99
    .local v24, nextX:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mEntries:Ljava/util/Collection;

    if-eqz v4, :cond_2

    .line 100
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mEntries:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;

    .line 102
    .local v18, e:Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;
    move-object/from16 v0, v18

    iget v4, v0, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;->percentage:F

    const/4 v10, 0x0

    cmpl-float v4, v4, v10

    if-nez v4, :cond_0

    .line 103
    const/16 v19, 0x0

    .line 108
    .local v19, entryWidth:F
    :goto_1
    sub-float v22, v24, v19

    .line 109
    .local v22, lastX:F
    int-to-float v4, v5

    cmpg-float v4, v22, v4

    if-gez v4, :cond_1

    .line 112
    move/from16 v0, v24

    float-to-int v13, v0

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    move-result v15

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;->paint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move-object/from16 v10, p0

    move v11, v5

    move v12, v6

    move v14, v8

    invoke-direct/range {v10 .. v17}, Lcom/android/settings/deviceinfo/PercentageBarChart;->paintRect(IIIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 113
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/deviceinfo/PercentageBarChart;->drawMaskToCanvas(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    .line 160
    .end local v18           #e:Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;
    .end local v19           #entryWidth:F
    .end local v20           #i$:Ljava/util/Iterator;
    .end local v22           #lastX:F
    .end local v24           #nextX:F
    :goto_2
    return-void

    .line 105
    .restart local v18       #e:Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;
    .restart local v20       #i$:Ljava/util/Iterator;
    .restart local v24       #nextX:F
    :cond_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mMinTickWidth:I

    int-to-float v4, v4

    move/from16 v0, v26

    int-to-float v10, v0

    move-object/from16 v0, v18

    iget v11, v0, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;->percentage:F

    mul-float/2addr v10, v11

    invoke-static {v4, v10}, Ljava/lang/Math;->max(FF)F

    move-result v19

    .restart local v19       #entryWidth:F
    goto :goto_1

    .line 120
    .restart local v22       #lastX:F
    :cond_1
    move/from16 v0, v22

    float-to-int v11, v0

    move/from16 v0, v24

    float-to-int v13, v0

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    move-result v15

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;->paint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move-object/from16 v10, p0

    move v12, v6

    move v14, v8

    invoke-direct/range {v10 .. v17}, Lcom/android/settings/deviceinfo/PercentageBarChart;->paintRect(IIIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 121
    move/from16 v24, v22

    .line 122
    goto :goto_0

    .line 126
    .end local v18           #e:Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;
    .end local v19           #entryWidth:F
    .end local v20           #i$:Ljava/util/Iterator;
    .end local v22           #lastX:F
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/deviceinfo/PercentageBarChart;->drawMaskToCanvas(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 128
    .end local v24           #nextX:F
    :cond_3
    int-to-float v0, v5

    move/from16 v22, v0

    .line 130
    .restart local v22       #lastX:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mEntries:Ljava/util/Collection;

    if-eqz v4, :cond_6

    .line 131
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mEntries:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .restart local v20       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;

    .line 133
    .restart local v18       #e:Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;
    move-object/from16 v0, v18

    iget v4, v0, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;->percentage:F

    const/4 v10, 0x0

    cmpl-float v4, v4, v10

    if-nez v4, :cond_4

    .line 134
    const/16 v19, 0x0

    .line 139
    .restart local v19       #entryWidth:F
    :goto_4
    add-float v24, v22, v19

    .line 140
    .restart local v24       #nextX:F
    int-to-float v4, v7

    cmpl-float v4, v24, v4

    if-lez v4, :cond_5

    .line 143
    move/from16 v0, v22

    float-to-int v11, v0

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    move-result v15

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;->paint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move-object/from16 v10, p0

    move v12, v6

    move v13, v7

    move v14, v8

    invoke-direct/range {v10 .. v17}, Lcom/android/settings/deviceinfo/PercentageBarChart;->paintRect(IIIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 144
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/deviceinfo/PercentageBarChart;->drawMaskToCanvas(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    goto/16 :goto_2

    .line 136
    .end local v19           #entryWidth:F
    .end local v24           #nextX:F
    :cond_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mMinTickWidth:I

    int-to-float v4, v4

    move/from16 v0, v26

    int-to-float v10, v0

    move-object/from16 v0, v18

    iget v11, v0, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;->percentage:F

    mul-float/2addr v10, v11

    invoke-static {v4, v10}, Ljava/lang/Math;->max(FF)F

    move-result v19

    .restart local v19       #entryWidth:F
    goto :goto_4

    .line 151
    .restart local v24       #nextX:F
    :cond_5
    move/from16 v0, v22

    float-to-int v11, v0

    move/from16 v0, v24

    float-to-int v13, v0

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    move-result v15

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;->paint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move-object/from16 v10, p0

    move v12, v6

    move v14, v8

    invoke-direct/range {v10 .. v17}, Lcom/android/settings/deviceinfo/PercentageBarChart;->paintRect(IIIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 152
    move/from16 v22, v24

    .line 153
    goto :goto_3

    .line 158
    .end local v18           #e:Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;
    .end local v19           #entryWidth:F
    .end local v20           #i$:Ljava/util/Iterator;
    .end local v24           #nextX:F
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/deviceinfo/PercentageBarChart;->drawMaskToCanvas(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    goto/16 :goto_2
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mEmptyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 203
    return-void
.end method

.method public setEntries(Ljava/util/Collection;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 220
    .local p1, entries:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;>;"
    iput-object p1, p0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mEntries:Ljava/util/Collection;

    .line 221
    return-void
.end method
