.class public Landroid/widget/TableRow$LayoutParams;
.super Landroid/widget/LinearLayout$LayoutParams;
.source "TableRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TableRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field private static final LOCATION:I = 0x0

.field private static final LOCATION_NEXT:I = 0x1


# instance fields
.field public column:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mOffset:[I

.field public span:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 470
    const/4 v0, -0x2

    invoke-direct {p0, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 418
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/TableRow$LayoutParams;->mOffset:[I

    .line 471
    iput v1, p0, Landroid/widget/TableRow$LayoutParams;->column:I

    .line 472
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TableRow$LayoutParams;->span:I

    .line 473
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "column"    # I

    .prologue
    .line 485
    invoke-direct {p0}, Landroid/widget/TableRow$LayoutParams;-><init>()V

    .line 486
    iput p1, p0, Landroid/widget/TableRow$LayoutParams;->column:I

    .line 487
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 446
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 418
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/TableRow$LayoutParams;->mOffset:[I

    .line 447
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TableRow$LayoutParams;->column:I

    .line 448
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TableRow$LayoutParams;->span:I

    .line 449
    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "initWeight"    # F

    .prologue
    .line 459
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 418
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/TableRow$LayoutParams;->mOffset:[I

    .line 460
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TableRow$LayoutParams;->column:I

    .line 461
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TableRow$LayoutParams;->span:I

    .line 462
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    .line 424
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 418
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/widget/TableRow$LayoutParams;->mOffset:[I

    .line 426
    sget-object v1, Lcom/android/internal/R$styleable;->TableRow_Cell:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 430
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/widget/TableRow$LayoutParams;->column:I

    .line 431
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/widget/TableRow$LayoutParams;->span:I

    .line 432
    iget v1, p0, Landroid/widget/TableRow$LayoutParams;->span:I

    if-gt v1, v3, :cond_0

    .line 433
    iput v3, p0, Landroid/widget/TableRow$LayoutParams;->span:I

    .line 436
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 437
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 493
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 418
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/TableRow$LayoutParams;->mOffset:[I

    .line 494
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 500
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 418
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/TableRow$LayoutParams;->mOffset:[I

    .line 501
    return-void
.end method

.method static synthetic access$200(Landroid/widget/TableRow$LayoutParams;)[I
    .locals 1
    .param p0, "x0"    # Landroid/widget/TableRow$LayoutParams;

    .prologue
    .line 402
    iget-object v0, p0, Landroid/widget/TableRow$LayoutParams;->mOffset:[I

    return-object v0
.end method


# virtual methods
.method protected setBaseAttributes(Landroid/content/res/TypedArray;II)V
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "widthAttr"    # I
    .param p3, "heightAttr"    # I

    .prologue
    .line 506
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    const-string v0, "layout_width"

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/widget/TableRow$LayoutParams;->width:I

    .line 513
    :goto_0
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 514
    const-string v0, "layout_height"

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/widget/TableRow$LayoutParams;->height:I

    .line 518
    :goto_1
    return-void

    .line 509
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TableRow$LayoutParams;->width:I

    goto :goto_0

    .line 516
    :cond_1
    const/4 v0, -0x2

    iput v0, p0, Landroid/widget/TableRow$LayoutParams;->height:I

    goto :goto_1
.end method
