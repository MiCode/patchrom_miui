.class public Landroid/widget/GridLayout;
.super Landroid/view/ViewGroup;
.source "GridLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/GridLayout$Alignment;,
        Landroid/widget/GridLayout$Spec;,
        Landroid/widget/GridLayout$Interval;,
        Landroid/widget/GridLayout$Bounds;,
        Landroid/widget/GridLayout$PackedMap;,
        Landroid/widget/GridLayout$Assoc;,
        Landroid/widget/GridLayout$MutableInt;,
        Landroid/widget/GridLayout$Arc;,
        Landroid/widget/GridLayout$LayoutParams;,
        Landroid/widget/GridLayout$Axis;
    }
.end annotation


# static fields
.field private static final ALIGNMENT_MODE:I = 0x6

.field public static final ALIGN_BOUNDS:I = 0x0

.field public static final ALIGN_MARGINS:I = 0x1

.field public static final BASELINE:Landroid/widget/GridLayout$Alignment;

.field public static final BOTTOM:Landroid/widget/GridLayout$Alignment;

.field private static final CAN_STRETCH:I = 0x2

.field public static final CENTER:Landroid/widget/GridLayout$Alignment;

.field private static final COLUMN_COUNT:I = 0x3

.field private static final COLUMN_ORDER_PRESERVED:I = 0x4

.field private static final DEFAULT_ALIGNMENT_MODE:I = 0x1

.field static final DEFAULT_CONTAINER_MARGIN:I = 0x0

.field private static final DEFAULT_COUNT:I = -0x80000000

.field private static final DEFAULT_ORDER_PRESERVED:Z = true

.field private static final DEFAULT_ORIENTATION:I = 0x0

.field private static final DEFAULT_USE_DEFAULT_MARGINS:Z = false

.field public static final END:Landroid/widget/GridLayout$Alignment;

.field public static final FILL:Landroid/widget/GridLayout$Alignment;

.field public static final HORIZONTAL:I = 0x0

.field private static final INFLEXIBLE:I = 0x0

.field private static final LEADING:Landroid/widget/GridLayout$Alignment;

.field public static final LEFT:Landroid/widget/GridLayout$Alignment;

.field static final LOG_PRINTER:Landroid/util/Printer;

.field static final MAX_SIZE:I = 0x186a0

.field static final NO_PRINTER:Landroid/util/Printer;

.field private static final ORIENTATION:I = 0x0

.field public static final RIGHT:Landroid/widget/GridLayout$Alignment;

.field private static final ROW_COUNT:I = 0x1

.field private static final ROW_ORDER_PRESERVED:I = 0x2

.field public static final START:Landroid/widget/GridLayout$Alignment;

.field public static final TOP:Landroid/widget/GridLayout$Alignment;

.field private static final TRAILING:Landroid/widget/GridLayout$Alignment;

.field public static final UNDEFINED:I = -0x80000000

.field static final UNDEFINED_ALIGNMENT:Landroid/widget/GridLayout$Alignment;

.field static final UNINITIALIZED_HASH:I = 0x0

.field private static final USE_DEFAULT_MARGINS:I = 0x5

.field public static final VERTICAL:I = 0x1


# instance fields
.field mAlignmentMode:I

.field mDefaultGap:I

.field final mHorizontalAxis:Landroid/widget/GridLayout$Axis;

.field mLastLayoutParamsHashCode:I

.field mOrientation:I

.field mPrinter:Landroid/util/Printer;

.field mUseDefaultMargins:Z

