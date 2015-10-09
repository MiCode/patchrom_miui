.class final Landroid/widget/GridLayout$Axis;
.super Ljava/lang/Object;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Axis"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final COMPLETE:I = 0x2

.field private static final NEW:I = 0x0

.field private static final PENDING:I = 0x1


# instance fields
.field public arcs:[Landroid/widget/GridLayout$Arc;

.field public arcsValid:Z

.field backwardLinks:Landroid/widget/GridLayout$PackedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/GridLayout$PackedMap",
            "<",
            "Landroid/widget/GridLayout$Interval;",
            "Landroid/widget/GridLayout$MutableInt;",
            ">;"
        }
    .end annotation
.end field

.field public backwardLinksValid:Z

.field public definedCount:I

.field forwardLinks:Landroid/widget/GridLayout$PackedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/GridLayout$PackedMap",
            "<",
            "Landroid/widget/GridLayout$Interval;",
            "Landroid/widget/GridLayout$MutableInt;",
            ">;"
        }
    .end annotation
.end field

.field public forwardLinksValid:Z

.field groupBounds:Landroid/widget/GridLayout$PackedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/GridLayout$PackedMap",
            "<",
            "Landroid/widget/GridLayout$Spec;",
            "Landroid/widget/GridLayout$Bounds;",
            ">;"
        }
    .end annotation
.end field

.field public groupBoundsValid:Z

.field public final horizontal:Z

