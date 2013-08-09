.class Lcom/android/settings/dirac/DiracEqualizer$EQConfigManager;
.super Ljava/lang/Object;
.source "DiracEqualizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dirac/DiracEqualizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EQConfigManager"
.end annotation


# instance fields
.field private final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/dirac/DiracEqualizer$EQConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    .line 546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 543
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/dirac/DiracEqualizer$EQConfigManager;->mList:Ljava/util/List;

    .line 547
    invoke-direct {p0, p1}, Lcom/android/settings/dirac/DiracEqualizer$EQConfigManager;->loadPresets(Landroid/content/Context;)V

    .line 549
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 550
    .local v1, cr:Landroid/content/ContentResolver;
    iput-object v1, p0, Lcom/android/settings/dirac/DiracEqualizer$EQConfigManager;->mResolver:Landroid/content/ContentResolver;

    .line 552
    #calls: Lcom/android/settings/dirac/DiracEqualizer;->loadIds(Landroid/content/ContentResolver;)[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/dirac/DiracEqualizer;->access$600(Landroid/content/ContentResolver;)[Ljava/lang/String;

    move-result-object v4

    .line 553
    .local v4, ids:[Ljava/lang/String;
    if-nez v4, :cond_1

    .line 563
    :cond_0
    return-void

    .line 557
    :cond_1
    invoke-static {}, Lcom/android/settings/dirac/DiracEqualizer;->access$500()I

    move-result v7

    new-array v6, v7, [F

    .line 558
    .local v6, values:[F
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v3, v0, v2

    .line 559
    .local v3, id:Ljava/lang/String;
    #calls: Lcom/android/settings/dirac/DiracEqualizer;->isCustomId(Ljava/lang/String;)Z
    invoke-static {v3}, Lcom/android/settings/dirac/DiracEqualizer;->access$700(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v1, v3, v6}, Lcom/android/settings/dirac/DiracEqualizer;->loadValues(Landroid/content/ContentResolver;Ljava/lang/String;[F)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 560
    iget-object v7, p0, Lcom/android/settings/dirac/DiracEqualizer$EQConfigManager;->mList:Ljava/util/List;

    new-instance v8, Lcom/android/settings/dirac/DiracEqualizer$EQConfig;

    #calls: Lcom/android/settings/dirac/DiracEqualizer;->getCustomTitle(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/dirac/DiracEqualizer;->access$800(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v8, v3, v9, v6, v10}, Lcom/android/settings/dirac/DiracEqualizer$EQConfig;-><init>(Ljava/lang/String;Ljava/lang/String;[FI)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private loadPresets(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    .line 576
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 577
    .local v2, res:Landroid/content/res/Resources;
    const v5, 0x7f08006a

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 578
    .local v1, names:[Ljava/lang/String;
    const v5, 0x7f080069

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 580
    .local v3, valueStrs:[Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/dirac/DiracEqualizer;->access$500()I

    move-result v5

    new-array v4, v5, [F

    .line 581
    .local v4, values:[F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v5, v1

    if-ge v0, v5, :cond_1

    .line 582
    aget-object v5, v3, v0

    invoke-static {v5, v4}, Lcom/android/settings/dirac/DiracEqualizer;->decode(Ljava/lang/String;[F)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 583
    iget-object v5, p0, Lcom/android/settings/dirac/DiracEqualizer$EQConfigManager;->mList:Ljava/util/List;

    new-instance v6, Lcom/android/settings/dirac/DiracEqualizer$EQConfig;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dirac_eq_preset#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aget-object v8, v1, v0

    const/4 v9, 0x1

    invoke-direct {v6, v7, v8, v4, v9}, Lcom/android/settings/dirac/DiracEqualizer$EQConfig;-><init>(Ljava/lang/String;Ljava/lang/String;[FI)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 581
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 586
    :cond_1
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;[F)Lcom/android/settings/dirac/DiracEqualizer$EQConfig;
    .locals 4
    .parameter "title"
    .parameter "values"

    .prologue
    .line 601
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v2, p2

    invoke-static {}, Lcom/android/settings/dirac/DiracEqualizer;->access$500()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 602
    :cond_0
    const/4 v0, 0x0

    .line 616
    :goto_0
    return-object v0

    .line 605
    :cond_1
    #calls: Lcom/android/settings/dirac/DiracEqualizer;->getCustomId(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1}, Lcom/android/settings/dirac/DiracEqualizer;->access$1100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 606
    .local v1, id:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/settings/dirac/DiracEqualizer$EQConfigManager;->findById(Ljava/lang/String;)Lcom/android/settings/dirac/DiracEqualizer$EQConfig;

    move-result-object v0

    .line 607
    .local v0, c:Lcom/android/settings/dirac/DiracEqualizer$EQConfig;
    if-eqz v0, :cond_2

    .line 608
    invoke-virtual {v0, p2}, Lcom/android/settings/dirac/DiracEqualizer$EQConfig;->updateValues([F)V

    .line 615
    :goto_1
    iget-object v2, p0, Lcom/android/settings/dirac/DiracEqualizer$EQConfigManager;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v0}, Lcom/android/settings/dirac/DiracEqualizer;->persistValues(Landroid/content/ContentResolver;Lcom/android/settings/dirac/DiracEqualizer$EQConfig;)V

    goto :goto_0

    .line 610
    :cond_2
    new-instance v0, Lcom/android/settings/dirac/DiracEqualizer$EQConfig;

    .end local v0           #c:Lcom/android/settings/dirac/DiracEqualizer$EQConfig;
    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/android/settings/dirac/DiracEqualizer$EQConfig;-><init>(Ljava/lang/String;Ljava/lang/String;[FI)V

    .line 611
    .restart local v0       #c:Lcom/android/settings/dirac/DiracEqualizer$EQConfig;
    iget-object v2, p0, Lcom/android/settings/dirac/DiracEqualizer$EQConfigManager;->mList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    iget-object v2, p0, Lcom/android/settings/dirac/DiracEqualizer$EQConfigManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/settings/dirac/DiracEqualizer$EQConfigManager;->mList:Ljava/util/List;

    #calls: Lcom/android/settings/dirac/DiracEqualizer;->persistIds(Landroid/content/ContentResolver;Ljava/util/List;)V
    invoke-static {v2, v3}, Lcom/android/settings/dirac/DiracEqualizer;->access$900(Landroid/content/ContentResolver;Ljava/util/List;)V

    goto :goto_1
.end method

.method public findById(Ljava/lang/String;)Lcom/android/settings/dirac/DiracEqualizer$EQConfig;
    .locals 3
    .parameter "id"

    .prologue
    .line 653
    if-eqz p1, :cond_1

    .line 654
    iget-object v2, p0, Lcom/android/settings/dirac/DiracEqualizer$EQConfigManager;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dirac/DiracEqualizer$EQConfig;

    .line 655
    .local v0, c:Lcom/android/settings/dirac/DiracEqualizer$EQConfig;
    iget-object v2, v0, Lcom/android/settings/dirac/DiracEqualizer$EQConfig;->mId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 661
    .end local v0           #c:Lcom/android/settings/dirac/DiracEqualizer$EQConfig;
    .end local v1           #i$:Ljava/util/Iterator;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findByTitle(Ljava/lang/String;)Lcom/android/settings/dirac/DiracEqualizer$EQConfig;
    .locals 1
    .parameter "title"

    .prologue
    .line 649
    #calls: Lcom/android/settings/dirac/DiracEqualizer;->getCustomId(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1}, Lcom/android/settings/dirac/DiracEqualizer;->access$1100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/dirac/DiracEqualizer$EQConfigManager;->findById(Ljava/lang/String;)Lcom/android/settings/dirac/DiracEqualizer$EQConfig;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Lcom/android/settings/dirac/DiracEqualizer$EQConfig;
    .locals 1
    .parameter "index"

    .prologue
    .line 624
    if-gez p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/dirac/DiracEqualizer$EQConfigManager;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 625
    const/4 v0, 0x0

    .line 628
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/dirac/DiracEqualizer$EQConfigManager;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dirac/DiracEqualizer$EQConfig;

    goto :goto_0
.end method

.method public getDefaultConfig()Lcom/android/settings/dirac/DiracEqualizer$EQConfig;
    .locals 2

    .prologue
    .line 620
    iget-object v0, p0, Lcom/android/settings/dirac/DiracEqualizer$EQConfigManager;->mList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dirac/DiracEqualizer$EQConfig;

    return-object v0
.end method

.method public getEQTitles()[Ljava/lang/CharSequence;
    .locals 6

    .prologue
    .line 566
    iget-object v5, p0, Lcom/android/settings/dirac/DiracEqualizer$EQConfigManager;->mList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/CharSequence;

    .line 567
    .local v4, titles:[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 568
    .local v1, i:I
    iget-object v5, p0, Lcom/android/settings/dirac/DiracEqualizer$EQConfigManager;->mList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dirac/DiracEqualizer$EQConfig;

    .line 569
    .local v0, c:Lcom/android/settings/dirac/DiracEqualizer$EQConfig;
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    iget-object v5, v0, Lcom/android/settings/dirac/DiracEqualizer$EQConfig;->mTitle:Ljava/lang/String;

    aput-object v5, v4, v1

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_0

    .line 572
    .end local v0           #c:Lcom/android/settings/dirac/DiracEqualizer$EQConfig;
    :cond_0
    return-object v4
.end method

.method public indexOf(Lcom/android/settings/dirac/DiracEqualizer$EQConfig;)I
    .locals 6
    .parameter "config"

    .prologue
    .line 632
    const/4 v4, -0x1

    .line 633
    .local v4, index:I
    if-eqz p1, :cond_0

    iget-object v5, p1, Lcom/android/settings/dirac/DiracEqualizer$EQConfig;->mId:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 634
    iget-object v3, p1, Lcom/android/settings/dirac/DiracEqualizer$EQConfig;->mId:Ljava/lang/String;

    .line 635
    .local v3, id:Ljava/lang/String;
    const/4 v1, 0x0

    .line 636
    .local v1, i:I
    iget-object v5, p0, Lcom/android/settings/dirac/DiracEqualizer$EQConfigManager;->mList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dirac/DiracEqualizer$EQConfig;

    .line 637
    .local v0, c:Lcom/android/settings/dirac/DiracEqualizer$EQConfig;
    iget-object v5, v0, Lcom/android/settings/dirac/DiracEqualizer$EQConfig;->mId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 638
    move v4, v1

    .line 645
    .end local v0           #c:Lcom/android/settings/dirac/DiracEqualizer$EQConfig;
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #id:Ljava/lang/String;
    :cond_0
    return v4

    .line 641
    .restart local v0       #c:Lcom/android/settings/dirac/DiracEqualizer$EQConfig;
    .restart local v1       #i:I
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #id:Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public remove(Lcom/android/settings/dirac/DiracEqualizer$EQConfig;)Z
    .locals 2
    .parameter "config"

    .prologue
    .line 589
    if-eqz p1, :cond_1

    iget v0, p1, Lcom/android/settings/dirac/DiracEqualizer$EQConfig;->mType:I

    if-nez v0, :cond_1

    .line 590
    iget-object v0, p0, Lcom/android/settings/dirac/DiracEqualizer$EQConfigManager;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/android/settings/dirac/DiracEqualizer$EQConfigManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/settings/dirac/DiracEqualizer$EQConfigManager;->mList:Ljava/util/List;

    #calls: Lcom/android/settings/dirac/DiracEqualizer;->persistIds(Landroid/content/ContentResolver;Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/android/settings/dirac/DiracEqualizer;->access$900(Landroid/content/ContentResolver;Ljava/util/List;)V

    .line 592
    iget-object v0, p0, Lcom/android/settings/dirac/DiracEqualizer$EQConfigManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p1, Lcom/android/settings/dirac/DiracEqualizer$EQConfig;->mId:Ljava/lang/String;

    #calls: Lcom/android/settings/dirac/DiracEqualizer;->removeValues(Landroid/content/ContentResolver;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/dirac/DiracEqualizer;->access$1000(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 594
    :cond_0
    const/4 v0, 0x1

    .line 597
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
