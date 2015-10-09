.class Landroid/widget/ArrayAdapter$ArrayFilter;
.super Landroid/widget/Filter;
.source "ArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArrayFilter"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ArrayAdapter;


# direct methods
.method private constructor <init>(Landroid/widget/ArrayAdapter;)V
    .locals 0

    .prologue
    .line 449
    .local p0, "this":Landroid/widget/ArrayAdapter$ArrayFilter;, "Landroid/widget/ArrayAdapter<TT;>.ArrayFilter;"
    iput-object p1, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ArrayAdapter;Landroid/widget/ArrayAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/ArrayAdapter;
    .param p2, "x1"    # Landroid/widget/ArrayAdapter$1;

    .prologue
    .line 449
    .local p0, "this":Landroid/widget/ArrayAdapter$ArrayFilter;, "Landroid/widget/ArrayAdapter<TT;>.ArrayFilter;"
    invoke-direct {p0, p1}, Landroid/widget/ArrayAdapter$ArrayFilter;-><init>(Landroid/widget/ArrayAdapter;)V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 17
    .param p1, "prefix"    # Ljava/lang/CharSequence;

    .prologue
    .line 452
    .local p0, "this":Landroid/widget/ArrayAdapter$ArrayFilter;, "Landroid/widget/ArrayAdapter<TT;>.ArrayFilter;"
    new-instance v7, Landroid/widget/Filter$FilterResults;

    invoke-direct {v7}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 454
    .local v7, "results":Landroid/widget/Filter$FilterResults;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    # getter for: Landroid/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;
    invoke-static {v13}, Landroid/widget/ArrayAdapter;->access$100(Landroid/widget/ArrayAdapter;)Ljava/util/ArrayList;

    move-result-object v13

    if-nez v13, :cond_0

    .line 455
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    # getter for: Landroid/widget/ArrayAdapter;->mLock:Ljava/lang/Object;
    invoke-static {v13}, Landroid/widget/ArrayAdapter;->access$200(Landroid/widget/ArrayAdapter;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    .line 456
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    move-object/from16 v16, v0

    # getter for: Landroid/widget/ArrayAdapter;->mObjects:Ljava/util/List;
    invoke-static/range {v16 .. v16}, Landroid/widget/ArrayAdapter;->access$300(Landroid/widget/ArrayAdapter;)Ljava/util/List;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    # setter for: Landroid/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;
    invoke-static {v13, v15}, Landroid/widget/ArrayAdapter;->access$102(Landroid/widget/ArrayAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 457
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-nez v13, :cond_2

    .line 462
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    # getter for: Landroid/widget/ArrayAdapter;->mLock:Ljava/lang/Object;
    invoke-static {v13}, Landroid/widget/ArrayAdapter;->access$200(Landroid/widget/ArrayAdapter;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    .line 463
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    # getter for: Landroid/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;
    invoke-static {v13}, Landroid/widget/ArrayAdapter;->access$100(Landroid/widget/ArrayAdapter;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-direct {v4, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 464
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 465
    iput-object v4, v7, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 466
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v13

    iput v13, v7, Landroid/widget/Filter$FilterResults;->count:I

    .line 503
    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :goto_0
    return-object v7

    .line 457
    :catchall_0
    move-exception v13

    :try_start_2
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v13

    .line 464
    :catchall_1
    move-exception v13

    :try_start_3
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v13

    .line 468
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 471
    .local v6, "prefixString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    # getter for: Landroid/widget/ArrayAdapter;->mLock:Ljava/lang/Object;
    invoke-static {v13}, Landroid/widget/ArrayAdapter;->access$200(Landroid/widget/ArrayAdapter;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    .line 472
    :try_start_4
    new-instance v10, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    # getter for: Landroid/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;
    invoke-static {v13}, Landroid/widget/ArrayAdapter;->access$100(Landroid/widget/ArrayAdapter;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-direct {v10, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 473
    .local v10, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 475
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 476
    .local v1, "count":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 478
    .local v5, "newValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_6

    .line 479
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 480
    .local v8, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 483
    .local v9, "valueText":Ljava/lang/String;
    invoke-virtual {v9, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 484
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 473
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v5    # "newValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .end local v8    # "value":Ljava/lang/Object;, "TT;"
    .end local v9    # "valueText":Ljava/lang/String;
    .end local v10    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :catchall_2
    move-exception v13

    :try_start_5
    monitor-exit v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v13

    .line 486
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    .restart local v5    # "newValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .restart local v8    # "value":Ljava/lang/Object;, "TT;"
    .restart local v9    # "valueText":Ljava/lang/String;
    .restart local v10    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :cond_4
    const-string v13, " "

    invoke-virtual {v9, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 487
    .local v12, "words":[Ljava/lang/String;
    array-length v11, v12

    .line 490
    .local v11, "wordCount":I
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_3
    if-ge v3, v11, :cond_3

    .line 491
    aget-object v13, v12, v3

    invoke-virtual {v13, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 492
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 490
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 499
    .end local v3    # "k":I
    .end local v8    # "value":Ljava/lang/Object;, "TT;"
    .end local v9    # "valueText":Ljava/lang/String;
    .end local v11    # "wordCount":I
    .end local v12    # "words":[Ljava/lang/String;
    :cond_6
    iput-object v5, v7, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 500
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    iput v13, v7, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    .line 509
    .local p0, "this":Landroid/widget/ArrayAdapter$ArrayFilter;, "Landroid/widget/ArrayAdapter<TT;>.ArrayFilter;"
    iget-object v1, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    # setter for: Landroid/widget/ArrayAdapter;->mObjects:Ljava/util/List;
    invoke-static {v1, v0}, Landroid/widget/ArrayAdapter;->access$302(Landroid/widget/ArrayAdapter;Ljava/util/List;)Ljava/util/List;

    .line 510
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_0

    .line 511
    iget-object v0, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 515
    :goto_0
    return-void

    .line 513
    :cond_0
    iget-object v0, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
