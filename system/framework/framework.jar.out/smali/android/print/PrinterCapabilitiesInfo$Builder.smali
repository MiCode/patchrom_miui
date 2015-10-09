.class public final Landroid/print/PrinterCapabilitiesInfo$Builder;
.super Ljava/lang/Object;
.source "PrinterCapabilitiesInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrinterCapabilitiesInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mPrototype:Landroid/print/PrinterCapabilitiesInfo;


# direct methods
.method public constructor <init>(Landroid/print/PrinterId;)V
    .locals 2
    .param p1, "printerId"    # Landroid/print/PrinterId;

    .prologue
    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    if-nez p1, :cond_0

    .line 386
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "printerId cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 388
    :cond_0
    new-instance v0, Landroid/print/PrinterCapabilitiesInfo;

    invoke-direct {v0}, Landroid/print/PrinterCapabilitiesInfo;-><init>()V

    iput-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    .line 389
    return-void
.end method

.method private throwIfDefaultAlreadySpecified(I)V
    .locals 2
    .param p1, "propertyIndex"    # I

    .prologue
    .line 542
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    # getter for: Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I
    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->access$100(Landroid/print/PrinterCapabilitiesInfo;)[I

    move-result-object v0

    aget v0, v0, p1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 543
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Default already specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 545
    :cond_0
    return-void
.end method


# virtual methods
.method public addMediaSize(Landroid/print/PrintAttributes$MediaSize;Z)Landroid/print/PrinterCapabilitiesInfo$Builder;
    .locals 4
    .param p1, "mediaSize"    # Landroid/print/PrintAttributes$MediaSize;
    .param p2, "isDefault"    # Z

    .prologue
    const/4 v3, 0x0

    .line 406
    iget-object v1, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    # getter for: Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;
    invoke-static {v1}, Landroid/print/PrinterCapabilitiesInfo;->access$000(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    .line 407
    iget-object v1, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    # setter for: Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;
    invoke-static {v1, v2}, Landroid/print/PrinterCapabilitiesInfo;->access$002(Landroid/print/PrinterCapabilitiesInfo;Ljava/util/List;)Ljava/util/List;

    .line 409
    :cond_0
    iget-object v1, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    # getter for: Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;
    invoke-static {v1}, Landroid/print/PrinterCapabilitiesInfo;->access$000(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 410
    .local v0, "insertionIndex":I
    iget-object v1, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    # getter for: Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;
    invoke-static {v1}, Landroid/print/PrinterCapabilitiesInfo;->access$000(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    if-eqz p2, :cond_1

    .line 412
    invoke-direct {p0, v3}, Landroid/print/PrinterCapabilitiesInfo$Builder;->throwIfDefaultAlreadySpecified(I)V

    .line 413
    iget-object v1, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    # getter for: Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I
    invoke-static {v1}, Landroid/print/PrinterCapabilitiesInfo;->access$100(Landroid/print/PrinterCapabilitiesInfo;)[I

    move-result-object v1

    aput v0, v1, v3

    .line 415
    :cond_1
    return-object p0
.end method

.method public addResolution(Landroid/print/PrintAttributes$Resolution;Z)Landroid/print/PrinterCapabilitiesInfo$Builder;
    .locals 4
    .param p1, "resolution"    # Landroid/print/PrintAttributes$Resolution;
    .param p2, "isDefault"    # Z

    .prologue
    const/4 v3, 0x1

    .line 434
    iget-object v1, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    # getter for: Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;
    invoke-static {v1}, Landroid/print/PrinterCapabilitiesInfo;->access$200(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    .line 435
    iget-object v1, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    # setter for: Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;
    invoke-static {v1, v2}, Landroid/print/PrinterCapabilitiesInfo;->access$202(Landroid/print/PrinterCapabilitiesInfo;Ljava/util/List;)Ljava/util/List;

    .line 437
    :cond_0
    iget-object v1, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    # getter for: Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;
    invoke-static {v1}, Landroid/print/PrinterCapabilitiesInfo;->access$200(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 438
    .local v0, "insertionIndex":I
    iget-object v1, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    # getter for: Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;
    invoke-static {v1}, Landroid/print/PrinterCapabilitiesInfo;->access$200(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    if-eqz p2, :cond_1

    .line 440
    invoke-direct {p0, v3}, Landroid/print/PrinterCapabilitiesInfo$Builder;->throwIfDefaultAlreadySpecified(I)V

    .line 441
    iget-object v1, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    # getter for: Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I
    invoke-static {v1}, Landroid/print/PrinterCapabilitiesInfo;->access$100(Landroid/print/PrinterCapabilitiesInfo;)[I

    move-result-object v1

    aput v0, v1, v3

    .line 443
    :cond_1
    return-object p0
.end method

.method public build()Landroid/print/PrinterCapabilitiesInfo;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 517
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    # getter for: Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;
    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->access$000(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    # getter for: Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;
    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->access$000(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 518
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No media size specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 520
    :cond_1
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    # getter for: Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I
    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->access$100(Landroid/print/PrinterCapabilitiesInfo;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    if-ne v0, v2, :cond_2

    .line 521
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No default media size specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 523
    :cond_2
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    # getter for: Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;
    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->access$200(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    # getter for: Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;
    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->access$200(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 524
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No resolution specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 526
    :cond_4
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    # getter for: Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I
    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->access$100(Landroid/print/PrinterCapabilitiesInfo;)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    if-ne v0, v2, :cond_5

    .line 527
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No default resolution specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 529
    :cond_5
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    # getter for: Landroid/print/PrinterCapabilitiesInfo;->mColorModes:I
    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->access$400(Landroid/print/PrinterCapabilitiesInfo;)I

    move-result v0

    if-nez v0, :cond_6

    .line 530
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No color mode specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 532
    :cond_6
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    # getter for: Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I
    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->access$100(Landroid/print/PrinterCapabilitiesInfo;)[I

    move-result-object v0

    const/4 v1, 0x2

    aget v0, v0, v1

    if-ne v0, v2, :cond_7

    .line 533
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No default color mode specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 535
    :cond_7
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    # getter for: Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;
    invoke-static {v0}, Landroid/print/PrinterCapabilitiesInfo;->access$300(Landroid/print/PrinterCapabilitiesInfo;)Landroid/print/PrintAttributes$Margins;

    move-result-object v0

    if-nez v0, :cond_8

    .line 536
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "margins cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 538
    :cond_8
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    return-object v0
.end method

.method public setColorModes(II)Landroid/print/PrinterCapabilitiesInfo$Builder;
    .locals 4
    .param p1, "colorModes"    # I
    .param p2, "defaultColorMode"    # I

    .prologue
    .line 492
    move v1, p1

    .line 493
    .local v1, "currentModes":I
    :goto_0
    if-lez v1, :cond_0

    .line 494
    const/4 v2, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    shl-int v0, v2, v3

    .line 495
    .local v0, "currentMode":I
    xor-int/lit8 v2, v0, -0x1

    and-int/2addr v1, v2

    .line 496
    invoke-static {v0}, Landroid/print/PrintAttributes;->enforceValidColorMode(I)V

    goto :goto_0

    .line 498
    .end local v0    # "currentMode":I
    :cond_0
    and-int v2, p1, p2

    if-nez v2, :cond_1

    .line 499
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Default color mode not in color modes."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 501
    :cond_1
    invoke-static {p1}, Landroid/print/PrintAttributes;->enforceValidColorMode(I)V

    .line 502
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    # setter for: Landroid/print/PrinterCapabilitiesInfo;->mColorModes:I
    invoke-static {v2, p1}, Landroid/print/PrinterCapabilitiesInfo;->access$402(Landroid/print/PrinterCapabilitiesInfo;I)I

    .line 503
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    # getter for: Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I
    invoke-static {v2}, Landroid/print/PrinterCapabilitiesInfo;->access$100(Landroid/print/PrinterCapabilitiesInfo;)[I

    move-result-object v2

    const/4 v3, 0x2

    aput p2, v2, v3

    .line 504
    return-object p0
.end method

.method public setMinMargins(Landroid/print/PrintAttributes$Margins;)Landroid/print/PrinterCapabilitiesInfo$Builder;
    .locals 2
    .param p1, "margins"    # Landroid/print/PrintAttributes$Margins;

    .prologue
    .line 462
    if-nez p1, :cond_0

    .line 463
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "margins cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    :cond_0
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo$Builder;->mPrototype:Landroid/print/PrinterCapabilitiesInfo;

    # setter for: Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;
    invoke-static {v0, p1}, Landroid/print/PrinterCapabilitiesInfo;->access$302(Landroid/print/PrinterCapabilitiesInfo;Landroid/print/PrintAttributes$Margins;)Landroid/print/PrintAttributes$Margins;

    .line 466
    return-object p0
.end method
