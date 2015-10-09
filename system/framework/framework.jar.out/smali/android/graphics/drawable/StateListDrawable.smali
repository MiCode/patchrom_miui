.class public Landroid/graphics/drawable/StateListDrawable;
.super Landroid/graphics/drawable/DrawableContainer;
.source "StateListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/StateListDrawable$1;,
        Landroid/graphics/drawable/StateListDrawable$StateListState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_DITHER:Z = true

.field private static final TAG:Ljava/lang/String; = "StateListDrawable"


# instance fields
.field private mMutated:Z

.field private final mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, v0, v0}, Landroid/graphics/drawable/StateListDrawable;-><init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;)V

    .line 76
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "state"    # Landroid/graphics/drawable/StateListDrawable$StateListState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 326
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer;-><init>()V

    .line 327
    new-instance v0, Landroid/graphics/drawable/StateListDrawable$StateListState;

    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/StateListDrawable$StateListState;-><init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/graphics/drawable/StateListDrawable;Landroid/content/res/Resources;)V

    .line 328
    .local v0, "as":Landroid/graphics/drawable/StateListDrawable$StateListState;
    iput-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    .line 329
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/StateListDrawable;->setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    .line 330
    invoke-virtual {p0}, Landroid/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    .line 331
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;Landroid/graphics/drawable/StateListDrawable$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/graphics/drawable/StateListDrawable$StateListState;
    .param p2, "x1"    # Landroid/content/res/Resources;
    .param p3, "x2"    # Landroid/graphics/drawable/StateListDrawable$1;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/StateListDrawable;-><init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public addState([ILandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "stateSet"    # [I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 86
    if-eqz p2, :cond_0

    .line 87
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/StateListDrawable$StateListState;->addStateSet([ILandroid/graphics/drawable/Drawable;)I

    .line 89
    invoke-virtual {p0}, Landroid/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    .line 91
    :cond_0
    return-void
.end method

.method public getStateCount()I
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable$StateListState;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getStateDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 234
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable$StateListState;->getChild(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getStateDrawableIndex([I)I
    .locals 1
    .param p1, "stateSet"    # [I

    .prologue
    .line 247
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    # invokes: Landroid/graphics/drawable/StateListDrawable$StateListState;->indexOfStateSet([I)I
    invoke-static {v0, p1}, Landroid/graphics/drawable/StateListDrawable$StateListState;->access$000(Landroid/graphics/drawable/StateListDrawable$StateListState;[I)I

    move-result v0

    return v0
.end method

.method getStateListState()Landroid/graphics/drawable/StateListDrawable$StateListState;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    return-object v0
.end method

.method public getStateSet(I)[I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 221
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    iget-object v0, v0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    aget-object v0, v0, p1

    return-object v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 18
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    sget-object v15, Lcom/android/internal/R$styleable;->StateListDrawable:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v15}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 120
    .local v3, "a":Landroid/content/res/TypedArray;
    const/4 v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-super {v0, v1, v2, v3, v15}, Landroid/graphics/drawable/DrawableContainer;->inflateWithAttributes(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/TypedArray;I)V

    .line 123
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    const/16 v16, 0x2

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/drawable/StateListDrawable$StateListState;->setVariablePadding(Z)V

    .line 125
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    const/16 v16, 0x3

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/drawable/StateListDrawable$StateListState;->setConstantSize(Z)V

    .line 127
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    const/16 v16, 0x4

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/drawable/StateListDrawable$StateListState;->setEnterFadeDuration(I)V

    .line 129
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    const/16 v16, 0x5

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/drawable/StateListDrawable$StateListState;->setExitFadeDuration(I)V

    .line 132
    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/graphics/drawable/StateListDrawable;->setDither(Z)V

    .line 135
    const/4 v15, 0x6

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/graphics/drawable/StateListDrawable;->setAutoMirrored(Z)V

    .line 138
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 142
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v15

    add-int/lit8 v8, v15, 0x1

    .line 145
    .local v8, "innerDepth":I
    :cond_0
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    .local v14, "type":I
    const/4 v15, 0x1

    if-eq v14, v15, :cond_8

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    .local v4, "depth":I
    if-ge v4, v8, :cond_1

    const/4 v15, 0x3

    if-eq v14, v15, :cond_8

    .line 147
    :cond_1
    const/4 v15, 0x2

    if-ne v14, v15, :cond_0

    .line 151
    if-gt v4, v8, :cond_0

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    const-string v16, "item"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 155
    const/4 v6, 0x0

    .line 158
    .local v6, "drawableRes":I
    const/4 v9, 0x0

    .line 159
    .local v9, "j":I
    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v11

    .line 160
    .local v11, "numAttrs":I
    new-array v13, v11, [I

    .line 161
    .local v13, "states":[I
    const/4 v7, 0x0

    .local v7, "i":I
    move v10, v9

    .end local v9    # "j":I
    .local v10, "j":I
    :goto_1
    if-ge v7, v11, :cond_2

    .line 162
    move-object/from16 v0, p3

    invoke-interface {v0, v7}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v12

    .line 163
    .local v12, "stateResId":I
    if-nez v12, :cond_3

    .line 172
    .end local v12    # "stateResId":I
    :cond_2
    invoke-static {v13, v10}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v13

    .line 175
    if-eqz v6, :cond_6

    .line 176
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 189
    .local v5, "dr":Landroid/graphics/drawable/Drawable;
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    invoke-virtual {v15, v13, v5}, Landroid/graphics/drawable/StateListDrawable$StateListState;->addStateSet([ILandroid/graphics/drawable/Drawable;)I

    goto :goto_0

    .line 164
    .end local v5    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v12    # "stateResId":I
    :cond_3
    sget v15, Lcom/android/internal/R$attr;->drawable:I

    if-ne v12, v15, :cond_4

    .line 165
    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v7, v15}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v6

    move v9, v10

    .line 161
    .end local v10    # "j":I
    .end local v12    # "stateResId":I
    .restart local v9    # "j":I
    :goto_3
    add-int/lit8 v7, v7, 0x1

    move v10, v9

    .end local v9    # "j":I
    .restart local v10    # "j":I
    goto :goto_1

    .line 167
    .restart local v12    # "stateResId":I
    :cond_4
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "j":I
    .restart local v9    # "j":I
    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v7, v15}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v15

    if-eqz v15, :cond_5

    .end local v12    # "stateResId":I
    :goto_4
    aput v12, v13, v10

    goto :goto_3

    .restart local v12    # "stateResId":I
    :cond_5
    neg-int v12, v12

    goto :goto_4

    .line 178
    .end local v9    # "j":I
    .end local v12    # "stateResId":I
    .restart local v10    # "j":I
    :cond_6
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    const/4 v15, 0x4

    if-eq v14, v15, :cond_6

    .line 180
    const/4 v15, 0x2

    if-eq v14, v15, :cond_7

    .line 181
    new-instance v15, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ": <item> tag requires a \'drawable\' attribute or "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "child tag defining a drawable"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 186
    :cond_7
    invoke-static/range {p1 .. p3}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .restart local v5    # "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_2

    .line 192
    .end local v4    # "depth":I
    .end local v5    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v6    # "drawableRes":I
    .end local v7    # "i":I
    .end local v10    # "j":I
    .end local v11    # "numAttrs":I
    .end local v13    # "states":[I
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    .line 193
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    .line 252
    iget-boolean v4, p0, Landroid/graphics/drawable/StateListDrawable;->mMutated:Z

    if-nez v4, :cond_2

    invoke-super {p0}, Landroid/graphics/drawable/DrawableContainer;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-ne v4, p0, :cond_2

    .line 253
    iget-object v4, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    iget-object v3, v4, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    .line 254
    .local v3, "sets":[[I
    array-length v0, v3

    .line 255
    .local v0, "count":I
    iget-object v4, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    new-array v5, v0, [[I

    iput-object v5, v4, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    .line 256
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 257
    aget-object v2, v3, v1

    .line 258
    .local v2, "set":[I
    if-eqz v2, :cond_0

    .line 259
    iget-object v4, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    iget-object v5, v4, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    aput-object v4, v5, v1

    .line 256
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 262
    .end local v2    # "set":[I
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/graphics/drawable/StateListDrawable;->mMutated:Z

    .line 264
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v3    # "sets":[[I
    :cond_2
    return-object p0
.end method

.method protected onStateChange([I)Z
    .locals 3
    .param p1, "stateSet"    # [I

    .prologue
    .line 100
    iget-object v1, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    # invokes: Landroid/graphics/drawable/StateListDrawable$StateListState;->indexOfStateSet([I)I
    invoke-static {v1, p1}, Landroid/graphics/drawable/StateListDrawable$StateListState;->access$000(Landroid/graphics/drawable/StateListDrawable$StateListState;[I)I

    move-result v0

    .line 103
    .local v0, "idx":I
    if-gez v0, :cond_0

    .line 104
    iget-object v1, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    sget-object v2, Landroid/util/StateSet;->WILD_CARD:[I

    # invokes: Landroid/graphics/drawable/StateListDrawable$StateListState;->indexOfStateSet([I)I
    invoke-static {v1, v2}, Landroid/graphics/drawable/StateListDrawable$StateListState;->access$000(Landroid/graphics/drawable/StateListDrawable$StateListState;[I)I

    move-result v0

    .line 106
    :cond_0
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/StateListDrawable;->selectDrawable(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    const/4 v1, 0x1

    .line 109
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableContainer;->onStateChange([I)Z

    move-result v1

    goto :goto_0
.end method

.method public setLayoutDirection(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 270
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableContainer;->setLayoutDirection(I)V

    .line 274
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable$StateListState;->setLayoutDirection(I)V

    .line 275
    return-void
.end method
