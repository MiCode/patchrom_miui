.class public Landroid/inputmethodservice/Keyboard;
.super Ljava/lang/Object;
.source "Keyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/Keyboard$Key;,
        Landroid/inputmethodservice/Keyboard$Row;
    }
.end annotation


# static fields
.field public static final EDGE_BOTTOM:I = 0x8

.field public static final EDGE_LEFT:I = 0x1

.field public static final EDGE_RIGHT:I = 0x2

.field public static final EDGE_TOP:I = 0x4

.field private static final GRID_HEIGHT:I = 0x5

.field private static final GRID_SIZE:I = 0x32

.field private static final GRID_WIDTH:I = 0xa

.field public static final KEYCODE_ALT:I = -0x6

.field public static final KEYCODE_CANCEL:I = -0x3

.field public static final KEYCODE_DELETE:I = -0x5

.field public static final KEYCODE_DONE:I = -0x4

.field public static final KEYCODE_MODE_CHANGE:I = -0x2

.field public static final KEYCODE_SHIFT:I = -0x1

.field private static SEARCH_DISTANCE:F = 0.0f

.field static final TAG:Ljava/lang/String; = "Keyboard"

.field private static final TAG_KEY:Ljava/lang/String; = "Key"

.field private static final TAG_KEYBOARD:Ljava/lang/String; = "Keyboard"

.field private static final TAG_ROW:Ljava/lang/String; = "Row"


# instance fields
.field private mCellHeight:I

.field private mCellWidth:I

.field private mDefaultHeight:I

.field private mDefaultHorizontalGap:I

.field private mDefaultVerticalGap:I

.field private mDefaultWidth:I

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mGridNeighbors:[[I

.field private mKeyHeight:I

.field private mKeyWidth:I

.field private mKeyboardMode:I

.field private mKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            ">;"
        }
    .end annotation
.end field

.field private mLabel:Ljava/lang/CharSequence;

.field private mModifierKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            ">;"
        }
    .end annotation
.end field

.field private mProximityThreshold:I

