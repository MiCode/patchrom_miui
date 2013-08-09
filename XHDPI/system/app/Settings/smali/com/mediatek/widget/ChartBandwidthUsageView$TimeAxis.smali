.class public Lcom/mediatek/widget/ChartBandwidthUsageView$TimeAxis;
.super Ljava/lang/Object;
.source "ChartBandwidthUsageView.java"

# interfaces
.implements Lcom/android/settings/widget/ChartAxis;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/widget/ChartBandwidthUsageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TimeAxis"
.end annotation


# instance fields
.field private mMax:J

.field private mMin:J

.field private mSize:F

.field final synthetic this$0:Lcom/mediatek/widget/ChartBandwidthUsageView;


# direct methods
.method public constructor <init>(Lcom/mediatek/widget/ChartBandwidthUsageView;)V
    .locals 4
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$TimeAxis;->this$0:Lcom/mediatek/widget/ChartBandwidthUsageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/mediatek/widget/ChartBandwidthUsageView$TimeAxis;->setBounds(JJ)Z

    .line 232
    return-void
.end method


# virtual methods
.method public buildLabel(Landroid/content/res/Resources;Landroid/text/SpannableStringBuilder;J)J
    .locals 3
    .parameter "res"
    .parameter "builder"
    .parameter "value"

    .prologue
    .line 278
    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 279
    return-wide p3
.end method

.method public convertToPoint(J)F
    .locals 5
    .parameter "value"

    .prologue
    .line 265
    iget v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$TimeAxis;->mSize:F

    iget-wide v1, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$TimeAxis;->mMin:J

    sub-long v1, p1, v1

    long-to-float v1, v1

    mul-float/2addr v0, v1

    iget-wide v1, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$TimeAxis;->mMax:J

    iget-wide v3, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$TimeAxis;->mMin:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public convertToValue(F)J
    .locals 5
    .parameter "point"

    .prologue
    .line 271
    iget-wide v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$TimeAxis;->mMin:J

    long-to-float v0, v0

    iget-wide v1, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$TimeAxis;->mMax:J

    iget-wide v3, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$TimeAxis;->mMin:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$TimeAxis;->mSize:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method public getTickPoints()[F
    .locals 9

    .prologue
    const-wide/16 v7, 0x5

    .line 286
    iget-wide v3, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$TimeAxis;->mMax:J

    iget-wide v5, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$TimeAxis;->mMin:J

    sub-long/2addr v3, v5

    div-long/2addr v3, v7

    long-to-int v1, v3

    .line 287
    .local v1, tickCount:I
    new-array v2, v1, [F

    .line 288
    .local v2, tickPoints:[F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 289
    iget-wide v3, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$TimeAxis;->mMax:J

    add-int/lit8 v5, v0, 0x1

    int-to-long v5, v5

    mul-long/2addr v5, v7

    sub-long/2addr v3, v5

    invoke-virtual {p0, v3, v4}, Lcom/mediatek/widget/ChartBandwidthUsageView$TimeAxis;->convertToPoint(J)F

    move-result v3

    aput v3, v2, v0

    .line 288
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 291
    :cond_0
    return-object v2
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 236
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$TimeAxis;->mMin:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$TimeAxis;->mMax:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$TimeAxis;->mSize:F

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
    .line 242
    iget-wide v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$TimeAxis;->mMin:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$TimeAxis;->mMax:J

    cmp-long v0, v0, p3

    if-eqz v0, :cond_1

    .line 243
    :cond_0
    iput-wide p1, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$TimeAxis;->mMin:J

    .line 244
    iput-wide p3, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$TimeAxis;->mMax:J

    .line 245
    const/4 v0, 0x1

    .line 247
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
    .line 254
    iget v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$TimeAxis;->mSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 255
    iput p1, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$TimeAxis;->mSize:F

    .line 256
    const/4 v0, 0x1

    .line 258
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldAdjustAxis(J)I
    .locals 1
    .parameter "value"

    .prologue
    .line 298
    const/4 v0, 0x0

    return v0
.end method
