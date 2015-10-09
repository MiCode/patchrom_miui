.class public Landroid/transition/Crossfade;
.super Landroid/transition/Transition;
.source "Crossfade.java"


# static fields
.field public static final FADE_BEHAVIOR_CROSSFADE:I = 0x0

.field public static final FADE_BEHAVIOR_OUT_IN:I = 0x2

.field public static final FADE_BEHAVIOR_REVEAL:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "Crossfade"

.field private static final PROPNAME_BITMAP:Ljava/lang/String; = "android:crossfade:bitmap"

.field private static final PROPNAME_BOUNDS:Ljava/lang/String; = "android:crossfade:bounds"

.field private static final PROPNAME_DRAWABLE:Ljava/lang/String; = "android:crossfade:drawable"

.field public static final RESIZE_BEHAVIOR_NONE:I = 0x0

.field public static final RESIZE_BEHAVIOR_SCALE:I = 0x1

.field private static sRectEvaluator:Landroid/animation/RectEvaluator;


# instance fields
.field private mFadeBehavior:I

.field private mResizeBehavior:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Landroid/animation/RectEvaluator;

    invoke-direct {v0}, Landroid/animation/RectEvaluator;-><init>()V

    sput-object v0, Landroid/transition/Crossfade;->sRectEvaluator:Landroid/animation/RectEvaluator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 47
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    .line 59
    iput v0, p0, Landroid/transition/Crossfade;->mFadeBehavior:I

    .line 60
    iput v0, p0, Landroid/transition/Crossfade;->mResizeBehavior:I

    return-void
.end method

