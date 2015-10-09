.class Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;
.super Landroid/widget/Filter;
.source "LauncherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LauncherActivity$ActivityAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArrayFilter"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/app/LauncherActivity$ActivityAdapter;


# direct methods
.method private constructor <init>(Landroid/app/LauncherActivity$ActivityAdapter;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;->this$1:Landroid/app/LauncherActivity$ActivityAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/LauncherActivity$ActivityAdapter;Landroid/app/LauncherActivity$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/app/LauncherActivity$ActivityAdapter;
    .param p2, "x1"    # Landroid/app/LauncherActivity$1;

    .prologue
    .line 184
    invoke-direct {p0, p1}, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;-><init>(Landroid/app/LauncherActivity$ActivityAdapter;)V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 17
    .param p1, "prefix"    # Ljava/lang/CharSequence;

    .prologue
    .line 187
    new-instance v8, Landroid/widget/Filter$FilterResults;

    invoke-direct {v8}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 189
    .local v8, "results":Landroid/widget/Filter$FilterResults;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;->this$1:Landroid/app/LauncherActivity$ActivityAdapter;

    # getter for: Landroid/app/LauncherActivity$ActivityAdapter;->mOriginalValues:Ljava/util/ArrayList;
    invoke-static {v13}, Landroid/app/LauncherActivity$ActivityAdapter;->access$100(Landroid/app/LauncherActivity$ActivityAdapter;)Ljava/util/ArrayList;

    move-result-object v13

    if-nez v13, :cond_0

    .line 190
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;->this$1:Landroid/app/LauncherActivity$ActivityAdapter;

    # getter for: Landroid/app/LauncherActivity$ActivityAdapter;->lock:Ljava/lang/Object;
    invoke-static {v13}, Landroid/app/LauncherActivity$ActivityAdapter;->access$200(Landroid/app/LauncherActivity$ActivityAdapter;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    .line 191
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;->this$1:Landroid/app/LauncherActivity$ActivityAdapter;

    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;->this$1:Landroid/app/LauncherActivity$ActivityAdapter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/app/LauncherActivity$ActivityAdapter;->mActivitiesList:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    # setter for: Landroid/app/LauncherActivity$ActivityAdapter;->mOriginalValues:Ljava/util/ArrayList;
    invoke-static {v13, v15}, Landroid/app/LauncherActivity$ActivityAdapter;->access$102(Landroid/app/LauncherActivity$ActivityAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 192
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-nez v13, :cond_2

    .line 196
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;->this$1:Landroid/app/LauncherActivity$ActivityAdapter;

    # getter for: Landroid/app/LauncherActivity$ActivityAdapter;->lock:Ljava/lang/Object;
    invoke-static {v13}, Landroid/app/LauncherActivity$ActivityAdapter;->access$200(Landroid/app/LauncherActivity$ActivityAdapter;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    .line 197
    :try_start_1
    new-instance v5, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;->this$1:Landroid/app/LauncherActivity$ActivityAdapter;

    # getter for: Landroid/app/LauncherActivity$ActivityAdapter;->mOriginalValues:Ljava/util/ArrayList;
    invoke-static {v13}, Landroid/app/LauncherActivity$ActivityAdapter;->access$100(Landroid/app/LauncherActivity$ActivityAdapter;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-direct {v5, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 198
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/LauncherActivity$ListItem;>;"
    iput-object v5, v8, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 199
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    iput v13, v8, Landroid/widget/Filter$FilterResults;->count:I

    .line 200
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 229
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/LauncherActivity$ListItem;>;"
    :goto_0
    return-object v8

    .line 192
    :catchall_0
    move-exception v13

    :try_start_2
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v13

    .line 200
    :catchall_1
    move-exception v13

    :try_start_3
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v13

    .line 202
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 204
    .local v7, "prefixString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;->this$1:Landroid/app/LauncherActivity$ActivityAdapter;

    # getter for: Landroid/app/LauncherActivity$ActivityAdapter;->mOriginalValues:Ljava/util/ArrayList;
    invoke-static {v13}, Landroid/app/LauncherActivity$ActivityAdapter;->access$100(Landroid/app/LauncherActivity$ActivityAdapter;)Ljava/util/ArrayList;

    move-result-object v9

    .line 205
    .local v9, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/LauncherActivity$ListItem;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 207
    .local v1, "count":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 209
    .local v6, "newValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/LauncherActivity$ListItem;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_5

    .line 210
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/LauncherActivity$ListItem;

    .line 212
    .local v3, "item":Landroid/app/LauncherActivity$ListItem;
    iget-object v13, v3, Landroid/app/LauncherActivity$ListItem;->label:Ljava/lang/CharSequence;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 213
    .local v12, "words":[Ljava/lang/String;
    array-length v11, v12

    .line 215
    .local v11, "wordCount":I
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_2
    if-ge v4, v11, :cond_3

    .line 216
    aget-object v10, v12, v4

    .line 218
    .local v10, "word":Ljava/lang/String;
    invoke-virtual {v10, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 219
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    .end local v10    # "word":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 215
    .restart local v10    # "word":Ljava/lang/String;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 225
    .end local v3    # "item":Landroid/app/LauncherActivity$ListItem;
    .end local v4    # "k":I
    .end local v10    # "word":Ljava/lang/String;
    .end local v11    # "wordCount":I
    .end local v12    # "words":[Ljava/lang/String;
    :cond_5
    iput-object v6, v8, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 226
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v13

    iput v13, v8, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    .line 235
    iget-object v1, p0, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;->this$1:Landroid/app/LauncherActivity$ActivityAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iput-object v0, v1, Landroid/app/LauncherActivity$ActivityAdapter;->mActivitiesList:Ljava/util/List;

    .line 236
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_0

    .line 237
    iget-object v0, p0, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;->this$1:Landroid/app/LauncherActivity$ActivityAdapter;

    invoke-virtual {v0}, Landroid/app/LauncherActivity$ActivityAdapter;->notifyDataSetChanged()V

    .line 241
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;->this$1:Landroid/app/LauncherActivity$ActivityAdapter;

    invoke-virtual {v0}, Landroid/app/LauncherActivity$ActivityAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
