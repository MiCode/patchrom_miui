.class Landroid/widget/GridLayout$Axis$1;
.super Ljava/lang/Object;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/GridLayout$Axis;->topologicalSort([Landroid/widget/GridLayout$Arc;)[Landroid/widget/GridLayout$Arc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field arcsByVertex:[[Landroid/widget/GridLayout$Arc;

.field cursor:I

.field result:[Landroid/widget/GridLayout$Arc;

.field final synthetic this$1:Landroid/widget/GridLayout$Axis;

.field final synthetic val$arcs:[Landroid/widget/GridLayout$Arc;

.field visited:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1429
    const-class v0, Landroid/widget/GridLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/widget/GridLayout$Axis$1;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/widget/GridLayout$Axis;[Landroid/widget/GridLayout$Arc;)V
    .locals 2

    .prologue
    .line 1429
    iput-object p1, p0, Landroid/widget/GridLayout$Axis$1;->this$1:Landroid/widget/GridLayout$Axis;

    iput-object p2, p0, Landroid/widget/GridLayout$Axis$1;->val$arcs:[Landroid/widget/GridLayout$Arc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1430
    iget-object v0, p0, Landroid/widget/GridLayout$Axis$1;->val$arcs:[Landroid/widget/GridLayout$Arc;

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/GridLayout$Arc;

    iput-object v0, p0, Landroid/widget/GridLayout$Axis$1;->result:[Landroid/widget/GridLayout$Arc;

    .line 1431
    iget-object v0, p0, Landroid/widget/GridLayout$Axis$1;->result:[Landroid/widget/GridLayout$Arc;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/widget/GridLayout$Axis$1;->cursor:I

    .line 1432
    iget-object v0, p0, Landroid/widget/GridLayout$Axis$1;->this$1:Landroid/widget/GridLayout$Axis;

    iget-object v1, p0, Landroid/widget/GridLayout$Axis$1;->val$arcs:[Landroid/widget/GridLayout$Arc;

    invoke-virtual {v0, v1}, Landroid/widget/GridLayout$Axis;->groupArcsByFirstVertex([Landroid/widget/GridLayout$Arc;)[[Landroid/widget/GridLayout$Arc;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/GridLayout$Axis$1;->arcsByVertex:[[Landroid/widget/GridLayout$Arc;

    .line 1433
    iget-object v0, p0, Landroid/widget/GridLayout$Axis$1;->this$1:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/GridLayout$Axis$1;->visited:[I

    return-void
.end method


# virtual methods
.method sort()[Landroid/widget/GridLayout$Arc;
    .locals 4

    .prologue
    .line 1458
    const/4 v1, 0x0

    .local v1, "loc":I
    iget-object v2, p0, Landroid/widget/GridLayout$Axis$1;->arcsByVertex:[[Landroid/widget/GridLayout$Arc;

    array-length v0, v2

    .local v0, "N":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1459
    invoke-virtual {p0, v1}, Landroid/widget/GridLayout$Axis$1;->walk(I)V

    .line 1458
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1461
    :cond_0
    sget-boolean v2, Landroid/widget/GridLayout$Axis$1;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    iget v2, p0, Landroid/widget/GridLayout$Axis$1;->cursor:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1462
    :cond_1
    iget-object v2, p0, Landroid/widget/GridLayout$Axis$1;->result:[Landroid/widget/GridLayout$Arc;

    return-object v2
.end method

.method walk(I)V
    .locals 7
    .param p1, "loc"    # I

    .prologue
    .line 1436
    iget-object v4, p0, Landroid/widget/GridLayout$Axis$1;->visited:[I

    aget v4, v4, p1

    packed-switch v4, :pswitch_data_0

    .line 1455
    :cond_0
    :goto_0
    return-void

    .line 1438
    :pswitch_0
    iget-object v4, p0, Landroid/widget/GridLayout$Axis$1;->visited:[I

    const/4 v5, 0x1

    aput v5, v4, p1

    .line 1439
    iget-object v4, p0, Landroid/widget/GridLayout$Axis$1;->arcsByVertex:[[Landroid/widget/GridLayout$Arc;

    aget-object v1, v4, p1

    .local v1, "arr$":[Landroid/widget/GridLayout$Arc;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 1440
    .local v0, "arc":Landroid/widget/GridLayout$Arc;
    iget-object v4, v0, Landroid/widget/GridLayout$Arc;->span:Landroid/widget/GridLayout$Interval;

    iget v4, v4, Landroid/widget/GridLayout$Interval;->max:I

    invoke-virtual {p0, v4}, Landroid/widget/GridLayout$Axis$1;->walk(I)V

    .line 1441
    iget-object v4, p0, Landroid/widget/GridLayout$Axis$1;->result:[Landroid/widget/GridLayout$Arc;

    iget v5, p0, Landroid/widget/GridLayout$Axis$1;->cursor:I

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Landroid/widget/GridLayout$Axis$1;->cursor:I

    aput-object v0, v4, v5

    .line 1439
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1443
    .end local v0    # "arc":Landroid/widget/GridLayout$Arc;
    :cond_1
    iget-object v4, p0, Landroid/widget/GridLayout$Axis$1;->visited:[I

    const/4 v5, 0x2

    aput v5, v4, p1

    goto :goto_0

    .line 1448
    .end local v1    # "arr$":[Landroid/widget/GridLayout$Arc;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :pswitch_1
    sget-boolean v4, Landroid/widget/GridLayout$Axis$1;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1436
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
