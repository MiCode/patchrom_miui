.class Landroid/text/BidiFormatter$DirectionalityEstimator;
.super Ljava/lang/Object;
.source "BidiFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/BidiFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DirectionalityEstimator"
.end annotation


# static fields
.field private static final DIR_TYPE_CACHE:[B

.field private static final DIR_TYPE_CACHE_SIZE:I = 0x700


# instance fields
.field private charIndex:I

.field private final isHtml:Z

.field private lastChar:C

.field private final length:I

.field private final text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x700

    .line 515
    new-array v1, v3, [B

    sput-object v1, Landroid/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    .line 516
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 517
    sget-object v1, Landroid/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v2

    aput-byte v2, v1, v0

    .line 516
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 519
    :cond_0
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "isHtml"    # Z

    .prologue
    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 560
    iput-object p1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    .line 561
    iput-boolean p2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    .line 562
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->length:I

    .line 563
    return-void
.end method

.method private static getCachedDirectionality(C)B
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 734
    const/16 v0, 0x700

    if-ge p0, v0, :cond_0

    sget-object v0, Landroid/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    aget-byte v0, v0, p0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v0

    goto :goto_0
.end method

.method private skipEntityBackward()B
    .locals 4

    .prologue
    const/16 v3, 0x3b

    .line 875
    iget v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 876
    .local v0, "initialCharIndex":I
    :cond_0
    iget v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v1, :cond_2

    .line 877
    iget-object v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iput-char v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 878
    iget-char v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x26

    if-ne v1, v2, :cond_1

    .line 879
    const/16 v1, 0xc

    .line 887
    :goto_0
    return v1

    .line 881
    :cond_1
    iget-char v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-ne v1, v3, :cond_0

    .line 885
    :cond_2
    iput v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 886
    iput-char v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 887
    const/16 v1, 0xd

    goto :goto_0
.end method

.method private skipEntityForward()B
    .locals 3

    .prologue
    .line 860
    :cond_0
    iget v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_0

    .line 861
    :cond_1
    const/16 v0, 0xc

    return v0
.end method

.method private skipTagBackward()B
    .locals 5

    .prologue
    const/16 v4, 0x3e

    .line 832
    iget v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 833
    .local v0, "initialCharIndex":I
    :cond_0
    iget v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v2, :cond_2

    .line 834
    iget-object v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 835
    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_1

    .line 837
    const/16 v2, 0xc

    .line 851
    :goto_0
    return v2

    .line 839
    :cond_1
    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-ne v2, v4, :cond_3

    .line 849
    :cond_2
    iput v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 850
    iput-char v4, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 851
    const/16 v2, 0xd

    goto :goto_0

    .line 842
    :cond_3
    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x22

    if-eq v2, v3, :cond_4

    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x27

    if-ne v2, v3, :cond_0

    .line 844
    :cond_4
    iget-char v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 845
    .local v1, "quote":C
    :goto_1
    iget v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v2, :cond_0

    iget-object v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-eq v2, v1, :cond_0

    goto :goto_1
.end method

.method private skipTagForward()B
    .locals 5

    .prologue
    .line 803
    iget v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 804
    .local v0, "initialCharIndex":I
    :cond_0
    iget v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v2, v3, :cond_3

    .line 805
    iget-object v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 806
    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_1

    .line 808
    const/16 v2, 0xc

    .line 819
    :goto_0
    return v2

    .line 810
    :cond_1
    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x22

    if-eq v2, v3, :cond_2

    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x27

    if-ne v2, v3, :cond_0

    .line 812
    :cond_2
    iget-char v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 813
    .local v1, "quote":C
    :goto_1
    iget v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-eq v2, v1, :cond_0

    goto :goto_1

    .line 817
    .end local v1    # "quote":C
    :cond_3
    iput v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 818
    const/16 v2, 0x3c

    iput-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 819
    const/16 v2, 0xd

    goto :goto_0
.end method


# virtual methods
.method dirTypeBackward()B
    .locals 4

    .prologue
    .line 777
    iget-object v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 778
    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 779
    iget-object v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v2, v3}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 780
    .local v0, "codePoint":I
    iget v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 781
    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v1

    .line 793
    .end local v0    # "codePoint":I
    :cond_0
    :goto_0
    return v1

    .line 783
    :cond_1
    iget v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 784
    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v2}, Landroid/text/BidiFormatter$DirectionalityEstimator;->getCachedDirectionality(C)B

    move-result v1

    .line 785
    .local v1, "dirType":B
    iget-boolean v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    if-eqz v2, :cond_0

    .line 787
    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_2

    .line 788
    invoke-direct {p0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->skipTagBackward()B

    move-result v1

    goto :goto_0

    .line 789
    :cond_2
    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_0

    .line 790
    invoke-direct {p0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->skipEntityBackward()B

    move-result v1

    goto :goto_0
.end method

.method dirTypeForward()B
    .locals 4

    .prologue
    .line 747
    iget-object v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 748
    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 749
    iget-object v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v2, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 750
    .local v0, "codePoint":I
    iget v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 751
    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v1

    .line 763
    .end local v0    # "codePoint":I
    :cond_0
    :goto_0
    return v1

    .line 753
    :cond_1
    iget v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 754
    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v2}, Landroid/text/BidiFormatter$DirectionalityEstimator;->getCachedDirectionality(C)B

    move-result v1

    .line 755
    .local v1, "dirType":B
    iget-boolean v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    if-eqz v2, :cond_0

    .line 757
    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_2

    .line 758
    invoke-direct {p0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->skipTagForward()B

    move-result v1

    goto :goto_0

    .line 759
    :cond_2
    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x26

    if-ne v2, v3, :cond_0

    .line 760
    invoke-direct {p0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->skipEntityForward()B

    move-result v1

    goto :goto_0
.end method

.method getEntryDir()I
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v5, 0x0

    .line 577
    iput v5, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 578
    const/4 v0, 0x0

    .line 579
    .local v0, "embeddingLevel":I
    const/4 v1, 0x0

    .line 580
    .local v1, "embeddingLevelDir":I
    const/4 v2, 0x0

    .line 581
    .local v2, "firstNonEmptyEmbeddingLevel":I
    :goto_0
    :pswitch_0
    iget v6, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v7, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v6, v7, :cond_3

    if-nez v2, :cond_3

    .line 582
    invoke-virtual {p0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->dirTypeForward()B

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 616
    :pswitch_1
    move v2, v0

    .line 617
    goto :goto_0

    .line 585
    :pswitch_2
    add-int/lit8 v0, v0, 0x1

    .line 586
    const/4 v1, -0x1

    .line 587
    goto :goto_0

    .line 590
    :pswitch_3
    add-int/lit8 v0, v0, 0x1

    .line 591
    const/4 v1, 0x1

    .line 592
    goto :goto_0

    .line 594
    :pswitch_4
    add-int/lit8 v0, v0, -0x1

    .line 598
    const/4 v1, 0x0

    .line 599
    goto :goto_0

    .line 603
    :pswitch_5
    if-nez v0, :cond_1

    move v1, v3

    .line 659
    .end local v1    # "embeddingLevelDir":I
    :cond_0
    :goto_1
    return v1

    .line 606
    .restart local v1    # "embeddingLevelDir":I
    :cond_1
    move v2, v0

    .line 607
    goto :goto_0

    .line 610
    :pswitch_6
    if-nez v0, :cond_2

    move v1, v4

    .line 611
    goto :goto_1

    .line 613
    :cond_2
    move v2, v0

    .line 614
    goto :goto_0

    .line 623
    :cond_3
    if-nez v2, :cond_4

    move v1, v5

    .line 626
    goto :goto_1

    .line 630
    :cond_4
    if-nez v1, :cond_0

    .line 637
    :goto_2
    iget v6, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v6, :cond_7

    .line 638
    invoke-virtual {p0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->dirTypeBackward()B

    move-result v6

    packed-switch v6, :pswitch_data_1

    goto :goto_2

    .line 641
    :pswitch_7
    if-ne v2, v0, :cond_5

    move v1, v3

    .line 642
    goto :goto_1

    .line 644
    :cond_5
    add-int/lit8 v0, v0, -0x1

    .line 645
    goto :goto_2

    .line 648
    :pswitch_8
    if-ne v2, v0, :cond_6

    move v1, v4

    .line 649
    goto :goto_1

    .line 651
    :cond_6
    add-int/lit8 v0, v0, -0x1

    .line 652
    goto :goto_2

    .line 654
    :pswitch_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    move v1, v5

    .line 659
    goto :goto_1

    .line 582
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 638
    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method getExitDir()I
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 675
    iget v4, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->length:I

    iput v4, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 676
    const/4 v0, 0x0

    .line 677
    .local v0, "embeddingLevel":I
    const/4 v1, 0x0

    .line 678
    .local v1, "lastNonEmptyEmbeddingLevel":I
    :cond_0
    :goto_0
    :pswitch_0
    iget v4, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v4, :cond_5

    .line 679
    invoke-virtual {p0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->dirTypeBackward()B

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 717
    :pswitch_1
    if-nez v1, :cond_0

    .line 718
    move v1, v0

    goto :goto_0

    .line 681
    :pswitch_2
    if-nez v0, :cond_2

    .line 723
    :cond_1
    :goto_1
    return v2

    .line 684
    :cond_2
    if-nez v1, :cond_0

    .line 685
    move v1, v0

    goto :goto_0

    .line 690
    :pswitch_3
    if-eq v1, v0, :cond_1

    .line 693
    add-int/lit8 v0, v0, -0x1

    .line 694
    goto :goto_0

    .line 697
    :pswitch_4
    if-nez v0, :cond_3

    move v2, v3

    .line 698
    goto :goto_1

    .line 700
    :cond_3
    if-nez v1, :cond_0

    .line 701
    move v1, v0

    goto :goto_0

    .line 706
    :pswitch_5
    if-ne v1, v0, :cond_4

    move v2, v3

    .line 707
    goto :goto_1

    .line 709
    :cond_4
    add-int/lit8 v0, v0, -0x1

    .line 710
    goto :goto_0

    .line 712
    :pswitch_6
    add-int/lit8 v0, v0, 0x1

    .line 713
    goto :goto_0

    .line 723
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 679
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
