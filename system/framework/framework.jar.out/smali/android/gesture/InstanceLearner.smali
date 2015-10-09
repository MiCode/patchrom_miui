.class Landroid/gesture/InstanceLearner;
.super Landroid/gesture/Learner;
.source "InstanceLearner.java"


# static fields
.field private static final sComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/gesture/Prediction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Landroid/gesture/InstanceLearner$1;

    invoke-direct {v0}, Landroid/gesture/InstanceLearner$1;-><init>()V

    sput-object v0, Landroid/gesture/InstanceLearner;->sComparator:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/gesture/Learner;-><init>()V

    return-void
.end method


# virtual methods
.method classify(II[F)Ljava/util/ArrayList;
    .locals 19
    .param p1, "sequenceType"    # I
    .param p2, "orientationType"    # I
    .param p3, "vector"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[F)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/Prediction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v11, "predictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/Prediction;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/gesture/InstanceLearner;->getInstances()Ljava/util/ArrayList;

    move-result-object v8

    .line 47
    .local v8, "instances":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/Instance;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 48
    .local v3, "count":I
    new-instance v9, Ljava/util/TreeMap;

    invoke-direct {v9}, Ljava/util/TreeMap;-><init>()V

    .line 49
    .local v9, "label2score":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/Double;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v3, :cond_5

    .line 50
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/gesture/Instance;

    .line 51
    .local v12, "sample":Landroid/gesture/Instance;
    iget-object v0, v12, Landroid/gesture/Instance;->vector:[F

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 49
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 55
    :cond_1
    const/16 v17, 0x2

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 56
    iget-object v0, v12, Landroid/gesture/Instance;->vector:[F

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/gesture/GestureUtils;->minimumCosineDistance([F[FI)F

    move-result v17

    move/from16 v0, v17

    float-to-double v4, v0

    .line 61
    .local v4, "distance":D
    :goto_2
    const-wide/16 v17, 0x0

    cmpl-double v17, v4, v17

    if-nez v17, :cond_4

    .line 62
    const-wide v15, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 66
    .local v15, "weight":D
    :goto_3
    iget-object v0, v12, Landroid/gesture/Instance;->label:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Double;

    .line 67
    .local v13, "score":Ljava/lang/Double;
    if-eqz v13, :cond_2

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    cmpl-double v17, v15, v17

    if-lez v17, :cond_0

    .line 68
    :cond_2
    iget-object v0, v12, Landroid/gesture/Instance;->label:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 58
    .end local v4    # "distance":D
    .end local v13    # "score":Ljava/lang/Double;
    .end local v15    # "weight":D
    :cond_3
    iget-object v0, v12, Landroid/gesture/Instance;->vector:[F

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/gesture/GestureUtils;->squaredEuclideanDistance([F[F)F

    move-result v17

    move/from16 v0, v17

    float-to-double v4, v0

    .restart local v4    # "distance":D
    goto :goto_2

    .line 64
    :cond_4
    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    div-double v15, v17, v4

    .restart local v15    # "weight":D
    goto :goto_3

    .line 73
    .end local v4    # "distance":D
    .end local v12    # "sample":Landroid/gesture/Instance;
    .end local v15    # "weight":D
    :cond_5
    invoke-virtual {v9}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 74
    .local v10, "name":Ljava/lang/String;
    invoke-virtual {v9, v10}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Double;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    .line 76
    .local v13, "score":D
    new-instance v17, Landroid/gesture/Prediction;

    move-object/from16 v0, v17

    invoke-direct {v0, v10, v13, v14}, Landroid/gesture/Prediction;-><init>(Ljava/lang/String;D)V

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 84
    .end local v10    # "name":Ljava/lang/String;
    .end local v13    # "score":D
    :cond_6
    sget-object v17, Landroid/gesture/InstanceLearner;->sComparator:Ljava/util/Comparator;

    move-object/from16 v0, v17

    invoke-static {v11, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 86
    return-object v11
.end method