.field private mShiftKeyIndices:[I

.field private mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

.field private mShifted:Z

.field private mTotalHeight:I

.field private mTotalWidth:I

.field private rows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/inputmethodservice/Keyboard$Row;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 145
    const v0, 0x3fe66666    # 1.8f

    sput v0, Landroid/inputmethodservice/Keyboard;->SEARCH_DISTANCE:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlLayoutResId"    # I

    .prologue
    .line 510
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;II)V

    .line 511
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlLayoutResId"    # I
    .param p3, "modeId"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-array v1, v4, [Landroid/inputmethodservice/Keyboard$Key;

    aput-object v5, v1, v3

    const/4 v2, 0x1

    aput-object v5, v1, v2

    iput-object v1, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 103
    new-array v1, v4, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeyIndices:[I

    .line 147
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/inputmethodservice/Keyboard;->rows:Ljava/util/ArrayList;

    .line 544
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 545
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    .line 546
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDisplayHeight:I

    .line 549
    iput v3, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    .line 550
    iget v1, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    div-int/lit8 v1, v1, 0xa

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    .line 551
    iput v3, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    .line 552
    iget v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    .line 553
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    .line 554
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/inputmethodservice/Keyboard;->mModifierKeys:Ljava/util/List;

    .line 555
    iput p3, p0, Landroid/inputmethodservice/Keyboard;->mKeyboardMode:I

    .line 556
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Landroid/inputmethodservice/Keyboard;->loadKeyboard(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 557
    return-void

    .line 103
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlLayoutResId"    # I
    .param p3, "modeId"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-array v0, v3, [Landroid/inputmethodservice/Keyboard$Key;

    aput-object v4, v0, v2

    const/4 v1, 0x1

    aput-object v4, v0, v1

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 103
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeyIndices:[I

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard;->rows:Ljava/util/ArrayList;

    .line 523
    iput p4, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    .line 524
    iput p5, p0, Landroid/inputmethodservice/Keyboard;->mDisplayHeight:I

    .line 526
    iput v2, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    .line 527
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    .line 528
    iput v2, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    .line 529
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    iput v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    .line 530
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    .line 531
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard;->mModifierKeys:Ljava/util/List;

    .line 532
    iput p3, p0, Landroid/inputmethodservice/Keyboard;->mKeyboardMode:I

    .line 533
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/inputmethodservice/Keyboard;->loadKeyboard(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 534
    return-void

    .line 103
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutTemplateResId"    # I
    .param p3, "characters"    # Ljava/lang/CharSequence;
    .param p4, "columns"    # I
    .param p5, "horizontalPadding"    # I

    .prologue
    .line 575
    invoke-direct {p0, p1, p2}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    .line 576
    const/4 v6, 0x0

    .line 577
    .local v6, "x":I
    const/4 v7, 0x0

    .line 578
    .local v7, "y":I
    const/4 v1, 0x0

    .line 579
    .local v1, "column":I
    const/4 v8, 0x0

    iput v8, p0, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    .line 581
    new-instance v5, Landroid/inputmethodservice/Keyboard$Row;

    invoke-direct {v5, p0}, Landroid/inputmethodservice/Keyboard$Row;-><init>(Landroid/inputmethodservice/Keyboard;)V

    .line 582
    .local v5, "row":Landroid/inputmethodservice/Keyboard$Row;
    iget v8, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    iput v8, v5, Landroid/inputmethodservice/Keyboard$Row;->defaultHeight:I

    .line 583
    iget v8, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    iput v8, v5, Landroid/inputmethodservice/Keyboard$Row;->defaultWidth:I

    .line 584
    iget v8, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    iput v8, v5, Landroid/inputmethodservice/Keyboard$Row;->defaultHorizontalGap:I

    .line 585
    iget v8, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    iput v8, v5, Landroid/inputmethodservice/Keyboard$Row;->verticalGap:I

    .line 586
    const/16 v8, 0xc

    iput v8, v5, Landroid/inputmethodservice/Keyboard$Row;->rowEdgeFlags:I

    .line 587
    const/4 v8, -0x1

    if-ne p4, v8, :cond_3

    const v4, 0x7fffffff

    .line 588
    .local v4, "maxColumns":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ge v2, v8, :cond_4

    .line 589
    invoke-interface {p3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 590
    .local v0, "c":C
    if-ge v1, v4, :cond_0

    iget v8, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    add-int/2addr v8, v6

    add-int/2addr v8, p5

    iget v9, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    if-le v8, v9, :cond_1

    .line 592
    :cond_0
    const/4 v6, 0x0

    .line 593
    iget v8, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    iget v9, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    .line 594
    const/4 v1, 0x0

    .line 596
    :cond_1
    new-instance v3, Landroid/inputmethodservice/Keyboard$Key;

    invoke-direct {v3, v5}, Landroid/inputmethodservice/Keyboard$Key;-><init>(Landroid/inputmethodservice/Keyboard$Row;)V

    .line 597
    .local v3, "key":Landroid/inputmethodservice/Keyboard$Key;
    iput v6, v3, Landroid/inputmethodservice/Keyboard$Key;->x:I

    .line 598
    iput v7, v3, Landroid/inputmethodservice/Keyboard$Key;->y:I

    .line 599
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 600
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    aput v0, v8, v9

    iput-object v8, v3, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    .line 601
    add-int/lit8 v1, v1, 0x1

    .line 602
    iget v8, v3, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v9, v3, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    add-int/2addr v8, v9

    add-int/2addr v6, v8

    .line 603
    iget-object v8, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 604
    iget-object v8, v5, Landroid/inputmethodservice/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    iget v8, p0, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    if-le v6, v8, :cond_2

    .line 606
    iput v6, p0, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    .line 588
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "c":C
    .end local v2    # "i":I
    .end local v3    # "key":Landroid/inputmethodservice/Keyboard$Key;
    .end local v4    # "maxColumns":I
    :cond_3
    move v4, p4

    .line 587
    goto :goto_0

    .line 609
    .restart local v2    # "i":I
    .restart local v4    # "maxColumns":I
    :cond_4
    iget v8, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    add-int/2addr v8, v7

    iput v8, p0, Landroid/inputmethodservice/Keyboard;->mTotalHeight:I

    .line 610
    iget-object v8, p0, Landroid/inputmethodservice/Keyboard;->rows:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    return-void
.end method

.method static synthetic access$000(Landroid/inputmethodservice/Keyboard;)I
    .locals 1
    .param p0, "x0"    # Landroid/inputmethodservice/Keyboard;

    .prologue
    .line 60
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    return v0
.end method

.method static synthetic access$100(Landroid/inputmethodservice/Keyboard;)I
    .locals 1
    .param p0, "x0"    # Landroid/inputmethodservice/Keyboard;

    .prologue
    .line 60
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    return v0
.end method

.method static synthetic access$200(Landroid/inputmethodservice/Keyboard;)I
    .locals 1
    .param p0, "x0"    # Landroid/inputmethodservice/Keyboard;

    .prologue
    .line 60
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDisplayHeight:I

    return v0
.end method

.method static synthetic access$300(Landroid/inputmethodservice/Keyboard;)I
    .locals 1
    .param p0, "x0"    # Landroid/inputmethodservice/Keyboard;

    .prologue
    .line 60
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    return v0
.end method

.method static synthetic access$400(Landroid/inputmethodservice/Keyboard;)I
    .locals 1
    .param p0, "x0"    # Landroid/inputmethodservice/Keyboard;

    .prologue
    .line 60
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    return v0
.end method

.method static synthetic access$500(Landroid/inputmethodservice/Keyboard;)I
    .locals 1
    .param p0, "x0"    # Landroid/inputmethodservice/Keyboard;

    .prologue
    .line 60
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    return v0
.end method

.method private computeNearestNeighbors()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 726
    invoke-virtual {p0}, Landroid/inputmethodservice/Keyboard;->getMinWidth()I

    move-result v10

    add-int/lit8 v10, v10, 0xa

    add-int/lit8 v10, v10, -0x1

    div-int/lit8 v10, v10, 0xa

    iput v10, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    .line 727
    invoke-virtual {p0}, Landroid/inputmethodservice/Keyboard;->getHeight()I

    move-result v10

    add-int/lit8 v10, v10, 0x5

    add-int/lit8 v10, v10, -0x1

    div-int/lit8 v10, v10, 0x5

    iput v10, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    .line 728
    const/16 v10, 0x32

    new-array v10, v10, [[I

    iput-object v10, p0, Landroid/inputmethodservice/Keyboard;->mGridNeighbors:[[I

    .line 729
    iget-object v10, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    new-array v6, v10, [I

    .line 730
    .local v6, "indices":[I
    iget v10, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    mul-int/lit8 v4, v10, 0xa

    .line 731
    .local v4, "gridWidth":I
    iget v10, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    mul-int/lit8 v3, v10, 0x5

    .line 732
    .local v3, "gridHeight":I
    const/4 v8, 0x0

    .local v8, "x":I
    :goto_0
    if-ge v8, v4, :cond_4

    .line 733
    const/4 v9, 0x0

    .local v9, "y":I
    :goto_1
    if-ge v9, v3, :cond_3

    .line 734
    const/4 v1, 0x0

    .line 735
    .local v1, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    iget-object v10, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_2

    .line 736
    iget-object v10, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/inputmethodservice/Keyboard$Key;

    .line 737
    .local v7, "key":Landroid/inputmethodservice/Keyboard$Key;
    invoke-virtual {v7, v8, v9}, Landroid/inputmethodservice/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v10

    iget v11, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    if-lt v10, v11, :cond_0

    iget v10, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    add-int/2addr v10, v8

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v7, v10, v9}, Landroid/inputmethodservice/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v10

    iget v11, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    if-lt v10, v11, :cond_0

    iget v10, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    add-int/2addr v10, v8

    add-int/lit8 v10, v10, -0x1

    iget v11, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    add-int/2addr v11, v9

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v7, v10, v11}, Landroid/inputmethodservice/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v10

    iget v11, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    if-lt v10, v11, :cond_0

    iget v10, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    add-int/2addr v10, v9

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v7, v8, v10}, Landroid/inputmethodservice/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v10

    iget v11, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    if-ge v10, v11, :cond_1

    .line 742
    :cond_0
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "count":I
    .local v2, "count":I
    aput v5, v6, v1

    move v1, v2

    .line 735
    .end local v2    # "count":I
    .restart local v1    # "count":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 745
    .end local v7    # "key":Landroid/inputmethodservice/Keyboard$Key;
    :cond_2
    new-array v0, v1, [I

    .line 746
    .local v0, "cell":[I
    invoke-static {v6, v13, v0, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 747
    iget-object v10, p0, Landroid/inputmethodservice/Keyboard;->mGridNeighbors:[[I

    iget v11, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    div-int v11, v9, v11

    mul-int/lit8 v11, v11, 0xa

    iget v12, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    div-int v12, v8, v12

    add-int/2addr v11, v12

    aput-object v0, v10, v11

    .line 733
    iget v10, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    add-int/2addr v9, v10

    goto :goto_1

    .line 732
    .end local v0    # "cell":[I
    .end local v1    # "count":I
    .end local v5    # "i":I
    :cond_3
    iget v10, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    add-int/2addr v8, v10

    goto :goto_0

    .line 750
    .end local v9    # "y":I
    :cond_4
    return-void
.end method

.method static getDimensionOrFraction(Landroid/content/res/TypedArray;III)I
    .locals 3
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "index"    # I
    .param p2, "base"    # I
    .param p3, "defValue"    # I

    .prologue
    .line 884
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 885
    .local v0, "value":Landroid/util/TypedValue;
    if-nez v0, :cond_1

    .line 892
    .end local p3    # "defValue":I
    :cond_0
    :goto_0
    return p3

    .line 886
    .restart local p3    # "defValue":I
    :cond_1
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 887
    invoke-virtual {p0, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    goto :goto_0

    .line 888
    :cond_2
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 890
    int-to-float v1, p3

    invoke-virtual {p0, p1, p2, p2, v1}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p3

    goto :goto_0
.end method

.method private loadKeyboard(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;

    .prologue
    .line 780
    const/4 v11, 0x0

    .line 781
    .local v11, "inKey":Z
    const/4 v12, 0x0

    .line 782
    .local v12, "inRow":Z
    const/4 v14, 0x0

    .line 783
    .local v14, "leftMostKey":Z
    const/4 v15, 0x0

    .line 784
    .local v15, "row":I
    const/4 v5, 0x0

    .line 785
    .local v5, "x":I
    const/4 v6, 0x0

    .line 786
    .local v6, "y":I
    const/4 v13, 0x0

    .line 787
    .local v13, "key":Landroid/inputmethodservice/Keyboard$Key;
    const/4 v4, 0x0

    .line 788
    .local v4, "currentRow":Landroid/inputmethodservice/Keyboard$Row;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 789
    .local v3, "res":Landroid/content/res/Resources;
    const/16 v16, 0x0

    .line 793
    .local v16, "skipRow":Z
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v9

    .local v9, "event":I
    const/4 v2, 0x1

    if-eq v9, v2, :cond_5

    .line 794
    const/4 v2, 0x2

    if-ne v9, v2, :cond_9

    .line 795
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v17

    .line 796
    .local v17, "tag":Ljava/lang/String;
    const-string v2, "Row"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 797
    const/4 v12, 0x1

    .line 798
    const/4 v5, 0x0

    .line 799
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Landroid/inputmethodservice/Keyboard;->createRowFromXml(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/inputmethodservice/Keyboard$Row;

    move-result-object v4

    .line 800
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/inputmethodservice/Keyboard;->rows:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 801
    iget v2, v4, Landroid/inputmethodservice/Keyboard$Row;->mode:I

    if-eqz v2, :cond_1

    iget v2, v4, Landroid/inputmethodservice/Keyboard$Row;->mode:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/inputmethodservice/Keyboard;->mKeyboardMode:I

    if-eq v2, v7, :cond_1

    const/16 v16, 0x1

    .line 802
    :goto_1
    if-eqz v16, :cond_0

    .line 803
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/inputmethodservice/Keyboard;->skipToEndOfRow(Landroid/content/res/XmlResourceParser;)V

    .line 804
    const/4 v12, 0x0

    goto :goto_0

    .line 801
    :cond_1
    const/16 v16, 0x0

    goto :goto_1

    .line 806
    :cond_2
    const-string v2, "Key"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 807
    const/4 v11, 0x1

    move-object/from16 v2, p0

    move-object/from16 v7, p2

    .line 808
    invoke-virtual/range {v2 .. v7}, Landroid/inputmethodservice/Keyboard;->createKeyFromXml(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)Landroid/inputmethodservice/Keyboard$Key;

    move-result-object v13

    .line 809
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 810
    iget-object v2, v13, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v7, 0x0

    aget v2, v2, v7

    const/4 v7, -0x1

    if-ne v2, v7, :cond_7

    .line 812
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/inputmethodservice/Keyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    array-length v2, v2

    if-ge v10, v2, :cond_3

    .line 813
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/inputmethodservice/Keyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v2, v2, v10

    if-nez v2, :cond_6

    .line 814
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/inputmethodservice/Keyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aput-object v13, v2, v10

    .line 815
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/inputmethodservice/Keyboard;->mShiftKeyIndices:[I

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    aput v7, v2, v10

    .line 819
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/inputmethodservice/Keyboard;->mModifierKeys:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 823
    .end local v10    # "i":I
    :cond_4
    :goto_3
    iget-object v2, v4, Landroid/inputmethodservice/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 844
    .end local v9    # "event":I
    .end local v17    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 845
    .local v8, "e":Ljava/lang/Exception;
    const-string v2, "Keyboard"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Parse error:"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 848
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    sub-int v2, v6, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/inputmethodservice/Keyboard;->mTotalHeight:I

    .line 849
    return-void

    .line 812
    .restart local v9    # "event":I
    .restart local v10    # "i":I
    .restart local v17    # "tag":Ljava/lang/String;
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 820
    .end local v10    # "i":I
    :cond_7
    :try_start_1
    iget-object v2, v13, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v7, 0x0

    aget v2, v2, v7

    const/4 v7, -0x6

    if-ne v2, v7, :cond_4

    .line 821
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/inputmethodservice/Keyboard;->mModifierKeys:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 824
    :cond_8
    const-string v2, "Keyboard"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 825
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v3, v1}, Landroid/inputmethodservice/Keyboard;->parseKeyboardAttributes(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V

    goto/16 :goto_0

    .line 827
    .end local v17    # "tag":Ljava/lang/String;
    :cond_9
    const/4 v2, 0x3

    if-ne v9, v2, :cond_0

    .line 828
    if-eqz v11, :cond_a

    .line 829
    const/4 v11, 0x0

    .line 830
    iget v2, v13, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    iget v7, v13, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v2, v7

    add-int/2addr v5, v2

    .line 831
    move-object/from16 v0, p0

    iget v2, v0, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    if-le v5, v2, :cond_0

    .line 832
    move-object/from16 v0, p0

    iput v5, v0, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    goto/16 :goto_0

    .line 834
    :cond_a
    if-eqz v12, :cond_0

    .line 835
    const/4 v12, 0x0

    .line 836
    iget v2, v4, Landroid/inputmethodservice/Keyboard$Row;->verticalGap:I

    add-int/2addr v6, v2

    .line 837
    iget v2, v4, Landroid/inputmethodservice/Keyboard$Row;->defaultHeight:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/2addr v6, v2

    .line 838
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0
.end method

.method private parseKeyboardAttributes(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V
    .locals 5
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;

    .prologue
    const/4 v4, 0x0

    .line 863
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    sget-object v2, Lcom/android/internal/R$styleable;->Keyboard:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 866
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v1, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    iget v2, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    div-int/lit8 v2, v2, 0xa

    invoke-static {v0, v4, v1, v2}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    .line 869
    const/4 v1, 0x1

    iget v2, p0, Landroid/inputmethodservice/Keyboard;->mDisplayHeight:I

    const/16 v3, 0x32

    invoke-static {v0, v1, v2, v3}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    .line 872
    const/4 v1, 0x2

    iget v2, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    invoke-static {v0, v1, v2, v4}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    .line 875
    const/4 v1, 0x3

    iget v2, p0, Landroid/inputmethodservice/Keyboard;->mDisplayHeight:I

    invoke-static {v0, v1, v2, v4}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    .line 878
    iget v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    int-to-float v1, v1

    sget v2, Landroid/inputmethodservice/Keyboard;->SEARCH_DISTANCE:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    .line 879
    iget v1, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    iget v2, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    mul-int/2addr v1, v2

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    .line 880
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 881
    return-void
.end method

.method private skipToEndOfRow(Landroid/content/res/XmlResourceParser;)V
    .locals 3
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 854
    :cond_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    .local v0, "event":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 855
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Row"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 860
    :cond_1
    return-void
.end method


# virtual methods
.method protected createKeyFromXml(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)Landroid/inputmethodservice/Keyboard$Key;
    .locals 6
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parent"    # Landroid/inputmethodservice/Keyboard$Row;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "parser"    # Landroid/content/res/XmlResourceParser;

    .prologue
    .line 776
    new-instance v0, Landroid/inputmethodservice/Keyboard$Key;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/inputmethodservice/Keyboard$Key;-><init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V

    return-object v0
.end method

.method protected createRowFromXml(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/inputmethodservice/Keyboard$Row;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;

    .prologue
    .line 771
    new-instance v0, Landroid/inputmethodservice/Keyboard$Row;

    invoke-direct {v0, p1, p0, p2}, Landroid/inputmethodservice/Keyboard$Row;-><init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard;Landroid/content/res/XmlResourceParser;)V

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 689
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mTotalHeight:I

    return v0
.end method

.method protected getHorizontalGap()I
    .locals 1

    .prologue
    .line 653
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    return v0
.end method

.method protected getKeyHeight()I
    .locals 1

    .prologue
    .line 669
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    return v0
.end method

.method protected getKeyWidth()I
    .locals 1

    .prologue
    .line 677
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    return v0
.end method

.method public getKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            ">;"
        }
    .end annotation

    .prologue
    .line 645
    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    return-object v0
.end method

.method public getMinWidth()I
    .locals 1

    .prologue
    .line 693
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    return v0
.end method

.method public getModifierKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            ">;"
        }
    .end annotation

    .prologue
    .line 649
    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->mModifierKeys:Ljava/util/List;

    return-object v0
.end method

.method public getNearestKeys(II)[I
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 760
    iget-object v1, p0, Landroid/inputmethodservice/Keyboard;->mGridNeighbors:[[I

    if-nez v1, :cond_0

    invoke-direct {p0}, Landroid/inputmethodservice/Keyboard;->computeNearestNeighbors()V

    .line 761
    :cond_0
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Landroid/inputmethodservice/Keyboard;->getMinWidth()I

    move-result v1

    if-ge p1, v1, :cond_1

    if-ltz p2, :cond_1

    invoke-virtual {p0}, Landroid/inputmethodservice/Keyboard;->getHeight()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 762
    iget v1, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    div-int v1, p2, v1

    mul-int/lit8 v1, v1, 0xa

    iget v2, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    div-int v2, p1, v2

    add-int v0, v1, v2

    .line 763
    .local v0, "index":I
    const/16 v1, 0x32

    if-ge v0, v1, :cond_1

    .line 764
    iget-object v1, p0, Landroid/inputmethodservice/Keyboard;->mGridNeighbors:[[I

    aget-object v1, v1, v0

    .line 767
    .end local v0    # "index":I
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    new-array v1, v1, [I

    goto :goto_0
.end method

.method public getShiftKeyIndex()I
    .locals 2

    .prologue
    .line 721
    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeyIndices:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getShiftKeyIndices()[I
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeyIndices:[I

    return-object v0
.end method

.method protected getVerticalGap()I
    .locals 1

    .prologue
    .line 661
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    return v0
.end method

.method public isShifted()Z
    .locals 1

    .prologue
    .line 710
    iget-boolean v0, p0, Landroid/inputmethodservice/Keyboard;->mShifted:Z

    return v0
.end method

.method final resize(II)V
    .locals 12
    .param p1, "newWidth"    # I
    .param p2, "newHeight"    # I

    .prologue
    .line 614
    iget-object v10, p0, Landroid/inputmethodservice/Keyboard;->rows:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 615
    .local v3, "numRows":I
    const/4 v5, 0x0

    .local v5, "rowIndex":I
    :goto_0
    if-ge v5, v3, :cond_3

    .line 616
    iget-object v10, p0, Landroid/inputmethodservice/Keyboard;->rows:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/inputmethodservice/Keyboard$Row;

    .line 617
    .local v4, "row":Landroid/inputmethodservice/Keyboard$Row;
    iget-object v10, v4, Landroid/inputmethodservice/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 618
    .local v2, "numKeys":I
    const/4 v7, 0x0

    .line 619
    .local v7, "totalGap":I
    const/4 v8, 0x0

    .line 620
    .local v8, "totalWidth":I
    const/4 v1, 0x0

    .local v1, "keyIndex":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 621
    iget-object v10, v4, Landroid/inputmethodservice/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    .line 622
    .local v0, "key":Landroid/inputmethodservice/Keyboard$Key;
    if-lez v1, :cond_0

    .line 623
    iget v10, v0, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    add-int/2addr v7, v10

    .line 625
    :cond_0
    iget v10, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v8, v10

    .line 620
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 627
    .end local v0    # "key":Landroid/inputmethodservice/Keyboard$Key;
    :cond_1
    add-int v10, v7, v8

    if-le v10, p1, :cond_2

    .line 628
    const/4 v9, 0x0

    .line 629
    .local v9, "x":I
    sub-int v10, p1, v7

    int-to-float v10, v10

    int-to-float v11, v8

    div-float v6, v10, v11

    .line 630
    .local v6, "scaleFactor":F
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_2

    .line 631
    iget-object v10, v4, Landroid/inputmethodservice/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    .line 632
    .restart local v0    # "key":Landroid/inputmethodservice/Keyboard$Key;
    iget v10, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    int-to-float v10, v10

    mul-float/2addr v10, v6

    float-to-int v10, v10

    iput v10, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    .line 633
    iput v9, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    .line 634
    iget v10, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v11, v0, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    add-int/2addr v10, v11

    add-int/2addr v9, v10

    .line 630
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 615
    .end local v0    # "key":Landroid/inputmethodservice/Keyboard$Key;
    .end local v6    # "scaleFactor":F
    .end local v9    # "x":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 638
    .end local v1    # "keyIndex":I
    .end local v2    # "numKeys":I
    .end local v4    # "row":Landroid/inputmethodservice/Keyboard$Row;
    .end local v7    # "totalGap":I
    .end local v8    # "totalWidth":I
    :cond_3
    iput p1, p0, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    .line 642
    return-void
.end method

.method protected setHorizontalGap(I)V
    .locals 0
    .param p1, "gap"    # I

    .prologue
    .line 657
    iput p1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    .line 658
    return-void
.end method

.method protected setKeyHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 673
    iput p1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    .line 674
    return-void
.end method

.method protected setKeyWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 681
    iput p1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    .line 682
    return-void
.end method

.method public setShifted(Z)Z
    .locals 5
    .param p1, "shiftState"    # Z

    .prologue
    .line 697
    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .local v0, "arr$":[Landroid/inputmethodservice/Keyboard$Key;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 698
    .local v3, "shiftKey":Landroid/inputmethodservice/Keyboard$Key;
    if-eqz v3, :cond_0

    .line 699
    iput-boolean p1, v3, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    .line 697
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 702
    .end local v3    # "shiftKey":Landroid/inputmethodservice/Keyboard$Key;
    :cond_1
    iget-boolean v4, p0, Landroid/inputmethodservice/Keyboard;->mShifted:Z

    if-eq v4, p1, :cond_2

    .line 703
    iput-boolean p1, p0, Landroid/inputmethodservice/Keyboard;->mShifted:Z

    .line 704
    const/4 v4, 0x1

    .line 706
    :goto_1
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method protected setVerticalGap(I)V
    .locals 0
    .param p1, "gap"    # I

    .prologue
    .line 665
    iput p1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    .line 666
    return-void
.end method
