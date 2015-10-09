.class public Landroid/renderscript/Mesh$TriangleMeshBuilder;
.super Ljava/lang/Object;
.source "Mesh.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Mesh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TriangleMeshBuilder"
.end annotation


# static fields
.field public static final COLOR:I = 0x1

.field public static final NORMAL:I = 0x2

.field public static final TEXTURE_0:I = 0x100


# instance fields
.field mA:F

.field mB:F

.field mElement:Landroid/renderscript/Element;

.field mFlags:I

.field mG:F

.field mIndexCount:I

.field mIndexData:[S

.field mMaxIndex:I

.field mNX:F

.field mNY:F

.field mNZ:F

.field mR:F

.field mRS:Landroid/renderscript/RenderScript;

.field mS0:F

.field mT0:F

.field mVtxCount:I

.field mVtxData:[F

.field mVtxSize:I


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;II)V
    .locals 5
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "vtxSize"    # I
    .param p3, "flags"    # I

    .prologue
    const/16 v4, 0x80

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 558
    iput v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mNX:F

    .line 559
    iput v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mNY:F

    .line 560
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mNZ:F

    .line 561
    iput v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mS0:F

    .line 562
    iput v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mT0:F

    .line 563
    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mR:F

    .line 564
    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mG:F

    .line 565
    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mB:F

    .line 566
    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mA:F

    .line 595
    iput-object p1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mRS:Landroid/renderscript/RenderScript;

    .line 596
    iput v3, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    .line 597
    iput v3, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mMaxIndex:I

    .line 598
    iput v3, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexCount:I

    .line 599
    new-array v0, v4, [F

    iput-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    .line 600
    new-array v0, v4, [S

    iput-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexData:[S

    .line 601
    iput p2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxSize:I

    .line 602
    iput p3, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mFlags:I

    .line 604
    const/4 v0, 0x2

    if-lt p2, v0, :cond_0

    const/4 v0, 0x3

    if-le p2, v0, :cond_1

    .line 605
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Vertex size out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 607
    :cond_1
    return-void
.end method

.method private latch()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 618
    iget v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 619
    invoke-direct {p0, v3}, Landroid/renderscript/Mesh$TriangleMeshBuilder;->makeSpace(I)V

    .line 620
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    iget v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mR:F

    aput v2, v0, v1

    .line 621
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    iget v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mG:F

    aput v2, v0, v1

    .line 622
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    iget v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mB:F

    aput v2, v0, v1

    .line 623
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    iget v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mA:F

    aput v2, v0, v1

    .line 625
    :cond_0
    iget v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_1

    .line 626
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/renderscript/Mesh$TriangleMeshBuilder;->makeSpace(I)V

    .line 627
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    iget v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mS0:F

    aput v2, v0, v1

    .line 628
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    iget v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mT0:F

    aput v2, v0, v1

    .line 630
    :cond_1
    iget v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 631
    invoke-direct {p0, v3}, Landroid/renderscript/Mesh$TriangleMeshBuilder;->makeSpace(I)V

    .line 632
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    iget v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mNX:F

    aput v2, v0, v1

    .line 633
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    iget v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mNY:F

    aput v2, v0, v1

    .line 634
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    iget v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mNZ:F

    aput v2, v0, v1

    .line 635
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 637
    :cond_2
    iget v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mMaxIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mMaxIndex:I

    .line 638
    return-void
.end method

.method private makeSpace(I)V
    .locals 4
    .param p1, "count"    # I

    .prologue
    const/4 v3, 0x0

    .line 610
    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/2addr v1, p1

    iget-object v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 611
    iget-object v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [F

    .line 612
    .local v0, "t":[F
    iget-object v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget-object v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 613
    iput-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    .line 615
    .end local v0    # "t":[F
    :cond_0
    return-void
.end method


# virtual methods
.method public addTriangle(III)Landroid/renderscript/Mesh$TriangleMeshBuilder;
    .locals 4
    .param p1, "idx1"    # I
    .param p2, "idx2"    # I
    .param p3, "idx3"    # I

    .prologue
    const/4 v3, 0x0

    .line 756
    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mMaxIndex:I

    if-ge p1, v1, :cond_0

    if-ltz p1, :cond_0

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mMaxIndex:I

    if-ge p2, v1, :cond_0

    if-ltz p2, :cond_0

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mMaxIndex:I

    if-ge p3, v1, :cond_0

    if-gez p3, :cond_1

    .line 759
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Index provided greater than vertex count."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 761
    :cond_1
    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexCount:I

    add-int/lit8 v1, v1, 0x3

    iget-object v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexData:[S

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 762
    iget-object v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexData:[S

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [S

    .line 763
    .local v0, "t":[S
    iget-object v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexData:[S

    iget-object v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexData:[S

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 764
    iput-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexData:[S

    .line 766
    .end local v0    # "t":[S
    :cond_2
    iget-object v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexData:[S

    iget v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexCount:I

    int-to-short v3, p1

    aput-short v3, v1, v2

    .line 767
    iget-object v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexData:[S

    iget v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexCount:I

    int-to-short v3, p2

    aput-short v3, v1, v2

    .line 768
    iget-object v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexData:[S

    iget v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexCount:I

    int-to-short v3, p3

    aput-short v3, v1, v2

    .line 769
    return-object p0
.end method

.method public addVertex(FF)Landroid/renderscript/Mesh$TriangleMeshBuilder;
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v1, 0x2

    .line 651
    iget v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxSize:I

    if-eq v0, v1, :cond_0

    .line 652
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "add mistmatch with declared components."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 654
    :cond_0
    invoke-direct {p0, v1}, Landroid/renderscript/Mesh$TriangleMeshBuilder;->makeSpace(I)V

    .line 655
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    aput p1, v0, v1

    .line 656
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    aput p2, v0, v1

    .line 657
    invoke-direct {p0}, Landroid/renderscript/Mesh$TriangleMeshBuilder;->latch()V

    .line 658
    return-object p0
.end method

.method public addVertex(FFF)Landroid/renderscript/Mesh$TriangleMeshBuilder;
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 673
    iget v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxSize:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 674
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "add mistmatch with declared components."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 676
    :cond_0
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/renderscript/Mesh$TriangleMeshBuilder;->makeSpace(I)V

    .line 677
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    aput p1, v0, v1

    .line 678
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    aput p2, v0, v1

    .line 679
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    aput p3, v0, v1

    .line 680
    iget-object v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    iget v1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxCount:I

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 681
    invoke-direct {p0}, Landroid/renderscript/Mesh$TriangleMeshBuilder;->latch()V

    .line 682
    return-object p0
.end method

.method public create(Z)Landroid/renderscript/Mesh;
    .locals 9
    .param p1, "uploadToBufferObject"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 788
    new-instance v0, Landroid/renderscript/Element$Builder;

    iget-object v4, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v0, v4}, Landroid/renderscript/Element$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 789
    .local v0, "b":Landroid/renderscript/Element$Builder;
    iget-object v4, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mRS:Landroid/renderscript/RenderScript;

    sget-object v5, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    iget v6, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxSize:I

    invoke-static {v4, v5, v6}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v4

    const-string/jumbo v5, "position"

    invoke-virtual {v0, v4, v5}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 792
    iget v4, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mFlags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 793
    iget-object v4, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    const-string v5, "color"

    invoke-virtual {v0, v4, v5}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 795
    :cond_0
    iget v4, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mFlags:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_1

    .line 796
    iget-object v4, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    const-string/jumbo v5, "texture0"

    invoke-virtual {v0, v4, v5}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 798
    :cond_1
    iget v4, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    .line 799
    iget-object v4, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    const-string/jumbo v5, "normal"

    invoke-virtual {v0, v4, v5}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 801
    :cond_2
    invoke-virtual {v0}, Landroid/renderscript/Element$Builder;->create()Landroid/renderscript/Element;

    move-result-object v4

    iput-object v4, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mElement:Landroid/renderscript/Element;

    .line 803
    const/4 v3, 0x1

    .line 804
    .local v3, "usage":I
    if-eqz p1, :cond_3

    .line 805
    or-int/lit8 v3, v3, 0x4

    .line 808
    :cond_3
    new-instance v2, Landroid/renderscript/Mesh$Builder;

    iget-object v4, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v2, v4, v3}, Landroid/renderscript/Mesh$Builder;-><init>(Landroid/renderscript/RenderScript;I)V

    .line 809
    .local v2, "smb":Landroid/renderscript/Mesh$Builder;
    iget-object v4, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mElement:Landroid/renderscript/Element;

    iget v5, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mMaxIndex:I

    invoke-virtual {v2, v4, v5}, Landroid/renderscript/Mesh$Builder;->addVertexType(Landroid/renderscript/Element;I)Landroid/renderscript/Mesh$Builder;

    .line 810
    iget-object v4, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->U16(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    iget v5, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexCount:I

    sget-object v6, Landroid/renderscript/Mesh$Primitive;->TRIANGLE:Landroid/renderscript/Mesh$Primitive;

    invoke-virtual {v2, v4, v5, v6}, Landroid/renderscript/Mesh$Builder;->addIndexSetType(Landroid/renderscript/Element;ILandroid/renderscript/Mesh$Primitive;)Landroid/renderscript/Mesh$Builder;

    .line 812
    invoke-virtual {v2}, Landroid/renderscript/Mesh$Builder;->create()Landroid/renderscript/Mesh;

    move-result-object v1

    .line 814
    .local v1, "sm":Landroid/renderscript/Mesh;
    invoke-virtual {v1, v7}, Landroid/renderscript/Mesh;->getVertexAllocation(I)Landroid/renderscript/Allocation;

    move-result-object v4

    iget v5, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mMaxIndex:I

    iget-object v6, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mVtxData:[F

    invoke-virtual {v4, v7, v5, v6}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(II[F)V

    .line 815
    if-eqz p1, :cond_4

    .line 816
    if-eqz p1, :cond_4

    .line 817
    invoke-virtual {v1, v7}, Landroid/renderscript/Mesh;->getVertexAllocation(I)Landroid/renderscript/Allocation;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/renderscript/Allocation;->syncAll(I)V

    .line 821
    :cond_4
    invoke-virtual {v1, v7}, Landroid/renderscript/Mesh;->getIndexSetAllocation(I)Landroid/renderscript/Allocation;

    move-result-object v4

    iget v5, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexCount:I

    iget-object v6, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mIndexData:[S

    invoke-virtual {v4, v7, v5, v6}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(II[S)V

    .line 822
    if-eqz p1, :cond_5

    .line 823
    invoke-virtual {v1, v7}, Landroid/renderscript/Mesh;->getIndexSetAllocation(I)Landroid/renderscript/Allocation;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/renderscript/Allocation;->syncAll(I)V

    .line 826
    :cond_5
    return-object v1
.end method

.method public setColor(FFFF)Landroid/renderscript/Mesh$TriangleMeshBuilder;
    .locals 2
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .prologue
    .line 735
    iget v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 736
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "add mistmatch with declared components."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 738
    :cond_0
    iput p1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mR:F

    .line 739
    iput p2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mG:F

    .line 740
    iput p3, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mB:F

    .line 741
    iput p4, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mA:F

    .line 742
    return-object p0
.end method

.method public setNormal(FFF)Landroid/renderscript/Mesh$TriangleMeshBuilder;
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 714
    iget v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 715
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "add mistmatch with declared components."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 717
    :cond_0
    iput p1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mNX:F

    .line 718
    iput p2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mNY:F

    .line 719
    iput p3, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mNZ:F

    .line 720
    return-object p0
.end method

.method public setTexture(FF)Landroid/renderscript/Mesh$TriangleMeshBuilder;
    .locals 2
    .param p1, "s"    # F
    .param p2, "t"    # F

    .prologue
    .line 695
    iget v0, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mFlags:I

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_0

    .line 696
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "add mistmatch with declared components."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 698
    :cond_0
    iput p1, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mS0:F

    .line 699
    iput p2, p0, Landroid/renderscript/Mesh$TriangleMeshBuilder;->mT0:F

    .line 700
    return-object p0
.end method