.field public leadingMargins:[I

.field public leadingMarginsValid:Z

.field public locations:[I

.field public locationsValid:Z

.field private maxIndex:I

.field orderPreserved:Z

.field private parentMax:Landroid/widget/GridLayout$MutableInt;

.field private parentMin:Landroid/widget/GridLayout$MutableInt;

.field final synthetic this$0:Landroid/widget/GridLayout;

.field public trailingMargins:[I

.field public trailingMarginsValid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1207
    const-class v0, Landroid/widget/GridLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/widget/GridLayout$Axis;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/widget/GridLayout;Z)V
    .locals 2
    .param p2, "horizontal"    # Z

    .prologue
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    .line 1243
    iput-object p1, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1214
    iput v0, p0, Landroid/widget/GridLayout$Axis;->definedCount:I

    .line 1215
    iput v0, p0, Landroid/widget/GridLayout$Axis;->maxIndex:I

    .line 1218
    iput-boolean v1, p0, Landroid/widget/GridLayout$Axis;->groupBoundsValid:Z

    .line 1221
    iput-boolean v1, p0, Landroid/widget/GridLayout$Axis;->forwardLinksValid:Z

    .line 1224
    iput-boolean v1, p0, Landroid/widget/GridLayout$Axis;->backwardLinksValid:Z

    .line 1227
    iput-boolean v1, p0, Landroid/widget/GridLayout$Axis;->leadingMarginsValid:Z

    .line 1230
    iput-boolean v1, p0, Landroid/widget/GridLayout$Axis;->trailingMarginsValid:Z

    .line 1233
    iput-boolean v1, p0, Landroid/widget/GridLayout$Axis;->arcsValid:Z

    .line 1236
    iput-boolean v1, p0, Landroid/widget/GridLayout$Axis;->locationsValid:Z

    .line 1238
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->orderPreserved:Z

    .line 1240
    new-instance v0, Landroid/widget/GridLayout$MutableInt;

    invoke-direct {v0, v1}, Landroid/widget/GridLayout$MutableInt;-><init>(I)V

    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->parentMin:Landroid/widget/GridLayout$MutableInt;

    .line 1241
    new-instance v0, Landroid/widget/GridLayout$MutableInt;

    const v1, -0x186a0

    invoke-direct {v0, v1}, Landroid/widget/GridLayout$MutableInt;-><init>(I)V

    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->parentMax:Landroid/widget/GridLayout$MutableInt;

    .line 1244
    iput-boolean p2, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    .line 1245
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/GridLayout;ZLandroid/widget/GridLayout$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/GridLayout;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Landroid/widget/GridLayout$1;

    .prologue
    .line 1207
    invoke-direct {p0, p1, p2}, Landroid/widget/GridLayout$Axis;-><init>(Landroid/widget/GridLayout;Z)V

    return-void
.end method

.method private addComponentSizes(Ljava/util/List;Landroid/widget/GridLayout$PackedMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/GridLayout$Arc;",
            ">;",
            "Landroid/widget/GridLayout$PackedMap",
            "<",
            "Landroid/widget/GridLayout$Interval;",
            "Landroid/widget/GridLayout$MutableInt;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1472
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/widget/GridLayout$Arc;>;"
    .local p2, "links":Landroid/widget/GridLayout$PackedMap;, "Landroid/widget/GridLayout$PackedMap<Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p2, Landroid/widget/GridLayout$PackedMap;->keys:[Ljava/lang/Object;

    check-cast v2, [Landroid/widget/GridLayout$Interval;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1473
    iget-object v2, p2, Landroid/widget/GridLayout$PackedMap;->keys:[Ljava/lang/Object;

    check-cast v2, [Landroid/widget/GridLayout$Interval;

    aget-object v1, v2, v0

    .line 1474
    .local v1, "key":Landroid/widget/GridLayout$Interval;
    iget-object v2, p2, Landroid/widget/GridLayout$PackedMap;->values:[Ljava/lang/Object;

    check-cast v2, [Landroid/widget/GridLayout$MutableInt;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v2, v3}, Landroid/widget/GridLayout$Axis;->include(Ljava/util/List;Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;Z)V

    .line 1472
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1476
    .end local v1    # "key":Landroid/widget/GridLayout$Interval;
    :cond_0
    return-void
.end method

.method private arcsToString(Ljava/util/List;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/GridLayout$Arc;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1546
    .local p1, "arcs":Ljava/util/List;, "Ljava/util/List<Landroid/widget/GridLayout$Arc;>;"
    iget-boolean v8, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v8, :cond_0

    const-string/jumbo v7, "x"

    .line 1547
    .local v7, "var":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1548
    .local v4, "result":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 1549
    .local v2, "first":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout$Arc;

    .line 1550
    .local v0, "arc":Landroid/widget/GridLayout$Arc;
    if-eqz v2, :cond_1

    .line 1551
    const/4 v2, 0x0

    .line 1555
    :goto_2
    iget-object v8, v0, Landroid/widget/GridLayout$Arc;->span:Landroid/widget/GridLayout$Interval;

    iget v5, v8, Landroid/widget/GridLayout$Interval;->min:I

    .line 1556
    .local v5, "src":I
    iget-object v8, v0, Landroid/widget/GridLayout$Arc;->span:Landroid/widget/GridLayout$Interval;

    iget v1, v8, Landroid/widget/GridLayout$Interval;->max:I

    .line 1557
    .local v1, "dst":I
    iget-object v8, v0, Landroid/widget/GridLayout$Arc;->value:Landroid/widget/GridLayout$MutableInt;

    iget v6, v8, Landroid/widget/GridLayout$MutableInt;->value:I

    .line 1558
    .local v6, "value":I
    if-ge v5, v1, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ">="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_3
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1546
    .end local v0    # "arc":Landroid/widget/GridLayout$Arc;
    .end local v1    # "dst":I
    .end local v2    # "first":Z
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "result":Ljava/lang/StringBuilder;
    .end local v5    # "src":I
    .end local v6    # "value":I
    .end local v7    # "var":Ljava/lang/String;
    :cond_0
    const-string/jumbo v7, "y"

    goto :goto_0

    .line 1553
    .restart local v0    # "arc":Landroid/widget/GridLayout$Arc;
    .restart local v2    # "first":Z
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "result":Ljava/lang/StringBuilder;
    .restart local v7    # "var":Ljava/lang/String;
    :cond_1
    const-string v8, ", "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    goto :goto_2

    .line 1558
    .restart local v1    # "dst":I
    .restart local v5    # "src":I
    .restart local v6    # "value":I
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "<="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    neg-int v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 1563
    .end local v0    # "arc":Landroid/widget/GridLayout$Arc;
    .end local v1    # "dst":I
    .end local v5    # "src":I
    .end local v6    # "value":I
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method private calculateMaxIndex()I
    .locals 8

    .prologue
    .line 1249
    const/4 v4, -0x1

    .line 1250
    .local v4, "result":I
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v7, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v7}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v0

    .local v0, "N":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1251
    iget-object v7, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v7, v2}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1252
    .local v1, "c":Landroid/view/View;
    iget-object v7, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v7, v1}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v3

    .line 1253
    .local v3, "params":Landroid/widget/GridLayout$LayoutParams;
    iget-boolean v7, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v7, :cond_0

    iget-object v6, v3, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 1254
    .local v6, "spec":Landroid/widget/GridLayout$Spec;
    :goto_1
    iget-object v5, v6, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    .line 1255
    .local v5, "span":Landroid/widget/GridLayout$Interval;
    iget v7, v5, Landroid/widget/GridLayout$Interval;->min:I

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1256
    iget v7, v5, Landroid/widget/GridLayout$Interval;->max:I

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1257
    invoke-virtual {v5}, Landroid/widget/GridLayout$Interval;->size()I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1250
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1253
    .end local v5    # "span":Landroid/widget/GridLayout$Interval;
    .end local v6    # "spec":Landroid/widget/GridLayout$Spec;
    :cond_0
    iget-object v6, v3, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_1

    .line 1259
    .end local v1    # "c":Landroid/view/View;
    .end local v3    # "params":Landroid/widget/GridLayout$LayoutParams;
    :cond_1
    const/4 v7, -0x1

    if-ne v4, v7, :cond_2

    const/high16 v4, -0x80000000

    .end local v4    # "result":I
    :cond_2
    return v4
.end method

.method private computeArcs()V
    .locals 0

    .prologue
    .line 1510
    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->getForwardLinks()Landroid/widget/GridLayout$PackedMap;

    .line 1511
    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->getBackwardLinks()Landroid/widget/GridLayout$PackedMap;

    .line 1512
    return-void
.end method

.method private computeGroupBounds()V
    .locals 8

    .prologue
    .line 1305
    iget-object v6, p0, Landroid/widget/GridLayout$Axis;->groupBounds:Landroid/widget/GridLayout$PackedMap;

    iget-object v5, v6, Landroid/widget/GridLayout$PackedMap;->values:[Ljava/lang/Object;

    check-cast v5, [Landroid/widget/GridLayout$Bounds;

    .line 1306
    .local v5, "values":[Landroid/widget/GridLayout$Bounds;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v5

    if-ge v2, v6, :cond_0

    .line 1307
    aget-object v6, v5, v2

    invoke-virtual {v6}, Landroid/widget/GridLayout$Bounds;->reset()V

    .line 1306
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1309
    :cond_0
    const/4 v2, 0x0

    iget-object v6, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v6}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v0

    .local v0, "N":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 1310
    iget-object v6, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v6, v2}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1312
    .local v1, "c":Landroid/view/View;
    iget-object v6, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v6, v1}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v3

    .line 1313
    .local v3, "lp":Landroid/widget/GridLayout$LayoutParams;
    iget-boolean v6, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v6, :cond_1

    iget-object v4, v3, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 1314
    .local v4, "spec":Landroid/widget/GridLayout$Spec;
    :goto_2
    iget-object v6, p0, Landroid/widget/GridLayout$Axis;->groupBounds:Landroid/widget/GridLayout$PackedMap;

    invoke-virtual {v6, v2}, Landroid/widget/GridLayout$PackedMap;->getValue(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/GridLayout$Bounds;

    iget-object v7, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v6, v7, v1, v4, p0}, Landroid/widget/GridLayout$Bounds;->include(Landroid/widget/GridLayout;Landroid/view/View;Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Axis;)V

    .line 1309
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1313
    .end local v4    # "spec":Landroid/widget/GridLayout$Spec;
    :cond_1
    iget-object v4, v3, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_2

    .line 1316
    .end local v1    # "c":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/GridLayout$LayoutParams;
    :cond_2
    return-void
.end method

.method private computeLinks(Landroid/widget/GridLayout$PackedMap;Z)V
    .locals 6
    .param p2, "min"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/GridLayout$PackedMap",
            "<",
            "Landroid/widget/GridLayout$Interval;",
            "Landroid/widget/GridLayout$MutableInt;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1341
    .local p1, "links":Landroid/widget/GridLayout$PackedMap;, "Landroid/widget/GridLayout$PackedMap<Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;>;"
    iget-object v3, p1, Landroid/widget/GridLayout$PackedMap;->values:[Ljava/lang/Object;

    check-cast v3, [Landroid/widget/GridLayout$MutableInt;

    .line 1342
    .local v3, "spans":[Landroid/widget/GridLayout$MutableInt;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v3

    if-ge v1, v5, :cond_0

    .line 1343
    aget-object v5, v3, v1

    invoke-virtual {v5}, Landroid/widget/GridLayout$MutableInt;->reset()V

    .line 1342
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1347
    :cond_0
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getGroupBounds()Landroid/widget/GridLayout$PackedMap;

    move-result-object v5

    iget-object v0, v5, Landroid/widget/GridLayout$PackedMap;->values:[Ljava/lang/Object;

    check-cast v0, [Landroid/widget/GridLayout$Bounds;

    .line 1348
    .local v0, "bounds":[Landroid/widget/GridLayout$Bounds;
    const/4 v1, 0x0

    :goto_1
    array-length v5, v0

    if-ge v1, v5, :cond_2

    .line 1349
    aget-object v5, v0, v1

    invoke-virtual {v5, p2}, Landroid/widget/GridLayout$Bounds;->size(Z)I

    move-result v2

    .line 1350
    .local v2, "size":I
    invoke-virtual {p1, v1}, Landroid/widget/GridLayout$PackedMap;->getValue(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/GridLayout$MutableInt;

    .line 1352
    .local v4, "valueHolder":Landroid/widget/GridLayout$MutableInt;
    iget v5, v4, Landroid/widget/GridLayout$MutableInt;->value:I

    if-eqz p2, :cond_1

    .end local v2    # "size":I
    :goto_2
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v4, Landroid/widget/GridLayout$MutableInt;->value:I

    .line 1348
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1352
    .restart local v2    # "size":I
    :cond_1
    neg-int v2, v2

    goto :goto_2

    .line 1354
    .end local v2    # "size":I
    .end local v4    # "valueHolder":Landroid/widget/GridLayout$MutableInt;
    :cond_2
    return-void
.end method

.method private computeLocations([I)V
    .locals 4
    .param p1, "a"    # [I

    .prologue
    .line 1687
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getArcs()[Landroid/widget/GridLayout$Arc;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Landroid/widget/GridLayout$Axis;->solve([Landroid/widget/GridLayout$Arc;[I)V

    .line 1688
    iget-boolean v3, p0, Landroid/widget/GridLayout$Axis;->orderPreserved:Z

    if-nez v3, :cond_0

    .line 1695
    const/4 v3, 0x0

    aget v1, p1, v3

    .line 1696
    .local v1, "a0":I
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v0, p1

    .local v0, "N":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1697
    aget v3, p1, v2

    sub-int/2addr v3, v1

    aput v3, p1, v2

    .line 1696
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1700
    .end local v0    # "N":I
    .end local v1    # "a0":I
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private computeMargins(Z)V
    .locals 11
    .param p1, "leading"    # Z

    .prologue
    .line 1650
    if-eqz p1, :cond_0

    iget-object v5, p0, Landroid/widget/GridLayout$Axis;->leadingMargins:[I

    .line 1651
    .local v5, "margins":[I
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v8, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v8}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v0

    .local v0, "N":I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 1652
    iget-object v8, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v8, v2}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1653
    .local v1, "c":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_1

    .line 1651
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1650
    .end local v0    # "N":I
    .end local v1    # "c":Landroid/view/View;
    .end local v2    # "i":I
    .end local v5    # "margins":[I
    :cond_0
    iget-object v5, p0, Landroid/widget/GridLayout$Axis;->trailingMargins:[I

    goto :goto_0

    .line 1654
    .restart local v0    # "N":I
    .restart local v1    # "c":Landroid/view/View;
    .restart local v2    # "i":I
    .restart local v5    # "margins":[I
    :cond_1
    iget-object v8, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v8, v1}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v4

    .line 1655
    .local v4, "lp":Landroid/widget/GridLayout$LayoutParams;
    iget-boolean v8, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v8, :cond_2

    iget-object v7, v4, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 1656
    .local v7, "spec":Landroid/widget/GridLayout$Spec;
    :goto_3
    iget-object v6, v7, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    .line 1657
    .local v6, "span":Landroid/widget/GridLayout$Interval;
    if-eqz p1, :cond_3

    iget v3, v6, Landroid/widget/GridLayout$Interval;->min:I

    .line 1658
    .local v3, "index":I
    :goto_4
    aget v8, v5, v3

    iget-object v9, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    iget-boolean v10, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    invoke-virtual {v9, v1, v10, p1}, Landroid/widget/GridLayout;->getMargin1(Landroid/view/View;ZZ)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v5, v3

    goto :goto_2

    .line 1655
    .end local v3    # "index":I
    .end local v6    # "span":Landroid/widget/GridLayout$Interval;
    .end local v7    # "spec":Landroid/widget/GridLayout$Spec;
    :cond_2
    iget-object v7, v4, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_3

    .line 1657
    .restart local v6    # "span":Landroid/widget/GridLayout$Interval;
    .restart local v7    # "spec":Landroid/widget/GridLayout$Spec;
    :cond_3
    iget v3, v6, Landroid/widget/GridLayout$Interval;->max:I

    goto :goto_4

    .line 1660
    .end local v1    # "c":Landroid/view/View;
    .end local v4    # "lp":Landroid/widget/GridLayout$LayoutParams;
    .end local v6    # "span":Landroid/widget/GridLayout$Interval;
    .end local v7    # "spec":Landroid/widget/GridLayout$Spec;
    :cond_4
    return-void
.end method

.method private createArcs()[Landroid/widget/GridLayout$Arc;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1479
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1480
    .local v3, "mins":Ljava/util/List;, "Ljava/util/List<Landroid/widget/GridLayout$Arc;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1483
    .local v2, "maxs":Ljava/util/List;, "Ljava/util/List<Landroid/widget/GridLayout$Arc;>;"
    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->getForwardLinks()Landroid/widget/GridLayout$PackedMap;

    move-result-object v6

    invoke-direct {p0, v3, v6}, Landroid/widget/GridLayout$Axis;->addComponentSizes(Ljava/util/List;Landroid/widget/GridLayout$PackedMap;)V

    .line 1485
    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->getBackwardLinks()Landroid/widget/GridLayout$PackedMap;

    move-result-object v6

    invoke-direct {p0, v2, v6}, Landroid/widget/GridLayout$Axis;->addComponentSizes(Ljava/util/List;Landroid/widget/GridLayout$PackedMap;)V

    .line 1488
    iget-boolean v6, p0, Landroid/widget/GridLayout$Axis;->orderPreserved:Z

    if-eqz v6, :cond_0

    .line 1490
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getCount()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 1491
    new-instance v6, Landroid/widget/GridLayout$Interval;

    add-int/lit8 v7, v1, 0x1

    invoke-direct {v6, v1, v7}, Landroid/widget/GridLayout$Interval;-><init>(II)V

    new-instance v7, Landroid/widget/GridLayout$MutableInt;

    invoke-direct {v7, v8}, Landroid/widget/GridLayout$MutableInt;-><init>(I)V

    invoke-direct {p0, v3, v6, v7}, Landroid/widget/GridLayout$Axis;->include(Ljava/util/List;Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;)V

    .line 1490
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1497
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getCount()I

    move-result v0

    .line 1498
    .local v0, "N":I
    new-instance v6, Landroid/widget/GridLayout$Interval;

    invoke-direct {v6, v8, v0}, Landroid/widget/GridLayout$Interval;-><init>(II)V

    iget-object v7, p0, Landroid/widget/GridLayout$Axis;->parentMin:Landroid/widget/GridLayout$MutableInt;

    invoke-direct {p0, v3, v6, v7, v8}, Landroid/widget/GridLayout$Axis;->include(Ljava/util/List;Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;Z)V

    .line 1499
    new-instance v6, Landroid/widget/GridLayout$Interval;

    invoke-direct {v6, v0, v8}, Landroid/widget/GridLayout$Interval;-><init>(II)V

    iget-object v7, p0, Landroid/widget/GridLayout$Axis;->parentMax:Landroid/widget/GridLayout$MutableInt;

    invoke-direct {p0, v2, v6, v7, v8}, Landroid/widget/GridLayout$Axis;->include(Ljava/util/List;Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;Z)V

    .line 1502
    invoke-direct {p0, v3}, Landroid/widget/GridLayout$Axis;->topologicalSort(Ljava/util/List;)[Landroid/widget/GridLayout$Arc;

    move-result-object v5

    .line 1503
    .local v5, "sMins":[Landroid/widget/GridLayout$Arc;
    invoke-direct {p0, v2}, Landroid/widget/GridLayout$Axis;->topologicalSort(Ljava/util/List;)[Landroid/widget/GridLayout$Arc;

    move-result-object v4

    .line 1505
    .local v4, "sMaxs":[Landroid/widget/GridLayout$Arc;
    invoke-static {v5, v4}, Landroid/widget/GridLayout;->append([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/widget/GridLayout$Arc;

    return-object v6
.end method

.method private createGroupBounds()Landroid/widget/GridLayout$PackedMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/GridLayout$PackedMap",
            "<",
            "Landroid/widget/GridLayout$Spec;",
            "Landroid/widget/GridLayout$Bounds;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1292
    const-class v7, Landroid/widget/GridLayout$Spec;

    const-class v8, Landroid/widget/GridLayout$Bounds;

    invoke-static {v7, v8}, Landroid/widget/GridLayout$Assoc;->of(Ljava/lang/Class;Ljava/lang/Class;)Landroid/widget/GridLayout$Assoc;

    move-result-object v1

    .line 1293
    .local v1, "assoc":Landroid/widget/GridLayout$Assoc;, "Landroid/widget/GridLayout$Assoc<Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Bounds;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    iget-object v7, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v7}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v0

    .local v0, "N":I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 1294
    iget-object v7, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v7, v4}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1296
    .local v3, "c":Landroid/view/View;
    iget-object v7, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v7, v3}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v5

    .line 1297
    .local v5, "lp":Landroid/widget/GridLayout$LayoutParams;
    iget-boolean v7, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v7, :cond_0

    iget-object v6, v5, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 1298
    .local v6, "spec":Landroid/widget/GridLayout$Spec;
    :goto_1
    iget-object v7, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    iget-object v8, v6, Landroid/widget/GridLayout$Spec;->alignment:Landroid/widget/GridLayout$Alignment;

    iget-boolean v9, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    invoke-virtual {v7, v8, v9}, Landroid/widget/GridLayout;->getAlignment(Landroid/widget/GridLayout$Alignment;Z)Landroid/widget/GridLayout$Alignment;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/GridLayout$Alignment;->getBounds()Landroid/widget/GridLayout$Bounds;

    move-result-object v2

    .line 1299
    .local v2, "bounds":Landroid/widget/GridLayout$Bounds;
    invoke-virtual {v1, v6, v2}, Landroid/widget/GridLayout$Assoc;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1293
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1297
    .end local v2    # "bounds":Landroid/widget/GridLayout$Bounds;
    .end local v6    # "spec":Landroid/widget/GridLayout$Spec;
    :cond_0
    iget-object v6, v5, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_1

    .line 1301
    .end local v3    # "c":Landroid/view/View;
    .end local v5    # "lp":Landroid/widget/GridLayout$LayoutParams;
    :cond_1
    invoke-virtual {v1}, Landroid/widget/GridLayout$Assoc;->pack()Landroid/widget/GridLayout$PackedMap;

    move-result-object v7

    return-object v7
.end method

.method private createLinks(Z)Landroid/widget/GridLayout$PackedMap;
    .locals 7
    .param p1, "min"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/widget/GridLayout$PackedMap",
            "<",
            "Landroid/widget/GridLayout$Interval;",
            "Landroid/widget/GridLayout$MutableInt;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1331
    const-class v5, Landroid/widget/GridLayout$Interval;

    const-class v6, Landroid/widget/GridLayout$MutableInt;

    invoke-static {v5, v6}, Landroid/widget/GridLayout$Assoc;->of(Ljava/lang/Class;Ljava/lang/Class;)Landroid/widget/GridLayout$Assoc;

    move-result-object v3

    .line 1332
    .local v3, "result":Landroid/widget/GridLayout$Assoc;, "Landroid/widget/GridLayout$Assoc<Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;>;"
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getGroupBounds()Landroid/widget/GridLayout$PackedMap;

    move-result-object v5

    iget-object v2, v5, Landroid/widget/GridLayout$PackedMap;->keys:[Ljava/lang/Object;

    check-cast v2, [Landroid/widget/GridLayout$Spec;

    .line 1333
    .local v2, "keys":[Landroid/widget/GridLayout$Spec;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v0, v2

    .local v0, "N":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1334
    if-eqz p1, :cond_0

    aget-object v5, v2, v1

    iget-object v4, v5, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    .line 1335
    .local v4, "span":Landroid/widget/GridLayout$Interval;
    :goto_1
    new-instance v5, Landroid/widget/GridLayout$MutableInt;

    invoke-direct {v5}, Landroid/widget/GridLayout$MutableInt;-><init>()V

    invoke-virtual {v3, v4, v5}, Landroid/widget/GridLayout$Assoc;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1333
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1334
    .end local v4    # "span":Landroid/widget/GridLayout$Interval;
    :cond_0
    aget-object v5, v2, v1

    iget-object v5, v5, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    invoke-virtual {v5}, Landroid/widget/GridLayout$Interval;->inverse()Landroid/widget/GridLayout$Interval;

    move-result-object v4

    goto :goto_1

    .line 1337
    :cond_1
    invoke-virtual {v3}, Landroid/widget/GridLayout$Assoc;->pack()Landroid/widget/GridLayout$PackedMap;

    move-result-object v5

    return-object v5
.end method

.method private getBackwardLinks()Landroid/widget/GridLayout$PackedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/GridLayout$PackedMap",
            "<",
            "Landroid/widget/GridLayout$Interval;",
            "Landroid/widget/GridLayout$MutableInt;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1368
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->backwardLinks:Landroid/widget/GridLayout$PackedMap;

    if-nez v0, :cond_0

    .line 1369
    invoke-direct {p0, v1}, Landroid/widget/GridLayout$Axis;->createLinks(Z)Landroid/widget/GridLayout$PackedMap;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->backwardLinks:Landroid/widget/GridLayout$PackedMap;

    .line 1371
    :cond_0
    iget-boolean v0, p0, Landroid/widget/GridLayout$Axis;->backwardLinksValid:Z

    if-nez v0, :cond_1

    .line 1372
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->backwardLinks:Landroid/widget/GridLayout$PackedMap;

    invoke-direct {p0, v0, v1}, Landroid/widget/GridLayout$Axis;->computeLinks(Landroid/widget/GridLayout$PackedMap;Z)V

    .line 1373
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->backwardLinksValid:Z

    .line 1375
    :cond_1
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->backwardLinks:Landroid/widget/GridLayout$PackedMap;

    return-object v0
.end method

.method private getForwardLinks()Landroid/widget/GridLayout$PackedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/GridLayout$PackedMap",
            "<",
            "Landroid/widget/GridLayout$Interval;",
            "Landroid/widget/GridLayout$MutableInt;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1357
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->forwardLinks:Landroid/widget/GridLayout$PackedMap;

    if-nez v0, :cond_0

    .line 1358
    invoke-direct {p0, v1}, Landroid/widget/GridLayout$Axis;->createLinks(Z)Landroid/widget/GridLayout$PackedMap;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->forwardLinks:Landroid/widget/GridLayout$PackedMap;

    .line 1360
    :cond_0
    iget-boolean v0, p0, Landroid/widget/GridLayout$Axis;->forwardLinksValid:Z

    if-nez v0, :cond_1

    .line 1361
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->forwardLinks:Landroid/widget/GridLayout$PackedMap;

    invoke-direct {p0, v0, v1}, Landroid/widget/GridLayout$Axis;->computeLinks(Landroid/widget/GridLayout$PackedMap;Z)V

    .line 1362
    iput-boolean v1, p0, Landroid/widget/GridLayout$Axis;->forwardLinksValid:Z

    .line 1364
    :cond_1
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->forwardLinks:Landroid/widget/GridLayout$PackedMap;

    return-object v0
.end method

.method private getMaxIndex()I
    .locals 2

    .prologue
    .line 1263
    iget v0, p0, Landroid/widget/GridLayout$Axis;->maxIndex:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 1264
    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->calculateMaxIndex()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/widget/GridLayout$Axis;->maxIndex:I

    .line 1266
    :cond_0
    iget v0, p0, Landroid/widget/GridLayout$Axis;->maxIndex:I

    return v0
.end method

.method private getMeasure(II)I
    .locals 1
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 1728
    invoke-direct {p0, p1, p2}, Landroid/widget/GridLayout$Axis;->setParentConstraints(II)V

    .line 1729
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getLocations()[I

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/GridLayout$Axis;->size([I)I

    move-result v0

    return v0
.end method

.method private include(Ljava/util/List;Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;)V
    .locals 1
    .param p2, "key"    # Landroid/widget/GridLayout$Interval;
    .param p3, "size"    # Landroid/widget/GridLayout$MutableInt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/GridLayout$Arc;",
            ">;",
            "Landroid/widget/GridLayout$Interval;",
            "Landroid/widget/GridLayout$MutableInt;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1403
    .local p1, "arcs":Ljava/util/List;, "Ljava/util/List<Landroid/widget/GridLayout$Arc;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/GridLayout$Axis;->include(Ljava/util/List;Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;Z)V

    .line 1404
    return-void
.end method

.method private include(Ljava/util/List;Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;Z)V
    .locals 4
    .param p2, "key"    # Landroid/widget/GridLayout$Interval;
    .param p3, "size"    # Landroid/widget/GridLayout$MutableInt;
    .param p4, "ignoreIfAlreadyPresent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/GridLayout$Arc;",
            ">;",
            "Landroid/widget/GridLayout$Interval;",
            "Landroid/widget/GridLayout$MutableInt;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 1386
    .local p1, "arcs":Ljava/util/List;, "Ljava/util/List<Landroid/widget/GridLayout$Arc;>;"
    invoke-virtual {p2}, Landroid/widget/GridLayout$Interval;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 1400
    :goto_0
    return-void

    .line 1391
    :cond_0
    if-eqz p4, :cond_2

    .line 1392
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout$Arc;

    .line 1393
    .local v0, "arc":Landroid/widget/GridLayout$Arc;
    iget-object v2, v0, Landroid/widget/GridLayout$Arc;->span:Landroid/widget/GridLayout$Interval;

    .line 1394
    .local v2, "span":Landroid/widget/GridLayout$Interval;
    invoke-virtual {v2, p2}, Landroid/widget/GridLayout$Interval;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 1399
    .end local v0    # "arc":Landroid/widget/GridLayout$Arc;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "span":Landroid/widget/GridLayout$Interval;
    :cond_2
    new-instance v3, Landroid/widget/GridLayout$Arc;

    invoke-direct {v3, p2, p3}, Landroid/widget/GridLayout$Arc;-><init>(Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private init([I)V
    .locals 1
    .param p1, "locations"    # [I

    .prologue
    .line 1542
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 1543
    return-void
.end method

.method private logError(Ljava/lang/String;[Landroid/widget/GridLayout$Arc;[Z)V
    .locals 7
    .param p1, "axisName"    # Ljava/lang/String;
    .param p2, "arcs"    # [Landroid/widget/GridLayout$Arc;
    .param p3, "culprits0"    # [Z

    .prologue
    .line 1567
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1568
    .local v2, "culprits":Ljava/util/List;, "Ljava/util/List<Landroid/widget/GridLayout$Arc;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1569
    .local v3, "removed":Ljava/util/List;, "Ljava/util/List<Landroid/widget/GridLayout$Arc;>;"
    const/4 v1, 0x0

    .local v1, "c":I
    :goto_0
    array-length v4, p2

    if-ge v1, v4, :cond_2

    .line 1570
    aget-object v0, p2, v1

    .line 1571
    .local v0, "arc":Landroid/widget/GridLayout$Arc;
    aget-boolean v4, p3, v1

    if-eqz v4, :cond_0

    .line 1572
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1574
    :cond_0
    iget-boolean v4, v0, Landroid/widget/GridLayout$Arc;->valid:Z

    if-nez v4, :cond_1

    .line 1575
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1569
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1578
    .end local v0    # "arc":Landroid/widget/GridLayout$Arc;
    :cond_2
    iget-object v4, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    iget-object v4, v4, Landroid/widget/GridLayout;->mPrinter:Landroid/util/Printer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " constraints: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v2}, Landroid/widget/GridLayout$Axis;->arcsToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " are inconsistent; permanently removing: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v3}, Landroid/widget/GridLayout$Axis;->arcsToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1580
    return-void
.end method

.method private relax([ILandroid/widget/GridLayout$Arc;)Z
    .locals 7
    .param p1, "locations"    # [I
    .param p2, "entry"    # Landroid/widget/GridLayout$Arc;

    .prologue
    const/4 v5, 0x0

    .line 1526
    iget-boolean v6, p2, Landroid/widget/GridLayout$Arc;->valid:Z

    if-nez v6, :cond_1

    .line 1538
    :cond_0
    :goto_0
    return v5

    .line 1529
    :cond_1
    iget-object v1, p2, Landroid/widget/GridLayout$Arc;->span:Landroid/widget/GridLayout$Interval;

    .line 1530
    .local v1, "span":Landroid/widget/GridLayout$Interval;
    iget v2, v1, Landroid/widget/GridLayout$Interval;->min:I

    .line 1531
    .local v2, "u":I
    iget v3, v1, Landroid/widget/GridLayout$Interval;->max:I

    .line 1532
    .local v3, "v":I
    iget-object v6, p2, Landroid/widget/GridLayout$Arc;->value:Landroid/widget/GridLayout$MutableInt;

    iget v4, v6, Landroid/widget/GridLayout$MutableInt;->value:I

    .line 1533
    .local v4, "value":I
    aget v6, p1, v2

    add-int v0, v6, v4

    .line 1534
    .local v0, "candidate":I
    aget v6, p1, v3

    if-le v0, v6, :cond_0

    .line 1535
    aput v0, p1, v3

    .line 1536
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private setParentConstraints(II)V
    .locals 2
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 1722
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->parentMin:Landroid/widget/GridLayout$MutableInt;

    iput p1, v0, Landroid/widget/GridLayout$MutableInt;->value:I

    .line 1723
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->parentMax:Landroid/widget/GridLayout$MutableInt;

    neg-int v1, p2

    iput v1, v0, Landroid/widget/GridLayout$MutableInt;->value:I

    .line 1724
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->locationsValid:Z

    .line 1725
    return-void
.end method

.method private size([I)I
    .locals 1
    .param p1, "locations"    # [I

    .prologue
    .line 1718
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getCount()I

    move-result v0

    aget v0, p1, v0

    return v0
.end method

.method private solve([Landroid/widget/GridLayout$Arc;[I)V
    .locals 12
    .param p1, "arcs"    # [Landroid/widget/GridLayout$Arc;
    .param p2, "locations"    # [I

    .prologue
    .line 1603
    iget-boolean v10, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v10, :cond_0

    const-string v2, "horizontal"

    .line 1604
    .local v2, "axisName":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getCount()I

    move-result v10

    add-int/lit8 v0, v10, 0x1

    .line 1605
    .local v0, "N":I
    const/4 v8, 0x0

    .line 1607
    .local v8, "originalCulprits":[Z
    const/4 v9, 0x0

    .local v9, "p":I
    :goto_1
    array-length v10, p1

    if-ge v9, v10, :cond_2

    .line 1608
    invoke-direct {p0, p2}, Landroid/widget/GridLayout$Axis;->init([I)V

    .line 1611
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v0, :cond_4

    .line 1612
    const/4 v3, 0x0

    .line 1613
    .local v3, "changed":Z
    const/4 v6, 0x0

    .local v6, "j":I
    array-length v7, p1

    .local v7, "length":I
    :goto_3
    if-ge v6, v7, :cond_1

    .line 1614
    aget-object v10, p1, v6

    invoke-direct {p0, p2, v10}, Landroid/widget/GridLayout$Axis;->relax([ILandroid/widget/GridLayout$Arc;)Z

    move-result v10

    or-int/2addr v3, v10

    .line 1613
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1603
    .end local v0    # "N":I
    .end local v2    # "axisName":Ljava/lang/String;
    .end local v3    # "changed":Z
    .end local v5    # "i":I
    .end local v6    # "j":I
    .end local v7    # "length":I
    .end local v8    # "originalCulprits":[Z
    .end local v9    # "p":I
    :cond_0
    const-string/jumbo v2, "vertical"

    goto :goto_0

    .line 1616
    .restart local v0    # "N":I
    .restart local v2    # "axisName":Ljava/lang/String;
    .restart local v3    # "changed":Z
    .restart local v5    # "i":I
    .restart local v6    # "j":I
    .restart local v7    # "length":I
    .restart local v8    # "originalCulprits":[Z
    .restart local v9    # "p":I
    :cond_1
    if-nez v3, :cond_3

    .line 1617
    if-eqz v8, :cond_2

    .line 1618
    invoke-direct {p0, v2, p1, v8}, Landroid/widget/GridLayout$Axis;->logError(Ljava/lang/String;[Landroid/widget/GridLayout$Arc;[Z)V

    .line 1647
    .end local v3    # "changed":Z
    .end local v5    # "i":I
    .end local v6    # "j":I
    .end local v7    # "length":I
    :cond_2
    return-void

    .line 1611
    .restart local v3    # "changed":Z
    .restart local v5    # "i":I
    .restart local v6    # "j":I
    .restart local v7    # "length":I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1624
    .end local v3    # "changed":Z
    .end local v6    # "j":I
    .end local v7    # "length":I
    :cond_4
    array-length v10, p1

    new-array v4, v10, [Z

    .line 1625
    .local v4, "culprits":[Z
    const/4 v5, 0x0

    :goto_4
    if-ge v5, v0, :cond_6

    .line 1626
    const/4 v6, 0x0

    .restart local v6    # "j":I
    array-length v7, p1

    .restart local v7    # "length":I
    :goto_5
    if-ge v6, v7, :cond_5

    .line 1627
    aget-boolean v10, v4, v6

    aget-object v11, p1, v6

    invoke-direct {p0, p2, v11}, Landroid/widget/GridLayout$Axis;->relax([ILandroid/widget/GridLayout$Arc;)Z

    move-result v11

    or-int/2addr v10, v11

    aput-boolean v10, v4, v6

    .line 1626
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 1625
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1631
    .end local v6    # "j":I
    .end local v7    # "length":I
    :cond_6
    if-nez v9, :cond_7

    .line 1632
    move-object v8, v4

    .line 1635
    :cond_7
    const/4 v5, 0x0

    :goto_6
    array-length v10, p1

    if-ge v5, v10, :cond_a

    .line 1636
    aget-boolean v10, v4, v5

    if-eqz v10, :cond_8

    .line 1637
    aget-object v1, p1, v5

    .line 1639
    .local v1, "arc":Landroid/widget/GridLayout$Arc;
    iget-object v10, v1, Landroid/widget/GridLayout$Arc;->span:Landroid/widget/GridLayout$Interval;

    iget v10, v10, Landroid/widget/GridLayout$Interval;->min:I

    iget-object v11, v1, Landroid/widget/GridLayout$Arc;->span:Landroid/widget/GridLayout$Interval;

    iget v11, v11, Landroid/widget/GridLayout$Interval;->max:I

    if-ge v10, v11, :cond_9

    .line 1635
    .end local v1    # "arc":Landroid/widget/GridLayout$Arc;
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 1642
    .restart local v1    # "arc":Landroid/widget/GridLayout$Arc;
    :cond_9
    const/4 v10, 0x0

    iput-boolean v10, v1, Landroid/widget/GridLayout$Arc;->valid:Z

    .line 1607
    .end local v1    # "arc":Landroid/widget/GridLayout$Arc;
    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_1
.end method

.method private topologicalSort(Ljava/util/List;)[Landroid/widget/GridLayout$Arc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/GridLayout$Arc;",
            ">;)[",
            "Landroid/widget/GridLayout$Arc;"
        }
    .end annotation

    .prologue
    .line 1468
    .local p1, "arcs":Ljava/util/List;, "Ljava/util/List<Landroid/widget/GridLayout$Arc;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/widget/GridLayout$Arc;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/widget/GridLayout$Arc;

    invoke-direct {p0, v0}, Landroid/widget/GridLayout$Axis;->topologicalSort([Landroid/widget/GridLayout$Arc;)[Landroid/widget/GridLayout$Arc;

    move-result-object v0

    return-object v0
.end method

.method private topologicalSort([Landroid/widget/GridLayout$Arc;)[Landroid/widget/GridLayout$Arc;
    .locals 1
    .param p1, "arcs"    # [Landroid/widget/GridLayout$Arc;

    .prologue
    .line 1429
    new-instance v0, Landroid/widget/GridLayout$Axis$1;

    invoke-direct {v0, p0, p1}, Landroid/widget/GridLayout$Axis$1;-><init>(Landroid/widget/GridLayout$Axis;[Landroid/widget/GridLayout$Arc;)V

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis$1;->sort()[Landroid/widget/GridLayout$Arc;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getArcs()[Landroid/widget/GridLayout$Arc;
    .locals 1

    .prologue
    .line 1515
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->arcs:[Landroid/widget/GridLayout$Arc;

    if-nez v0, :cond_0

    .line 1516
    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->createArcs()[Landroid/widget/GridLayout$Arc;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->arcs:[Landroid/widget/GridLayout$Arc;

    .line 1518
    :cond_0
    iget-boolean v0, p0, Landroid/widget/GridLayout$Axis;->arcsValid:Z

    if-nez v0, :cond_1

    .line 1519
    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->computeArcs()V

    .line 1520
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->arcsValid:Z

    .line 1522
    :cond_1
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->arcs:[Landroid/widget/GridLayout$Arc;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 1270
    iget v0, p0, Landroid/widget/GridLayout$Axis;->definedCount:I

    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->getMaxIndex()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getGroupBounds()Landroid/widget/GridLayout$PackedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/GridLayout$PackedMap",
            "<",
            "Landroid/widget/GridLayout$Spec;",
            "Landroid/widget/GridLayout$Bounds;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1319
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->groupBounds:Landroid/widget/GridLayout$PackedMap;

    if-nez v0, :cond_0

    .line 1320
    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->createGroupBounds()Landroid/widget/GridLayout$PackedMap;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->groupBounds:Landroid/widget/GridLayout$PackedMap;

    .line 1322
    :cond_0
    iget-boolean v0, p0, Landroid/widget/GridLayout$Axis;->groupBoundsValid:Z

    if-nez v0, :cond_1

    .line 1323
    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->computeGroupBounds()V

    .line 1324
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->groupBoundsValid:Z

    .line 1326
    :cond_1
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->groupBounds:Landroid/widget/GridLayout$PackedMap;

    return-object v0
.end method

.method public getLeadingMargins()[I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1665
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->leadingMargins:[I

    if-nez v0, :cond_0

    .line 1666
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->leadingMargins:[I

    .line 1668
    :cond_0
    iget-boolean v0, p0, Landroid/widget/GridLayout$Axis;->leadingMarginsValid:Z

    if-nez v0, :cond_1

    .line 1669
    invoke-direct {p0, v1}, Landroid/widget/GridLayout$Axis;->computeMargins(Z)V

    .line 1670
    iput-boolean v1, p0, Landroid/widget/GridLayout$Axis;->leadingMarginsValid:Z

    .line 1672
    :cond_1
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->leadingMargins:[I

    return-object v0
.end method

.method public getLocations()[I
    .locals 2

    .prologue
    .line 1703
    iget-object v1, p0, Landroid/widget/GridLayout$Axis;->locations:[I

    if-nez v1, :cond_0

    .line 1704
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getCount()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 1705
    .local v0, "N":I
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/GridLayout$Axis;->locations:[I

    .line 1707
    .end local v0    # "N":I
    :cond_0
    iget-boolean v1, p0, Landroid/widget/GridLayout$Axis;->locationsValid:Z

    if-nez v1, :cond_1

    .line 1708
    iget-object v1, p0, Landroid/widget/GridLayout$Axis;->locations:[I

    invoke-direct {p0, v1}, Landroid/widget/GridLayout$Axis;->computeLocations([I)V

    .line 1709
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/GridLayout$Axis;->locationsValid:Z

    .line 1711
    :cond_1
    iget-object v1, p0, Landroid/widget/GridLayout$Axis;->locations:[I

    return-object v1
.end method

.method public getMeasure(I)I
    .locals 4
    .param p1, "measureSpec"    # I

    .prologue
    const/4 v2, 0x0

    .line 1733
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1734
    .local v0, "mode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1735
    .local v1, "size":I
    sparse-switch v0, :sswitch_data_0

    .line 1746
    sget-boolean v3, Landroid/widget/GridLayout$Axis;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1737
    :sswitch_0
    const v3, 0x186a0

    invoke-direct {p0, v2, v3}, Landroid/widget/GridLayout$Axis;->getMeasure(II)I

    move-result v2

    .line 1747
    :cond_0
    :goto_0
    return v2

    .line 1740
    :sswitch_1
    invoke-direct {p0, v1, v1}, Landroid/widget/GridLayout$Axis;->getMeasure(II)I

    move-result v2

    goto :goto_0

    .line 1743
    :sswitch_2
    invoke-direct {p0, v2, v1}, Landroid/widget/GridLayout$Axis;->getMeasure(II)I

    move-result v2

    goto :goto_0

    .line 1735
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method public getTrailingMargins()[I
    .locals 1

    .prologue
    .line 1676
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->trailingMargins:[I

    if-nez v0, :cond_0

    .line 1677
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->trailingMargins:[I

    .line 1679
    :cond_0
    iget-boolean v0, p0, Landroid/widget/GridLayout$Axis;->trailingMarginsValid:Z

    if-nez v0, :cond_1

    .line 1680
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/GridLayout$Axis;->computeMargins(Z)V

    .line 1681
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->trailingMarginsValid:Z

    .line 1683
    :cond_1
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->trailingMargins:[I

    return-object v0
.end method

.method groupArcsByFirstVertex([Landroid/widget/GridLayout$Arc;)[[Landroid/widget/GridLayout$Arc;
    .locals 11
    .param p1, "arcs"    # [Landroid/widget/GridLayout$Arc;

    .prologue
    .line 1409
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getCount()I

    move-result v8

    add-int/lit8 v0, v8, 0x1

    .line 1410
    .local v0, "N":I
    new-array v6, v0, [[Landroid/widget/GridLayout$Arc;

    .line 1411
    .local v6, "result":[[Landroid/widget/GridLayout$Arc;
    new-array v7, v0, [I

    .line 1412
    .local v7, "sizes":[I
    move-object v2, p1

    .local v2, "arr$":[Landroid/widget/GridLayout$Arc;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v2, v4

    .line 1413
    .local v1, "arc":Landroid/widget/GridLayout$Arc;
    iget-object v8, v1, Landroid/widget/GridLayout$Arc;->span:Landroid/widget/GridLayout$Interval;

    iget v8, v8, Landroid/widget/GridLayout$Interval;->min:I

    aget v9, v7, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v7, v8

    .line 1412
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1415
    .end local v1    # "arc":Landroid/widget/GridLayout$Arc;
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v8, v7

    if-ge v3, v8, :cond_1

    .line 1416
    aget v8, v7, v3

    new-array v8, v8, [Landroid/widget/GridLayout$Arc;

    aput-object v8, v6, v3

    .line 1415
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1419
    :cond_1
    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/util/Arrays;->fill([II)V

    .line 1420
    move-object v2, p1

    array-length v5, v2

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v5, :cond_2

    aget-object v1, v2, v4

    .line 1421
    .restart local v1    # "arc":Landroid/widget/GridLayout$Arc;
    iget-object v8, v1, Landroid/widget/GridLayout$Arc;->span:Landroid/widget/GridLayout$Interval;

    iget v3, v8, Landroid/widget/GridLayout$Interval;->min:I

    .line 1422
    aget-object v8, v6, v3

    aget v9, v7, v3

    add-int/lit8 v10, v9, 0x1

    aput v10, v7, v3

    aput-object v1, v8, v9

    .line 1420
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1425
    .end local v1    # "arc":Landroid/widget/GridLayout$Arc;
    :cond_2
    return-object v6
.end method

.method public invalidateStructure()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1758
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/widget/GridLayout$Axis;->maxIndex:I

    .line 1760
    iput-object v1, p0, Landroid/widget/GridLayout$Axis;->groupBounds:Landroid/widget/GridLayout$PackedMap;

    .line 1761
    iput-object v1, p0, Landroid/widget/GridLayout$Axis;->forwardLinks:Landroid/widget/GridLayout$PackedMap;

    .line 1762
    iput-object v1, p0, Landroid/widget/GridLayout$Axis;->backwardLinks:Landroid/widget/GridLayout$PackedMap;

    .line 1764
    iput-object v1, p0, Landroid/widget/GridLayout$Axis;->leadingMargins:[I

    .line 1765
    iput-object v1, p0, Landroid/widget/GridLayout$Axis;->trailingMargins:[I

    .line 1766
    iput-object v1, p0, Landroid/widget/GridLayout$Axis;->arcs:[Landroid/widget/GridLayout$Arc;

    .line 1768
    iput-object v1, p0, Landroid/widget/GridLayout$Axis;->locations:[I

    .line 1770
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->invalidateValues()V

    .line 1771
    return-void
.end method

.method public invalidateValues()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1774
    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->groupBoundsValid:Z

    .line 1775
    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->forwardLinksValid:Z

    .line 1776
    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->backwardLinksValid:Z

    .line 1778
    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->leadingMarginsValid:Z

    .line 1779
    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->trailingMarginsValid:Z

    .line 1780
    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->arcsValid:Z

    .line 1782
    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->locationsValid:Z

    .line 1783
    return-void
.end method

.method public isOrderPreserved()Z
    .locals 1

    .prologue
    .line 1283
    iget-boolean v0, p0, Landroid/widget/GridLayout$Axis;->orderPreserved:Z

    return v0
.end method

.method public layout(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 1753
    invoke-direct {p0, p1, p1}, Landroid/widget/GridLayout$Axis;->setParentConstraints(II)V

    .line 1754
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getLocations()[I

    .line 1755
    return-void
.end method

.method public setCount(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 1274
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->getMaxIndex()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v0, :cond_1

    const-string v0, "column"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Count must be greater than or equal to the maximum of all grid indices "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(and spans) defined in the LayoutParams of each child"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Landroid/widget/GridLayout;->handleInvalidParams(Ljava/lang/String;)V
    invoke-static {v0}, Landroid/widget/GridLayout;->access$100(Ljava/lang/String;)V

    .line 1279
    :cond_0
    iput p1, p0, Landroid/widget/GridLayout$Axis;->definedCount:I

    .line 1280
    return-void

    .line 1275
    :cond_1
    const-string/jumbo v0, "row"

    goto :goto_0
.end method

.method public setOrderPreserved(Z)V
    .locals 0
    .param p1, "orderPreserved"    # Z

    .prologue
    .line 1287
    iput-boolean p1, p0, Landroid/widget/GridLayout$Axis;->orderPreserved:Z

    .line 1288
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->invalidateStructure()V

    .line 1289
    return-void
.end method
