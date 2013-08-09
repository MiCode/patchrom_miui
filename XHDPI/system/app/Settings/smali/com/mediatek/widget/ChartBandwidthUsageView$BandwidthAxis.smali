.class public Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;
.super Ljava/lang/Object;
.source "ChartBandwidthUsageView.java"

# interfaces
.implements Lcom/android/settings/widget/ChartAxis;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/widget/ChartBandwidthUsageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BandwidthAxis"
.end annotation


# static fields
.field private static final SPAN_SIZE:Ljava/lang/Object;

.field private static final SPAN_UNIT:Ljava/lang/Object;


# instance fields
.field private mMax:J

.field private mMin:J

.field private mSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 356
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;->SPAN_SIZE:Ljava/lang/Object;

    .line 357
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;->SPAN_UNIT:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    return-void
.end method

.method private findOrCreateSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;)[I
    .locals 4
    .parameter "builder"
    .parameter "key"
    .parameter "bootstrap"

    .prologue
    .line 433
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 434
    .local v1, start:I
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 435
    .local v0, end:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 436
    invoke-static {p1, p3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    .line 437
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int v0, v1, v2

    .line 438
    const/16 v2, 0x12

    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 440
    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v3, 0x1

    aput v0, v2, v3

    return-object v2
.end method


# virtual methods
.method public buildLabel(Landroid/content/res/Resources;Landroid/text/SpannableStringBuilder;J)J
    .locals 16
    .parameter "res"
    .parameter "builder"
    .parameter "value"

    .prologue
    .line 366
    const-wide/32 v12, 0x100000

    cmp-long v12, p3, v12

    if-gez v12, :cond_0

    .line 367
    const v12, 0x7f0c0aee

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 368
    .local v8, unit:Ljava/lang/CharSequence;
    const-wide/16 v10, 0x400

    .line 374
    .local v10, unitFactor:J
    :goto_0
    move-wide/from16 v0, p3

    long-to-double v12, v0

    long-to-double v14, v10

    div-double v2, v12, v14

    .line 378
    .local v2, result:D
    const-wide/32 v12, 0x100000

    cmp-long v12, p3, v12

    if-lez v12, :cond_1

    const-wide/high16 v12, 0x4024

    cmpg-double v12, v2, v12

    if-gez v12, :cond_1

    .line 379
    const-string v12, "%.1f"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 380
    .local v6, size:Ljava/lang/CharSequence;
    const-wide/high16 v12, 0x4024

    mul-double/2addr v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    mul-long/2addr v12, v10

    const-wide/16 v14, 0xa

    div-long/2addr v12, v14

    long-to-double v4, v12

    .line 386
    .local v4, resultRounded:D
    :goto_1
    sget-object v12, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;->SPAN_SIZE:Ljava/lang/Object;

    const-string v13, "^1"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v12, v13}, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;->findOrCreateSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;)[I

    move-result-object v7

    .line 387
    .local v7, sizeBounds:[I
    const/4 v12, 0x0

    aget v12, v7, v12

    const/4 v13, 0x1

    aget v13, v7, v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13, v6}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 388
    sget-object v12, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;->SPAN_UNIT:Ljava/lang/Object;

    const-string v13, "^2"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v12, v13}, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;->findOrCreateSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;)[I

    move-result-object v9

    .line 389
    .local v9, unitBounds:[I
    const/4 v12, 0x0

    aget v12, v9, v12

    const/4 v13, 0x1

    aget v13, v9, v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13, v8}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 391
    double-to-long v12, v4

    return-wide v12

    .line 370
    .end local v2           #result:D
    .end local v4           #resultRounded:D
    .end local v6           #size:Ljava/lang/CharSequence;
    .end local v7           #sizeBounds:[I
    .end local v8           #unit:Ljava/lang/CharSequence;
    .end local v9           #unitBounds:[I
    .end local v10           #unitFactor:J
    :cond_0
    const v12, 0x7f0c0aed

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 371
    .restart local v8       #unit:Ljava/lang/CharSequence;
    const-wide/32 v10, 0x100000

    .restart local v10       #unitFactor:J
    goto :goto_0

    .line 382
    .restart local v2       #result:D
    :cond_1
    const-string v12, "%.0f"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 383
    .restart local v6       #size:Ljava/lang/CharSequence;
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    mul-long/2addr v12, v10

    long-to-double v4, v12

    .restart local v4       #resultRounded:D
    goto :goto_1
.end method

.method public convertToPoint(J)F
    .locals 10
    .parameter "value"

    .prologue
    .line 341
    long-to-double v4, p1

    iget-wide v6, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;->mMin:J

    long-to-double v6, v6

    sub-double/2addr v4, v6

    iget-wide v6, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;->mMax:J

    iget-wide v8, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;->mMin:J

    sub-long/2addr v6, v8

    long-to-double v6, v6

    div-double v2, v4, v6

    .line 342
    .local v2, normalized:D
    const-wide/high16 v4, 0x4024

    const-wide v6, 0x3fd79b217a704c38L

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    const-wide v8, -0x4059d6f1420f71c4L

    add-double/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 344
    .local v0, fraction:D
    iget v4, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;->mSize:F

    float-to-double v4, v4

    mul-double/2addr v4, v0

    double-to-float v4, v4

    return v4
.end method

.method public convertToValue(F)J
    .locals 10
    .parameter "point"

    .prologue
    .line 350
    iget v4, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;->mSize:F

    div-float v4, p1, v4

    float-to-double v2, v4

    .line 351
    .local v2, normalized:D
    const-wide v4, 0x3ff4f6ac3b8f3c62L

    const-wide v6, 0x4005b07dd022ee16L

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double v0, v4, v6

    .line 353
    .local v0, fraction:D
    iget-wide v4, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;->mMin:J

    long-to-double v4, v4

    iget-wide v6, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;->mMax:J

    iget-wide v8, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;->mMin:J

    sub-long/2addr v6, v8

    long-to-double v6, v6

    mul-double/2addr v6, v0

    add-double/2addr v4, v6

    double-to-long v4, v4

    return-wide v4
.end method

.method public getTickPoints()[F
    .locals 13

    .prologue
    .line 397
    iget-wide v9, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;->mMax:J

    iget-wide v11, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;->mMin:J

    sub-long v1, v9, v11

    .line 399
    .local v1, range:J
    const-wide/32 v9, 0x300000

    cmp-long v9, v1, v9

    if-gez v9, :cond_0

    .line 400
    const-wide/32 v4, 0x10000

    .line 407
    .local v4, tickJump:J
    :goto_0
    div-long v9, v1, v4

    long-to-int v3, v9

    .line 408
    .local v3, tickCount:I
    new-array v6, v3, [F

    .line 409
    .local v6, tickPoints:[F
    iget-wide v7, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;->mMin:J

    .line 410
    .local v7, value:J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v9, v6

    if-ge v0, v9, :cond_2

    .line 411
    invoke-virtual {p0, v7, v8}, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;->convertToPoint(J)F

    move-result v9

    aput v9, v6, v0

    .line 412
    add-long/2addr v7, v4

    .line 410
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 401
    .end local v0           #i:I
    .end local v3           #tickCount:I
    .end local v4           #tickJump:J
    .end local v6           #tickPoints:[F
    .end local v7           #value:J
    :cond_0
    const-wide/32 v9, 0x600000

    cmp-long v9, v1, v9

    if-gez v9, :cond_1

    .line 402
    const-wide/32 v4, 0x20000

    .restart local v4       #tickJump:J
    goto :goto_0

    .line 404
    .end local v4           #tickJump:J
    :cond_1
    const-wide/32 v4, 0x40000

    .restart local v4       #tickJump:J
    goto :goto_0

    .line 415
    .restart local v0       #i:I
    .restart local v3       #tickCount:I
    .restart local v6       #tickPoints:[F
    .restart local v7       #value:J
    :cond_2
    return-object v6
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 311
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;->mMin:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;->mMax:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;->mSize:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setBounds(JJ)Z
    .locals 2
    .parameter "min"
    .parameter "max"

    .prologue
    .line 317
    iget-wide v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;->mMin:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;->mMax:J

    cmp-long v0, v0, p3

    if-eqz v0, :cond_1

    .line 318
    :cond_0
    iput-wide p1, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;->mMin:J

    .line 319
    iput-wide p3, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;->mMax:J

    .line 320
    const/4 v0, 0x1

    .line 322
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSize(F)Z
    .locals 1
    .parameter "size"

    .prologue
    .line 329
    iget v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;->mSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 330
    iput p1, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;->mSize:F

    .line 331
    const/4 v0, 0x1

    .line 333
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldAdjustAxis(J)I
    .locals 7
    .parameter "value"

    .prologue
    .line 421
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;->convertToPoint(J)F

    move-result v0

    .line 422
    .local v0, point:F
    float-to-double v1, v0

    iget v3, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;->mSize:F

    float-to-double v3, v3

    const-wide/high16 v5, 0x3fe0

    mul-double/2addr v3, v5

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    .line 423
    const/4 v1, -0x1

    .line 427
    :goto_0
    return v1

    .line 424
    :cond_0
    float-to-double v1, v0

    iget v3, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;->mSize:F

    float-to-double v3, v3

    const-wide v5, 0x3feb333333333333L

    mul-double/2addr v3, v5

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1

    .line 425
    const/4 v1, 0x1

    goto :goto_0

    .line 427
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
