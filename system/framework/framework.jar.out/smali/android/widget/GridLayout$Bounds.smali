.class Landroid/widget/GridLayout$Bounds;
.super Ljava/lang/Object;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Bounds"
.end annotation


# instance fields
.field public after:I

.field public before:I

.field public flexibility:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2239
    invoke-virtual {p0}, Landroid/widget/GridLayout$Bounds;->reset()V

    .line 2240
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/GridLayout$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/GridLayout$1;

    .prologue
    .line 2233
    invoke-direct {p0}, Landroid/widget/GridLayout$Bounds;-><init>()V

    return-void
.end method


# virtual methods
.method protected getOffset(Landroid/widget/GridLayout;Landroid/view/View;Landroid/widget/GridLayout$Alignment;IZ)I
    .locals 2
    .param p1, "gl"    # Landroid/widget/GridLayout;
    .param p2, "c"    # Landroid/view/View;
    .param p3, "a"    # Landroid/widget/GridLayout$Alignment;
    .param p4, "size"    # I
    .param p5, "horizontal"    # Z

    .prologue
    .line 2263
    iget v0, p0, Landroid/widget/GridLayout$Bounds;->before:I

    invoke-virtual {p1}, Landroid/widget/GridLayout;->getLayoutMode()I

    move-result v1

    invoke-virtual {p3, p2, p4, v1}, Landroid/widget/GridLayout$Alignment;->getAlignmentValue(Landroid/view/View;II)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected include(II)V
    .locals 1
    .param p1, "before"    # I
    .param p2, "after"    # I

    .prologue
    .line 2249
    iget v0, p0, Landroid/widget/GridLayout$Bounds;->before:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/widget/GridLayout$Bounds;->before:I

    .line 2250
    iget v0, p0, Landroid/widget/GridLayout$Bounds;->after:I

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/widget/GridLayout$Bounds;->after:I

    .line 2251
    return-void
.end method

.method protected final include(Landroid/widget/GridLayout;Landroid/view/View;Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Axis;)V
    .locals 6
    .param p1, "gl"    # Landroid/widget/GridLayout;
    .param p2, "c"    # Landroid/view/View;
    .param p3, "spec"    # Landroid/widget/GridLayout$Spec;
    .param p4, "axis"    # Landroid/widget/GridLayout$Axis;

    .prologue
    .line 2267
    iget v4, p0, Landroid/widget/GridLayout$Bounds;->flexibility:I

    invoke-virtual {p3}, Landroid/widget/GridLayout$Spec;->getFlexibility()I

    move-result v5

    and-int/2addr v4, v5

    iput v4, p0, Landroid/widget/GridLayout$Bounds;->flexibility:I

    .line 2268
    iget-boolean v2, p4, Landroid/widget/GridLayout$Axis;->horizontal:Z

    .line 2269
    .local v2, "horizontal":Z
    invoke-virtual {p1, p2, v2}, Landroid/widget/GridLayout;->getMeasurementIncludingMargin(Landroid/view/View;Z)I

    move-result v3

    .line 2270
    .local v3, "size":I
    iget-object v4, p3, Landroid/widget/GridLayout$Spec;->alignment:Landroid/widget/GridLayout$Alignment;

    invoke-virtual {p1, v4, v2}, Landroid/widget/GridLayout;->getAlignment(Landroid/widget/GridLayout$Alignment;Z)Landroid/widget/GridLayout$Alignment;

    move-result-object v0

    .line 2272
    .local v0, "alignment":Landroid/widget/GridLayout$Alignment;
    invoke-virtual {p1}, Landroid/widget/GridLayout;->getLayoutMode()I

    move-result v4

    invoke-virtual {v0, p2, v3, v4}, Landroid/widget/GridLayout$Alignment;->getAlignmentValue(Landroid/view/View;II)I

    move-result v1

    .line 2273
    .local v1, "before":I
    sub-int v4, v3, v1

    invoke-virtual {p0, v1, v4}, Landroid/widget/GridLayout$Bounds;->include(II)V

    .line 2274
    return-void
.end method

.method protected reset()V
    .locals 1

    .prologue
    const/high16 v0, -0x80000000

    .line 2243
    iput v0, p0, Landroid/widget/GridLayout$Bounds;->before:I

    .line 2244
    iput v0, p0, Landroid/widget/GridLayout$Bounds;->after:I

    .line 2245
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/GridLayout$Bounds;->flexibility:I

    .line 2246
    return-void
.end method

.method protected size(Z)I
    .locals 2
    .param p1, "min"    # Z

    .prologue
    .line 2254
    if-nez p1, :cond_0

    .line 2255
    iget v0, p0, Landroid/widget/GridLayout$Bounds;->flexibility:I

    invoke-static {v0}, Landroid/widget/GridLayout;->canStretch(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2256
    const v0, 0x186a0

    .line 2259
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/GridLayout$Bounds;->before:I

    iget v1, p0, Landroid/widget/GridLayout$Bounds;->after:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bounds{before="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/GridLayout$Bounds;->before:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", after="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/GridLayout$Bounds;->after:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