.field final mVerticalAxis:Landroid/widget/GridLayout$Axis;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 227
    new-instance v0, Landroid/util/LogPrinter;

    const/4 v1, 0x3

    const-class v2, Landroid/widget/GridLayout;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    sput-object v0, Landroid/widget/GridLayout;->LOG_PRINTER:Landroid/util/Printer;

    .line 228
    new-instance v0, Landroid/widget/GridLayout$1;

    invoke-direct {v0}, Landroid/widget/GridLayout$1;-><init>()V

    sput-object v0, Landroid/widget/GridLayout;->NO_PRINTER:Landroid/util/Printer;

    .line 2595
    new-instance v0, Landroid/widget/GridLayout$2;

    invoke-direct {v0}, Landroid/widget/GridLayout$2;-><init>()V

    sput-object v0, Landroid/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroid/widget/GridLayout$Alignment;

    .line 2611
    new-instance v0, Landroid/widget/GridLayout$3;

    invoke-direct {v0}, Landroid/widget/GridLayout$3;-><init>()V

    sput-object v0, Landroid/widget/GridLayout;->LEADING:Landroid/widget/GridLayout$Alignment;

    .line 2627
    new-instance v0, Landroid/widget/GridLayout$4;

    invoke-direct {v0}, Landroid/widget/GridLayout$4;-><init>()V

    sput-object v0, Landroid/widget/GridLayout;->TRAILING:Landroid/widget/GridLayout$Alignment;

    .line 2643
    sget-object v0, Landroid/widget/GridLayout;->LEADING:Landroid/widget/GridLayout$Alignment;

    sput-object v0, Landroid/widget/GridLayout;->TOP:Landroid/widget/GridLayout$Alignment;

    .line 2649
    sget-object v0, Landroid/widget/GridLayout;->TRAILING:Landroid/widget/GridLayout$Alignment;

    sput-object v0, Landroid/widget/GridLayout;->BOTTOM:Landroid/widget/GridLayout$Alignment;

    .line 2655
    sget-object v0, Landroid/widget/GridLayout;->LEADING:Landroid/widget/GridLayout$Alignment;

    sput-object v0, Landroid/widget/GridLayout;->START:Landroid/widget/GridLayout$Alignment;

    .line 2661
    sget-object v0, Landroid/widget/GridLayout;->TRAILING:Landroid/widget/GridLayout$Alignment;

    sput-object v0, Landroid/widget/GridLayout;->END:Landroid/widget/GridLayout$Alignment;

    .line 2681
    sget-object v0, Landroid/widget/GridLayout;->START:Landroid/widget/GridLayout$Alignment;

    sget-object v1, Landroid/widget/GridLayout;->END:Landroid/widget/GridLayout$Alignment;

    invoke-static {v0, v1}, Landroid/widget/GridLayout;->createSwitchingAlignment(Landroid/widget/GridLayout$Alignment;Landroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Alignment;

    move-result-object v0

    sput-object v0, Landroid/widget/GridLayout;->LEFT:Landroid/widget/GridLayout$Alignment;

    .line 2687
    sget-object v0, Landroid/widget/GridLayout;->END:Landroid/widget/GridLayout$Alignment;

    sget-object v1, Landroid/widget/GridLayout;->START:Landroid/widget/GridLayout$Alignment;

    invoke-static {v0, v1}, Landroid/widget/GridLayout;->createSwitchingAlignment(Landroid/widget/GridLayout$Alignment;Landroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Alignment;

    move-result-object v0

    sput-object v0, Landroid/widget/GridLayout;->RIGHT:Landroid/widget/GridLayout$Alignment;

    .line 2694
    new-instance v0, Landroid/widget/GridLayout$6;

    invoke-direct {v0}, Landroid/widget/GridLayout$6;-><init>()V

    sput-object v0, Landroid/widget/GridLayout;->CENTER:Landroid/widget/GridLayout$Alignment;

    .line 2713
    new-instance v0, Landroid/widget/GridLayout$7;

    invoke-direct {v0}, Landroid/widget/GridLayout$7;-><init>()V

    sput-object v0, Landroid/widget/GridLayout;->BASELINE:Landroid/widget/GridLayout$Alignment;

    .line 2769
    new-instance v0, Landroid/widget/GridLayout$8;

    invoke-direct {v0}, Landroid/widget/GridLayout$8;-><init>()V

    sput-object v0, Landroid/widget/GridLayout;->FILL:Landroid/widget/GridLayout$Alignment;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 297
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 298
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 289
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 290
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 269
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 254
    new-instance v1, Landroid/widget/GridLayout$Axis;

    invoke-direct {v1, p0, v3, v4}, Landroid/widget/GridLayout$Axis;-><init>(Landroid/widget/GridLayout;ZLandroid/widget/GridLayout$1;)V

    iput-object v1, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    .line 255
    new-instance v1, Landroid/widget/GridLayout$Axis;

    invoke-direct {v1, p0, v2, v4}, Landroid/widget/GridLayout$Axis;-><init>(Landroid/widget/GridLayout;ZLandroid/widget/GridLayout$1;)V

    iput-object v1, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    .line 256
    iput v2, p0, Landroid/widget/GridLayout;->mOrientation:I

    .line 257
    iput-boolean v2, p0, Landroid/widget/GridLayout;->mUseDefaultMargins:Z

    .line 258
    iput v3, p0, Landroid/widget/GridLayout;->mAlignmentMode:I

    .line 260
    iput v2, p0, Landroid/widget/GridLayout;->mLastLayoutParamsHashCode:I

    .line 261
    sget-object v1, Landroid/widget/GridLayout;->LOG_PRINTER:Landroid/util/Printer;

    iput-object v1, p0, Landroid/widget/GridLayout;->mPrinter:Landroid/util/Printer;

    .line 270
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/internal/R$dimen;->default_gap:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Landroid/widget/GridLayout;->mDefaultGap:I

    .line 271
    sget-object v1, Lcom/android/internal/R$styleable;->GridLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 273
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    const/high16 v2, -0x80000000

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/GridLayout;->setRowCount(I)V

    .line 274
    const/4 v1, 0x3

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/GridLayout;->setColumnCount(I)V

    .line 275
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/GridLayout;->setOrientation(I)V

    .line 276
    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/GridLayout;->setUseDefaultMargins(Z)V

    .line 277
    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/GridLayout;->setAlignmentMode(I)V

    .line 278
    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/GridLayout;->setRowOrderPreserved(Z)V

    .line 279
    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/GridLayout;->setColumnOrderPreserved(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 283
    return-void

    .line 281
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 164
    invoke-static {p0}, Landroid/widget/GridLayout;->handleInvalidParams(Ljava/lang/String;)V

    return-void
.end method

.method static adjust(II)I
    .locals 2
    .param p0, "measureSpec"    # I
    .param p1, "delta"    # I

    .prologue
    .line 1031
    add-int v0, p0, p1

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method static append([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p1, "b":[Ljava/lang/Object;, "[TT;"
    const/4 v4, 0x0

    .line 617
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    array-length v2, p0

    array-length v3, p1

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 618
    .local v0, "result":[Ljava/lang/Object;, "[TT;"
    array-length v1, p0

    invoke-static {p0, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 619
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 620
    return-object v0
.end method

.method static canStretch(I)Z
    .locals 1
    .param p0, "flexibility"    # I

    .prologue
    .line 2787
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkLayoutParams(Landroid/widget/GridLayout$LayoutParams;Z)V
    .locals 8
    .param p1, "lp"    # Landroid/widget/GridLayout$LayoutParams;
    .param p2, "horizontal"    # Z

    .prologue
    const/high16 v7, -0x80000000

    .line 823
    if-eqz p2, :cond_3

    const-string v2, "column"

    .line 824
    .local v2, "groupName":Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_4

    iget-object v4, p1, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 825
    .local v4, "spec":Landroid/widget/GridLayout$Spec;
    :goto_1
    iget-object v3, v4, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    .line 826
    .local v3, "span":Landroid/widget/GridLayout$Interval;
    iget v5, v3, Landroid/widget/GridLayout$Interval;->min:I

    if-eq v5, v7, :cond_0

    iget v5, v3, Landroid/widget/GridLayout$Interval;->min:I

    if-gez v5, :cond_0

    .line 827
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " indices must be positive"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/widget/GridLayout;->handleInvalidParams(Ljava/lang/String;)V

    .line 829
    :cond_0
    if-eqz p2, :cond_5

    iget-object v0, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    .line 830
    .local v0, "axis":Landroid/widget/GridLayout$Axis;
    :goto_2
    iget v1, v0, Landroid/widget/GridLayout$Axis;->definedCount:I

    .line 831
    .local v1, "count":I
    if-eq v1, v7, :cond_2

    .line 832
    iget v5, v3, Landroid/widget/GridLayout$Interval;->max:I

    if-le v5, v1, :cond_1

    .line 833
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " indices (start + span) mustn\'t exceed the "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " count"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/widget/GridLayout;->handleInvalidParams(Ljava/lang/String;)V

    .line 836
    :cond_1
    invoke-virtual {v3}, Landroid/widget/GridLayout$Interval;->size()I

    move-result v5

    if-le v5, v1, :cond_2

    .line 837
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " span mustn\'t exceed the "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " count"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/widget/GridLayout;->handleInvalidParams(Ljava/lang/String;)V

    .line 840
    :cond_2
    return-void

    .line 823
    .end local v0    # "axis":Landroid/widget/GridLayout$Axis;
    .end local v1    # "count":I
    .end local v2    # "groupName":Ljava/lang/String;
    .end local v3    # "span":Landroid/widget/GridLayout$Interval;
    .end local v4    # "spec":Landroid/widget/GridLayout$Spec;
    :cond_3
    const-string/jumbo v2, "row"

    goto :goto_0

    .line 824
    .restart local v2    # "groupName":Ljava/lang/String;
    :cond_4
    iget-object v4, p1, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_1

    .line 829
    .restart local v3    # "span":Landroid/widget/GridLayout$Interval;
    .restart local v4    # "spec":Landroid/widget/GridLayout$Spec;
    :cond_5
    iget-object v0, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    goto :goto_2
.end method

.method private static clip(Landroid/widget/GridLayout$Interval;ZI)I
    .locals 3
    .param p0, "minorRange"    # Landroid/widget/GridLayout$Interval;
    .param p1, "minorWasDefined"    # Z
    .param p2, "count"    # I

    .prologue
    .line 719
    invoke-virtual {p0}, Landroid/widget/GridLayout$Interval;->size()I

    move-result v1

    .line 720
    .local v1, "size":I
    if-nez p2, :cond_0

    .line 724
    .end local v1    # "size":I
    :goto_0
    return v1

    .line 723
    .restart local v1    # "size":I
    :cond_0
    if-eqz p1, :cond_1

    iget v2, p0, Landroid/widget/GridLayout$Interval;->min:I

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 724
    .local v0, "min":I
    :goto_1
    sub-int v2, p2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    .line 723
    .end local v0    # "min":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private computeLayoutParamsHashCode()I
    .locals 7

    .prologue
    .line 969
    const/4 v4, 0x1

    .line 970
    .local v4, "result":I
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v0

    .local v0, "N":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 971
    invoke-virtual {p0, v2}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 972
    .local v1, "c":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    .line 970
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 973
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/GridLayout$LayoutParams;

    .line 974
    .local v3, "lp":Landroid/widget/GridLayout$LayoutParams;
    mul-int/lit8 v5, v4, 0x1f

    invoke-virtual {v3}, Landroid/widget/GridLayout$LayoutParams;->hashCode()I

    move-result v6

    add-int v4, v5, v6

    goto :goto_1

    .line 976
    .end local v1    # "c":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/GridLayout$LayoutParams;
    :cond_1
    return v4
.end method

.method private consistencyCheck()V
    .locals 2

    .prologue
    .line 980
    iget v0, p0, Landroid/widget/GridLayout;->mLastLayoutParamsHashCode:I

    if-nez v0, :cond_1

    .line 981
    invoke-direct {p0}, Landroid/widget/GridLayout;->validateLayoutParams()V

    .line 982
    invoke-direct {p0}, Landroid/widget/GridLayout;->computeLayoutParamsHashCode()I

    move-result v0

    iput v0, p0, Landroid/widget/GridLayout;->mLastLayoutParamsHashCode:I

    .line 989
    :cond_0
    :goto_0
    return-void

    .line 983
    :cond_1
    iget v0, p0, Landroid/widget/GridLayout;->mLastLayoutParamsHashCode:I

    invoke-direct {p0}, Landroid/widget/GridLayout;->computeLayoutParamsHashCode()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 984
    iget-object v0, p0, Landroid/widget/GridLayout;->mPrinter:Landroid/util/Printer;

    const-string v1, "The fields of some layout parameters were modified in between layout operations. Check the javadoc for GridLayout.LayoutParams#rowSpec."

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 986
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    .line 987
    invoke-direct {p0}, Landroid/widget/GridLayout;->consistencyCheck()V

    goto :goto_0
.end method

.method private static createSwitchingAlignment(Landroid/widget/GridLayout$Alignment;Landroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Alignment;
    .locals 1
    .param p0, "ltr"    # Landroid/widget/GridLayout$Alignment;
    .param p1, "rtl"    # Landroid/widget/GridLayout$Alignment;

    .prologue
    .line 2664
    new-instance v0, Landroid/widget/GridLayout$5;

    invoke-direct {v0, p0, p1}, Landroid/widget/GridLayout$5;-><init>(Landroid/widget/GridLayout$Alignment;Landroid/widget/GridLayout$Alignment;)V

    return-object v0
.end method

.method private drawLine(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V
    .locals 7
    .param p1, "graphics"    # Landroid/graphics/Canvas;
    .param p2, "x1"    # I
    .param p3, "y1"    # I
    .param p4, "x2"    # I
    .param p5, "y2"    # I
    .param p6, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 873
    invoke-virtual {p0}, Landroid/widget/GridLayout;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 874
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getWidth()I

    move-result v6

    .line 875
    .local v6, "width":I
    sub-int v0, v6, p2

    int-to-float v1, v0

    int-to-float v2, p3

    sub-int v0, v6, p4

    int-to-float v3, v0

    int-to-float v4, p5

    move-object v0, p1

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 879
    .end local v6    # "width":I
    :goto_0
    return-void

    .line 877
    :cond_0
    int-to-float v1, p2

    int-to-float v2, p3

    int-to-float v3, p4

    int-to-float v4, p5

    move-object v0, p1

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private static fits([IIII)Z
    .locals 3
    .param p0, "a"    # [I
    .param p1, "value"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/4 v1, 0x0

    .line 696
    array-length v2, p0

    if-le p3, v2, :cond_1

    .line 704
    :cond_0
    :goto_0
    return v1

    .line 699
    :cond_1
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_2

    .line 700
    aget v2, p0, v0

    if-gt v2, p1, :cond_0

    .line 699
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 704
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static getAlignment(IZ)Landroid/widget/GridLayout$Alignment;
    .locals 4
    .param p0, "gravity"    # I
    .param p1, "horizontal"    # Z

    .prologue
    .line 624
    if-eqz p1, :cond_0

    const/4 v1, 0x7

    .line 625
    .local v1, "mask":I
    :goto_0
    if-eqz p1, :cond_1

    const/4 v2, 0x0

    .line 626
    .local v2, "shift":I
    :goto_1
    and-int v3, p0, v1

    shr-int v0, v3, v2

    .line 627
    .local v0, "flags":I
    sparse-switch v0, :sswitch_data_0

    .line 641
    sget-object v3, Landroid/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroid/widget/GridLayout$Alignment;

    :goto_2
    return-object v3

    .line 624
    .end local v0    # "flags":I
    .end local v1    # "mask":I
    .end local v2    # "shift":I
    :cond_0
    const/16 v1, 0x70

    goto :goto_0

    .line 625
    .restart local v1    # "mask":I
    :cond_1
    const/4 v2, 0x4

    goto :goto_1

    .line 629
    .restart local v0    # "flags":I
    .restart local v2    # "shift":I
    :sswitch_0
    if-eqz p1, :cond_2

    sget-object v3, Landroid/widget/GridLayout;->LEFT:Landroid/widget/GridLayout$Alignment;

    goto :goto_2

    :cond_2
    sget-object v3, Landroid/widget/GridLayout;->TOP:Landroid/widget/GridLayout$Alignment;

    goto :goto_2

    .line 631
    :sswitch_1
    if-eqz p1, :cond_3

    sget-object v3, Landroid/widget/GridLayout;->RIGHT:Landroid/widget/GridLayout$Alignment;

    goto :goto_2

    :cond_3
    sget-object v3, Landroid/widget/GridLayout;->BOTTOM:Landroid/widget/GridLayout$Alignment;

    goto :goto_2

    .line 633
    :sswitch_2
    sget-object v3, Landroid/widget/GridLayout;->FILL:Landroid/widget/GridLayout$Alignment;

    goto :goto_2

    .line 635
    :sswitch_3
    sget-object v3, Landroid/widget/GridLayout;->CENTER:Landroid/widget/GridLayout$Alignment;

    goto :goto_2

    .line 637
    :sswitch_4
    sget-object v3, Landroid/widget/GridLayout;->START:Landroid/widget/GridLayout$Alignment;

    goto :goto_2

    .line 639
    :sswitch_5
    sget-object v3, Landroid/widget/GridLayout;->END:Landroid/widget/GridLayout$Alignment;

    goto :goto_2

    .line 627
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x3 -> :sswitch_0
        0x5 -> :sswitch_1
        0x7 -> :sswitch_2
        0x800003 -> :sswitch_4
        0x800005 -> :sswitch_5
    .end sparse-switch
.end method

.method private getDefaultMargin(Landroid/view/View;Landroid/widget/GridLayout$LayoutParams;ZZ)I
    .locals 8
    .param p1, "c"    # Landroid/view/View;
    .param p2, "p"    # Landroid/widget/GridLayout$LayoutParams;
    .param p3, "horizontal"    # Z
    .param p4, "leading"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 658
    iget-boolean v6, p0, Landroid/widget/GridLayout;->mUseDefaultMargins:Z

    if-nez v6, :cond_0

    .line 667
    :goto_0
    return v5

    .line 661
    :cond_0
    if-eqz p3, :cond_2

    iget-object v4, p2, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 662
    .local v4, "spec":Landroid/widget/GridLayout$Spec;
    :goto_1
    if-eqz p3, :cond_3

    iget-object v0, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    .line 663
    .local v0, "axis":Landroid/widget/GridLayout$Axis;
    :goto_2
    iget-object v3, v4, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    .line 664
    .local v3, "span":Landroid/widget/GridLayout$Interval;
    if-eqz p3, :cond_5

    invoke-virtual {p0}, Landroid/widget/GridLayout;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_5

    if-nez p4, :cond_4

    move v2, v1

    .line 665
    .local v2, "leading1":Z
    :goto_3
    if-eqz v2, :cond_7

    iget v6, v3, Landroid/widget/GridLayout$Interval;->min:I

    if-nez v6, :cond_6

    .line 667
    .local v1, "isAtEdge":Z
    :cond_1
    :goto_4
    invoke-direct {p0, p1, v1, p3, p4}, Landroid/widget/GridLayout;->getDefaultMargin(Landroid/view/View;ZZZ)I

    move-result v5

    goto :goto_0

    .line 661
    .end local v0    # "axis":Landroid/widget/GridLayout$Axis;
    .end local v1    # "isAtEdge":Z
    .end local v2    # "leading1":Z
    .end local v3    # "span":Landroid/widget/GridLayout$Interval;
    .end local v4    # "spec":Landroid/widget/GridLayout$Spec;
    :cond_2
    iget-object v4, p2, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_1

    .line 662
    .restart local v4    # "spec":Landroid/widget/GridLayout$Spec;
    :cond_3
    iget-object v0, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    goto :goto_2

    .restart local v0    # "axis":Landroid/widget/GridLayout$Axis;
    .restart local v3    # "span":Landroid/widget/GridLayout$Interval;
    :cond_4
    move v2, v5

    .line 664
    goto :goto_3

    :cond_5
    move v2, p4

    goto :goto_3

    .restart local v2    # "leading1":Z
    :cond_6
    move v1, v5

    .line 665
    goto :goto_4

    :cond_7
    iget v6, v3, Landroid/widget/GridLayout$Interval;->max:I

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->getCount()I

    move-result v7

    if-eq v6, v7, :cond_1

    move v1, v5

    goto :goto_4
.end method

.method private getDefaultMargin(Landroid/view/View;ZZ)I
    .locals 2
    .param p1, "c"    # Landroid/view/View;
    .param p2, "horizontal"    # Z
    .param p3, "leading"    # Z

    .prologue
    .line 647
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/widget/Space;

    if-ne v0, v1, :cond_0

    .line 648
    const/4 v0, 0x0

    .line 650
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/GridLayout;->mDefaultGap:I

    div-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private getDefaultMargin(Landroid/view/View;ZZZ)I
    .locals 1
    .param p1, "c"    # Landroid/view/View;
    .param p2, "isAtEdge"    # Z
    .param p3, "horizontal"    # Z
    .param p4, "leading"    # Z

    .prologue
    .line 654
    invoke-direct {p0, p1, p3, p4}, Landroid/widget/GridLayout;->getDefaultMargin(Landroid/view/View;ZZ)I

    move-result v0

    return v0
.end method

.method private getMargin(Landroid/view/View;ZZ)I
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "horizontal"    # Z
    .param p3, "leading"    # Z

    .prologue
    .line 679
    iget v5, p0, Landroid/widget/GridLayout;->mAlignmentMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 680
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/GridLayout;->getMargin1(Landroid/view/View;ZZ)I

    move-result v5

    .line 687
    :goto_0
    return v5

    .line 682
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    .line 683
    .local v0, "axis":Landroid/widget/GridLayout$Axis;
    :goto_1
    if-eqz p3, :cond_2

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->getLeadingMargins()[I

    move-result-object v3

    .line 684
    .local v3, "margins":[I
    :goto_2
    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v2

    .line 685
    .local v2, "lp":Landroid/widget/GridLayout$LayoutParams;
    if-eqz p2, :cond_3

    iget-object v4, v2, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 686
    .local v4, "spec":Landroid/widget/GridLayout$Spec;
    :goto_3
    if-eqz p3, :cond_4

    iget-object v5, v4, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    iget v1, v5, Landroid/widget/GridLayout$Interval;->min:I

    .line 687
    .local v1, "index":I
    :goto_4
    aget v5, v3, v1

    goto :goto_0

    .line 682
    .end local v0    # "axis":Landroid/widget/GridLayout$Axis;
    .end local v1    # "index":I
    .end local v2    # "lp":Landroid/widget/GridLayout$LayoutParams;
    .end local v3    # "margins":[I
    .end local v4    # "spec":Landroid/widget/GridLayout$Spec;
    :cond_1
    iget-object v0, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    goto :goto_1

    .line 683
    .restart local v0    # "axis":Landroid/widget/GridLayout$Axis;
    :cond_2
    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->getTrailingMargins()[I

    move-result-object v3

    goto :goto_2

    .line 685
    .restart local v2    # "lp":Landroid/widget/GridLayout$LayoutParams;
    .restart local v3    # "margins":[I
    :cond_3
    iget-object v4, v2, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_3

    .line 686
    .restart local v4    # "spec":Landroid/widget/GridLayout$Spec;
    :cond_4
    iget-object v5, v4, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    iget v1, v5, Landroid/widget/GridLayout$Interval;->max:I

    goto :goto_4
.end method

.method private getMeasurement(Landroid/view/View;Z)I
    .locals 1
    .param p1, "c"    # Landroid/view/View;
    .param p2, "horizontal"    # Z

    .prologue
    .line 1074
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0
.end method

.method private getTotalMargin(Landroid/view/View;Z)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "horizontal"    # Z

    .prologue
    .line 692
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Landroid/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static handleInvalidParams(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 819
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private invalidateStructure()V
    .locals 1

    .prologue
    .line 786
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/GridLayout;->mLastLayoutParamsHashCode:I

    .line 787
    iget-object v0, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->invalidateStructure()V

    .line 788
    iget-object v0, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->invalidateStructure()V

    .line 790
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateValues()V

    .line 791
    return-void
.end method

.method private invalidateValues()V
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->invalidateValues()V

    .line 798
    iget-object v0, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->invalidateValues()V

    .line 800
    :cond_0
    return-void
.end method

.method static max2([II)I
    .locals 4
    .param p0, "a"    # [I
    .param p1, "valueIfEmpty"    # I

    .prologue
    .line 608
    move v2, p1

    .line 609
    .local v2, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v0, p0

    .local v0, "N":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 610
    aget v3, p0, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 609
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 612
    :cond_0
    return v2
.end method

.method private measureChildWithMargins2(Landroid/view/View;IIII)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthSpec"    # I
    .param p3, "parentHeightSpec"    # I
    .param p4, "childWidth"    # I
    .param p5, "childHeight"    # I

    .prologue
    .line 996
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Landroid/widget/GridLayout;->getTotalMargin(Landroid/view/View;Z)I

    move-result v2

    invoke-static {p2, v2, p4}, Landroid/widget/GridLayout;->getChildMeasureSpec(III)I

    move-result v1

    .line 998
    .local v1, "childWidthSpec":I
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Landroid/widget/GridLayout;->getTotalMargin(Landroid/view/View;Z)I

    move-result v2

    invoke-static {p3, v2, p5}, Landroid/widget/GridLayout;->getChildMeasureSpec(III)I

    move-result v0

    .line 1000
    .local v0, "childHeightSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1001
    return-void
.end method

.method private measureChildrenWithMargins(IIZ)V
    .locals 22
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I
    .param p3, "firstPass"    # Z

    .prologue
    .line 1005
    const/16 v17, 0x0

    .local v17, "i":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v13

    .local v13, "N":I
    :goto_0
    move/from16 v0, v17

    if-ge v0, v13, :cond_7

    .line 1006
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1007
    .local v3, "c":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_1

    .line 1005
    :cond_0
    :goto_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 1008
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v19

    .line 1009
    .local v19, "lp":Landroid/widget/GridLayout$LayoutParams;
    if-eqz p3, :cond_2

    .line 1010
    move-object/from16 v0, v19

    iget v6, v0, Landroid/widget/GridLayout$LayoutParams;->width:I

    move-object/from16 v0, v19

    iget v7, v0, Landroid/widget/GridLayout$LayoutParams;->height:I

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v2 .. v7}, Landroid/widget/GridLayout;->measureChildWithMargins2(Landroid/view/View;IIII)V

    goto :goto_1

    .line 1012
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/GridLayout;->mOrientation:I

    if-nez v2, :cond_3

    const/16 v16, 0x1

    .line 1013
    .local v16, "horizontal":Z
    :goto_2
    if-eqz v16, :cond_4

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    move-object/from16 v21, v0

    .line 1014
    .local v21, "spec":Landroid/widget/GridLayout$Spec;
    :goto_3
    move-object/from16 v0, v21

    iget-object v2, v0, Landroid/widget/GridLayout$Spec;->alignment:Landroid/widget/GridLayout$Alignment;

    sget-object v4, Landroid/widget/GridLayout;->FILL:Landroid/widget/GridLayout$Alignment;

    if-ne v2, v4, :cond_0

    .line 1015
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    move-object/from16 v20, v0

    .line 1016
    .local v20, "span":Landroid/widget/GridLayout$Interval;
    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    .line 1017
    .local v14, "axis":Landroid/widget/GridLayout$Axis;
    :goto_4
    invoke-virtual {v14}, Landroid/widget/GridLayout$Axis;->getLocations()[I

    move-result-object v18

    .line 1018
    .local v18, "locations":[I
    move-object/from16 v0, v20

    iget v2, v0, Landroid/widget/GridLayout$Interval;->max:I

    aget v2, v18, v2

    move-object/from16 v0, v20

    iget v4, v0, Landroid/widget/GridLayout$Interval;->min:I

    aget v4, v18, v4

    sub-int v15, v2, v4

    .line 1019
    .local v15, "cellSize":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v3, v1}, Landroid/widget/GridLayout;->getTotalMargin(Landroid/view/View;Z)I

    move-result v2

    sub-int v6, v15, v2

    .line 1020
    .local v6, "viewSize":I
    if-eqz v16, :cond_6

    .line 1021
    move-object/from16 v0, v19

    iget v7, v0, Landroid/widget/GridLayout$LayoutParams;->height:I

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v2 .. v7}, Landroid/widget/GridLayout;->measureChildWithMargins2(Landroid/view/View;IIII)V

    goto :goto_1

    .line 1012
    .end local v6    # "viewSize":I
    .end local v14    # "axis":Landroid/widget/GridLayout$Axis;
    .end local v15    # "cellSize":I
    .end local v16    # "horizontal":Z
    .end local v18    # "locations":[I
    .end local v20    # "span":Landroid/widget/GridLayout$Interval;
    .end local v21    # "spec":Landroid/widget/GridLayout$Spec;
    :cond_3
    const/16 v16, 0x0

    goto :goto_2

    .line 1013
    .restart local v16    # "horizontal":Z
    :cond_4
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    move-object/from16 v21, v0

    goto :goto_3

    .line 1016
    .restart local v20    # "span":Landroid/widget/GridLayout$Interval;
    .restart local v21    # "spec":Landroid/widget/GridLayout$Spec;
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    goto :goto_4

    .line 1023
    .restart local v6    # "viewSize":I
    .restart local v14    # "axis":Landroid/widget/GridLayout$Axis;
    .restart local v15    # "cellSize":I
    .restart local v18    # "locations":[I
    :cond_6
    move-object/from16 v0, v19

    iget v11, v0, Landroid/widget/GridLayout$LayoutParams;->width:I

    move-object/from16 v7, p0

    move-object v8, v3

    move/from16 v9, p1

    move/from16 v10, p2

    move v12, v6

    invoke-direct/range {v7 .. v12}, Landroid/widget/GridLayout;->measureChildWithMargins2(Landroid/view/View;IIII)V

    goto/16 :goto_1

    .line 1028
    .end local v3    # "c":Landroid/view/View;
    .end local v6    # "viewSize":I
    .end local v14    # "axis":Landroid/widget/GridLayout$Axis;
    .end local v15    # "cellSize":I
    .end local v16    # "horizontal":Z
    .end local v18    # "locations":[I
    .end local v19    # "lp":Landroid/widget/GridLayout$LayoutParams;
    .end local v20    # "span":Landroid/widget/GridLayout$Interval;
    .end local v21    # "spec":Landroid/widget/GridLayout$Spec;
    :cond_7
    return-void
.end method

.method private static procrusteanFill([IIII)V
    .locals 3
    .param p0, "a"    # [I
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "value"    # I

    .prologue
    .line 708
    array-length v0, p0

    .line 709
    .local v0, "length":I
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {p0, v1, v2, p3}, Ljava/util/Arrays;->fill([IIII)V

    .line 710
    return-void
.end method

.method private static setCellGroup(Landroid/widget/GridLayout$LayoutParams;IIII)V
    .locals 2
    .param p0, "lp"    # Landroid/widget/GridLayout$LayoutParams;
    .param p1, "row"    # I
    .param p2, "rowSpan"    # I
    .param p3, "col"    # I
    .param p4, "colSpan"    # I

    .prologue
    .line 713
    new-instance v0, Landroid/widget/GridLayout$Interval;

    add-int v1, p1, p2

    invoke-direct {v0, p1, v1}, Landroid/widget/GridLayout$Interval;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/widget/GridLayout$LayoutParams;->setRowSpecSpan(Landroid/widget/GridLayout$Interval;)V

    .line 714
    new-instance v0, Landroid/widget/GridLayout$Interval;

    add-int v1, p3, p4

    invoke-direct {v0, p3, v1}, Landroid/widget/GridLayout$Interval;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/widget/GridLayout$LayoutParams;->setColumnSpecSpan(Landroid/widget/GridLayout$Interval;)V

    .line 715
    return-void
.end method

.method public static spec(I)Landroid/widget/GridLayout$Spec;
    .locals 1
    .param p0, "start"    # I

    .prologue
    .line 2531
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/widget/GridLayout;->spec(II)Landroid/widget/GridLayout$Spec;

    move-result-object v0

    return-object v0
.end method

.method public static spec(II)Landroid/widget/GridLayout$Spec;
    .locals 1
    .param p0, "start"    # I
    .param p1, "size"    # I

    .prologue
    .line 2515
    sget-object v0, Landroid/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroid/widget/GridLayout$Alignment;

    invoke-static {p0, p1, v0}, Landroid/widget/GridLayout;->spec(IILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v0

    return-object v0
.end method

.method public static spec(IILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;
    .locals 6
    .param p0, "start"    # I
    .param p1, "size"    # I
    .param p2, "alignment"    # Landroid/widget/GridLayout$Alignment;

    .prologue
    .line 2480
    new-instance v0, Landroid/widget/GridLayout$Spec;

    const/high16 v1, -0x80000000

    if-eq p0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    const/4 v5, 0x0

    move v2, p0

    move v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/GridLayout$Spec;-><init>(ZIILandroid/widget/GridLayout$Alignment;Landroid/widget/GridLayout$1;)V

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;
    .locals 1
    .param p0, "start"    # I
    .param p1, "alignment"    # Landroid/widget/GridLayout$Alignment;

    .prologue
    .line 2498
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Landroid/widget/GridLayout;->spec(IILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v0

    return-object v0
.end method

.method private validateLayoutParams()V
    .locals 21

    .prologue
    .line 729
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridLayout;->mOrientation:I

    move/from16 v19, v0

    if-nez v19, :cond_3

    const/4 v5, 0x1

    .line 730
    .local v5, "horizontal":Z
    :goto_0
    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    .line 731
    .local v3, "axis":Landroid/widget/GridLayout$Axis;
    :goto_1
    iget v0, v3, Landroid/widget/GridLayout$Axis;->definedCount:I

    move/from16 v19, v0

    const/high16 v20, -0x80000000

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    iget v4, v3, Landroid/widget/GridLayout$Axis;->definedCount:I

    .line 733
    .local v4, "count":I
    :goto_2
    const/4 v8, 0x0

    .line 734
    .local v8, "major":I
    const/4 v14, 0x0

    .line 735
    .local v14, "minor":I
    new-array v13, v4, [I

    .line 737
    .local v13, "maxSizes":[I
    const/4 v6, 0x0

    .local v6, "i":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v2

    .local v2, "N":I
    :goto_3
    if-ge v6, v2, :cond_d

    .line 738
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/GridLayout$LayoutParams;

    .line 740
    .local v7, "lp":Landroid/widget/GridLayout$LayoutParams;
    if-eqz v5, :cond_6

    iget-object v11, v7, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    .line 741
    .local v11, "majorSpec":Landroid/widget/GridLayout$Spec;
    :goto_4
    iget-object v9, v11, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    .line 742
    .local v9, "majorRange":Landroid/widget/GridLayout$Interval;
    iget-boolean v12, v11, Landroid/widget/GridLayout$Spec;->startDefined:Z

    .line 743
    .local v12, "majorWasDefined":Z
    invoke-virtual {v9}, Landroid/widget/GridLayout$Interval;->size()I

    move-result v10

    .line 744
    .local v10, "majorSpan":I
    if-eqz v12, :cond_0

    .line 745
    iget v8, v9, Landroid/widget/GridLayout$Interval;->min:I

    .line 748
    :cond_0
    if-eqz v5, :cond_7

    iget-object v0, v7, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    move-object/from16 v17, v0

    .line 749
    .local v17, "minorSpec":Landroid/widget/GridLayout$Spec;
    :goto_5
    move-object/from16 v0, v17

    iget-object v15, v0, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    .line 750
    .local v15, "minorRange":Landroid/widget/GridLayout$Interval;
    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/widget/GridLayout$Spec;->startDefined:Z

    move/from16 v18, v0

    .line 751
    .local v18, "minorWasDefined":Z
    move/from16 v0, v18

    invoke-static {v15, v0, v4}, Landroid/widget/GridLayout;->clip(Landroid/widget/GridLayout$Interval;ZI)I

    move-result v16

    .line 752
    .local v16, "minorSpan":I
    if-eqz v18, :cond_1

    .line 753
    iget v14, v15, Landroid/widget/GridLayout$Interval;->min:I

    .line 756
    :cond_1
    if-eqz v4, :cond_b

    .line 758
    if-eqz v12, :cond_2

    if-nez v18, :cond_a

    .line 759
    :cond_2
    :goto_6
    add-int v19, v14, v16

    move/from16 v0, v19

    invoke-static {v13, v8, v14, v0}, Landroid/widget/GridLayout;->fits([IIII)Z

    move-result v19

    if-nez v19, :cond_a

    .line 760
    if-eqz v18, :cond_8

    .line 761
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 729
    .end local v2    # "N":I
    .end local v3    # "axis":Landroid/widget/GridLayout$Axis;
    .end local v4    # "count":I
    .end local v5    # "horizontal":Z
    .end local v6    # "i":I
    .end local v7    # "lp":Landroid/widget/GridLayout$LayoutParams;
    .end local v8    # "major":I
    .end local v9    # "majorRange":Landroid/widget/GridLayout$Interval;
    .end local v10    # "majorSpan":I
    .end local v11    # "majorSpec":Landroid/widget/GridLayout$Spec;
    .end local v12    # "majorWasDefined":Z
    .end local v13    # "maxSizes":[I
    .end local v14    # "minor":I
    .end local v15    # "minorRange":Landroid/widget/GridLayout$Interval;
    .end local v16    # "minorSpan":I
    .end local v17    # "minorSpec":Landroid/widget/GridLayout$Spec;
    .end local v18    # "minorWasDefined":Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    .line 730
    .restart local v5    # "horizontal":Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    goto :goto_1

    .line 731
    .restart local v3    # "axis":Landroid/widget/GridLayout$Axis;
    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    .line 740
    .restart local v2    # "N":I
    .restart local v4    # "count":I
    .restart local v6    # "i":I
    .restart local v7    # "lp":Landroid/widget/GridLayout$LayoutParams;
    .restart local v8    # "major":I
    .restart local v13    # "maxSizes":[I
    .restart local v14    # "minor":I
    :cond_6
    iget-object v11, v7, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_4

    .line 748
    .restart local v9    # "majorRange":Landroid/widget/GridLayout$Interval;
    .restart local v10    # "majorSpan":I
    .restart local v11    # "majorSpec":Landroid/widget/GridLayout$Spec;
    .restart local v12    # "majorWasDefined":Z
    :cond_7
    iget-object v0, v7, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    move-object/from16 v17, v0

    goto :goto_5

    .line 763
    .restart local v15    # "minorRange":Landroid/widget/GridLayout$Interval;
    .restart local v16    # "minorSpan":I
    .restart local v17    # "minorSpec":Landroid/widget/GridLayout$Spec;
    .restart local v18    # "minorWasDefined":Z
    :cond_8
    add-int v19, v14, v16

    move/from16 v0, v19

    if-gt v0, v4, :cond_9

    .line 764
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 766
    :cond_9
    const/4 v14, 0x0

    .line 767
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 772
    :cond_a
    add-int v19, v14, v16

    add-int v20, v8, v10

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v13, v14, v0, v1}, Landroid/widget/GridLayout;->procrusteanFill([IIII)V

    .line 775
    :cond_b
    if-eqz v5, :cond_c

    .line 776
    move/from16 v0, v16

    invoke-static {v7, v8, v10, v14, v0}, Landroid/widget/GridLayout;->setCellGroup(Landroid/widget/GridLayout$LayoutParams;IIII)V

    .line 781
    :goto_7
    add-int v14, v14, v16

    .line 737
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 778
    :cond_c
    move/from16 v0, v16

    invoke-static {v7, v14, v0, v8, v10}, Landroid/widget/GridLayout;->setCellGroup(Landroid/widget/GridLayout$LayoutParams;IIII)V

    goto :goto_7

    .line 783
    .end local v7    # "lp":Landroid/widget/GridLayout$LayoutParams;
    .end local v9    # "majorRange":Landroid/widget/GridLayout$Interval;
    .end local v10    # "majorSpan":I
    .end local v11    # "majorSpec":Landroid/widget/GridLayout$Spec;
    .end local v12    # "majorWasDefined":Z
    .end local v15    # "minorRange":Landroid/widget/GridLayout$Interval;
    .end local v16    # "minorSpan":I
    .end local v17    # "minorSpec":Landroid/widget/GridLayout$Spec;
    .end local v18    # "minorWasDefined":Z
    :cond_d
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 4
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 844
    instance-of v3, p1, Landroid/widget/GridLayout$LayoutParams;

    if-nez v3, :cond_0

    .line 852
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 847
    check-cast v0, Landroid/widget/GridLayout$LayoutParams;

    .line 849
    .local v0, "lp":Landroid/widget/GridLayout$LayoutParams;
    invoke-direct {p0, v0, v2}, Landroid/widget/GridLayout;->checkLayoutParams(Landroid/widget/GridLayout$LayoutParams;Z)V

    .line 850
    invoke-direct {p0, v0, v1}, Landroid/widget/GridLayout;->checkLayoutParams(Landroid/widget/GridLayout$LayoutParams;Z)V

    move v1, v2

    .line 852
    goto :goto_0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p0}, Landroid/widget/GridLayout;->generateDefaultLayoutParams()Landroid/widget/GridLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/GridLayout$LayoutParams;
    .locals 1

    .prologue
    .line 857
    new-instance v0, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v0}, Landroid/widget/GridLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 163
    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 163
    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/GridLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 862
    new-instance v0, Landroid/widget/GridLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/GridLayout$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 867
    new-instance v0, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method final getAlignment(Landroid/widget/GridLayout$Alignment;Z)Landroid/widget/GridLayout$Alignment;
    .locals 1
    .param p1, "alignment"    # Landroid/widget/GridLayout$Alignment;
    .param p2, "horizontal"    # Z

    .prologue
    .line 1091
    sget-object v0, Landroid/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroid/widget/GridLayout$Alignment;

    if-eq p1, v0, :cond_0

    .end local p1    # "alignment":Landroid/widget/GridLayout$Alignment;
    :goto_0
    return-object p1

    .restart local p1    # "alignment":Landroid/widget/GridLayout$Alignment;
    :cond_0
    if-eqz p2, :cond_1

    sget-object p1, Landroid/widget/GridLayout;->START:Landroid/widget/GridLayout$Alignment;

    goto :goto_0

    :cond_1
    sget-object p1, Landroid/widget/GridLayout;->BASELINE:Landroid/widget/GridLayout$Alignment;

    goto :goto_0
.end method

.method public getAlignmentMode()I
    .locals 1

    .prologue
    .line 483
    iget v0, p0, Landroid/widget/GridLayout;->mAlignmentMode:I

    return v0
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->getCount()I

    move-result v0

    return v0
.end method

.method final getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;
    .locals 1
    .param p1, "c"    # Landroid/view/View;

    .prologue
    .line 815
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout$LayoutParams;

    return-object v0
.end method

.method getMargin1(Landroid/view/View;ZZ)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "horizontal"    # Z
    .param p3, "leading"    # Z

    .prologue
    .line 671
    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v0

    .line 672
    .local v0, "lp":Landroid/widget/GridLayout$LayoutParams;
    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    iget v1, v0, Landroid/widget/GridLayout$LayoutParams;->leftMargin:I

    .line 675
    .local v1, "margin":I
    :goto_0
    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/widget/GridLayout;->getDefaultMargin(Landroid/view/View;Landroid/widget/GridLayout$LayoutParams;ZZ)I

    move-result v1

    .end local v1    # "margin":I
    :cond_0
    return v1

    .line 672
    :cond_1
    iget v1, v0, Landroid/widget/GridLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    iget v1, v0, Landroid/widget/GridLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_3
    iget v1, v0, Landroid/widget/GridLayout$LayoutParams;->bottomMargin:I

    goto :goto_0
.end method

.method final getMeasurementIncludingMargin(Landroid/view/View;Z)I
    .locals 2
    .param p1, "c"    # Landroid/view/View;
    .param p2, "horizontal"    # Z

    .prologue
    .line 1078
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 1079
    const/4 v0, 0x0

    .line 1081
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/widget/GridLayout;->getMeasurement(Landroid/view/View;Z)I

    move-result v0

    invoke-direct {p0, p1, p2}, Landroid/widget/GridLayout;->getTotalMargin(Landroid/view/View;Z)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 312
    iget v0, p0, Landroid/widget/GridLayout;->mOrientation:I

    return v0
.end method

.method public getPrinter()Landroid/util/Printer;
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Landroid/widget/GridLayout;->mPrinter:Landroid/util/Printer;

    return-object v0
.end method

.method public getRowCount()I
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->getCount()I

    move-result v0

    return v0
.end method

.method public getUseDefaultMargins()Z
    .locals 1

    .prologue
    .line 436
    iget-boolean v0, p0, Landroid/widget/GridLayout;->mUseDefaultMargins:Z

    return v0
.end method

.method public isColumnOrderPreserved()Z
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->isOrderPreserved()Z

    move-result v0

    return v0
.end method

.method public isRowOrderPreserved()Z
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->isOrderPreserved()Z

    move-result v0

    return v0
.end method

.method protected onChildVisibilityChanged(Landroid/view/View;II)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "oldVisibility"    # I
    .param p3, "newVisibility"    # I

    .prologue
    const/16 v0, 0x8

    .line 962
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onChildVisibilityChanged(Landroid/view/View;II)V

    .line 963
    if-eq p2, v0, :cond_0

    if-ne p3, v0, :cond_1

    .line 964
    :cond_0
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    .line 966
    :cond_1
    return-void
.end method

.method protected onDebugDraw(Landroid/graphics/Canvas;)V
    .locals 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 904
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 905
    .local v7, "paint":Landroid/graphics/Paint;
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 906
    const/16 v1, 0x32

    const/16 v2, 0xff

    const/16 v5, 0xff

    const/16 v8, 0xff

    invoke-static {v1, v2, v5, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 908
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v16

    .line 910
    .local v16, "insets":Landroid/graphics/Insets;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getPaddingTop()I

    move-result v1

    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/Insets;->top:I

    add-int v4, v1, v2

    .line 911
    .local v4, "top":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getPaddingLeft()I

    move-result v1

    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/Insets;->left:I

    add-int v10, v1, v2

    .line 912
    .local v10, "left":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/Insets;->right:I

    sub-int v12, v1, v2

    .line 913
    .local v12, "right":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getHeight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/Insets;->bottom:I

    sub-int v6, v1, v2

    .line 915
    .local v6, "bottom":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    iget-object v0, v1, Landroid/widget/GridLayout$Axis;->locations:[I

    move-object/from16 v18, v0

    .line 916
    .local v18, "xs":[I
    if-eqz v18, :cond_0

    .line 917
    const/4 v15, 0x0

    .local v15, "i":I
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v17, v0

    .local v17, "length":I
    :goto_0
    move/from16 v0, v17

    if-ge v15, v0, :cond_0

    .line 918
    aget v1, v18, v15

    add-int v3, v10, v1

    .local v3, "x":I
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v5, v3

    .line 919
    invoke-direct/range {v1 .. v7}, Landroid/widget/GridLayout;->drawLine(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V

    .line 917
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 923
    .end local v3    # "x":I
    .end local v15    # "i":I
    .end local v17    # "length":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    iget-object v0, v1, Landroid/widget/GridLayout$Axis;->locations:[I

    move-object/from16 v19, v0

    .line 924
    .local v19, "ys":[I
    if-eqz v19, :cond_1

    .line 925
    const/4 v15, 0x0

    .restart local v15    # "i":I
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v17, v0

    .restart local v17    # "length":I
    :goto_1
    move/from16 v0, v17

    if-ge v15, v0, :cond_1

    .line 926
    aget v1, v19, v15

    add-int v11, v4, v1

    .local v11, "y":I
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move v13, v11

    move-object v14, v7

    .line 927
    invoke-direct/range {v8 .. v14}, Landroid/widget/GridLayout;->drawLine(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V

    .line 925
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 931
    .end local v11    # "y":I
    .end local v15    # "i":I
    .end local v17    # "length":I
    :cond_1
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDebugDraw(Landroid/graphics/Canvas;)V

    .line 932
    return-void
.end method

.method protected onDebugDrawMargins(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 887
    new-instance v2, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v2}, Landroid/widget/GridLayout$LayoutParams;-><init>()V

    .line 888
    .local v2, "lp":Landroid/widget/GridLayout$LayoutParams;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 889
    invoke-virtual {p0, v1}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 890
    .local v0, "c":Landroid/view/View;
    invoke-virtual {p0, v0, v8, v8}, Landroid/widget/GridLayout;->getMargin1(Landroid/view/View;ZZ)I

    move-result v3

    invoke-virtual {p0, v0, v7, v8}, Landroid/widget/GridLayout;->getMargin1(Landroid/view/View;ZZ)I

    move-result v4

    invoke-virtual {p0, v0, v8, v7}, Landroid/widget/GridLayout;->getMargin1(Landroid/view/View;ZZ)I

    move-result v5

    invoke-virtual {p0, v0, v7, v7}, Landroid/widget/GridLayout;->getMargin1(Landroid/view/View;ZZ)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/GridLayout$LayoutParams;->setMargins(IIII)V

    .line 895
    invoke-virtual {v2, v0, p1, p2}, Landroid/widget/GridLayout$LayoutParams;->onDebugDraw(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 888
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 897
    .end local v0    # "c":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1189
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1190
    const-class v0, Landroid/widget/GridLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1191
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1195
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1196
    const-class v0, Landroid/widget/GridLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1197
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 51
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1111
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridLayout;->consistencyCheck()V

    .line 1113
    sub-int v43, p4, p2

    .line 1114
    .local v43, "targetWidth":I
    sub-int v42, p5, p3

    .line 1116
    .local v42, "targetHeight":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getPaddingLeft()I

    move-result v34

    .line 1117
    .local v34, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getPaddingTop()I

    move-result v36

    .line 1118
    .local v36, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getPaddingRight()I

    move-result v35

    .line 1119
    .local v35, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getPaddingBottom()I

    move-result v33

    .line 1121
    .local v33, "paddingBottom":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    sub-int v6, v43, v34

    sub-int v6, v6, v35

    invoke-virtual {v3, v6}, Landroid/widget/GridLayout$Axis;->layout(I)V

    .line 1122
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    sub-int v6, v42, v36

    sub-int v6, v6, v33

    invoke-virtual {v3, v6}, Landroid/widget/GridLayout$Axis;->layout(I)V

    .line 1124
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v3}, Landroid/widget/GridLayout$Axis;->getLocations()[I

    move-result-object v26

    .line 1125
    .local v26, "hLocations":[I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v3}, Landroid/widget/GridLayout$Axis;->getLocations()[I

    move-result-object v45

    .line 1127
    .local v45, "vLocations":[I
    const/16 v28, 0x0

    .local v28, "i":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v12

    .local v12, "N":I
    :goto_0
    move/from16 v0, v28

    if-ge v0, v12, :cond_4

    .line 1128
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1129
    .local v4, "c":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_0

    .line 1127
    :goto_1
    add-int/lit8 v28, v28, 0x1

    goto :goto_0

    .line 1130
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v30

    .line 1131
    .local v30, "lp":Landroid/widget/GridLayout$LayoutParams;
    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    move-object/from16 v20, v0

    .line 1132
    .local v20, "columnSpec":Landroid/widget/GridLayout$Spec;
    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    move-object/from16 v39, v0

    .line 1134
    .local v39, "rowSpec":Landroid/widget/GridLayout$Spec;
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    move-object/from16 v19, v0

    .line 1135
    .local v19, "colSpan":Landroid/widget/GridLayout$Interval;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    move-object/from16 v38, v0

    .line 1137
    .local v38, "rowSpan":Landroid/widget/GridLayout$Interval;
    move-object/from16 v0, v19

    iget v3, v0, Landroid/widget/GridLayout$Interval;->min:I

    aget v47, v26, v3

    .line 1138
    .local v47, "x1":I
    move-object/from16 v0, v38

    iget v3, v0, Landroid/widget/GridLayout$Interval;->min:I

    aget v49, v45, v3

    .line 1140
    .local v49, "y1":I
    move-object/from16 v0, v19

    iget v3, v0, Landroid/widget/GridLayout$Interval;->max:I

    aget v48, v26, v3

    .line 1141
    .local v48, "x2":I
    move-object/from16 v0, v38

    iget v3, v0, Landroid/widget/GridLayout$Interval;->max:I

    aget v50, v45, v3

    .line 1143
    .local v50, "y2":I
    sub-int v18, v48, v47

    .line 1144
    .local v18, "cellWidth":I
    sub-int v17, v50, v49

    .line 1146
    .local v17, "cellHeight":I
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Landroid/widget/GridLayout;->getMeasurement(Landroid/view/View;Z)I

    move-result v32

    .line 1147
    .local v32, "pWidth":I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Landroid/widget/GridLayout;->getMeasurement(Landroid/view/View;Z)I

    move-result v31

    .line 1149
    .local v31, "pHeight":I
    move-object/from16 v0, v20

    iget-object v3, v0, Landroid/widget/GridLayout$Spec;->alignment:Landroid/widget/GridLayout$Alignment;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Landroid/widget/GridLayout;->getAlignment(Landroid/widget/GridLayout$Alignment;Z)Landroid/widget/GridLayout$Alignment;

    move-result-object v5

    .line 1150
    .local v5, "hAlign":Landroid/widget/GridLayout$Alignment;
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/widget/GridLayout$Spec;->alignment:Landroid/widget/GridLayout$Alignment;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Landroid/widget/GridLayout;->getAlignment(Landroid/widget/GridLayout$Alignment;Z)Landroid/widget/GridLayout$Alignment;

    move-result-object v9

    .line 1152
    .local v9, "vAlign":Landroid/widget/GridLayout$Alignment;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v3}, Landroid/widget/GridLayout$Axis;->getGroupBounds()Landroid/widget/GridLayout$PackedMap;

    move-result-object v3

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/widget/GridLayout$PackedMap;->getValue(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/GridLayout$Bounds;

    .line 1153
    .local v2, "boundsX":Landroid/widget/GridLayout$Bounds;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v3}, Landroid/widget/GridLayout$Axis;->getGroupBounds()Landroid/widget/GridLayout$PackedMap;

    move-result-object v3

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/widget/GridLayout$PackedMap;->getValue(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/widget/GridLayout$Bounds;

    .line 1156
    .local v16, "boundsY":Landroid/widget/GridLayout$Bounds;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/GridLayout$Bounds;->size(Z)I

    move-result v3

    sub-int v3, v18, v3

    invoke-virtual {v5, v4, v3}, Landroid/widget/GridLayout$Alignment;->getGravityOffset(Landroid/view/View;I)I

    move-result v24

    .line 1157
    .local v24, "gravityOffsetX":I
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/GridLayout$Bounds;->size(Z)I

    move-result v3

    sub-int v3, v17, v3

    invoke-virtual {v9, v4, v3}, Landroid/widget/GridLayout$Alignment;->getGravityOffset(Landroid/view/View;I)I

    move-result v25

    .line 1159
    .local v25, "gravityOffsetY":I
    const/4 v3, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3, v6}, Landroid/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v29

    .line 1160
    .local v29, "leftMargin":I
    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3, v6}, Landroid/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v44

    .line 1161
    .local v44, "topMargin":I
    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3, v6}, Landroid/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v37

    .line 1162
    .local v37, "rightMargin":I
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3, v6}, Landroid/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v15

    .line 1164
    .local v15, "bottomMargin":I
    add-int v40, v29, v37

    .line 1165
    .local v40, "sumMarginsX":I
    add-int v41, v44, v15

    .line 1168
    .local v41, "sumMarginsY":I
    add-int v6, v32, v40

    const/4 v7, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v7}, Landroid/widget/GridLayout$Bounds;->getOffset(Landroid/widget/GridLayout;Landroid/view/View;Landroid/widget/GridLayout$Alignment;IZ)I

    move-result v13

    .line 1169
    .local v13, "alignmentOffsetX":I
    add-int v10, v31, v41

    const/4 v11, 0x0

    move-object/from16 v6, v16

    move-object/from16 v7, p0

    move-object v8, v4

    invoke-virtual/range {v6 .. v11}, Landroid/widget/GridLayout$Bounds;->getOffset(Landroid/widget/GridLayout;Landroid/view/View;Landroid/widget/GridLayout$Alignment;IZ)I

    move-result v14

    .line 1171
    .local v14, "alignmentOffsetY":I
    sub-int v3, v18, v40

    move/from16 v0, v32

    invoke-virtual {v5, v4, v0, v3}, Landroid/widget/GridLayout$Alignment;->getSizeInCell(Landroid/view/View;II)I

    move-result v46

    .line 1172
    .local v46, "width":I
    sub-int v3, v17, v41

    move/from16 v0, v31

    invoke-virtual {v9, v4, v0, v3}, Landroid/widget/GridLayout$Alignment;->getSizeInCell(Landroid/view/View;II)I

    move-result v27

    .line 1174
    .local v27, "height":I
    add-int v3, v47, v24

    add-int v23, v3, v13

    .line 1176
    .local v23, "dx":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->isLayoutRtl()Z

    move-result v3

    if-nez v3, :cond_3

    add-int v3, v34, v29

    add-int v21, v3, v23

    .line 1178
    .local v21, "cx":I
    :goto_2
    add-int v3, v36, v49

    add-int v3, v3, v25

    add-int/2addr v3, v14

    add-int v22, v3, v44

    .line 1180
    .local v22, "cy":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    move/from16 v0, v46

    if-ne v0, v3, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    move/from16 v0, v27

    if-eq v0, v3, :cond_2

    .line 1181
    :cond_1
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v46

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/high16 v6, 0x40000000    # 2.0f

    move/from16 v0, v27

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v3, v6}, Landroid/view/View;->measure(II)V

    .line 1183
    :cond_2
    add-int v3, v21, v46

    add-int v6, v22, v27

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1, v3, v6}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_1

    .line 1176
    .end local v21    # "cx":I
    .end local v22    # "cy":I
    :cond_3
    sub-int v3, v43, v46

    sub-int v3, v3, v35

    sub-int v3, v3, v37

    sub-int v21, v3, v23

    goto :goto_2

    .line 1185
    .end local v2    # "boundsX":Landroid/widget/GridLayout$Bounds;
    .end local v4    # "c":Landroid/view/View;
    .end local v5    # "hAlign":Landroid/widget/GridLayout$Alignment;
    .end local v9    # "vAlign":Landroid/widget/GridLayout$Alignment;
    .end local v13    # "alignmentOffsetX":I
    .end local v14    # "alignmentOffsetY":I
    .end local v15    # "bottomMargin":I
    .end local v16    # "boundsY":Landroid/widget/GridLayout$Bounds;
    .end local v17    # "cellHeight":I
    .end local v18    # "cellWidth":I
    .end local v19    # "colSpan":Landroid/widget/GridLayout$Interval;
    .end local v20    # "columnSpec":Landroid/widget/GridLayout$Spec;
    .end local v23    # "dx":I
    .end local v24    # "gravityOffsetX":I
    .end local v25    # "gravityOffsetY":I
    .end local v27    # "height":I
    .end local v29    # "leftMargin":I
    .end local v30    # "lp":Landroid/widget/GridLayout$LayoutParams;
    .end local v31    # "pHeight":I
    .end local v32    # "pWidth":I
    .end local v37    # "rightMargin":I
    .end local v38    # "rowSpan":Landroid/widget/GridLayout$Interval;
    .end local v39    # "rowSpec":Landroid/widget/GridLayout$Spec;
    .end local v40    # "sumMarginsX":I
    .end local v41    # "sumMarginsY":I
    .end local v44    # "topMargin":I
    .end local v46    # "width":I
    .end local v47    # "x1":I
    .end local v48    # "x2":I
    .end local v49    # "y1":I
    .end local v50    # "y2":I
    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    const/4 v10, 0x0

    .line 1037
    invoke-direct {p0}, Landroid/widget/GridLayout;->consistencyCheck()V

    .line 1041
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateValues()V

    .line 1043
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getPaddingLeft()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getPaddingRight()I

    move-result v9

    add-int v0, v8, v9

    .line 1044
    .local v0, "hPadding":I
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getPaddingBottom()I

    move-result v9

    add-int v5, v8, v9

    .line 1046
    .local v5, "vPadding":I
    neg-int v8, v0

    invoke-static {p1, v8}, Landroid/widget/GridLayout;->adjust(II)I

    move-result v7

    .line 1047
    .local v7, "widthSpecSansPadding":I
    neg-int v8, v5

    invoke-static {p2, v8}, Landroid/widget/GridLayout;->adjust(II)I

    move-result v2

    .line 1049
    .local v2, "heightSpecSansPadding":I
    const/4 v8, 0x1

    invoke-direct {p0, v7, v2, v8}, Landroid/widget/GridLayout;->measureChildrenWithMargins(IIZ)V

    .line 1055
    iget v8, p0, Landroid/widget/GridLayout;->mOrientation:I

    if-nez v8, :cond_0

    .line 1056
    iget-object v8, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v8, v7}, Landroid/widget/GridLayout$Axis;->getMeasure(I)I

    move-result v6

    .line 1057
    .local v6, "widthSansPadding":I
    invoke-direct {p0, v7, v2, v10}, Landroid/widget/GridLayout;->measureChildrenWithMargins(IIZ)V

    .line 1058
    iget-object v8, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v8, v2}, Landroid/widget/GridLayout$Axis;->getMeasure(I)I

    move-result v1

    .line 1065
    .local v1, "heightSansPadding":I
    :goto_0
    add-int v8, v6, v0

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getSuggestedMinimumWidth()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1066
    .local v4, "measuredWidth":I
    add-int v8, v1, v5

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getSuggestedMinimumHeight()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1068
    .local v3, "measuredHeight":I
    invoke-static {v4, p1, v10}, Landroid/widget/GridLayout;->resolveSizeAndState(III)I

    move-result v8

    invoke-static {v3, p2, v10}, Landroid/widget/GridLayout;->resolveSizeAndState(III)I

    move-result v9

    invoke-virtual {p0, v8, v9}, Landroid/widget/GridLayout;->setMeasuredDimension(II)V

    .line 1071
    return-void

    .line 1060
    .end local v1    # "heightSansPadding":I
    .end local v3    # "measuredHeight":I
    .end local v4    # "measuredWidth":I
    .end local v6    # "widthSansPadding":I
    :cond_0
    iget-object v8, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v8, v2}, Landroid/widget/GridLayout$Axis;->getMeasure(I)I

    move-result v1

    .line 1061
    .restart local v1    # "heightSansPadding":I
    invoke-direct {p0, v7, v2, v10}, Landroid/widget/GridLayout;->measureChildrenWithMargins(IIZ)V

    .line 1062
    iget-object v8, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v8, v7}, Landroid/widget/GridLayout$Axis;->getMeasure(I)I

    move-result v6

    .restart local v6    # "widthSansPadding":I
    goto :goto_0
.end method

.method protected onSetLayoutParams(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "layoutParams"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 805
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onSetLayoutParams(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 807
    invoke-virtual {p0, p2}, Landroid/widget/GridLayout;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 808
    const-string/jumbo v0, "supplied LayoutParams are of the wrong type"

    invoke-static {v0}, Landroid/widget/GridLayout;->handleInvalidParams(Ljava/lang/String;)V

    .line 811
    :cond_0
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    .line 812
    return-void
.end method

.method protected onViewAdded(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 941
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 942
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    .line 943
    return-void
.end method

.method protected onViewRemoved(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 950
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 951
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    .line 952
    return-void
.end method

.method public requestLayout()V
    .locals 0

    .prologue
    .line 1086
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1087
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateValues()V

    .line 1088
    return-void
.end method

.method public setAlignmentMode(I)V
    .locals 0
    .param p1, "alignmentMode"    # I

    .prologue
    .line 502
    iput p1, p0, Landroid/widget/GridLayout;->mAlignmentMode:I

    .line 503
    invoke-virtual {p0}, Landroid/widget/GridLayout;->requestLayout()V

    .line 504
    return-void
.end method

.method public setColumnCount(I)V
    .locals 1
    .param p1, "columnCount"    # I

    .prologue
    .line 420
    iget-object v0, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0, p1}, Landroid/widget/GridLayout$Axis;->setCount(I)V

    .line 421
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    .line 422
    invoke-virtual {p0}, Landroid/widget/GridLayout;->requestLayout()V

    .line 423
    return-void
.end method

.method public setColumnOrderPreserved(Z)V
    .locals 1
    .param p1, "columnOrderPreserved"    # Z

    .prologue
    .line 573
    iget-object v0, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0, p1}, Landroid/widget/GridLayout$Axis;->setOrderPreserved(Z)V

    .line 574
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    .line 575
    invoke-virtual {p0}, Landroid/widget/GridLayout;->requestLayout()V

    .line 576
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 352
    iget v0, p0, Landroid/widget/GridLayout;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 353
    iput p1, p0, Landroid/widget/GridLayout;->mOrientation:I

    .line 354
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    .line 355
    invoke-virtual {p0}, Landroid/widget/GridLayout;->requestLayout()V

    .line 357
    :cond_0
    return-void
.end method

.method public setPrinter(Landroid/util/Printer;)V
    .locals 0
    .param p1, "printer"    # Landroid/util/Printer;

    .prologue
    .line 602
    if-nez p1, :cond_0

    sget-object p1, Landroid/widget/GridLayout;->NO_PRINTER:Landroid/util/Printer;

    .end local p1    # "printer":Landroid/util/Printer;
    :cond_0
    iput-object p1, p0, Landroid/widget/GridLayout;->mPrinter:Landroid/util/Printer;

    .line 603
    return-void
.end method

.method public setRowCount(I)V
    .locals 1
    .param p1, "rowCount"    # I

    .prologue
    .line 387
    iget-object v0, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0, p1}, Landroid/widget/GridLayout$Axis;->setCount(I)V

    .line 388
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    .line 389
    invoke-virtual {p0}, Landroid/widget/GridLayout;->requestLayout()V

    .line 390
    return-void
.end method

.method public setRowOrderPreserved(Z)V
    .locals 1
    .param p1, "rowOrderPreserved"    # Z

    .prologue
    .line 537
    iget-object v0, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0, p1}, Landroid/widget/GridLayout$Axis;->setOrderPreserved(Z)V

    .line 538
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    .line 539
    invoke-virtual {p0}, Landroid/widget/GridLayout;->requestLayout()V

    .line 540
    return-void
.end method

.method public setUseDefaultMargins(Z)V
    .locals 0
    .param p1, "useDefaultMargins"    # Z

    .prologue
    .line 466
    iput-boolean p1, p0, Landroid/widget/GridLayout;->mUseDefaultMargins:Z

    .line 467
    invoke-virtual {p0}, Landroid/widget/GridLayout;->requestLayout()V

    .line 468
    return-void
.end method
