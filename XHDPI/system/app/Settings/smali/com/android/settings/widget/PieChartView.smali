.class public Lcom/android/settings/widget/PieChartView;
.super Landroid/view/View;
.source "PieChartView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/PieChartView$Slice;
    }
.end annotation


# instance fields
.field private mMatrix:Landroid/graphics/Matrix;

.field private mOriginAngle:I

.field private mPaintOutline:Landroid/graphics/Paint;

.field private mPathOutline:Landroid/graphics/Path;

.field private mPathSide:Landroid/graphics/Path;

.field private mPathSideOutline:Landroid/graphics/Path;

.field private mSideWidth:I

.field private mSlices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/widget/PieChartView$Slice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/PieChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/PieChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/PieChartView;->mSlices:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/PieChartView;->mMatrix:Landroid/graphics/Matrix;

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/PieChartView;->mPaintOutline:Landroid/graphics/Paint;

    .line 55
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/PieChartView;->mPathSide:Landroid/graphics/Path;

    .line 56
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/PieChartView;->mPathSideOutline:Landroid/graphics/Path;

    .line 58
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/PieChartView;->mPathOutline:Landroid/graphics/Path;

    .line 88
    iget-object v0, p0, Lcom/android/settings/widget/PieChartView;->mPaintOutline:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    iget-object v0, p0, Lcom/android/settings/widget/PieChartView;->mPaintOutline:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 90
    iget-object v0, p0, Lcom/android/settings/widget/PieChartView;->mPaintOutline:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    invoke-virtual {p0}, Lcom/android/settings/widget/PieChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 91
    iget-object v0, p0, Lcom/android/settings/widget/PieChartView;->mPaintOutline:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 93
    const/high16 v0, 0x41a0

    invoke-virtual {p0}, Lcom/android/settings/widget/PieChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/widget/PieChartView;->mSideWidth:I

    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/PieChartView;->setWillNotDraw(Z)V

    .line 96
    return-void
.end method

.method static synthetic access$000(ILandroid/content/res/Resources;)Landroid/graphics/Paint;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-static {p0, p1}, Lcom/android/settings/widget/PieChartView;->buildFillPaint(ILandroid/content/res/Resources;)Landroid/graphics/Paint;

    move-result-object v0

    return-object v0
.end method

.method private static buildFillPaint(ILandroid/content/res/Resources;)Landroid/graphics/Paint;
    .locals 2
    .parameter "color"
    .parameter "res"

    .prologue
    .line 99
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 101
    .local v0, paint:Landroid/graphics/Paint;
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 103
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 110
    return-object v0
.end method


