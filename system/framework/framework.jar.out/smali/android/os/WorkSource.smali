.class public Landroid/os/WorkSource;
.super Ljava/lang/Object;
.source "WorkSource.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/WorkSource;",
            ">;"
        }
    .end annotation
.end field

.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "WorkSource"

.field static sGoneWork:Landroid/os/WorkSource;

.field static sNewbWork:Landroid/os/WorkSource;

.field static final sTmpWorkSource:Landroid/os/WorkSource;


# instance fields
.field mNames:[Ljava/lang/String;

.field mNum:I

.field mUids:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Landroid/os/WorkSource;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/WorkSource;-><init>(I)V

    sput-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    .line 695
    new-instance v0, Landroid/os/WorkSource$1;

    invoke-direct {v0}, Landroid/os/WorkSource$1;-><init>()V

    sput-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 40
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput v2, p0, Landroid/os/WorkSource;->mNum:I

    .line 64
    const/4 v0, 0x2

    new-array v0, v0, [I

    aput p1, v0, v1

    aput v1, v0, v2

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 66
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    if-nez p2, :cond_0

    .line 71
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Name can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    iput v2, p0, Landroid/os/WorkSource;->mNum:I

    .line 74
    new-array v0, v3, [I

    aput p1, v0, v1

    aput v1, v0, v2

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    .line 75
    new-array v0, v3, [Ljava/lang/String;

    aput-object p2, v0, v1

    const/4 v1, 0x0

    aput-object v1, v0, v2

    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 76
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "orig"    # Landroid/os/WorkSource;

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    if-nez p1, :cond_0

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 59
    :goto_0
    return-void

    .line 51
    :cond_0
    iget v0, p1, Landroid/os/WorkSource;->mNum:I

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 52
    iget-object v0, p1, Landroid/os/WorkSource;->mUids:[I

    if-eqz v0, :cond_2

    .line 53
    iget-object v0, p1, Landroid/os/WorkSource;->mUids:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    .line 54
    iget-object v0, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_1
    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1

    .line 56
    :cond_2
    iput-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 57
    iput-object v1, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    goto :goto_0
.end method

.method private static addWork(Landroid/os/WorkSource;I)Landroid/os/WorkSource;
    .locals 1
    .param p0, "cur"    # Landroid/os/WorkSource;
    .param p1, "newUid"    # I

    .prologue
    .line 444
    if-nez p0, :cond_0

    .line 445
    new-instance p0, Landroid/os/WorkSource;

    .end local p0    # "cur":Landroid/os/WorkSource;
    invoke-direct {p0, p1}, Landroid/os/WorkSource;-><init>(I)V

    .line 448
    :goto_0
    return-object p0

    .line 447
    .restart local p0    # "cur":Landroid/os/WorkSource;
    :cond_0
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    invoke-direct {p0, v0, p1}, Landroid/os/WorkSource;->insert(II)V

    goto :goto_0
.end method

.method private static addWork(Landroid/os/WorkSource;ILjava/lang/String;)Landroid/os/WorkSource;
    .locals 1
    .param p0, "cur"    # Landroid/os/WorkSource;
    .param p1, "newUid"    # I
    .param p2, "newName"    # Ljava/lang/String;

    .prologue
    .line 536
    if-nez p0, :cond_0

    .line 537
    new-instance p0, Landroid/os/WorkSource;

    .end local p0    # "cur":Landroid/os/WorkSource;
    invoke-direct {p0, p1, p2}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    .line 540
    :goto_0
    return-object p0

    .line 539
    .restart local p0    # "cur":Landroid/os/WorkSource;
    :cond_0
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    invoke-direct {p0, v0, p1, p2}, Landroid/os/WorkSource;->insert(IILjava/lang/String;)V

    goto :goto_0
.end method

.method private compare(Landroid/os/WorkSource;II)I
    .locals 3
    .param p1, "other"    # Landroid/os/WorkSource;
    .param p2, "i1"    # I
    .param p3, "i2"    # I

    .prologue
    .line 528
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    aget v1, v1, p2

    iget-object v2, p1, Landroid/os/WorkSource;->mUids:[I

    aget v2, v2, p3

    sub-int v0, v1, v2

    .line 529
    .local v0, "diff":I
    if-eqz v0, :cond_0

    .line 532
    .end local v0    # "diff":I
    :goto_0
    return v0

    .restart local v0    # "diff":I
    :cond_0
    iget-object v1, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aget-object v1, v1, p2

    iget-object v2, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aget-object v2, v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private insert(II)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "uid"    # I

    .prologue
    const/4 v3, 0x0

    .line 607
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    if-nez v1, :cond_0

    .line 608
    const/4 v1, 0x4

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 609
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    aput p2, v1, v3

    .line 610
    const/4 v1, 0x1

    iput v1, p0, Landroid/os/WorkSource;->mNum:I

    .line 629
    :goto_0
    return-void

    .line 611
    :cond_0
    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    iget-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    array-length v2, v2

    if-lt v1, v2, :cond_3

    .line 612
    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    new-array v0, v1, [I

    .line 613
    .local v0, "newuids":[I
    if-lez p1, :cond_1

    .line 614
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    invoke-static {v1, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 616
    :cond_1
    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    if-ge p1, v1, :cond_2

    .line 617
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Landroid/os/WorkSource;->mNum:I

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 619
    :cond_2
    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    .line 620
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    aput p2, v1, p1

    .line 621
    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/os/WorkSource;->mNum:I

    goto :goto_0

    .line 623
    .end local v0    # "newuids":[I
    :cond_3
    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    if-ge p1, v1, :cond_4

    .line 624
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    iget-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Landroid/os/WorkSource;->mNum:I

    sub-int/2addr v4, p1

    invoke-static {v1, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 626
    :cond_4
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    aput p2, v1, p1

    .line 627
    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/os/WorkSource;->mNum:I

    goto :goto_0
.end method

.method private insert(IILjava/lang/String;)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "uid"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 632
    iget-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    if-nez v2, :cond_0

    .line 633
    new-array v2, v3, [I

    iput-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    .line 634
    iget-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    aput p2, v2, v4

    .line 635
    new-array v2, v3, [Ljava/lang/String;

    iput-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 636
    iget-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aput-object p3, v2, v4

    .line 637
    const/4 v2, 0x1

    iput v2, p0, Landroid/os/WorkSource;->mNum:I

    .line 663
    :goto_0
    return-void

    .line 638
    :cond_0
    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    array-length v3, v3

    if-lt v2, v3, :cond_3

    .line 639
    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    new-array v1, v2, [I

    .line 640
    .local v1, "newuids":[I
    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    .line 641
    .local v0, "newnames":[Ljava/lang/String;
    if-lez p1, :cond_1

    .line 642
    iget-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    invoke-static {v2, v4, v1, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 643
    iget-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    invoke-static {v2, v4, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 645
    :cond_1
    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    if-ge p1, v2, :cond_2

    .line 646
    iget-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Landroid/os/WorkSource;->mNum:I

    sub-int/2addr v4, p1

    invoke-static {v2, p1, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 647
    iget-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Landroid/os/WorkSource;->mNum:I

    sub-int/2addr v4, p1

    invoke-static {v2, p1, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 649
    :cond_2
    iput-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 650
    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 651
    iget-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    aput p2, v2, p1

    .line 652
    iget-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aput-object p3, v2, p1

    .line 653
    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/os/WorkSource;->mNum:I

    goto :goto_0

    .line 655
    .end local v0    # "newnames":[Ljava/lang/String;
    .end local v1    # "newuids":[I
    :cond_3
    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    if-ge p1, v2, :cond_4

    .line 656
    iget-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    add-int/lit8 v4, p1, 0x1

    iget v5, p0, Landroid/os/WorkSource;->mNum:I

    sub-int/2addr v5, p1

    invoke-static {v2, p1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 657
    iget-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    iget-object v3, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    add-int/lit8 v4, p1, 0x1

    iget v5, p0, Landroid/os/WorkSource;->mNum:I

    sub-int/2addr v5, p1

    invoke-static {v2, p1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 659
    :cond_4
    iget-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    aput p2, v2, p1

    .line 660
    iget-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aput-object p3, v2, p1

    .line 661
    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/os/WorkSource;->mNum:I

    goto :goto_0
.end method

.method private removeUids(Landroid/os/WorkSource;)Z
    .locals 9
    .param p1, "other"    # Landroid/os/WorkSource;

    .prologue
    .line 358
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 359
    .local v0, "N1":I
    iget-object v5, p0, Landroid/os/WorkSource;->mUids:[I

    .line 360
    .local v5, "uids1":[I
    iget v1, p1, Landroid/os/WorkSource;->mNum:I

    .line 361
    .local v1, "N2":I
    iget-object v6, p1, Landroid/os/WorkSource;->mUids:[I

    .line 362
    .local v6, "uids2":[I
    const/4 v2, 0x0

    .line 363
    .local v2, "changed":Z
    const/4 v3, 0x0

    .local v3, "i1":I
    const/4 v4, 0x0

    .line 365
    .local v4, "i2":I
    :goto_0
    if-ge v3, v0, :cond_3

    if-ge v4, v1, :cond_3

    .line 368
    aget v7, v6, v4

    aget v8, v5, v3

    if-ne v7, v8, :cond_1

    .line 371
    add-int/lit8 v0, v0, -0x1

    .line 372
    const/4 v2, 0x1

    .line 373
    if-ge v3, v0, :cond_0

    add-int/lit8 v7, v3, 0x1

    sub-int v8, v0, v3

    invoke-static {v5, v7, v5, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 374
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 375
    :cond_1
    aget v7, v6, v4

    aget v8, v5, v3

    if-le v7, v8, :cond_2

    .line 377
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 380
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 384
    :cond_3
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 386
    return v2
.end method

.method private removeUidsAndNames(Landroid/os/WorkSource;)Z
    .locals 11
    .param p1, "other"    # Landroid/os/WorkSource;

    .prologue
    .line 390
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 391
    .local v0, "N1":I
    iget-object v7, p0, Landroid/os/WorkSource;->mUids:[I

    .line 392
    .local v7, "uids1":[I
    iget-object v5, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 393
    .local v5, "names1":[Ljava/lang/String;
    iget v1, p1, Landroid/os/WorkSource;->mNum:I

    .line 394
    .local v1, "N2":I
    iget-object v8, p1, Landroid/os/WorkSource;->mUids:[I

    .line 395
    .local v8, "uids2":[I
    iget-object v6, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 396
    .local v6, "names2":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 397
    .local v2, "changed":Z
    const/4 v3, 0x0

    .local v3, "i1":I
    const/4 v4, 0x0

    .line 399
    .local v4, "i2":I
    :goto_0
    if-ge v3, v0, :cond_4

    if-ge v4, v1, :cond_4

    .line 402
    aget v9, v8, v4

    aget v10, v7, v3

    if-ne v9, v10, :cond_1

    aget-object v9, v6, v4

    aget-object v10, v5, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 405
    add-int/lit8 v0, v0, -0x1

    .line 406
    const/4 v2, 0x1

    .line 407
    if-ge v3, v0, :cond_0

    .line 408
    add-int/lit8 v9, v3, 0x1

    sub-int v10, v0, v3

    invoke-static {v7, v9, v7, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 409
    add-int/lit8 v9, v3, 0x1

    sub-int v10, v0, v3

    invoke-static {v5, v9, v5, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 411
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 412
    :cond_1
    aget v9, v8, v4

    aget v10, v7, v3

    if-gt v9, v10, :cond_2

    aget v9, v8, v4

    aget v10, v7, v3

    if-ne v9, v10, :cond_3

    aget-object v9, v6, v4

    aget-object v10, v5, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_3

    .line 415
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 418
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 422
    :cond_4
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 424
    return v2
.end method

.method private updateLocked(Landroid/os/WorkSource;ZZ)Z
    .locals 3
    .param p1, "other"    # Landroid/os/WorkSource;
    .param p2, "set"    # Z
    .param p3, "returnNewbs"    # Z

    .prologue
    .line 428
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 429
    invoke-direct {p0, p1, p2, p3}, Landroid/os/WorkSource;->updateUidsLocked(Landroid/os/WorkSource;ZZ)Z

    move-result v0

    .line 439
    :goto_0
    return v0

    .line 431
    :cond_0
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    if-lez v0, :cond_1

    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 432
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Other "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has names, but target "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    :cond_1
    iget v0, p1, Landroid/os/WorkSource;->mNum:I

    if-lez v0, :cond_2

    iget-object v0, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-nez v0, :cond_2

    .line 436
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Target "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has names, but other "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroid/os/WorkSource;->updateUidsAndNamesLocked(Landroid/os/WorkSource;ZZ)Z

    move-result v0

    goto :goto_0
.end method

.method private updateUidsAndNamesLocked(Landroid/os/WorkSource;ZZ)Z
    .locals 11
    .param p1, "other"    # Landroid/os/WorkSource;
    .param p2, "set"    # Z
    .param p3, "returnNewbs"    # Z

    .prologue
    .line 544
    iget v0, p1, Landroid/os/WorkSource;->mNum:I

    .line 545
    .local v0, "N2":I
    iget-object v7, p1, Landroid/os/WorkSource;->mUids:[I

    .line 546
    .local v7, "uids2":[I
    iget-object v5, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 547
    .local v5, "names2":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 548
    .local v1, "changed":Z
    const/4 v3, 0x0

    .local v3, "i1":I
    const/4 v4, 0x0

    .line 551
    .local v4, "i2":I
    :cond_0
    :goto_0
    iget v8, p0, Landroid/os/WorkSource;->mNum:I

    if-lt v3, v8, :cond_1

    if-ge v4, v0, :cond_b

    .line 554
    :cond_1
    const/4 v2, -0x1

    .line 555
    .local v2, "diff":I
    iget v8, p0, Landroid/os/WorkSource;->mNum:I

    if-ge v3, v8, :cond_2

    if-ge v4, v0, :cond_4

    invoke-direct {p0, p1, v3, v4}, Landroid/os/WorkSource;->compare(Landroid/os/WorkSource;II)I

    move-result v2

    if-lez v2, :cond_4

    .line 557
    :cond_2
    const/4 v1, 0x1

    .line 560
    aget v8, v7, v4

    aget-object v9, v5, v4

    invoke-direct {p0, v3, v8, v9}, Landroid/os/WorkSource;->insert(IILjava/lang/String;)V

    .line 561
    if-eqz p3, :cond_3

    .line 562
    sget-object v8, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    aget v9, v7, v4

    aget-object v10, v5, v4

    invoke-static {v8, v9, v10}, Landroid/os/WorkSource;->addWork(Landroid/os/WorkSource;ILjava/lang/String;)Landroid/os/WorkSource;

    move-result-object v8

    sput-object v8, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    .line 564
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 565
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 567
    :cond_4
    if-nez p2, :cond_6

    .line 569
    if-ge v4, v0, :cond_5

    if-nez v2, :cond_5

    .line 570
    add-int/lit8 v4, v4, 0x1

    .line 572
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 575
    :cond_6
    move v6, v3

    .line 576
    .local v6, "start":I
    :goto_1
    if-gez v2, :cond_7

    .line 579
    sget-object v8, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    iget-object v9, p0, Landroid/os/WorkSource;->mUids:[I

    aget v9, v9, v3

    iget-object v10, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-static {v8, v9, v10}, Landroid/os/WorkSource;->addWork(Landroid/os/WorkSource;ILjava/lang/String;)Landroid/os/WorkSource;

    move-result-object v8

    sput-object v8, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    .line 580
    add-int/lit8 v3, v3, 0x1

    .line 581
    iget v8, p0, Landroid/os/WorkSource;->mNum:I

    if-lt v3, v8, :cond_9

    .line 586
    :cond_7
    if-ge v6, v3, :cond_8

    .line 587
    iget-object v8, p0, Landroid/os/WorkSource;->mUids:[I

    iget-object v9, p0, Landroid/os/WorkSource;->mUids:[I

    iget v10, p0, Landroid/os/WorkSource;->mNum:I

    sub-int/2addr v10, v3

    invoke-static {v8, v3, v9, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 588
    iget-object v8, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    iget-object v9, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    iget v10, p0, Landroid/os/WorkSource;->mNum:I

    sub-int/2addr v10, v3

    invoke-static {v8, v3, v9, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 589
    iget v8, p0, Landroid/os/WorkSource;->mNum:I

    sub-int v9, v3, v6

    sub-int/2addr v8, v9

    iput v8, p0, Landroid/os/WorkSource;->mNum:I

    .line 590
    move v3, v6

    .line 593
    :cond_8
    iget v8, p0, Landroid/os/WorkSource;->mNum:I

    if-ge v3, v8, :cond_0

    if-nez v2, :cond_0

    .line 595
    add-int/lit8 v3, v3, 0x1

    .line 596
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 584
    :cond_9
    if-ge v4, v0, :cond_a

    invoke-direct {p0, p1, v3, v4}, Landroid/os/WorkSource;->compare(Landroid/os/WorkSource;II)I

    move-result v2

    :goto_2
    goto :goto_1

    :cond_a
    const/4 v2, -0x1

    goto :goto_2

    .line 602
    .end local v2    # "diff":I
    .end local v6    # "start":I
    :cond_b
    return v1
.end method

.method private updateUidsLocked(Landroid/os/WorkSource;ZZ)Z
    .locals 12
    .param p1, "other"    # Landroid/os/WorkSource;
    .param p2, "set"    # Z
    .param p3, "returnNewbs"    # Z

    .prologue
    const/4 v11, 0x0

    .line 452
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 453
    .local v0, "N1":I
    iget-object v7, p0, Landroid/os/WorkSource;->mUids:[I

    .line 454
    .local v7, "uids1":[I
    iget v1, p1, Landroid/os/WorkSource;->mNum:I

    .line 455
    .local v1, "N2":I
    iget-object v8, p1, Landroid/os/WorkSource;->mUids:[I

    .line 456
    .local v8, "uids2":[I
    const/4 v2, 0x0

    .line 457
    .local v2, "changed":Z
    const/4 v3, 0x0

    .local v3, "i1":I
    const/4 v4, 0x0

    .line 460
    .local v4, "i2":I
    :cond_0
    :goto_0
    if-lt v3, v0, :cond_1

    if-ge v4, v1, :cond_f

    .line 463
    :cond_1
    if-ge v3, v0, :cond_2

    if-ge v4, v1, :cond_9

    aget v9, v8, v4

    aget v10, v7, v3

    if-ge v9, v10, :cond_9

    .line 467
    :cond_2
    const/4 v2, 0x1

    .line 468
    if-nez v7, :cond_4

    .line 469
    const/4 v9, 0x4

    new-array v7, v9, [I

    .line 470
    aget v9, v8, v4

    aput v9, v7, v11

    .line 481
    :goto_1
    if-eqz p3, :cond_3

    .line 482
    sget-object v9, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    aget v10, v8, v4

    invoke-static {v9, v10}, Landroid/os/WorkSource;->addWork(Landroid/os/WorkSource;I)Landroid/os/WorkSource;

    move-result-object v9

    sput-object v9, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    .line 484
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 485
    add-int/lit8 v3, v3, 0x1

    .line 486
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 471
    :cond_4
    array-length v9, v7

    if-lt v0, v9, :cond_7

    .line 472
    array-length v9, v7

    mul-int/lit8 v9, v9, 0x3

    div-int/lit8 v9, v9, 0x2

    new-array v5, v9, [I

    .line 473
    .local v5, "newuids":[I
    if-lez v3, :cond_5

    invoke-static {v7, v11, v5, v11, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 474
    :cond_5
    if-ge v3, v0, :cond_6

    add-int/lit8 v9, v3, 0x1

    sub-int v10, v0, v3

    invoke-static {v7, v3, v5, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 475
    :cond_6
    move-object v7, v5

    .line 476
    aget v9, v8, v4

    aput v9, v7, v3

    goto :goto_1

    .line 478
    .end local v5    # "newuids":[I
    :cond_7
    if-ge v3, v0, :cond_8

    add-int/lit8 v9, v3, 0x1

    sub-int v10, v0, v3

    invoke-static {v7, v3, v7, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 479
    :cond_8
    aget v9, v8, v4

    aput v9, v7, v3

    goto :goto_1

    .line 488
    :cond_9
    if-nez p2, :cond_b

    .line 491
    if-ge v4, v1, :cond_a

    aget v9, v8, v4

    aget v10, v7, v3

    if-ne v9, v10, :cond_a

    .line 492
    add-int/lit8 v4, v4, 0x1

    .line 494
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 497
    :cond_b
    move v6, v3

    .line 498
    .local v6, "start":I
    :goto_2
    if-ge v3, v0, :cond_d

    if-ge v4, v1, :cond_c

    aget v9, v8, v4

    aget v10, v7, v3

    if-le v9, v10, :cond_d

    .line 500
    :cond_c
    sget-object v9, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    aget v10, v7, v3

    invoke-static {v9, v10}, Landroid/os/WorkSource;->addWork(Landroid/os/WorkSource;I)Landroid/os/WorkSource;

    move-result-object v9

    sput-object v9, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    .line 501
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 503
    :cond_d
    if-ge v6, v3, :cond_e

    .line 504
    sub-int v9, v0, v3

    invoke-static {v7, v3, v7, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 505
    sub-int v9, v3, v6

    sub-int/2addr v0, v9

    .line 506
    move v3, v6

    .line 509
    :cond_e
    if-ge v3, v0, :cond_0

    if-ge v4, v1, :cond_0

    aget v9, v8, v4

    aget v10, v7, v3

    if-ne v9, v10, :cond_0

    .line 511
    add-int/lit8 v3, v3, 0x1

    .line 512
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 518
    .end local v6    # "start":I
    :cond_f
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 519
    iput-object v7, p0, Landroid/os/WorkSource;->mUids:[I

    .line 521
    return v2
.end method


# virtual methods
.method public add(I)Z
    .locals 5
    .param p1, "uid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 267
    iget v3, p0, Landroid/os/WorkSource;->mNum:I

    if-gtz v3, :cond_0

    .line 268
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 269
    invoke-direct {p0, v2, p1}, Landroid/os/WorkSource;->insert(II)V

    .line 281
    :goto_0
    return v1

    .line 272
    :cond_0
    iget-object v3, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 273
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding without name to named "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 275
    :cond_1
    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    iget v4, p0, Landroid/os/WorkSource;->mNum:I

    invoke-static {v3, v2, v4, p1}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v0

    .line 277
    .local v0, "i":I
    if-ltz v0, :cond_2

    move v1, v2

    .line 278
    goto :goto_0

    .line 280
    :cond_2
    neg-int v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v2, p1}, Landroid/os/WorkSource;->insert(II)V

    goto :goto_0
.end method

.method public add(ILjava/lang/String;)Z
    .locals 5
    .param p1, "uid"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 286
    iget v4, p0, Landroid/os/WorkSource;->mNum:I

    if-gtz v4, :cond_0

    .line 287
    invoke-direct {p0, v3, p1, p2}, Landroid/os/WorkSource;->insert(IILjava/lang/String;)V

    .line 309
    :goto_0
    return v2

    .line 290
    :cond_0
    iget-object v4, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-nez v4, :cond_1

    .line 291
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding name to unnamed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 294
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v4, p0, Landroid/os/WorkSource;->mNum:I

    if-ge v1, v4, :cond_2

    .line 295
    iget-object v4, p0, Landroid/os/WorkSource;->mUids:[I

    aget v4, v4, v1

    if-le v4, p1, :cond_3

    .line 308
    :cond_2
    invoke-direct {p0, v1, p1, p2}, Landroid/os/WorkSource;->insert(IILjava/lang/String;)V

    goto :goto_0

    .line 298
    :cond_3
    iget-object v4, p0, Landroid/os/WorkSource;->mUids:[I

    aget v4, v4, v1

    if-ne v4, p1, :cond_4

    .line 299
    iget-object v4, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v4, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 300
    .local v0, "diff":I
    if-gtz v0, :cond_2

    .line 303
    if-nez v0, :cond_4

    move v2, v3

    .line 304
    goto :goto_0

    .line 294
    .end local v0    # "diff":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public add(Landroid/os/WorkSource;)Z
    .locals 3
    .param p1, "other"    # Landroid/os/WorkSource;

    .prologue
    .line 251
    sget-object v1, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    monitor-enter v1

    .line 252
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0, v2}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addReturningNewbs(I)Landroid/os/WorkSource;
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 314
    sget-object v1, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    monitor-enter v1

    .line 315
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    .line 316
    sget-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    iget-object v0, v0, Landroid/os/WorkSource;->mUids:[I

    const/4 v2, 0x0

    aput p1, v0, v2

    .line 317
    sget-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v2, v3}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    .line 318
    sget-object v0, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    monitor-exit v1

    return-object v0

    .line 319
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addReturningNewbs(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .locals 3
    .param p1, "other"    # Landroid/os/WorkSource;

    .prologue
    .line 258
    sget-object v1, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    monitor-enter v1

    .line 259
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    .line 260
    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v2}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    .line 261
    sget-object v0, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    monitor-exit v1

    return-object v0

    .line 262
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 128
    return-void
.end method

.method public clearNames()V
    .locals 6

    .prologue
    .line 106
    iget-object v3, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 107
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 109
    const/4 v0, 0x1

    .line 110
    .local v0, "destIndex":I
    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    .line 111
    .local v1, "newNum":I
    const/4 v2, 0x1

    .local v2, "sourceIndex":I
    :goto_0
    iget v3, p0, Landroid/os/WorkSource;->mNum:I

    if-ge v2, v3, :cond_1

    .line 112
    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    aget v3, v3, v2

    iget-object v4, p0, Landroid/os/WorkSource;->mUids:[I

    add-int/lit8 v5, v2, -0x1

    aget v4, v4, v5

    if-ne v3, v4, :cond_0

    .line 113
    add-int/lit8 v1, v1, -0x1

    .line 111
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 115
    :cond_0
    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    iget-object v4, p0, Landroid/os/WorkSource;->mUids:[I

    aget v4, v4, v2

    aput v4, v3, v0

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 119
    :cond_1
    iput v1, p0, Landroid/os/WorkSource;->mNum:I

    .line 121
    .end local v0    # "destIndex":I
    .end local v1    # "newNum":I
    .end local v2    # "sourceIndex":I
    :cond_2
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 667
    const/4 v0, 0x0

    return v0
.end method

.method public diff(Landroid/os/WorkSource;)Z
    .locals 9
    .param p1, "other"    # Landroid/os/WorkSource;

    .prologue
    const/4 v6, 0x1

    .line 155
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 156
    .local v0, "N":I
    iget v7, p1, Landroid/os/WorkSource;->mNum:I

    if-eq v0, v7, :cond_1

    .line 171
    :cond_0
    :goto_0
    return v6

    .line 159
    :cond_1
    iget-object v4, p0, Landroid/os/WorkSource;->mUids:[I

    .line 160
    .local v4, "uids1":[I
    iget-object v5, p1, Landroid/os/WorkSource;->mUids:[I

    .line 161
    .local v5, "uids2":[I
    iget-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 162
    .local v2, "names1":[Ljava/lang/String;
    iget-object v3, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 163
    .local v3, "names2":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 164
    aget v7, v4, v1

    aget v8, v5, v1

    if-ne v7, v8, :cond_0

    .line 167
    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    aget-object v7, v2, v1

    aget-object v8, v3, v1

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 163
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 171
    :cond_3
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 132
    instance-of v0, p1, Landroid/os/WorkSource;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/os/WorkSource;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/WorkSource;->diff(Landroid/os/WorkSource;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 91
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    aget v0, v0, p1

    return v0
.end method

.method public getName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 96
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 137
    const/4 v1, 0x0

    .line 138
    .local v1, "result":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    if-ge v0, v2, :cond_0

    .line 139
    shl-int/lit8 v2, v1, 0x4

    ushr-int/lit8 v3, v1, 0x1c

    or-int/2addr v2, v3

    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    aget v3, v3, v0

    xor-int v1, v2, v3

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    :cond_0
    iget-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 142
    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    if-ge v0, v2, :cond_1

    .line 143
    shl-int/lit8 v2, v1, 0x4

    ushr-int/lit8 v3, v1, 0x1c

    or-int/2addr v2, v3

    iget-object v3, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int v1, v2, v3

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 146
    :cond_1
    return v1
.end method

.method public remove(Landroid/os/WorkSource;)Z
    .locals 3
    .param p1, "other"    # Landroid/os/WorkSource;

    .prologue
    .line 323
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    if-lez v0, :cond_0

    iget v0, p1, Landroid/os/WorkSource;->mNum:I

    if-gtz v0, :cond_1

    .line 324
    :cond_0
    const/4 v0, 0x0

    .line 337
    :goto_0
    return v0

    .line 326
    :cond_1
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-nez v0, :cond_2

    .line 327
    invoke-direct {p0, p1}, Landroid/os/WorkSource;->removeUids(Landroid/os/WorkSource;)Z

    move-result v0

    goto :goto_0

    .line 329
    :cond_2
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-nez v0, :cond_3

    .line 330
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Other "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has names, but target "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_3
    iget-object v0, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-nez v0, :cond_4

    .line 334
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Target "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has names, but other "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_4
    invoke-direct {p0, p1}, Landroid/os/WorkSource;->removeUidsAndNames(Landroid/os/WorkSource;)Z

    move-result v0

    goto :goto_0
.end method

.method public set(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 208
    const/4 v0, 0x1

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 209
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    .line 210
    :cond_0
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 212
    return-void
.end method

.method public set(ILjava/lang/String;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 216
    if-nez p2, :cond_0

    .line 217
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Name can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 220
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    if-nez v0, :cond_1

    .line 221
    new-array v0, v2, [I

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    .line 222
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 224
    :cond_1
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    aput p1, v0, v1

    .line 225
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aput-object p2, v0, v1

    .line 226
    return-void
.end method

.method public set(Landroid/os/WorkSource;)V
    .locals 5
    .param p1, "other"    # Landroid/os/WorkSource;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 180
    if-nez p1, :cond_0

    .line 181
    iput v3, p0, Landroid/os/WorkSource;->mNum:I

    .line 204
    :goto_0
    return-void

    .line 184
    :cond_0
    iget v0, p1, Landroid/os/WorkSource;->mNum:I

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 185
    iget-object v0, p1, Landroid/os/WorkSource;->mUids:[I

    if-eqz v0, :cond_4

    .line 186
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    array-length v0, v0

    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    if-lt v0, v1, :cond_1

    .line 187
    iget-object v0, p1, Landroid/os/WorkSource;->mUids:[I

    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    :goto_1
    iget-object v0, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 192
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    array-length v0, v0

    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    if-lt v0, v1, :cond_2

    .line 193
    iget-object v0, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    iget-object v1, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 189
    :cond_1
    iget-object v0, p1, Landroid/os/WorkSource;->mUids:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    goto :goto_1

    .line 195
    :cond_2
    iget-object v0, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    goto :goto_0

    .line 198
    :cond_3
    iput-object v4, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    goto :goto_0

    .line 201
    :cond_4
    iput-object v4, p0, Landroid/os/WorkSource;->mUids:[I

    .line 202
    iput-object v4, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    goto :goto_0
.end method

.method public setReturningDiffs(Landroid/os/WorkSource;)[Landroid/os/WorkSource;
    .locals 4
    .param p1, "other"    # Landroid/os/WorkSource;

    .prologue
    const/4 v0, 0x0

    .line 230
    sget-object v2, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    monitor-enter v2

    .line 231
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    .line 232
    const/4 v1, 0x0

    sput-object v1, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    .line 233
    const/4 v1, 0x1

    const/4 v3, 0x1

    invoke-direct {p0, p1, v1, v3}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    .line 234
    sget-object v1, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    if-eqz v1, :cond_1

    .line 235
    :cond_0
    const/4 v1, 0x2

    new-array v0, v1, [Landroid/os/WorkSource;

    .line 236
    .local v0, "diffs":[Landroid/os/WorkSource;
    const/4 v1, 0x0

    sget-object v3, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    aput-object v3, v0, v1

    .line 237
    const/4 v1, 0x1

    sget-object v3, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    aput-object v3, v0, v1

    .line 238
    monitor-exit v2

    .line 240
    .end local v0    # "diffs":[Landroid/os/WorkSource;
    :goto_0
    return-object v0

    :cond_1
    monitor-exit v2

    goto :goto_0

    .line 241
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    return v0
.end method

.method public stripNames()Landroid/os/WorkSource;
    .locals 5

    .prologue
    .line 343
    iget v4, p0, Landroid/os/WorkSource;->mNum:I

    if-gtz v4, :cond_1

    .line 344
    new-instance v2, Landroid/os/WorkSource;

    invoke-direct {v2}, Landroid/os/WorkSource;-><init>()V

    .line 354
    :cond_0
    return-object v2

    .line 346
    :cond_1
    new-instance v2, Landroid/os/WorkSource;

    invoke-direct {v2}, Landroid/os/WorkSource;-><init>()V

    .line 347
    .local v2, "result":Landroid/os/WorkSource;
    const/4 v1, -0x1

    .line 348
    .local v1, "lastUid":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Landroid/os/WorkSource;->mNum:I

    if-ge v0, v4, :cond_0

    .line 349
    iget-object v4, p0, Landroid/os/WorkSource;->mUids:[I

    aget v3, v4, v0

    .line 350
    .local v3, "uid":I
    if-eqz v0, :cond_2

    if-eq v1, v3, :cond_3

    .line 351
    :cond_2
    invoke-virtual {v2, v3}, Landroid/os/WorkSource;->add(I)Z

    .line 348
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 679
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 680
    .local v1, "result":Ljava/lang/StringBuilder;
    const-string v2, "WorkSource{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    if-ge v0, v2, :cond_2

    .line 682
    if-eqz v0, :cond_0

    .line 683
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    :cond_0
    iget-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 686
    iget-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 687
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    iget-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 691
    :cond_2
    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 672
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 673
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 674
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 675
    return-void
.end method
