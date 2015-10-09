.class public Landroid/animation/AnimatorInflater;
.super Ljava/lang/Object;
.source "AnimatorInflater.java"


# static fields
.field private static final SEQUENTIALLY:I = 0x1

.field private static final TOGETHER:I = 0x0

.field private static final VALUE_TYPE_COLOR:I = 0x4

.field private static final VALUE_TYPE_CUSTOM:I = 0x5

.field private static final VALUE_TYPE_FLOAT:I = 0x0

.field private static final VALUE_TYPE_INT:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroid/animation/Animator;
    .locals 3
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Landroid/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private static createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;I)Landroid/animation/Animator;
    .locals 17
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "parent"    # Landroid/animation/AnimatorSet;
    .param p4, "sequenceOrdering"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    const/4 v4, 0x0

    .line 101
    .local v4, "anim":Landroid/animation/Animator;
    const/4 v6, 0x0

    .line 105
    .local v6, "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    .line 108
    .local v7, "depth":I
    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    .local v13, "type":I
    const/4 v14, 0x3

    if-ne v13, v14, :cond_1

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    if-le v14, v7, :cond_6

    :cond_1
    const/4 v14, 0x1

    if-eq v13, v14, :cond_6

    .line 110
    const/4 v14, 0x2

    if-ne v13, v14, :cond_0

    .line 114
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 116
    .local v11, "name":Ljava/lang/String;
    const-string/jumbo v14, "objectAnimator"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 117
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadObjectAnimator(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 132
    :goto_1
    if-eqz p3, :cond_0

    .line 133
    if-nez v6, :cond_2

    .line 134
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .restart local v6    # "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_2
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 118
    :cond_3
    const-string v14, "animator"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 119
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1, v14}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v4

    goto :goto_1

    .line 120
    :cond_4
    const-string/jumbo v14, "set"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 121
    new-instance v4, Landroid/animation/AnimatorSet;

    .end local v4    # "anim":Landroid/animation/Animator;
    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 122
    .restart local v4    # "anim":Landroid/animation/Animator;
    sget-object v14, Lcom/android/internal/R$styleable;->AnimatorSet:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 124
    .local v3, "a":Landroid/content/res/TypedArray;
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    .local v12, "ordering":I
    move-object v14, v4

    .line 126
    check-cast v14, Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2, v14, v12}, Landroid/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;I)Landroid/animation/Animator;

    .line 127
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    .line 129
    .end local v3    # "a":Landroid/content/res/TypedArray;
    .end local v12    # "ordering":I
    :cond_5
    new-instance v14, Ljava/lang/RuntimeException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unknown animator name: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 139
    .end local v11    # "name":Ljava/lang/String;
    :cond_6
    if-eqz p3, :cond_8

    if-eqz v6, :cond_8

    .line 140
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v5, v14, [Landroid/animation/Animator;

    .line 141
    .local v5, "animsArray":[Landroid/animation/Animator;
    const/4 v9, 0x0

    .line 142
    .local v9, "index":I
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    .line 143
    .local v3, "a":Landroid/animation/Animator;
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "index":I
    .local v10, "index":I
    aput-object v3, v5, v9

    move v9, v10

    .end local v10    # "index":I
    .restart local v9    # "index":I
    goto :goto_2

    .line 145
    .end local v3    # "a":Landroid/animation/Animator;
    :cond_7
    if-nez p4, :cond_9

    .line 146
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 152
    .end local v5    # "animsArray":[Landroid/animation/Animator;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "index":I
    :cond_8
    :goto_3
    return-object v4

    .line 148
    .restart local v5    # "animsArray":[Landroid/animation/Animator;
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v9    # "index":I
    :cond_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    goto :goto_3
.end method

.method public static loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 69
    const/4 v1, 0x0

    .line 71
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 72
    invoke-static {p0, v1}, Landroid/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroid/animation/Animator;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 86
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_0
    return-object v3

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load animation resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 77
    .local v2, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 78
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    .end local v0    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v2    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1
    throw v3

    .line 79
    :catch_1
    move-exception v0

    .line 80
    .local v0, "ex":Ljava/io/IOException;
    :try_start_2
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load animation resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 83
    .restart local v2    # "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 84
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private static loadAnimator(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 24
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "anim"    # Landroid/animation/ValueAnimator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 185
    sget-object v22, Lcom/android/internal/R$styleable;->Animator:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 188
    .local v3, "a":Landroid/content/res/TypedArray;
    const/16 v22, 0x1

    const/16 v23, 0x12c

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v22

    move/from16 v0, v22

    int-to-long v4, v0

    .line 190
    .local v4, "duration":J
    const/16 v22, 0x2

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v22

    move/from16 v0, v22

    int-to-long v12, v0

    .line 192
    .local v12, "startDelay":J
    const/16 v22, 0x7

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v21

    .line 195
    .local v21, "valueType":I
    if-nez p2, :cond_0

    .line 196
    new-instance p2, Landroid/animation/ValueAnimator;

    .end local p2    # "anim":Landroid/animation/ValueAnimator;
    invoke-direct/range {p2 .. p2}, Landroid/animation/ValueAnimator;-><init>()V

    .line 198
    .restart local p2    # "anim":Landroid/animation/ValueAnimator;
    :cond_0
    const/4 v6, 0x0

    .line 200
    .local v6, "evaluator":Landroid/animation/TypeEvaluator;
    const/16 v18, 0x5

    .line 201
    .local v18, "valueFromIndex":I
    const/16 v20, 0x6

    .line 203
    .local v20, "valueToIndex":I
    if-nez v21, :cond_9

    const/4 v8, 0x1

    .line 205
    .local v8, "getFloats":Z
    :goto_0
    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    .line 206
    .local v15, "tvFrom":Landroid/util/TypedValue;
    if-eqz v15, :cond_a

    const/4 v9, 0x1

    .line 207
    .local v9, "hasFrom":Z
    :goto_1
    if-eqz v9, :cond_b

    iget v7, v15, Landroid/util/TypedValue;->type:I

    .line 208
    .local v7, "fromType":I
    :goto_2
    move/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v16

    .line 209
    .local v16, "tvTo":Landroid/util/TypedValue;
    if-eqz v16, :cond_c

    const/4 v10, 0x1

    .line 210
    .local v10, "hasTo":Z
    :goto_3
    if-eqz v10, :cond_d

    move-object/from16 v0, v16

    iget v14, v0, Landroid/util/TypedValue;->type:I

    .line 212
    .local v14, "toType":I
    :goto_4
    if-eqz v9, :cond_1

    const/16 v22, 0x1c

    move/from16 v0, v22

    if-lt v7, v0, :cond_1

    const/16 v22, 0x1f

    move/from16 v0, v22

    if-le v7, v0, :cond_2

    :cond_1
    if-eqz v10, :cond_3

    const/16 v22, 0x1c

    move/from16 v0, v22

    if-lt v14, v0, :cond_3

    const/16 v22, 0x1f

    move/from16 v0, v22

    if-gt v14, v0, :cond_3

    .line 217
    :cond_2
    const/4 v8, 0x0

    .line 218
    new-instance v22, Landroid/animation/ArgbEvaluator;

    invoke-direct/range {v22 .. v22}, Landroid/animation/ArgbEvaluator;-><init>()V

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 221
    :cond_3
    if-eqz v8, :cond_13

    .line 224
    if-eqz v9, :cond_11

    .line 225
    const/16 v22, 0x5

    move/from16 v0, v22

    if-ne v7, v0, :cond_e

    .line 226
    const/16 v22, 0x0

    move/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v17

    .line 230
    .local v17, "valueFrom":F
    :goto_5
    if-eqz v10, :cond_10

    .line 231
    const/16 v22, 0x5

    move/from16 v0, v22

    if-ne v14, v0, :cond_f

    .line 232
    const/16 v22, 0x0

    move/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v19

    .line 236
    .local v19, "valueTo":F
    :goto_6
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v17, v22, v23

    const/16 v23, 0x1

    aput v19, v22, v23

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 288
    .end local v17    # "valueFrom":F
    .end local v19    # "valueTo":F
    :cond_4
    :goto_7
    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 289
    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 291
    const/16 v22, 0x3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 292
    const/16 v22, 0x3

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v22

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 295
    :cond_5
    const/16 v22, 0x4

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 296
    const/16 v22, 0x4

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v22

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 300
    :cond_6
    if-eqz v6, :cond_7

    .line 301
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 304
    :cond_7
    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 306
    .local v11, "resID":I
    if-lez v11, :cond_8

    .line 307
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 309
    :cond_8
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 311
    return-object p2

    .line 203
    .end local v7    # "fromType":I
    .end local v8    # "getFloats":Z
    .end local v9    # "hasFrom":Z
    .end local v10    # "hasTo":Z
    .end local v11    # "resID":I
    .end local v14    # "toType":I
    .end local v15    # "tvFrom":Landroid/util/TypedValue;
    .end local v16    # "tvTo":Landroid/util/TypedValue;
    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 206
    .restart local v8    # "getFloats":Z
    .restart local v15    # "tvFrom":Landroid/util/TypedValue;
    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 207
    .restart local v9    # "hasFrom":Z
    :cond_b
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 209
    .restart local v7    # "fromType":I
    .restart local v16    # "tvTo":Landroid/util/TypedValue;
    :cond_c
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 210
    .restart local v10    # "hasTo":Z
    :cond_d
    const/4 v14, 0x0

    goto/16 :goto_4

    .line 228
    .restart local v14    # "toType":I
    :cond_e
    const/16 v22, 0x0

    move/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v17

    .restart local v17    # "valueFrom":F
    goto/16 :goto_5

    .line 234
    :cond_f
    const/16 v22, 0x0

    move/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v19

    .restart local v19    # "valueTo":F
    goto/16 :goto_6

    .line 238
    .end local v19    # "valueTo":F
    :cond_10
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v17, v22, v23

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto/16 :goto_7

    .line 241
    .end local v17    # "valueFrom":F
    :cond_11
    const/16 v22, 0x5

    move/from16 v0, v22

    if-ne v14, v0, :cond_12

    .line 242
    const/16 v22, 0x0

    move/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v19

    .line 246
    .restart local v19    # "valueTo":F
    :goto_8
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v19, v22, v23

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto/16 :goto_7

    .line 244
    .end local v19    # "valueTo":F
    :cond_12
    const/16 v22, 0x0

    move/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v19

    .restart local v19    # "valueTo":F
    goto :goto_8

    .line 251
    .end local v19    # "valueTo":F
    :cond_13
    if-eqz v9, :cond_19

    .line 252
    const/16 v22, 0x5

    move/from16 v0, v22

    if-ne v7, v0, :cond_14

    .line 253
    const/16 v22, 0x0

    move/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v17, v0

    .line 260
    .local v17, "valueFrom":I
    :goto_9
    if-eqz v10, :cond_18

    .line 261
    const/16 v22, 0x5

    move/from16 v0, v22

    if-ne v14, v0, :cond_16

    .line 262
    const/16 v22, 0x0

    move/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v19, v0

    .line 269
    .local v19, "valueTo":I
    :goto_a
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v17, v22, v23

    const/16 v23, 0x1

    aput v19, v22, v23

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto/16 :goto_7

    .line 254
    .end local v17    # "valueFrom":I
    .end local v19    # "valueTo":I
    :cond_14
    const/16 v22, 0x1c

    move/from16 v0, v22

    if-lt v7, v0, :cond_15

    const/16 v22, 0x1f

    move/from16 v0, v22

    if-gt v7, v0, :cond_15

    .line 256
    const/16 v22, 0x0

    move/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v17

    .restart local v17    # "valueFrom":I
    goto :goto_9

    .line 258
    .end local v17    # "valueFrom":I
    :cond_15
    const/16 v22, 0x0

    move/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    .restart local v17    # "valueFrom":I
    goto :goto_9

    .line 263
    :cond_16
    const/16 v22, 0x1c

    move/from16 v0, v22

    if-lt v14, v0, :cond_17

    const/16 v22, 0x1f

    move/from16 v0, v22

    if-gt v14, v0, :cond_17

    .line 265
    const/16 v22, 0x0

    move/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v19

    .restart local v19    # "valueTo":I
    goto :goto_a

    .line 267
    .end local v19    # "valueTo":I
    :cond_17
    const/16 v22, 0x0

    move/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v19

    .restart local v19    # "valueTo":I
    goto :goto_a

    .line 271
    .end local v19    # "valueTo":I
    :cond_18
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v17, v22, v23

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto/16 :goto_7

    .line 274
    .end local v17    # "valueFrom":I
    :cond_19
    if-eqz v10, :cond_4

    .line 275
    const/16 v22, 0x5

    move/from16 v0, v22

    if-ne v14, v0, :cond_1a

    .line 276
    const/16 v22, 0x0

    move/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v19, v0

    .line 283
    .restart local v19    # "valueTo":I
    :goto_b
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v19, v22, v23

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto/16 :goto_7

    .line 277
    .end local v19    # "valueTo":I
    :cond_1a
    const/16 v22, 0x1c

    move/from16 v0, v22

    if-lt v14, v0, :cond_1b

    const/16 v22, 0x1f

    move/from16 v0, v22

    if-gt v14, v0, :cond_1b

    .line 279
    const/16 v22, 0x0

    move/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v19

    .restart local v19    # "valueTo":I
    goto :goto_b

    .line 281
    .end local v19    # "valueTo":I
    :cond_1b
    const/16 v22, 0x0

    move/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v19

    .restart local v19    # "valueTo":I
    goto :goto_b
.end method

.method private static loadObjectAnimator(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/animation/ObjectAnimator;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 159
    new-instance v1, Landroid/animation/ObjectAnimator;

    invoke-direct {v1}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 161
    .local v1, "anim":Landroid/animation/ObjectAnimator;
    invoke-static {p0, p1, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 163
    sget-object v3, Lcom/android/internal/R$styleable;->PropertyAnimator:[I

    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 166
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, "propertyName":Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 172
    return-object v1
.end method