.method static synthetic access$000(Landroid/transition/Crossfade;)I
    .locals 1
    .param p0, "x0"    # Landroid/transition/Crossfade;

    .prologue
    .line 47
    iget v0, p0, Landroid/transition/Crossfade;->mFadeBehavior:I

    return v0
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .locals 8
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    const/4 v7, 0x0

    .line 261
    iget-object v4, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 262
    .local v4, "view":Landroid/view/View;
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-direct {v1, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 263
    .local v1, "bounds":Landroid/graphics/Rect;
    iget v5, p0, Landroid/transition/Crossfade;->mFadeBehavior:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    .line 264
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 266
    :cond_0
    iget-object v5, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v6, "android:crossfade:bounds"

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 273
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    instance-of v5, v4, Landroid/view/TextureView;

    if-eqz v5, :cond_1

    .line 274
    check-cast v4, Landroid/view/TextureView;

    .end local v4    # "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 279
    :goto_0
    iget-object v5, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v6, "android:crossfade:bitmap"

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 283
    .local v3, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 284
    iget-object v5, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v6, "android:crossfade:drawable"

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    return-void

    .line 276
    .end local v3    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v4    # "view":Landroid/view/View;
    :cond_1
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 277
    .local v2, "c":Landroid/graphics/Canvas;
    invoke-virtual {v4, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 294
    invoke-direct {p0, p1}, Landroid/transition/Crossfade;->captureValues(Landroid/transition/TransitionValues;)V

    .line 295
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 289
    invoke-direct {p0, p1}, Landroid/transition/Crossfade;->captureValues(Landroid/transition/TransitionValues;)V

    .line 290
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 21
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 169
    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 170
    :cond_0
    const/4 v15, 0x0

    .line 256
    :cond_1
    :goto_0
    return-object v15

    .line 172
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Landroid/transition/Crossfade;->mFadeBehavior:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    const/4 v3, 0x1

    .line 173
    .local v3, "useParentOverlay":Z
    :goto_1
    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 174
    .local v4, "view":Landroid/view/View;
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v18, v0

    .line 175
    .local v18, "startVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p3

    iget-object v13, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 176
    .local v13, "endVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "android:crossfade:bounds"

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/graphics/Rect;

    .line 177
    .local v17, "startBounds":Landroid/graphics/Rect;
    const-string v1, "android:crossfade:bounds"

    invoke-interface {v13, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    .line 178
    .local v12, "endBounds":Landroid/graphics/Rect;
    const-string v1, "android:crossfade:bitmap"

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/graphics/Bitmap;

    .line 179
    .local v16, "startBitmap":Landroid/graphics/Bitmap;
    const-string v1, "android:crossfade:bitmap"

    invoke-interface {v13, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Bitmap;

    .line 180
    .local v11, "endBitmap":Landroid/graphics/Bitmap;
    const-string v1, "android:crossfade:drawable"

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    .line 181
    .local v5, "startDrawable":Landroid/graphics/drawable/BitmapDrawable;
    const-string v1, "android:crossfade:drawable"

    invoke-interface {v13, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    .line 186
    .local v6, "endDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v5, :cond_a

    if-eqz v6, :cond_a

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 187
    if-eqz v3, :cond_7

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v14

    .line 189
    .local v14, "overlay":Landroid/view/ViewOverlay;
    :goto_2
    move-object/from16 v0, p0

    iget v1, v0, Landroid/transition/Crossfade;->mFadeBehavior:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 190
    invoke-virtual {v14, v6}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 192
    :cond_3
    invoke-virtual {v14, v5}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 198
    move-object/from16 v0, p0

    iget v1, v0, Landroid/transition/Crossfade;->mFadeBehavior:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    .line 200
    const-string v1, "alpha"

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {v5, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 204
    .local v7, "anim":Landroid/animation/ObjectAnimator;
    :goto_3
    new-instance v1, Landroid/transition/Crossfade$1;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v4, v5}, Landroid/transition/Crossfade$1;-><init>(Landroid/transition/Crossfade;Landroid/view/View;Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-virtual {v7, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 211
    const/4 v8, 0x0

    .line 212
    .local v8, "anim1":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget v1, v0, Landroid/transition/Crossfade;->mFadeBehavior:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_9

    .line 214
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x3

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-static {v4, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 222
    :cond_4
    :goto_4
    new-instance v1, Landroid/transition/Crossfade$2;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Landroid/transition/Crossfade$2;-><init>(Landroid/transition/Crossfade;ZLandroid/view/View;Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-virtual {v7, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 233
    new-instance v15, Landroid/animation/AnimatorSet;

    invoke-direct {v15}, Landroid/animation/AnimatorSet;-><init>()V

    .line 234
    .local v15, "set":Landroid/animation/AnimatorSet;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object v7, v1, v2

    invoke-virtual {v15, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 235
    if-eqz v8, :cond_5

    .line 236
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object v8, v1, v2

    invoke-virtual {v15, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 238
    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Landroid/transition/Crossfade;->mResizeBehavior:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 243
    const-string v1, "bounds"

    sget-object v2, Landroid/transition/Crossfade;->sRectEvaluator:Landroid/animation/RectEvaluator;

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v17, v19, v20

    const/16 v20, 0x1

    aput-object v12, v19, v20

    move-object/from16 v0, v19

    invoke-static {v5, v1, v2, v0}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 245
    .local v9, "anim2":Landroid/animation/Animator;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object v9, v1, v2

    invoke-virtual {v15, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 246
    move-object/from16 v0, p0

    iget v1, v0, Landroid/transition/Crossfade;->mResizeBehavior:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 249
    const-string v1, "bounds"

    sget-object v2, Landroid/transition/Crossfade;->sRectEvaluator:Landroid/animation/RectEvaluator;

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v17, v19, v20

    const/16 v20, 0x1

    aput-object v12, v19, v20

    move-object/from16 v0, v19

    invoke-static {v6, v1, v2, v0}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 251
    .local v10, "anim3":Landroid/animation/Animator;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object v10, v1, v2

    invoke-virtual {v15, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_0

    .line 172
    .end local v3    # "useParentOverlay":Z
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "startDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v6    # "endDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v7    # "anim":Landroid/animation/ObjectAnimator;
    .end local v8    # "anim1":Landroid/animation/ObjectAnimator;
    .end local v9    # "anim2":Landroid/animation/Animator;
    .end local v10    # "anim3":Landroid/animation/Animator;
    .end local v11    # "endBitmap":Landroid/graphics/Bitmap;
    .end local v12    # "endBounds":Landroid/graphics/Rect;
    .end local v13    # "endVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v14    # "overlay":Landroid/view/ViewOverlay;
    .end local v15    # "set":Landroid/animation/AnimatorSet;
    .end local v16    # "startBitmap":Landroid/graphics/Bitmap;
    .end local v17    # "startBounds":Landroid/graphics/Rect;
    .end local v18    # "startVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 187
    .restart local v3    # "useParentOverlay":Z
    .restart local v4    # "view":Landroid/view/View;
    .restart local v5    # "startDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v6    # "endDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v11    # "endBitmap":Landroid/graphics/Bitmap;
    .restart local v12    # "endBounds":Landroid/graphics/Rect;
    .restart local v13    # "endVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v16    # "startBitmap":Landroid/graphics/Bitmap;
    .restart local v17    # "startBounds":Landroid/graphics/Rect;
    .restart local v18    # "startVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_7
    invoke-virtual {v4}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v14

    goto/16 :goto_2

    .line 202
    .restart local v14    # "overlay":Landroid/view/ViewOverlay;
    :cond_8
    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/16 v19, 0x0

    const/16 v20, 0x0

    aput v20, v2, v19

    invoke-static {v5, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .restart local v7    # "anim":Landroid/animation/ObjectAnimator;
    goto/16 :goto_3

    .line 215
    .restart local v8    # "anim1":Landroid/animation/ObjectAnimator;
    :cond_9
    move-object/from16 v0, p0

    iget v1, v0, Landroid/transition/Crossfade;->mFadeBehavior:I

    if-nez v1, :cond_4

    .line 216
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_2

    invoke-static {v4, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    goto/16 :goto_4

    .line 256
    .end local v7    # "anim":Landroid/animation/ObjectAnimator;
    .end local v8    # "anim1":Landroid/animation/ObjectAnimator;
    .end local v14    # "overlay":Landroid/view/ViewOverlay;
    :cond_a
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 200
    :array_0
    .array-data 4
        0xff
        0x0
        0x0
    .end array-data

    .line 214
    :array_1
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 216
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getFadeBehavior()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Landroid/transition/Crossfade;->mFadeBehavior:I

    return v0
.end method

.method public getResizeBehavior()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Landroid/transition/Crossfade;->mResizeBehavior:I

    return v0
.end method

.method public setFadeBehavior(I)Landroid/transition/Crossfade;
    .locals 1
    .param p1, "fadeBehavior"    # I

    .prologue
    .line 125
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    .line 126
    iput p1, p0, Landroid/transition/Crossfade;->mFadeBehavior:I

    .line 128
    :cond_0
    return-object p0
.end method

.method public setResizeBehavior(I)Landroid/transition/Crossfade;
    .locals 1
    .param p1, "resizeBehavior"    # I

    .prologue
    .line 150
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 151
    iput p1, p0, Landroid/transition/Crossfade;->mResizeBehavior:I

    .line 153
    :cond_0
    return-object p0
.end method
