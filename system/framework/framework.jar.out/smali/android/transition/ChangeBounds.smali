.class public Landroid/transition/ChangeBounds;
.super Landroid/transition/Transition;
.source "ChangeBounds.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ChangeBounds"

.field private static final PROPNAME_BOUNDS:Ljava/lang/String; = "android:changeBounds:bounds"

.field private static final PROPNAME_PARENT:Ljava/lang/String; = "android:changeBounds:parent"

.field private static final PROPNAME_WINDOW_X:Ljava/lang/String; = "android:changeBounds:windowX"

.field private static final PROPNAME_WINDOW_Y:Ljava/lang/String; = "android:changeBounds:windowY"

.field private static sRectEvaluator:Landroid/animation/RectEvaluator;

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field mReparent:Z

.field mResizeClip:Z

.field tempLocation:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android:changeBounds:bounds"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android:changeBounds:parent"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android:changeBounds:windowX"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android:changeBounds:windowY"

    aput-object v2, v0, v1

    sput-object v0, Landroid/transition/ChangeBounds;->sTransitionProperties:[Ljava/lang/String;

    .line 59
    new-instance v0, Landroid/animation/RectEvaluator;

    invoke-direct {v0}, Landroid/animation/RectEvaluator;-><init>()V

    sput-object v0, Landroid/transition/ChangeBounds;->sRectEvaluator:Landroid/animation/RectEvaluator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    .line 54
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/transition/ChangeBounds;->tempLocation:[I

    .line 55
    iput-boolean v1, p0, Landroid/transition/ChangeBounds;->mResizeClip:Z

    .line 56
    iput-boolean v1, p0, Landroid/transition/ChangeBounds;->mReparent:Z

    return-void
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .locals 8
    .param p1, "values"    # Landroid/transition/TransitionValues;

    .prologue
    .line 85
    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 86
    .local v0, "view":Landroid/view/View;
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeBounds:bounds"

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeBounds:parent"

    iget-object v3, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v1, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    iget-object v2, p0, Landroid/transition/ChangeBounds;->tempLocation:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 90
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeBounds:windowX"

    iget-object v3, p0, Landroid/transition/ChangeBounds;->tempLocation:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeBounds:windowY"

    iget-object v3, p0, Landroid/transition/ChangeBounds;->tempLocation:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 101
    invoke-direct {p0, p1}, Landroid/transition/ChangeBounds;->captureValues(Landroid/transition/TransitionValues;)V

    .line 102
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Landroid/transition/ChangeBounds;->captureValues(Landroid/transition/TransitionValues;)V

    .line 97
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 52
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 107
    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 108
    :cond_0
    const/4 v5, 0x0

    .line 308
    :cond_1
    :goto_0
    return-object v5

    .line 110
    :cond_2
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v34, v0

    .line 111
    .local v34, "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p3

    iget-object v15, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 112
    .local v15, "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v47, "android:changeBounds:parent"

    move-object/from16 v0, v34

    move-object/from16 v1, v47

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/view/ViewGroup;

    .line 113
    .local v33, "startParent":Landroid/view/ViewGroup;
    const-string v47, "android:changeBounds:parent"

    move-object/from16 v0, v47

    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    .line 114
    .local v14, "endParent":Landroid/view/ViewGroup;
    if-eqz v33, :cond_3

    if-nez v14, :cond_4

    .line 115
    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    .line 117
    :cond_4
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    move-object/from16 v45, v0

    .line 118
    .local v45, "view":Landroid/view/View;
    move-object/from16 v0, v33

    if-eq v0, v14, :cond_5

    invoke-virtual/range {v33 .. v33}, Landroid/view/ViewGroup;->getId()I

    move-result v47

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getId()I

    move-result v48

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_11

    :cond_5
    const/16 v24, 0x1

    .line 124
    .local v24, "parentsEqual":Z
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/transition/ChangeBounds;->mReparent:Z

    move/from16 v47, v0

    if-eqz v47, :cond_6

    if-eqz v24, :cond_1e

    .line 125
    :cond_6
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v47, v0

    const-string v48, "android:changeBounds:bounds"

    invoke-interface/range {v47 .. v48}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/graphics/Rect;

    .line 126
    .local v29, "startBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v47, v0

    const-string v48, "android:changeBounds:bounds"

    invoke-interface/range {v47 .. v48}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    .line 127
    .local v10, "endBounds":Landroid/graphics/Rect;
    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v32, v0

    .line 128
    .local v32, "startLeft":I
    iget v13, v10, Landroid/graphics/Rect;->left:I

    .line 129
    .local v13, "endLeft":I
    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v36, v0

    .line 130
    .local v36, "startTop":I
    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    .line 131
    .local v17, "endTop":I
    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v35, v0

    .line 132
    .local v35, "startRight":I
    iget v0, v10, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    .line 133
    .local v16, "endRight":I
    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    .line 134
    .local v28, "startBottom":I
    iget v9, v10, Landroid/graphics/Rect;->bottom:I

    .line 135
    .local v9, "endBottom":I
    sub-int v37, v35, v32

    .line 136
    .local v37, "startWidth":I
    sub-int v31, v28, v36

    .line 137
    .local v31, "startHeight":I
    sub-int v18, v16, v13

    .line 138
    .local v18, "endWidth":I
    sub-int v12, v9, v17

    .line 139
    .local v12, "endHeight":I
    const/16 v22, 0x0

    .line 140
    .local v22, "numChanges":I
    if-eqz v37, :cond_a

    if-eqz v31, :cond_a

    if-eqz v18, :cond_a

    if-eqz v12, :cond_a

    .line 141
    move/from16 v0, v32

    if-eq v0, v13, :cond_7

    add-int/lit8 v22, v22, 0x1

    .line 142
    :cond_7
    move/from16 v0, v36

    move/from16 v1, v17

    if-eq v0, v1, :cond_8

    add-int/lit8 v22, v22, 0x1

    .line 143
    :cond_8
    move/from16 v0, v35

    move/from16 v1, v16

    if-eq v0, v1, :cond_9

    add-int/lit8 v22, v22, 0x1

    .line 144
    :cond_9
    move/from16 v0, v28

    if-eq v0, v9, :cond_a

    add-int/lit8 v22, v22, 0x1

    .line 146
    :cond_a
    if-lez v22, :cond_20

    .line 147
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/transition/ChangeBounds;->mResizeClip:Z

    move/from16 v47, v0

    if-nez v47, :cond_12

    .line 148
    move/from16 v0, v22

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v25, v0

    .line 149
    .local v25, "pvh":[Landroid/animation/PropertyValuesHolder;
    const/16 v26, 0x0

    .line 150
    .local v26, "pvhIndex":I
    move/from16 v0, v32

    if-eq v0, v13, :cond_b

    move-object/from16 v0, v45

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->setLeft(I)V

    .line 151
    :cond_b
    move/from16 v0, v36

    move/from16 v1, v17

    if-eq v0, v1, :cond_c

    move-object/from16 v0, v45

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/View;->setTop(I)V

    .line 152
    :cond_c
    move/from16 v0, v35

    move/from16 v1, v16

    if-eq v0, v1, :cond_d

    move-object/from16 v0, v45

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/View;->setRight(I)V

    .line 153
    :cond_d
    move/from16 v0, v28

    if-eq v0, v9, :cond_e

    move-object/from16 v0, v45

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setBottom(I)V

    .line 154
    :cond_e
    move/from16 v0, v32

    if-eq v0, v13, :cond_24

    .line 155
    add-int/lit8 v27, v26, 0x1

    .end local v26    # "pvhIndex":I
    .local v27, "pvhIndex":I
    const-string v47, "left"

    const/16 v48, 0x2

    move/from16 v0, v48

    new-array v0, v0, [I

    move-object/from16 v48, v0

    const/16 v49, 0x0

    aput v32, v48, v49

    const/16 v49, 0x1

    aput v13, v48, v49

    invoke-static/range {v47 .. v48}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v47

    aput-object v47, v25, v26

    .line 157
    :goto_2
    move/from16 v0, v36

    move/from16 v1, v17

    if-eq v0, v1, :cond_f

    .line 158
    add-int/lit8 v26, v27, 0x1

    .end local v27    # "pvhIndex":I
    .restart local v26    # "pvhIndex":I
    const-string/jumbo v47, "top"

    const/16 v48, 0x2

    move/from16 v0, v48

    new-array v0, v0, [I

    move-object/from16 v48, v0

    const/16 v49, 0x0

    aput v36, v48, v49

    const/16 v49, 0x1

    aput v17, v48, v49

    invoke-static/range {v47 .. v48}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v47

    aput-object v47, v25, v27

    move/from16 v27, v26

    .line 160
    .end local v26    # "pvhIndex":I
    .restart local v27    # "pvhIndex":I
    :cond_f
    move/from16 v0, v35

    move/from16 v1, v16

    if-eq v0, v1, :cond_10

    .line 161
    add-int/lit8 v26, v27, 0x1

    .end local v27    # "pvhIndex":I
    .restart local v26    # "pvhIndex":I
    const-string/jumbo v47, "right"

    const/16 v48, 0x2

    move/from16 v0, v48

    new-array v0, v0, [I

    move-object/from16 v48, v0

    const/16 v49, 0x0

    aput v35, v48, v49

    const/16 v49, 0x1

    aput v16, v48, v49

    invoke-static/range {v47 .. v48}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v47

    aput-object v47, v25, v27

    move/from16 v27, v26

    .line 164
    .end local v26    # "pvhIndex":I
    .restart local v27    # "pvhIndex":I
    :cond_10
    move/from16 v0, v28

    if-eq v0, v9, :cond_23

    .line 165
    add-int/lit8 v26, v27, 0x1

    .end local v27    # "pvhIndex":I
    .restart local v26    # "pvhIndex":I
    const-string v47, "bottom"

    const/16 v48, 0x2

    move/from16 v0, v48

    new-array v0, v0, [I

    move-object/from16 v48, v0

    const/16 v49, 0x0

    aput v28, v48, v49

    const/16 v49, 0x1

    aput v9, v48, v49

    invoke-static/range {v47 .. v48}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v47

    aput-object v47, v25, v27

    .line 168
    :goto_3
    move-object/from16 v0, v45

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 169
    .local v5, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual/range {v45 .. v45}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v47

    move-object/from16 v0, v47

    instance-of v0, v0, Landroid/view/ViewGroup;

    move/from16 v47, v0

    if-eqz v47, :cond_1

    .line 170
    invoke-virtual/range {v45 .. v45}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v23

    check-cast v23, Landroid/view/ViewGroup;

    .line 171
    .local v23, "parent":Landroid/view/ViewGroup;
    const/16 v47, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 172
    new-instance v44, Landroid/transition/ChangeBounds$1;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeBounds$1;-><init>(Landroid/transition/ChangeBounds;Landroid/view/ViewGroup;)V

    .line 198
    .local v44, "transitionListener":Landroid/transition/Transition$TransitionListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/transition/ChangeBounds;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    goto/16 :goto_0

    .line 118
    .end local v5    # "anim":Landroid/animation/ObjectAnimator;
    .end local v9    # "endBottom":I
    .end local v10    # "endBounds":Landroid/graphics/Rect;
    .end local v12    # "endHeight":I
    .end local v13    # "endLeft":I
    .end local v16    # "endRight":I
    .end local v17    # "endTop":I
    .end local v18    # "endWidth":I
    .end local v22    # "numChanges":I
    .end local v23    # "parent":Landroid/view/ViewGroup;
    .end local v24    # "parentsEqual":Z
    .end local v25    # "pvh":[Landroid/animation/PropertyValuesHolder;
    .end local v26    # "pvhIndex":I
    .end local v28    # "startBottom":I
    .end local v29    # "startBounds":Landroid/graphics/Rect;
    .end local v31    # "startHeight":I
    .end local v32    # "startLeft":I
    .end local v35    # "startRight":I
    .end local v36    # "startTop":I
    .end local v37    # "startWidth":I
    .end local v44    # "transitionListener":Landroid/transition/Transition$TransitionListener;
    :cond_11
    const/16 v24, 0x0

    goto/16 :goto_1

    .line 202
    .restart local v9    # "endBottom":I
    .restart local v10    # "endBounds":Landroid/graphics/Rect;
    .restart local v12    # "endHeight":I
    .restart local v13    # "endLeft":I
    .restart local v16    # "endRight":I
    .restart local v17    # "endTop":I
    .restart local v18    # "endWidth":I
    .restart local v22    # "numChanges":I
    .restart local v24    # "parentsEqual":Z
    .restart local v28    # "startBottom":I
    .restart local v29    # "startBounds":Landroid/graphics/Rect;
    .restart local v31    # "startHeight":I
    .restart local v32    # "startLeft":I
    .restart local v35    # "startRight":I
    .restart local v36    # "startTop":I
    .restart local v37    # "startWidth":I
    :cond_12
    move/from16 v0, v37

    move/from16 v1, v18

    if-eq v0, v1, :cond_13

    move/from16 v0, v37

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v47

    add-int v47, v47, v13

    move-object/from16 v0, v45

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/view/View;->setRight(I)V

    .line 204
    :cond_13
    move/from16 v0, v31

    if-eq v0, v12, :cond_14

    move/from16 v0, v31

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v47

    add-int v47, v47, v17

    move-object/from16 v0, v45

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/view/View;->setBottom(I)V

    .line 207
    :cond_14
    move/from16 v0, v32

    if-eq v0, v13, :cond_15

    sub-int v47, v32, v13

    move/from16 v0, v47

    int-to-float v0, v0

    move/from16 v47, v0

    move-object/from16 v0, v45

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 208
    :cond_15
    move/from16 v0, v36

    move/from16 v1, v17

    if-eq v0, v1, :cond_16

    sub-int v47, v36, v17

    move/from16 v0, v47

    int-to-float v0, v0

    move/from16 v47, v0

    move-object/from16 v0, v45

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 210
    :cond_16
    sub-int v47, v13, v32

    move/from16 v0, v47

    int-to-float v0, v0

    move/from16 v42, v0

    .line 211
    .local v42, "transXDelta":F
    sub-int v47, v17, v36

    move/from16 v0, v47

    int-to-float v0, v0

    move/from16 v43, v0

    .line 212
    .local v43, "transYDelta":F
    sub-int v46, v18, v37

    .line 213
    .local v46, "widthDelta":I
    sub-int v21, v12, v31

    .line 214
    .local v21, "heightDelta":I
    const/16 v22, 0x0

    .line 215
    const/16 v47, 0x0

    cmpl-float v47, v42, v47

    if-eqz v47, :cond_17

    add-int/lit8 v22, v22, 0x1

    .line 216
    :cond_17
    const/16 v47, 0x0

    cmpl-float v47, v43, v47

    if-eqz v47, :cond_18

    add-int/lit8 v22, v22, 0x1

    .line 217
    :cond_18
    if-nez v46, :cond_19

    if-eqz v21, :cond_1a

    :cond_19
    add-int/lit8 v22, v22, 0x1

    .line 218
    :cond_1a
    move/from16 v0, v22

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v25, v0

    .line 219
    .restart local v25    # "pvh":[Landroid/animation/PropertyValuesHolder;
    const/16 v26, 0x0

    .line 220
    .restart local v26    # "pvhIndex":I
    const/16 v47, 0x0

    cmpl-float v47, v42, v47

    if-eqz v47, :cond_22

    .line 221
    add-int/lit8 v27, v26, 0x1

    .end local v26    # "pvhIndex":I
    .restart local v27    # "pvhIndex":I
    const-string/jumbo v47, "translationX"

    const/16 v48, 0x2

    move/from16 v0, v48

    new-array v0, v0, [F

    move-object/from16 v48, v0

    const/16 v49, 0x0

    invoke-virtual/range {v45 .. v45}, Landroid/view/View;->getTranslationX()F

    move-result v50

    aput v50, v48, v49

    const/16 v49, 0x1

    const/16 v50, 0x0

    aput v50, v48, v49

    invoke-static/range {v47 .. v48}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v47

    aput-object v47, v25, v26

    .line 224
    :goto_4
    const/16 v47, 0x0

    cmpl-float v47, v43, v47

    if-eqz v47, :cond_1b

    .line 225
    add-int/lit8 v26, v27, 0x1

    .end local v27    # "pvhIndex":I
    .restart local v26    # "pvhIndex":I
    const-string/jumbo v47, "translationY"

    const/16 v48, 0x2

    move/from16 v0, v48

    new-array v0, v0, [F

    move-object/from16 v48, v0

    const/16 v49, 0x0

    invoke-virtual/range {v45 .. v45}, Landroid/view/View;->getTranslationY()F

    move-result v50

    aput v50, v48, v49

    const/16 v49, 0x1

    const/16 v50, 0x0

    aput v50, v48, v49

    invoke-static/range {v47 .. v48}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v47

    aput-object v47, v25, v27

    move/from16 v27, v26

    .line 228
    .end local v26    # "pvhIndex":I
    .restart local v27    # "pvhIndex":I
    :cond_1b
    if-nez v46, :cond_1c

    if-eqz v21, :cond_21

    .line 229
    :cond_1c
    new-instance v41, Landroid/graphics/Rect;

    const/16 v47, 0x0

    const/16 v48, 0x0

    move-object/from16 v0, v41

    move/from16 v1, v47

    move/from16 v2, v48

    move/from16 v3, v37

    move/from16 v4, v31

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 230
    .local v41, "tempStartBounds":Landroid/graphics/Rect;
    new-instance v40, Landroid/graphics/Rect;

    const/16 v47, 0x0

    const/16 v48, 0x0

    move-object/from16 v0, v40

    move/from16 v1, v47

    move/from16 v2, v48

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 231
    .local v40, "tempEndBounds":Landroid/graphics/Rect;
    add-int/lit8 v26, v27, 0x1

    .end local v27    # "pvhIndex":I
    .restart local v26    # "pvhIndex":I
    const-string v47, "clipBounds"

    sget-object v48, Landroid/transition/ChangeBounds;->sRectEvaluator:Landroid/animation/RectEvaluator;

    const/16 v49, 0x2

    move/from16 v0, v49

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    aput-object v41, v49, v50

    const/16 v50, 0x1

    aput-object v40, v49, v50

    invoke-static/range {v47 .. v49}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v47

    aput-object v47, v25, v27

    .line 234
    .end local v40    # "tempEndBounds":Landroid/graphics/Rect;
    .end local v41    # "tempStartBounds":Landroid/graphics/Rect;
    :goto_5
    move-object/from16 v0, v45

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 235
    .restart local v5    # "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual/range {v45 .. v45}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v47

    move-object/from16 v0, v47

    instance-of v0, v0, Landroid/view/ViewGroup;

    move/from16 v47, v0

    if-eqz v47, :cond_1d

    .line 236
    invoke-virtual/range {v45 .. v45}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v23

    check-cast v23, Landroid/view/ViewGroup;

    .line 237
    .restart local v23    # "parent":Landroid/view/ViewGroup;
    const/16 v47, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 238
    new-instance v44, Landroid/transition/ChangeBounds$2;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeBounds$2;-><init>(Landroid/transition/ChangeBounds;Landroid/view/ViewGroup;)V

    .line 264
    .restart local v44    # "transitionListener":Landroid/transition/Transition$TransitionListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/transition/ChangeBounds;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 266
    .end local v23    # "parent":Landroid/view/ViewGroup;
    .end local v44    # "transitionListener":Landroid/transition/Transition$TransitionListener;
    :cond_1d
    new-instance v47, Landroid/transition/ChangeBounds$3;

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeBounds$3;-><init>(Landroid/transition/ChangeBounds;Landroid/view/View;)V

    move-object/from16 v0, v47

    invoke-virtual {v5, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_0

    .line 276
    .end local v5    # "anim":Landroid/animation/ObjectAnimator;
    .end local v9    # "endBottom":I
    .end local v10    # "endBounds":Landroid/graphics/Rect;
    .end local v12    # "endHeight":I
    .end local v13    # "endLeft":I
    .end local v16    # "endRight":I
    .end local v17    # "endTop":I
    .end local v18    # "endWidth":I
    .end local v21    # "heightDelta":I
    .end local v22    # "numChanges":I
    .end local v25    # "pvh":[Landroid/animation/PropertyValuesHolder;
    .end local v26    # "pvhIndex":I
    .end local v28    # "startBottom":I
    .end local v29    # "startBounds":Landroid/graphics/Rect;
    .end local v31    # "startHeight":I
    .end local v32    # "startLeft":I
    .end local v35    # "startRight":I
    .end local v36    # "startTop":I
    .end local v37    # "startWidth":I
    .end local v42    # "transXDelta":F
    .end local v43    # "transYDelta":F
    .end local v46    # "widthDelta":I
    :cond_1e
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v47, v0

    const-string v48, "android:changeBounds:windowX"

    invoke-interface/range {v47 .. v48}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Ljava/lang/Integer;

    invoke-virtual/range {v47 .. v47}, Ljava/lang/Integer;->intValue()I

    move-result v38

    .line 277
    .local v38, "startX":I
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v47, v0

    const-string v48, "android:changeBounds:windowY"

    invoke-interface/range {v47 .. v48}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Ljava/lang/Integer;

    invoke-virtual/range {v47 .. v47}, Ljava/lang/Integer;->intValue()I

    move-result v39

    .line 278
    .local v39, "startY":I
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v47, v0

    const-string v48, "android:changeBounds:windowX"

    invoke-interface/range {v47 .. v48}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Ljava/lang/Integer;

    invoke-virtual/range {v47 .. v47}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 279
    .local v19, "endX":I
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v47, v0

    const-string v48, "android:changeBounds:windowY"

    invoke-interface/range {v47 .. v48}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Ljava/lang/Integer;

    invoke-virtual/range {v47 .. v47}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 281
    .local v20, "endY":I
    move/from16 v0, v38

    move/from16 v1, v19

    if-ne v0, v1, :cond_1f

    move/from16 v0, v39

    move/from16 v1, v20

    if-eq v0, v1, :cond_20

    .line 282
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/transition/ChangeBounds;->tempLocation:[I

    move-object/from16 v47, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 283
    invoke-virtual/range {v45 .. v45}, Landroid/view/View;->getWidth()I

    move-result v47

    invoke-virtual/range {v45 .. v45}, Landroid/view/View;->getHeight()I

    move-result v48

    sget-object v49, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v47 .. v49}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 285
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 286
    .local v7, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v0, v45

    invoke-virtual {v0, v7}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 287
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v8, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 288
    .local v8, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    const/16 v47, 0x4

    move-object/from16 v0, v45

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 289
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v8}, Landroid/view/ViewGroupOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 290
    new-instance v30, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/transition/ChangeBounds;->tempLocation:[I

    move-object/from16 v47, v0

    const/16 v48, 0x0

    aget v47, v47, v48

    sub-int v47, v38, v47

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/transition/ChangeBounds;->tempLocation:[I

    move-object/from16 v48, v0

    const/16 v49, 0x1

    aget v48, v48, v49

    sub-int v48, v39, v48

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/transition/ChangeBounds;->tempLocation:[I

    move-object/from16 v49, v0

    const/16 v50, 0x0

    aget v49, v49, v50

    sub-int v49, v38, v49

    invoke-virtual/range {v45 .. v45}, Landroid/view/View;->getWidth()I

    move-result v50

    add-int v49, v49, v50

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/transition/ChangeBounds;->tempLocation:[I

    move-object/from16 v50, v0

    const/16 v51, 0x1

    aget v50, v50, v51

    sub-int v50, v39, v50

    invoke-virtual/range {v45 .. v45}, Landroid/view/View;->getHeight()I

    move-result v51

    add-int v50, v50, v51

    move-object/from16 v0, v30

    move/from16 v1, v47

    move/from16 v2, v48

    move/from16 v3, v49

    move/from16 v4, v50

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 293
    .local v30, "startBounds1":Landroid/graphics/Rect;
    new-instance v11, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/transition/ChangeBounds;->tempLocation:[I

    move-object/from16 v47, v0

    const/16 v48, 0x0

    aget v47, v47, v48

    sub-int v47, v19, v47

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/transition/ChangeBounds;->tempLocation:[I

    move-object/from16 v48, v0

    const/16 v49, 0x1

    aget v48, v48, v49

    sub-int v48, v20, v48

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/transition/ChangeBounds;->tempLocation:[I

    move-object/from16 v49, v0

    const/16 v50, 0x0

    aget v49, v49, v50

    sub-int v49, v19, v49

    invoke-virtual/range {v45 .. v45}, Landroid/view/View;->getWidth()I

    move-result v50

    add-int v49, v49, v50

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/transition/ChangeBounds;->tempLocation:[I

    move-object/from16 v50, v0

    const/16 v51, 0x1

    aget v50, v50, v51

    sub-int v50, v20, v50

    invoke-virtual/range {v45 .. v45}, Landroid/view/View;->getHeight()I

    move-result v51

    add-int v50, v50, v51

    move/from16 v0, v47

    move/from16 v1, v48

    move/from16 v2, v49

    move/from16 v3, v50

    invoke-direct {v11, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 296
    .local v11, "endBounds1":Landroid/graphics/Rect;
    const-string v47, "bounds"

    sget-object v48, Landroid/transition/ChangeBounds;->sRectEvaluator:Landroid/animation/RectEvaluator;

    const/16 v49, 0x2

    move/from16 v0, v49

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    aput-object v30, v49, v50

    const/16 v50, 0x1

    aput-object v11, v49, v50

    move-object/from16 v0, v47

    move-object/from16 v1, v48

    move-object/from16 v2, v49

    invoke-static {v8, v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 298
    .restart local v5    # "anim":Landroid/animation/ObjectAnimator;
    new-instance v47, Landroid/transition/ChangeBounds$4;

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v45

    invoke-direct {v0, v1, v2, v8, v3}, Landroid/transition/ChangeBounds$4;-><init>(Landroid/transition/ChangeBounds;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;)V

    move-object/from16 v0, v47

    invoke-virtual {v5, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_0

    .line 308
    .end local v5    # "anim":Landroid/animation/ObjectAnimator;
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "canvas":Landroid/graphics/Canvas;
    .end local v8    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v11    # "endBounds1":Landroid/graphics/Rect;
    .end local v19    # "endX":I
    .end local v20    # "endY":I
    .end local v30    # "startBounds1":Landroid/graphics/Rect;
    .end local v38    # "startX":I
    .end local v39    # "startY":I
    :cond_20
    const/4 v5, 0x0

    goto/16 :goto_0

    .restart local v9    # "endBottom":I
    .restart local v10    # "endBounds":Landroid/graphics/Rect;
    .restart local v12    # "endHeight":I
    .restart local v13    # "endLeft":I
    .restart local v16    # "endRight":I
    .restart local v17    # "endTop":I
    .restart local v18    # "endWidth":I
    .restart local v21    # "heightDelta":I
    .restart local v22    # "numChanges":I
    .restart local v25    # "pvh":[Landroid/animation/PropertyValuesHolder;
    .restart local v27    # "pvhIndex":I
    .restart local v28    # "startBottom":I
    .restart local v29    # "startBounds":Landroid/graphics/Rect;
    .restart local v31    # "startHeight":I
    .restart local v32    # "startLeft":I
    .restart local v35    # "startRight":I
    .restart local v36    # "startTop":I
    .restart local v37    # "startWidth":I
    .restart local v42    # "transXDelta":F
    .restart local v43    # "transYDelta":F
    .restart local v46    # "widthDelta":I
    :cond_21
    move/from16 v26, v27

    .end local v27    # "pvhIndex":I
    .restart local v26    # "pvhIndex":I
    goto/16 :goto_5

    :cond_22
    move/from16 v27, v26

    .end local v26    # "pvhIndex":I
    .restart local v27    # "pvhIndex":I
    goto/16 :goto_4

    .end local v21    # "heightDelta":I
    .end local v42    # "transXDelta":F
    .end local v43    # "transYDelta":F
    .end local v46    # "widthDelta":I
    :cond_23
    move/from16 v26, v27

    .end local v27    # "pvhIndex":I
    .restart local v26    # "pvhIndex":I
    goto/16 :goto_3

    :cond_24
    move/from16 v27, v26

    .end local v26    # "pvhIndex":I
    .restart local v27    # "pvhIndex":I
    goto/16 :goto_2
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Landroid/transition/ChangeBounds;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public setReparent(Z)V
    .locals 0
    .param p1, "reparent"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Landroid/transition/ChangeBounds;->mReparent:Z

    .line 82
    return-void
.end method

.method public setResizeClip(Z)V
    .locals 0
    .param p1, "resizeClip"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Landroid/transition/ChangeBounds;->mResizeClip:Z

    .line 68
    return-void
.end method
