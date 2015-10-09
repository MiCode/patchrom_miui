.class public Landroid/renderscript/Element;
.super Landroid/renderscript/BaseObj;
.source "Element.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Element$1;,
        Landroid/renderscript/Element$Builder;,
        Landroid/renderscript/Element$DataKind;,
        Landroid/renderscript/Element$DataType;
    }
.end annotation


# instance fields
.field mArraySizes:[I

.field mElementNames:[Ljava/lang/String;

.field mElements:[Landroid/renderscript/Element;

.field mKind:Landroid/renderscript/Element$DataKind;

.field mNormalized:Z

.field mOffsetInBytes:[I

.field mSize:I

.field mType:Landroid/renderscript/Element$DataType;

.field mVectorSize:I

.field mVisibleElementMap:[I


# direct methods
.method constructor <init>(ILandroid/renderscript/RenderScript;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 799
    invoke-direct {p0, p1, p2}, Landroid/renderscript/BaseObj;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 800
    return-void
.end method

.method constructor <init>(ILandroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;ZI)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "rs"    # Landroid/renderscript/RenderScript;
    .param p3, "dt"    # Landroid/renderscript/Element$DataType;
    .param p4, "dk"    # Landroid/renderscript/Element$DataKind;
    .param p5, "norm"    # Z
    .param p6, "size"    # I

    .prologue
    .line 780
    invoke-direct {p0, p1, p2}, Landroid/renderscript/BaseObj;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 781
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/renderscript/Element$DataType;

    if-eq p3, v0, :cond_1

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/renderscript/Element$DataType;

    if-eq p3, v0, :cond_1

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/renderscript/Element$DataType;

    if-eq p3, v0, :cond_1

    .line 784
    const/4 v0, 0x3

    if-ne p6, v0, :cond_0

    .line 785
    iget v0, p3, Landroid/renderscript/Element$DataType;->mSize:I

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/renderscript/Element;->mSize:I

    .line 792
    :goto_0
    iput-object p3, p0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    .line 793
    iput-object p4, p0, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    .line 794
    iput-boolean p5, p0, Landroid/renderscript/Element;->mNormalized:Z

    .line 795
    iput p6, p0, Landroid/renderscript/Element;->mVectorSize:I

    .line 796
    return-void

    .line 787
    :cond_0
    iget v0, p3, Landroid/renderscript/Element$DataType;->mSize:I

    mul-int/2addr v0, p6

    iput v0, p0, Landroid/renderscript/Element;->mSize:I

    goto :goto_0

    .line 790
    :cond_1
    iget v0, p3, Landroid/renderscript/Element$DataType;->mSize:I

    iput v0, p0, Landroid/renderscript/Element;->mSize:I

    goto :goto_0
.end method

.method constructor <init>(ILandroid/renderscript/RenderScript;[Landroid/renderscript/Element;[Ljava/lang/String;[I)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "rs"    # Landroid/renderscript/RenderScript;
    .param p3, "e"    # [Landroid/renderscript/Element;
    .param p4, "n"    # [Ljava/lang/String;
    .param p5, "as"    # [I

    .prologue
    .line 763
    invoke-direct {p0, p1, p2}, Landroid/renderscript/BaseObj;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 764
    const/4 v1, 0x0

    iput v1, p0, Landroid/renderscript/Element;->mSize:I

    .line 765
    const/4 v1, 0x1

    iput v1, p0, Landroid/renderscript/Element;->mVectorSize:I

    .line 766
    iput-object p3, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    .line 767
    iput-object p4, p0, Landroid/renderscript/Element;->mElementNames:[Ljava/lang/String;

    .line 768
    iput-object p5, p0, Landroid/renderscript/Element;->mArraySizes:[I

    .line 769
    sget-object v1, Landroid/renderscript/Element$DataType;->NONE:Landroid/renderscript/Element$DataType;

    iput-object v1, p0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    .line 770
    sget-object v1, Landroid/renderscript/Element$DataKind;->USER:Landroid/renderscript/Element$DataKind;

    iput-object v1, p0, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    .line 771
    iget-object v1, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/renderscript/Element;->mOffsetInBytes:[I

    .line 772
    const/4 v0, 0x0

    .local v0, "ct":I
    :goto_0
    iget-object v1, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 773
    iget-object v1, p0, Landroid/renderscript/Element;->mOffsetInBytes:[I

    iget v2, p0, Landroid/renderscript/Element;->mSize:I

    aput v2, v1, v0

    .line 774
    iget v1, p0, Landroid/renderscript/Element;->mSize:I

    iget-object v2, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/renderscript/Element;->mSize:I

    iget-object v3, p0, Landroid/renderscript/Element;->mArraySizes:[I

    aget v3, v3, v0

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p0, Landroid/renderscript/Element;->mSize:I

    .line 772
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 776
    :cond_0
    invoke-direct {p0}, Landroid/renderscript/Element;->updateVisibleSubElements()V

    .line 777
    return-void
.end method

.method public static ALLOCATION(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 413
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ALLOCATION:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 414
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_ALLOCATION:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ALLOCATION:Landroid/renderscript/Element;

    .line 416
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ALLOCATION:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static A_8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 477
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_A_8:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 478
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_A:Landroid/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_A_8:Landroid/renderscript/Element;

    .line 480
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_A_8:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static BOOLEAN(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 308
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_BOOLEAN:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 309
    sget-object v0, Landroid/renderscript/Element$DataType;->BOOLEAN:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_BOOLEAN:Landroid/renderscript/Element;

    .line 311
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_BOOLEAN:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static ELEMENT(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 399
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ELEMENT:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 400
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_ELEMENT:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ELEMENT:Landroid/renderscript/Element;

    .line 402
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ELEMENT:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 385
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F32:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 386
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F32:Landroid/renderscript/Element;

    .line 388
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F32:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 519
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_2:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 520
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_2:Landroid/renderscript/Element;

    .line 522
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_2:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static F32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 526
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_3:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 527
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_3:Landroid/renderscript/Element;

    .line 529
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_3:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 533
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_4:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 534
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_4:Landroid/renderscript/Element;

    .line 536
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_4:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 392
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F64:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 393
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_64:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F64:Landroid/renderscript/Element;

    .line 395
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F64:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 540
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_2:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 541
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_64:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_2:Landroid/renderscript/Element;

    .line 543
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_2:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static F64_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 547
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_3:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 548
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_64:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_3:Landroid/renderscript/Element;

    .line 550
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_3:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static F64_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 554
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_4:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 555
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_64:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_4:Landroid/renderscript/Element;

    .line 557
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_4:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static FONT(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 469
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FONT:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 470
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_FONT:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FONT:Landroid/renderscript/Element;

    .line 472
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FONT:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static I16(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 350
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I16:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 351
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I16:Landroid/renderscript/Element;

    .line 353
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I16:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static I16_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 624
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_2:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 625
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_2:Landroid/renderscript/Element;

    .line 627
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_2:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static I16_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 631
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_3:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 632
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_3:Landroid/renderscript/Element;

    .line 634
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_3:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static I16_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 638
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_4:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 639
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_4:Landroid/renderscript/Element;

    .line 641
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_4:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 364
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I32:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 365
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I32:Landroid/renderscript/Element;

    .line 367
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I32:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static I32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 666
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_2:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 667
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_2:Landroid/renderscript/Element;

    .line 669
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_2:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static I32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 673
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_3:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 674
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_3:Landroid/renderscript/Element;

    .line 676
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_3:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static I32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 680
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_4:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 681
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_4:Landroid/renderscript/Element;

    .line 683
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_4:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static I64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 378
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I64:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 379
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_64:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I64:Landroid/renderscript/Element;

    .line 381
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I64:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static I64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 708
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_2:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 709
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_64:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_2:Landroid/renderscript/Element;

    .line 711
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_2:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static I64_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 715
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_3:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 716
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_64:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_3:Landroid/renderscript/Element;

    .line 718
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_3:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static I64_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 722
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_4:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 723
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_64:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_4:Landroid/renderscript/Element;

    .line 725
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_4:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static I8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 336
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I8:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 337
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I8:Landroid/renderscript/Element;

    .line 339
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I8:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static I8_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 582
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_2:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 583
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_2:Landroid/renderscript/Element;

    .line 585
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_2:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static I8_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 589
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_3:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 590
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_3:Landroid/renderscript/Element;

    .line 592
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_3:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static I8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 596
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_4:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 597
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_4:Landroid/renderscript/Element;

    .line 599
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_4:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static MATRIX4X4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 745
    invoke-static {p0}, Landroid/renderscript/Element;->MATRIX_4X4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    return-object v0
.end method

.method public static MATRIX_2X2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 756
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_2X2:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 757
    sget-object v0, Landroid/renderscript/Element$DataType;->MATRIX_2X2:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_2X2:Landroid/renderscript/Element;

    .line 759
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_2X2:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static MATRIX_3X3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 749
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_3X3:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 750
    sget-object v0, Landroid/renderscript/Element$DataType;->MATRIX_3X3:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_3X3:Landroid/renderscript/Element;

    .line 752
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_3X3:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static MATRIX_4X4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 736
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_4X4:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 737
    sget-object v0, Landroid/renderscript/Element$DataType;->MATRIX_4X4:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_4X4:Landroid/renderscript/Element;

    .line 739
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_4X4:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static MESH(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 434
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MESH:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 435
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_MESH:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MESH:Landroid/renderscript/Element;

    .line 437
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MESH:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static PROGRAM_FRAGMENT(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 441
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_FRAGMENT:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 442
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_PROGRAM_FRAGMENT:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_FRAGMENT:Landroid/renderscript/Element;

    .line 444
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_FRAGMENT:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static PROGRAM_RASTER(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 455
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_RASTER:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 456
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_PROGRAM_RASTER:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_RASTER:Landroid/renderscript/Element;

    .line 458
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_RASTER:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static PROGRAM_STORE(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 462
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_STORE:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 463
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_PROGRAM_STORE:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_STORE:Landroid/renderscript/Element;

    .line 465
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_STORE:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static PROGRAM_VERTEX(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 448
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_VERTEX:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 449
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_PROGRAM_VERTEX:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_VERTEX:Landroid/renderscript/Element;

    .line 451
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_VERTEX:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static RGBA_4444(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 505
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_4444:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 506
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_4444:Landroid/renderscript/Element;

    .line 508
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_4444:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static RGBA_5551(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 498
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_5551:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 499
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_5551:Landroid/renderscript/Element;

    .line 501
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_5551:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 512
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_8888:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 513
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_8888:Landroid/renderscript/Element;

    .line 515
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_8888:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static RGB_565(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 484
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_565:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 485
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_565:Landroid/renderscript/Element;

    .line 487
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_565:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static RGB_888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 491
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_888:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 492
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_888:Landroid/renderscript/Element;

    .line 494
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_888:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static SAMPLER(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 420
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SAMPLER:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 421
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_SAMPLER:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SAMPLER:Landroid/renderscript/Element;

    .line 423
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SAMPLER:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static SCRIPT(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 427
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SCRIPT:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 428
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_SCRIPT:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SCRIPT:Landroid/renderscript/Element;

    .line 430
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SCRIPT:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static TYPE(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 406
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_TYPE:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 407
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_TYPE:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_TYPE:Landroid/renderscript/Element;

    .line 409
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_TYPE:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static U16(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 343
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U16:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 344
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U16:Landroid/renderscript/Element;

    .line 346
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U16:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static U16_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 603
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_2:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 604
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_2:Landroid/renderscript/Element;

    .line 606
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_2:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static U16_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 610
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_3:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 611
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_3:Landroid/renderscript/Element;

    .line 613
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_3:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static U16_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 617
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_4:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 618
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_4:Landroid/renderscript/Element;

    .line 620
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_4:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static U32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 357
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U32:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 358
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_32:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U32:Landroid/renderscript/Element;

    .line 360
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U32:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static U32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 645
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_2:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 646
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_32:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_2:Landroid/renderscript/Element;

    .line 648
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_2:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static U32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 652
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_3:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 653
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_32:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_3:Landroid/renderscript/Element;

    .line 655
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_3:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static U32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 659
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_4:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 660
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_32:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_4:Landroid/renderscript/Element;

    .line 662
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_4:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static U64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 371
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U64:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 372
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_64:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U64:Landroid/renderscript/Element;

    .line 374
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U64:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static U64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 687
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_2:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 688
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_64:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_2:Landroid/renderscript/Element;

    .line 690
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_2:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static U64_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 694
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_3:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 695
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_64:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_3:Landroid/renderscript/Element;

    .line 697
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_3:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static U64_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 701
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_4:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 702
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_64:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_4:Landroid/renderscript/Element;

    .line 704
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_4:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 322
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U8:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 323
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U8:Landroid/renderscript/Element;

    .line 325
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U8:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static U8_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 561
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_2:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 562
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_2:Landroid/renderscript/Element;

    .line 564
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_2:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static U8_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 568
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_3:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 569
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_3:Landroid/renderscript/Element;

    .line 571
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_3:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 575
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_4:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 576
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_4:Landroid/renderscript/Element;

    .line 578
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_4:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static YUV(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 729
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_YUV:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    .line 730
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_YUV:Landroid/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_YUV:Landroid/renderscript/Element;

    .line 732
    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_YUV:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;
    .locals 7
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "dt"    # Landroid/renderscript/Element$DataType;
    .param p2, "dk"    # Landroid/renderscript/Element$DataKind;

    .prologue
    .line 917
    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_L:Landroid/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_A:Landroid/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_LA:Landroid/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_DEPTH:Landroid/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_YUV:Landroid/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_0

    .line 924
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "Unsupported DataKind"

    invoke-direct {v0, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 926
    :cond_0
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    if-eq p1, v0, :cond_1

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    if-eq p1, v0, :cond_1

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/renderscript/Element$DataType;

    if-eq p1, v0, :cond_1

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/renderscript/Element$DataType;

    if-eq p1, v0, :cond_1

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/renderscript/Element$DataType;

    if-eq p1, v0, :cond_1

    .line 931
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "Unsupported DataType"

    invoke-direct {v0, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 933
    :cond_1
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/renderscript/Element$DataType;

    if-ne p1, v0, :cond_2

    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_2

    .line 934
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "Bad kind and type combo"

    invoke-direct {v0, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 936
    :cond_2
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/renderscript/Element$DataType;

    if-ne p1, v0, :cond_3

    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_3

    .line 937
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "Bad kind and type combo"

    invoke-direct {v0, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 939
    :cond_3
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/renderscript/Element$DataType;

    if-ne p1, v0, :cond_4

    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_4

    .line 940
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "Bad kind and type combo"

    invoke-direct {v0, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 942
    :cond_4
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    if-ne p1, v0, :cond_5

    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_DEPTH:Landroid/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_5

    .line 944
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "Bad kind and type combo"

    invoke-direct {v0, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 947
    :cond_5
    const/4 v6, 0x1

    .line 948
    .local v6, "size":I
    sget-object v0, Landroid/renderscript/Element$1;->$SwitchMap$android$renderscript$Element$DataKind:[I

    invoke-virtual {p2}, Landroid/renderscript/Element$DataKind;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 963
    :goto_0
    const/4 v5, 0x1

    .line 964
    .local v5, "norm":Z
    iget v0, p1, Landroid/renderscript/Element$DataType;->mID:I

    iget v2, p2, Landroid/renderscript/Element$DataKind;->mID:I

    invoke-virtual {p0, v0, v2, v5, v6}, Landroid/renderscript/RenderScript;->nElementCreate(IIZI)I

    move-result v1

    .line 965
    .local v1, "id":I
    new-instance v0, Landroid/renderscript/Element;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Landroid/renderscript/Element;-><init>(ILandroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;ZI)V

    return-object v0

    .line 950
    .end local v1    # "id":I
    .end local v5    # "norm":Z
    :pswitch_0
    const/4 v6, 0x2

    .line 951
    goto :goto_0

    .line 953
    :pswitch_1
    const/4 v6, 0x3

    .line 954
    goto :goto_0

    .line 956
    :pswitch_2
    const/4 v6, 0x4

    .line 957
    goto :goto_0

    .line 959
    :pswitch_3
    const/4 v6, 0x2

    goto :goto_0

    .line 948
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;
    .locals 7
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "dt"    # Landroid/renderscript/Element$DataType;

    .prologue
    .line 853
    sget-object v4, Landroid/renderscript/Element$DataKind;->USER:Landroid/renderscript/Element$DataKind;

    .line 854
    .local v4, "dk":Landroid/renderscript/Element$DataKind;
    const/4 v5, 0x0

    .line 855
    .local v5, "norm":Z
    const/4 v6, 0x1

    .line 856
    .local v6, "vecSize":I
    iget v0, p1, Landroid/renderscript/Element$DataType;->mID:I

    iget v2, v4, Landroid/renderscript/Element$DataKind;->mID:I

    invoke-virtual {p0, v0, v2, v5, v6}, Landroid/renderscript/RenderScript;->nElementCreate(IIZI)I

    move-result v1

    .line 857
    .local v1, "id":I
    new-instance v0, Landroid/renderscript/Element;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Landroid/renderscript/Element;-><init>(ILandroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;ZI)V

    return-object v0
.end method

.method public static createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;
    .locals 7
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "dt"    # Landroid/renderscript/Element$DataType;
    .param p2, "size"    # I

    .prologue
    .line 874
    const/4 v0, 0x2

    if-lt p2, v0, :cond_0

    const/4 v0, 0x4

    if-le p2, v0, :cond_1

    .line 875
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "Vector size out of range 2-4."

    invoke-direct {v0, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 878
    :cond_1
    sget-object v0, Landroid/renderscript/Element$1;->$SwitchMap$android$renderscript$Element$DataType:[I

    invoke-virtual {p1}, Landroid/renderscript/Element$DataType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 898
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "Cannot create vector of non-primitive type."

    invoke-direct {v0, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 891
    :pswitch_0
    sget-object v4, Landroid/renderscript/Element$DataKind;->USER:Landroid/renderscript/Element$DataKind;

    .line 892
    .local v4, "dk":Landroid/renderscript/Element$DataKind;
    const/4 v5, 0x0

    .line 893
    .local v5, "norm":Z
    iget v0, p1, Landroid/renderscript/Element$DataType;->mID:I

    iget v2, v4, Landroid/renderscript/Element$DataKind;->mID:I

    invoke-virtual {p0, v0, v2, v5, p2}, Landroid/renderscript/RenderScript;->nElementCreate(IIZI)I

    move-result v1

    .line 894
    .local v1, "id":I
    new-instance v0, Landroid/renderscript/Element;

    move-object v2, p0

    move-object v3, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Landroid/renderscript/Element;-><init>(ILandroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;ZI)V

    return-object v0

    .line 878
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateVisibleSubElements()V
    .locals 8

    .prologue
    const/16 v7, 0x23

    const/4 v6, 0x0

    .line 71
    iget-object v5, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    if-nez v5, :cond_1

    .line 91
    :cond_0
    return-void

    .line 75
    :cond_1
    const/4 v4, 0x0

    .line 76
    .local v4, "noPaddingFieldCount":I
    iget-object v5, p0, Landroid/renderscript/Element;->mElementNames:[Ljava/lang/String;

    array-length v3, v5

    .line 78
    .local v3, "fieldCount":I
    const/4 v0, 0x0

    .local v0, "ct":I
    :goto_0
    if-ge v0, v3, :cond_3

    .line 79
    iget-object v5, p0, Landroid/renderscript/Element;->mElementNames:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_2

    .line 80
    add-int/lit8 v4, v4, 0x1

    .line 78
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_3
    new-array v5, v4, [I

    iput-object v5, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    .line 86
    const/4 v0, 0x0

    const/4 v1, 0x0

    .local v1, "ctNoPadding":I
    move v2, v1

    .end local v1    # "ctNoPadding":I
    .local v2, "ctNoPadding":I
    :goto_1
    if-ge v0, v3, :cond_0

    .line 87
    iget-object v5, p0, Landroid/renderscript/Element;->mElementNames:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_4

    .line 88
    iget-object v5, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "ctNoPadding":I
    .restart local v1    # "ctNoPadding":I
    aput v0, v5, v2

    .line 86
    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    .end local v1    # "ctNoPadding":I
    .restart local v2    # "ctNoPadding":I
    goto :goto_1

    :cond_4
    move v1, v2

    .end local v2    # "ctNoPadding":I
    .restart local v1    # "ctNoPadding":I
    goto :goto_2
.end method


# virtual methods
.method public getBytesSize()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Landroid/renderscript/Element;->mSize:I

    return v0
.end method

.method public getDataKind()Landroid/renderscript/Element$DataKind;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    return-object v0
.end method

.method public getDataType()Landroid/renderscript/Element$DataType;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    return-object v0
.end method

.method public getSubElement(I)Landroid/renderscript/Element;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 228
    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    if-nez v0, :cond_0

    .line 229
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Element contains no sub-elements"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    array-length v0, v0

    if-lt p1, v0, :cond_2

    .line 232
    :cond_1
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Illegal sub-element index"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_2
    iget-object v0, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    iget-object v1, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    aget v1, v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getSubElementArraySize(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 261
    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    if-nez v0, :cond_0

    .line 262
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Element contains no sub-elements"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    array-length v0, v0

    if-lt p1, v0, :cond_2

    .line 265
    :cond_1
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Illegal sub-element index"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_2
    iget-object v0, p0, Landroid/renderscript/Element;->mArraySizes:[I

    iget-object v1, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    aget v1, v1, p1

    aget v0, v0, v1

    return v0
.end method

.method public getSubElementCount()I
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    if-nez v0, :cond_0

    .line 216
    const/4 v0, 0x0

    .line 218
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    array-length v0, v0

    goto :goto_0
.end method

.method public getSubElementName(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 244
    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    if-nez v0, :cond_0

    .line 245
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Element contains no sub-elements"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    array-length v0, v0

    if-lt p1, v0, :cond_2

    .line 248
    :cond_1
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Illegal sub-element index"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_2
    iget-object v0, p0, Landroid/renderscript/Element;->mElementNames:[Ljava/lang/String;

    iget-object v1, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    aget v1, v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getSubElementOffsetBytes(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 277
    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    if-nez v0, :cond_0

    .line 278
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Element contains no sub-elements"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    array-length v0, v0

    if-lt p1, v0, :cond_2

    .line 281
    :cond_1
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Illegal sub-element index"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_2
    iget-object v0, p0, Landroid/renderscript/Element;->mOffsetInBytes:[I

    iget-object v1, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    aget v1, v1, p1

    aget v0, v0, v1

    return v0
.end method

.method public getVectorSize()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Landroid/renderscript/Element;->mVectorSize:I

    return v0
.end method

.method public isCompatible(Landroid/renderscript/Element;)Z
    .locals 3
    .param p1, "e"    # Landroid/renderscript/Element;

    .prologue
    const/4 v0, 0x1

    .line 981
    invoke-virtual {p0, p1}, Landroid/renderscript/Element;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 989
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Landroid/renderscript/Element;->mSize:I

    iget v2, p1, Landroid/renderscript/Element;->mSize:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v2, Landroid/renderscript/Element$DataType;->NONE:Landroid/renderscript/Element$DataType;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    iget-object v2, p1, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    if-ne v1, v2, :cond_2

    iget v1, p0, Landroid/renderscript/Element;->mVectorSize:I

    iget v2, p1, Landroid/renderscript/Element;->mVectorSize:I

    if-eq v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isComplex()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 196
    iget-object v2, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    if-nez v2, :cond_1

    .line 204
    :cond_0
    :goto_0
    return v1

    .line 199
    :cond_1
    const/4 v0, 0x0

    .local v0, "ct":I
    :goto_1
    iget-object v2, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 200
    iget-object v2, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    if-eqz v2, :cond_2

    .line 201
    const/4 v1, 0x1

    goto :goto_0

    .line 199
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method updateFromNative()V
    .locals 13

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 804
    invoke-super {p0}, Landroid/renderscript/BaseObj;->updateFromNative()V

    .line 807
    const/4 v9, 0x5

    new-array v1, v9, [I

    .line 808
    .local v1, "dataBuffer":[I
    iget-object v9, p0, Landroid/renderscript/Element;->mRS:Landroid/renderscript/RenderScript;

    iget-object v12, p0, Landroid/renderscript/Element;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v12}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)I

    move-result v12

    invoke-virtual {v9, v12, v1}, Landroid/renderscript/RenderScript;->nElementGetNativeData(I[I)V

    .line 810
    const/4 v9, 0x2

    aget v9, v1, v9

    if-ne v9, v10, :cond_1

    move v9, v10

    :goto_0
    iput-boolean v9, p0, Landroid/renderscript/Element;->mNormalized:Z

    .line 811
    const/4 v9, 0x3

    aget v9, v1, v9

    iput v9, p0, Landroid/renderscript/Element;->mVectorSize:I

    .line 812
    iput v11, p0, Landroid/renderscript/Element;->mSize:I

    .line 813
    invoke-static {}, Landroid/renderscript/Element$DataType;->values()[Landroid/renderscript/Element$DataType;

    move-result-object v0

    .local v0, "arr$":[Landroid/renderscript/Element$DataType;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_2

    aget-object v3, v0, v5

    .line 814
    .local v3, "dt":Landroid/renderscript/Element$DataType;
    iget v9, v3, Landroid/renderscript/Element$DataType;->mID:I

    aget v12, v1, v11

    if-ne v9, v12, :cond_0

    .line 815
    iput-object v3, p0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    .line 816
    iget-object v9, p0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    iget v9, v9, Landroid/renderscript/Element$DataType;->mSize:I

    iget v12, p0, Landroid/renderscript/Element;->mVectorSize:I

    mul-int/2addr v9, v12

    iput v9, p0, Landroid/renderscript/Element;->mSize:I

    .line 813
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v0    # "arr$":[Landroid/renderscript/Element$DataType;
    .end local v3    # "dt":Landroid/renderscript/Element$DataType;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_1
    move v9, v11

    .line 810
    goto :goto_0

    .line 819
    .restart local v0    # "arr$":[Landroid/renderscript/Element$DataType;
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    :cond_2
    invoke-static {}, Landroid/renderscript/Element$DataKind;->values()[Landroid/renderscript/Element$DataKind;

    move-result-object v0

    .local v0, "arr$":[Landroid/renderscript/Element$DataKind;
    array-length v6, v0

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v6, :cond_4

    aget-object v2, v0, v5

    .line 820
    .local v2, "dk":Landroid/renderscript/Element$DataKind;
    iget v9, v2, Landroid/renderscript/Element$DataKind;->mID:I

    aget v11, v1, v10

    if-ne v9, v11, :cond_3

    .line 821
    iput-object v2, p0, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    .line 819
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 825
    .end local v2    # "dk":Landroid/renderscript/Element$DataKind;
    :cond_4
    const/4 v9, 0x4

    aget v7, v1, v9

    .line 826
    .local v7, "numSubElements":I
    if-lez v7, :cond_5

    .line 827
    new-array v9, v7, [Landroid/renderscript/Element;

    iput-object v9, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    .line 828
    new-array v9, v7, [Ljava/lang/String;

    iput-object v9, p0, Landroid/renderscript/Element;->mElementNames:[Ljava/lang/String;

    .line 829
    new-array v9, v7, [I

    iput-object v9, p0, Landroid/renderscript/Element;->mArraySizes:[I

    .line 830
    new-array v9, v7, [I

    iput-object v9, p0, Landroid/renderscript/Element;->mOffsetInBytes:[I

    .line 832
    new-array v8, v7, [I

    .line 833
    .local v8, "subElementIds":[I
    iget-object v9, p0, Landroid/renderscript/Element;->mRS:Landroid/renderscript/RenderScript;

    iget-object v10, p0, Landroid/renderscript/Element;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v10}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)I

    move-result v10

    iget-object v11, p0, Landroid/renderscript/Element;->mElementNames:[Ljava/lang/String;

    iget-object v12, p0, Landroid/renderscript/Element;->mArraySizes:[I

    invoke-virtual {v9, v10, v8, v11, v12}, Landroid/renderscript/RenderScript;->nElementGetSubElements(I[I[Ljava/lang/String;[I)V

    .line 834
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v7, :cond_5

    .line 835
    iget-object v9, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    new-instance v10, Landroid/renderscript/Element;

    aget v11, v8, v4

    iget-object v12, p0, Landroid/renderscript/Element;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v10, v11, v12}, Landroid/renderscript/Element;-><init>(ILandroid/renderscript/RenderScript;)V

    aput-object v10, v9, v4

    .line 836
    iget-object v9, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    aget-object v9, v9, v4

    invoke-virtual {v9}, Landroid/renderscript/Element;->updateFromNative()V

    .line 837
    iget-object v9, p0, Landroid/renderscript/Element;->mOffsetInBytes:[I

    iget v10, p0, Landroid/renderscript/Element;->mSize:I

    aput v10, v9, v4

    .line 838
    iget v9, p0, Landroid/renderscript/Element;->mSize:I

    iget-object v10, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    aget-object v10, v10, v4

    iget v10, v10, Landroid/renderscript/Element;->mSize:I

    iget-object v11, p0, Landroid/renderscript/Element;->mArraySizes:[I

    aget v11, v11, v4

    mul-int/2addr v10, v11

    add-int/2addr v9, v10

    iput v9, p0, Landroid/renderscript/Element;->mSize:I

    .line 834
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 841
    .end local v4    # "i":I
    .end local v8    # "subElementIds":[I
    :cond_5
    invoke-direct {p0}, Landroid/renderscript/Element;->updateVisibleSubElements()V

    .line 842
    return-void
.end method