# virtual methods
.method public addSlice(JI)V
    .locals 2
    .parameter "value"
    .parameter "color"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/settings/widget/PieChartView;->mSlices:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/settings/widget/PieChartView$Slice;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/settings/widget/PieChartView$Slice;-><init>(Lcom/android/settings/widget/PieChartView;JI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    return-void
.end method

.method public generatePath()V
    .locals 26

    .prologue
    .line 140
    const-wide/16 v19, 0x0

    .line 141
    .local v19, total:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/PieChartView;->mSlices:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settings/widget/PieChartView$Slice;

    .line 142
    .local v12, slice:Lcom/android/settings/widget/PieChartView$Slice;
    iget-object v0, v12, Lcom/android/settings/widget/PieChartView$Slice;->path:Landroid/graphics/Path;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Path;->reset()V

    .line 143
    iget-object v0, v12, Lcom/android/settings/widget/PieChartView$Slice;->pathSide:Landroid/graphics/Path;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Path;->reset()V

    .line 144
    iget-object v0, v12, Lcom/android/settings/widget/PieChartView$Slice;->pathOutline:Landroid/graphics/Path;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Path;->reset()V

    .line 145
    iget-wide v0, v12, Lcom/android/settings/widget/PieChartView$Slice;->value:J

    move-wide/from16 v22, v0

    add-long v19, v19, v22

    goto :goto_0

    .line 148
    .end local v12           #slice:Lcom/android/settings/widget/PieChartView$Slice;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/PieChartView;->mPathSide:Landroid/graphics/Path;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Path;->reset()V

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/PieChartView;->mPathSideOutline:Landroid/graphics/Path;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Path;->reset()V

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/PieChartView;->mPathOutline:Landroid/graphics/Path;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Path;->reset()V

    .line 153
    const-wide/16 v22, 0x0

    cmp-long v22, v19, v22

    if-nez v22, :cond_1

    .line 154
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/PieChartView;->invalidate()V

    .line 217
    :goto_1
    return-void

    .line 158
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/PieChartView;->getWidth()I

    move-result v21

    .line 159
    .local v21, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/PieChartView;->getHeight()I

    move-result v8

    .line 161
    .local v8, height:I
    new-instance v10, Landroid/graphics/RectF;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v24, v0

    int-to-float v0, v8

    move/from16 v25, v0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v10, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 162
    .local v10, rect:Landroid/graphics/RectF;
    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11}, Landroid/graphics/RectF;-><init>()V

    .line 163
    .local v11, rectSide:Landroid/graphics/RectF;
    invoke-virtual {v11, v10}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 164
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/widget/PieChartView;->mSideWidth:I

    move/from16 v22, v0

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/PieChartView;->mPathSide:Landroid/graphics/Path;

    move-object/from16 v22, v0

    sget-object v23, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v11, v1}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/PieChartView;->mPathSideOutline:Landroid/graphics/Path;

    move-object/from16 v22, v0

    sget-object v23, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v11, v1}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/PieChartView;->mPathOutline:Landroid/graphics/Path;

    move-object/from16 v22, v0

    sget-object v23, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v10, v1}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 170
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings/widget/PieChartView;->mOriginAngle:I

    .line 171
    .local v13, startAngle:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/PieChartView;->mSlices:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settings/widget/PieChartView$Slice;

    .line 172
    .restart local v12       #slice:Lcom/android/settings/widget/PieChartView$Slice;
    iget-wide v0, v12, Lcom/android/settings/widget/PieChartView$Slice;->value:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x168

    mul-long v22, v22, v24

    div-long v22, v22, v19

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v17, v0

    .line 173
    .local v17, sweepAngle:I
    add-int v4, v13, v17

    .line 175
    .local v4, endAngle:I
    rem-int/lit16 v0, v13, 0x168

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v14, v0

    .line 176
    .local v14, startAngleMod:F
    rem-int/lit16 v0, v4, 0x168

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v5, v0

    .line 177
    .local v5, endAngleMod:F
    const/high16 v22, 0x42b4

    cmpl-float v22, v14, v22

    if-lez v22, :cond_6

    const/high16 v22, 0x4387

    cmpg-float v22, v14, v22

    if-gez v22, :cond_6

    const/16 v16, 0x1

    .line 178
    .local v16, startSideVisible:Z
    :goto_3
    const/high16 v22, 0x42b4

    cmpl-float v22, v5, v22

    if-lez v22, :cond_7

    const/high16 v22, 0x4387

    cmpg-float v22, v5, v22

    if-gez v22, :cond_7

    const/4 v7, 0x1

    .line 181
    .local v7, endSideVisible:Z
    :goto_4
    iget-object v0, v12, Lcom/android/settings/widget/PieChartView$Slice;->path:Landroid/graphics/Path;

    move-object/from16 v22, v0

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v23

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v24

    invoke-virtual/range {v22 .. v24}, Landroid/graphics/Path;->moveTo(FF)V

    .line 182
    iget-object v0, v12, Lcom/android/settings/widget/PieChartView$Slice;->path:Landroid/graphics/Path;

    move-object/from16 v22, v0

    int-to-float v0, v13

    move/from16 v23, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v10, v1, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 183
    iget-object v0, v12, Lcom/android/settings/widget/PieChartView$Slice;->path:Landroid/graphics/Path;

    move-object/from16 v22, v0

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v23

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v24

    invoke-virtual/range {v22 .. v24}, Landroid/graphics/Path;->lineTo(FF)V

    .line 185
    if-nez v16, :cond_2

    if-eqz v7, :cond_3

    .line 188
    :cond_2
    if-eqz v16, :cond_8

    int-to-float v15, v13

    .line 189
    .local v15, startAngleSide:F
    :goto_5
    if-eqz v7, :cond_9

    int-to-float v6, v4

    .line 190
    .local v6, endAngleSide:F
    :goto_6
    sub-float v18, v6, v15

    .line 193
    .local v18, sweepAngleSide:F
    iget-object v0, v12, Lcom/android/settings/widget/PieChartView$Slice;->pathSide:Landroid/graphics/Path;

    move-object/from16 v22, v0

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v23

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v24

    invoke-virtual/range {v22 .. v24}, Landroid/graphics/Path;->moveTo(FF)V

    .line 194
    iget-object v0, v12, Lcom/android/settings/widget/PieChartView$Slice;->pathSide:Landroid/graphics/Path;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v10, v15, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 195
    iget-object v0, v12, Lcom/android/settings/widget/PieChartView$Slice;->pathSide:Landroid/graphics/Path;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/widget/PieChartView;->mSideWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 196
    iget-object v0, v12, Lcom/android/settings/widget/PieChartView$Slice;->pathSide:Landroid/graphics/Path;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v11, v15, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 197
    iget-object v0, v12, Lcom/android/settings/widget/PieChartView$Slice;->pathSide:Landroid/graphics/Path;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/widget/PieChartView;->mSideWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 198
    iget-object v0, v12, Lcom/android/settings/widget/PieChartView$Slice;->pathSide:Landroid/graphics/Path;

    move-object/from16 v22, v0

    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v10, v6, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 202
    .end local v6           #endAngleSide:F
    .end local v15           #startAngleSide:F
    .end local v18           #sweepAngleSide:F
    :cond_3
    iget-object v0, v12, Lcom/android/settings/widget/PieChartView$Slice;->pathOutline:Landroid/graphics/Path;

    move-object/from16 v22, v0

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v23

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v24

    invoke-virtual/range {v22 .. v24}, Landroid/graphics/Path;->moveTo(FF)V

    .line 203
    iget-object v0, v12, Lcom/android/settings/widget/PieChartView$Slice;->pathOutline:Landroid/graphics/Path;

    move-object/from16 v22, v0

    int-to-float v0, v13

    move/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v10, v1, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 204
    if-eqz v16, :cond_4

    .line 205
    iget-object v0, v12, Lcom/android/settings/widget/PieChartView$Slice;->pathOutline:Landroid/graphics/Path;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/widget/PieChartView;->mSideWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 207
    :cond_4
    iget-object v0, v12, Lcom/android/settings/widget/PieChartView$Slice;->pathOutline:Landroid/graphics/Path;

    move-object/from16 v22, v0

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v23

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v24

    invoke-virtual/range {v22 .. v24}, Landroid/graphics/Path;->moveTo(FF)V

    .line 208
    iget-object v0, v12, Lcom/android/settings/widget/PieChartView$Slice;->pathOutline:Landroid/graphics/Path;

    move-object/from16 v22, v0

    add-int v23, v13, v17

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v10, v1, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 209
    if-eqz v7, :cond_5

    .line 210
    iget-object v0, v12, Lcom/android/settings/widget/PieChartView$Slice;->pathOutline:Landroid/graphics/Path;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/widget/PieChartView;->mSideWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 213
    :cond_5
    add-int v13, v13, v17

    .line 214
    goto/16 :goto_2

    .line 177
    .end local v7           #endSideVisible:Z
    .end local v16           #startSideVisible:Z
    :cond_6
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 178
    .restart local v16       #startSideVisible:Z
    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 188
    .restart local v7       #endSideVisible:Z
    :cond_8
    const/high16 v15, 0x43e1

    goto/16 :goto_5

    .line 189
    .restart local v15       #startAngleSide:F
    :cond_9
    const/high16 v6, 0x4387

    goto/16 :goto_6

    .line 216
    .end local v4           #endAngle:I
    .end local v5           #endAngleMod:F
    .end local v7           #endSideVisible:Z
    .end local v12           #slice:Lcom/android/settings/widget/PieChartView$Slice;
    .end local v14           #startAngleMod:F
    .end local v15           #startAngleSide:F
    .end local v16           #startSideVisible:Z
    .end local v17           #sweepAngle:I
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/PieChartView;->invalidate()V

    goto/16 :goto_1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 222
    iget-object v2, p0, Lcom/android/settings/widget/PieChartView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 224
    iget-object v2, p0, Lcom/android/settings/widget/PieChartView;->mSlices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/PieChartView$Slice;

    .line 225
    .local v1, slice:Lcom/android/settings/widget/PieChartView$Slice;
    iget-object v2, v1, Lcom/android/settings/widget/PieChartView$Slice;->pathSide:Landroid/graphics/Path;

    iget-object v3, v1, Lcom/android/settings/widget/PieChartView$Slice;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 227
    .end local v1           #slice:Lcom/android/settings/widget/PieChartView$Slice;
    :cond_0
    iget-object v2, p0, Lcom/android/settings/widget/PieChartView;->mPathSideOutline:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/settings/widget/PieChartView;->mPaintOutline:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 229
    iget-object v2, p0, Lcom/android/settings/widget/PieChartView;->mSlices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/PieChartView$Slice;

    .line 230
    .restart local v1       #slice:Lcom/android/settings/widget/PieChartView$Slice;
    iget-object v2, v1, Lcom/android/settings/widget/PieChartView$Slice;->path:Landroid/graphics/Path;

    iget-object v3, v1, Lcom/android/settings/widget/PieChartView$Slice;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 231
    iget-object v2, v1, Lcom/android/settings/widget/PieChartView$Slice;->pathOutline:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/settings/widget/PieChartView;->mPaintOutline:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 233
    .end local v1           #slice:Lcom/android/settings/widget/PieChartView$Slice;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/widget/PieChartView;->mPathOutline:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/settings/widget/PieChartView;->mPaintOutline:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 234
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/android/settings/widget/PieChartView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v0, v2

    .line 128
    .local v0, centerX:F
    invoke-virtual {p0}, Lcom/android/settings/widget/PieChartView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v1, v2

    .line 130
    .local v1, centerY:F
    iget-object v2, p0, Lcom/android/settings/widget/PieChartView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 131
    iget-object v2, p0, Lcom/android/settings/widget/PieChartView;->mMatrix:Landroid/graphics/Matrix;

    const v3, 0x3f2a3d71

    const v4, 0x3f733333

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 132
    iget-object v2, p0, Lcom/android/settings/widget/PieChartView;->mMatrix:Landroid/graphics/Matrix;

    const/high16 v3, -0x3de0

    invoke-virtual {v2, v3, v0, v1}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/widget/PieChartView;->generatePath()V

    .line 135
    return-void
.end method

.method public removeAllSlices()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/settings/widget/PieChartView;->mSlices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 123
    return-void
.end method

.method public setOriginAngle(I)V
    .locals 0
    .parameter "originAngle"

    .prologue
    .line 114
    iput p1, p0, Lcom/android/settings/widget/PieChartView;->mOriginAngle:I

    .line 115
    return-void
.end method
