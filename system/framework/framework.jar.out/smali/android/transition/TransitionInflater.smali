.class public Landroid/transition/TransitionInflater;
.super Ljava/lang/Object;
.source "TransitionInflater.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method

.method private createTransitionFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/transition/TransitionSet;)Landroid/transition/Transition;
    .locals 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "transitionSet"    # Landroid/transition/TransitionSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x0

    .line 121
    const/4 v6, 0x0

    .line 125
    .local v6, "transition":Landroid/transition/Transition;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 128
    .local v1, "depth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .local v7, "type":I
    if-ne v7, v11, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v1, :cond_c

    :cond_1
    const/4 v8, 0x1

    if-eq v7, v8, :cond_c

    .line 130
    const/4 v4, 0x0

    .line 132
    .local v4, "newTransition":Z
    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 136
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 137
    .local v3, "name":Ljava/lang/String;
    const-string v8, "fade"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 138
    iget-object v8, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    sget-object v9, Lcom/android/internal/R$styleable;->Fade:[I

    invoke-virtual {v8, p2, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 140
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 142
    .local v2, "fadingMode":I
    new-instance v6, Landroid/transition/Fade;

    .end local v6    # "transition":Landroid/transition/Transition;
    invoke-direct {v6, v2}, Landroid/transition/Fade;-><init>(I)V

    .line 143
    .restart local v6    # "transition":Landroid/transition/Transition;
    const/4 v4, 0x1

    .line 176
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "fadingMode":I
    :cond_2
    :goto_1
    if-nez v6, :cond_3

    const-string/jumbo v8, "targets"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 177
    :cond_3
    if-eqz v4, :cond_0

    .line 178
    invoke-direct {p0, v6, p2}, Landroid/transition/TransitionInflater;->loadTransition(Landroid/transition/Transition;Landroid/util/AttributeSet;)Landroid/transition/Transition;

    .line 179
    if-eqz p3, :cond_0

    .line 180
    invoke-virtual {p3, v6}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    goto :goto_0

    .line 144
    :cond_4
    const-string v8, "changeBounds"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 145
    new-instance v6, Landroid/transition/ChangeBounds;

    .end local v6    # "transition":Landroid/transition/Transition;
    invoke-direct {v6}, Landroid/transition/ChangeBounds;-><init>()V

    .line 146
    .restart local v6    # "transition":Landroid/transition/Transition;
    const/4 v4, 0x1

    goto :goto_1

    .line 147
    :cond_5
    const-string/jumbo v8, "slide"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 148
    new-instance v6, Landroid/transition/Slide;

    .end local v6    # "transition":Landroid/transition/Transition;
    invoke-direct {v6}, Landroid/transition/Slide;-><init>()V

    .line 149
    .restart local v6    # "transition":Landroid/transition/Transition;
    const/4 v4, 0x1

    goto :goto_1

    .line 150
    :cond_6
    const-string v8, "autoTransition"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 151
    new-instance v6, Landroid/transition/AutoTransition;

    .end local v6    # "transition":Landroid/transition/Transition;
    invoke-direct {v6}, Landroid/transition/AutoTransition;-><init>()V

    .line 152
    .restart local v6    # "transition":Landroid/transition/Transition;
    const/4 v4, 0x1

    goto :goto_1

    .line 153
    :cond_7
    const-string/jumbo v8, "recolor"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 154
    new-instance v6, Landroid/transition/Recolor;

    .end local v6    # "transition":Landroid/transition/Transition;
    invoke-direct {v6}, Landroid/transition/Recolor;-><init>()V

    .line 155
    .restart local v6    # "transition":Landroid/transition/Transition;
    const/4 v4, 0x1

    goto :goto_1

    .line 156
    :cond_8
    const-string/jumbo v8, "transitionSet"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 157
    new-instance v6, Landroid/transition/TransitionSet;

    .end local v6    # "transition":Landroid/transition/Transition;
    invoke-direct {v6}, Landroid/transition/TransitionSet;-><init>()V

    .line 158
    .restart local v6    # "transition":Landroid/transition/Transition;
    iget-object v8, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    sget-object v9, Lcom/android/internal/R$styleable;->TransitionSet:[I

    invoke-virtual {v8, p2, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 160
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v10, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .local v5, "ordering":I
    move-object v8, v6

    .line 163
    check-cast v8, Landroid/transition/TransitionSet;

    invoke-virtual {v8, v5}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    move-object v8, v6

    .line 164
    check-cast v8, Landroid/transition/TransitionSet;

    invoke-direct {p0, p1, p2, v8}, Landroid/transition/TransitionInflater;->createTransitionFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/transition/TransitionSet;)Landroid/transition/Transition;

    .line 165
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 166
    const/4 v4, 0x1

    .line 167
    goto :goto_1

    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v5    # "ordering":I
    :cond_9
    const-string/jumbo v8, "targets"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 168
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-le v8, v1, :cond_a

    if-eqz v6, :cond_a

    .line 170
    invoke-direct {p0, p1, p2, v6}, Landroid/transition/TransitionInflater;->getTargetIds(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/transition/Transition;)V

    goto/16 :goto_1

    .line 171
    :cond_a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v8, v1, :cond_2

    if-eqz p3, :cond_2

    .line 173
    invoke-direct {p0, p1, p2, p3}, Landroid/transition/TransitionInflater;->getTargetIds(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/transition/Transition;)V

    goto/16 :goto_1

    .line 184
    :cond_b
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown scene name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 188
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "newTransition":Z
    :cond_c
    return-object v6
.end method

.method private createTransitionManagerFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/ViewGroup;)Landroid/transition/TransitionManager;
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "sceneRoot"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 259
    .local v0, "depth":I
    const/4 v2, 0x0

    .line 262
    .local v2, "transitionManager":Landroid/transition/TransitionManager;
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_4

    :cond_1
    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    .line 264
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 268
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v4, "transitionManager"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 270
    new-instance v2, Landroid/transition/TransitionManager;

    .end local v2    # "transitionManager":Landroid/transition/TransitionManager;
    invoke-direct {v2}, Landroid/transition/TransitionManager;-><init>()V

    .restart local v2    # "transitionManager":Landroid/transition/TransitionManager;
    goto :goto_0

    .line 271
    :cond_2
    const-string/jumbo v4, "transition"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v2, :cond_3

    .line 272
    invoke-direct {p0, p2, p3, v2}, Landroid/transition/TransitionInflater;->loadTransition(Landroid/util/AttributeSet;Landroid/view/ViewGroup;Landroid/transition/TransitionManager;)V

    goto :goto_0

    .line 274
    :cond_3
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown scene name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 277
    .end local v1    # "name":Ljava/lang/String;
    :cond_4
    return-object v2
.end method

.method public static from(Landroid/content/Context;)Landroid/transition/TransitionInflater;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    new-instance v0, Landroid/transition/TransitionInflater;

    invoke-direct {v0, p0}, Landroid/transition/TransitionInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getTargetIds(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/transition/Transition;)V
    .locals 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "transition"    # Landroid/transition/Transition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 198
    .local v1, "depth":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v6, "targetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .local v7, "type":I
    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v1, :cond_3

    :cond_1
    const/4 v8, 0x1

    if-eq v7, v8, :cond_3

    .line 202
    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 206
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 207
    .local v4, "name":Ljava/lang/String;
    const-string/jumbo v8, "target"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 208
    iget-object v8, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    sget-object v9, Lcom/android/internal/R$styleable;->TransitionTarget:[I

    invoke-virtual {v8, p2, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 210
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 212
    .local v3, "id":I
    if-ltz v3, :cond_0

    .line 213
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 216
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v3    # "id":I
    :cond_2
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown scene name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 219
    .end local v4    # "name":Ljava/lang/String;
    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 220
    .local v5, "numTargets":I
    if-lez v5, :cond_4

    .line 221
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v5, :cond_4

    .line 222
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p3, v8}, Landroid/transition/Transition;->addTarget(I)Landroid/transition/Transition;

    .line 221
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 225
    .end local v2    # "i":I
    :cond_4
    return-void
.end method

.method private loadTransition(Landroid/transition/Transition;Landroid/util/AttributeSet;)Landroid/transition/Transition;
    .locals 12
    .param p1, "transition"    # Landroid/transition/Transition;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 230
    iget-object v6, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/android/internal/R$styleable;->Transition:[I

    invoke-virtual {v6, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 232
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v6, 0x1

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    int-to-long v1, v6

    .line 233
    .local v1, "duration":J
    cmp-long v6, v1, v10

    if-ltz v6, :cond_0

    .line 234
    invoke-virtual {p1, v1, v2}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    .line 236
    :cond_0
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    int-to-long v4, v6

    .line 237
    .local v4, "startDelay":J
    cmp-long v6, v4, v10

    if-lez v6, :cond_1

    .line 238
    invoke-virtual {p1, v4, v5}, Landroid/transition/Transition;->setStartDelay(J)Landroid/transition/Transition;

    .line 240
    :cond_1
    invoke-virtual {v0, v9, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 242
    .local v3, "resID":I
    if-lez v3, :cond_2

    .line 243
    iget-object v6, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-static {v6, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    .line 245
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 246
    return-object p1
.end method

.method private loadTransition(Landroid/util/AttributeSet;Landroid/view/ViewGroup;Landroid/transition/TransitionManager;)V
    .locals 10
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p3, "transitionManager"    # Landroid/transition/TransitionManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    .line 283
    iget-object v7, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/android/internal/R$styleable;->TransitionManager:[I

    invoke-virtual {v7, p1, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 285
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v7, 0x2

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 287
    .local v6, "transitionId":I
    const/4 v2, 0x0

    .local v2, "fromScene":Landroid/transition/Scene;
    const/4 v4, 0x0

    .line 288
    .local v4, "toScene":Landroid/transition/Scene;
    const/4 v7, 0x0

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 290
    .local v1, "fromId":I
    if-ltz v1, :cond_0

    iget-object v7, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-static {p2, v1, v7}, Landroid/transition/Scene;->getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/transition/Scene;

    move-result-object v2

    .line 291
    :cond_0
    const/4 v7, 0x1

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 293
    .local v3, "toId":I
    if-ltz v3, :cond_1

    iget-object v7, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-static {p2, v3, v7}, Landroid/transition/Scene;->getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/transition/Scene;

    move-result-object v4

    .line 294
    :cond_1
    if-ltz v6, :cond_3

    .line 295
    invoke-virtual {p0, v6}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object v5

    .line 296
    .local v5, "transition":Landroid/transition/Transition;
    if-eqz v5, :cond_3

    .line 297
    if-eqz v2, :cond_4

    .line 298
    if-nez v4, :cond_2

    .line 299
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No matching toScene for given fromScene for transition ID "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 302
    :cond_2
    invoke-virtual {p3, v2, v4, v5}, Landroid/transition/TransitionManager;->setTransition(Landroid/transition/Scene;Landroid/transition/Scene;Landroid/transition/Transition;)V

    .line 309
    .end local v5    # "transition":Landroid/transition/Transition;
    :cond_3
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 310
    return-void

    .line 304
    .restart local v5    # "transition":Landroid/transition/Transition;
    :cond_4
    if-ltz v3, :cond_3

    .line 305
    invoke-virtual {p3, v4, v5}, Landroid/transition/TransitionManager;->setTransition(Landroid/transition/Scene;Landroid/transition/Transition;)V

    goto :goto_0
.end method


# virtual methods
.method public inflateTransition(I)Landroid/transition/Transition;
    .locals 5
    .param p1, "resource"    # I

    .prologue
    .line 66
    iget-object v3, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 68
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Landroid/transition/TransitionInflater;->createTransitionFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/transition/TransitionSet;)Landroid/transition/Transition;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 80
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    return-object v3

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v1, Landroid/view/InflateException;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 71
    .local v1, "ex":Landroid/view/InflateException;
    invoke-virtual {v1, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 72
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v1    # "ex":Landroid/view/InflateException;
    :catchall_0
    move-exception v3

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    throw v3

    .line 73
    :catch_1
    move-exception v0

    .line 74
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v1, Landroid/view/InflateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 77
    .restart local v1    # "ex":Landroid/view/InflateException;
    invoke-virtual {v1, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 78
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public inflateTransitionManager(ILandroid/view/ViewGroup;)Landroid/transition/TransitionManager;
    .locals 5
    .param p1, "resource"    # I
    .param p2, "sceneRoot"    # Landroid/view/ViewGroup;

    .prologue
    .line 95
    iget-object v3, p0, Landroid/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 97
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    invoke-direct {p0, v2, v3, p2}, Landroid/transition/TransitionInflater;->createTransitionManagerFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/ViewGroup;)Landroid/transition/TransitionManager;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 109
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    return-object v3

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v1, Landroid/view/InflateException;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 100
    .local v1, "ex":Landroid/view/InflateException;
    invoke-virtual {v1, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 101
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v1    # "ex":Landroid/view/InflateException;
    :catchall_0
    move-exception v3

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    throw v3

    .line 102
    :catch_1
    move-exception v0

    .line 103
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v1, Landroid/view/InflateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 106
    .restart local v1    # "ex":Landroid/view/InflateException;
    invoke-virtual {v1, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 107
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method
