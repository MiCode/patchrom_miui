.class Landroid/animation/KeyframeSet;
.super Ljava/lang/Object;
.source "KeyframeSet.java"


# instance fields
.field mEvaluator:Landroid/animation/TypeEvaluator;

.field mFirstKeyframe:Landroid/animation/Keyframe;

.field mInterpolator:Landroid/animation/TimeInterpolator;

.field mKeyframes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Keyframe;",
            ">;"
        }
    .end annotation
.end field

.field mLastKeyframe:Landroid/animation/Keyframe;

.field mNumKeyframes:I


# direct methods
.method public varargs constructor <init>([Landroid/animation/Keyframe;)V
    .locals 2
    .param p1, "keyframes"    # [Landroid/animation/Keyframe;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    array-length v0, p1

    iput v0, p0, Landroid/animation/KeyframeSet;->mNumKeyframes:I

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    .line 45
    iget-object v0, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 46
    iget-object v0, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Keyframe;

    iput-object v0, p0, Landroid/animation/KeyframeSet;->mFirstKeyframe:Landroid/animation/Keyframe;

    .line 47
    iget-object v0, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    iget v1, p0, Landroid/animation/KeyframeSet;->mNumKeyframes:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Keyframe;

    iput-object v0, p0, Landroid/animation/KeyframeSet;->mLastKeyframe:Landroid/animation/Keyframe;

    .line 48
    iget-object v0, p0, Landroid/animation/KeyframeSet;->mLastKeyframe:Landroid/animation/Keyframe;

    invoke-virtual {v0}, Landroid/animation/Keyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    iput-object v0, p0, Landroid/animation/KeyframeSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 49
    return-void
.end method

.method public static varargs ofFloat([F)Landroid/animation/KeyframeSet;
    .locals 8
    .param p0, "values"    # [F

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, "badValue":Z
    array-length v3, p0

    .line 70
    .local v3, "numKeyframes":I
    const/4 v4, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    new-array v2, v4, [Landroid/animation/Keyframe$FloatKeyframe;

    .line 71
    .local v2, "keyframes":[Landroid/animation/Keyframe$FloatKeyframe;
    if-ne v3, v7, :cond_2

    .line 72
    invoke-static {v5}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    move-result-object v4

    check-cast v4, Landroid/animation/Keyframe$FloatKeyframe;

    aput-object v4, v2, v6

    .line 73
    const/high16 v4, 0x3f800000    # 1.0f

    aget v5, p0, v6

    invoke-static {v4, v5}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    check-cast v4, Landroid/animation/Keyframe$FloatKeyframe;

    aput-object v4, v2, v7

    .line 74
    aget v4, p0, v6

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 75
    const/4 v0, 0x1

    .line 87
    :cond_0
    if-eqz v0, :cond_1

    .line 88
    const-string v4, "Animator"

    const-string v5, "Bad value (NaN) in float animator"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_1
    new-instance v4, Landroid/animation/FloatKeyframeSet;

    invoke-direct {v4, v2}, Landroid/animation/FloatKeyframeSet;-><init>([Landroid/animation/Keyframe$FloatKeyframe;)V

    return-object v4

    .line 78
    :cond_2
    aget v4, p0, v6

    invoke-static {v5, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    check-cast v4, Landroid/animation/Keyframe$FloatKeyframe;

    aput-object v4, v2, v6

    .line 79
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 80
    int-to-float v4, v1

    add-int/lit8 v5, v3, -0x1

    int-to-float v5, v5

    div-float/2addr v4, v5

    aget v5, p0, v1

    invoke-static {v4, v5}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    check-cast v4, Landroid/animation/Keyframe$FloatKeyframe;

    aput-object v4, v2, v1

    .line 82
    aget v4, p0, v1

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 83
    const/4 v0, 0x1

    .line 79
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static varargs ofInt([I)Landroid/animation/KeyframeSet;
    .locals 7
    .param p0, "values"    # [I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 52
    array-length v2, p0

    .line 53
    .local v2, "numKeyframes":I
    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-array v1, v3, [Landroid/animation/Keyframe$IntKeyframe;

    .line 54
    .local v1, "keyframes":[Landroid/animation/Keyframe$IntKeyframe;
    if-ne v2, v6, :cond_1

    .line 55
    invoke-static {v5}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    move-result-object v3

    check-cast v3, Landroid/animation/Keyframe$IntKeyframe;

    aput-object v3, v1, v4

    .line 56
    const/high16 v3, 0x3f800000    # 1.0f

    aget v4, p0, v4

    invoke-static {v3, v4}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v3

    check-cast v3, Landroid/animation/Keyframe$IntKeyframe;

    aput-object v3, v1, v6

    .line 64
    :cond_0
    new-instance v3, Landroid/animation/IntKeyframeSet;

    invoke-direct {v3, v1}, Landroid/animation/IntKeyframeSet;-><init>([Landroid/animation/Keyframe$IntKeyframe;)V

    return-object v3

    .line 58
    :cond_1
    aget v3, p0, v4

    invoke-static {v5, v3}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v3

    check-cast v3, Landroid/animation/Keyframe$IntKeyframe;

    aput-object v3, v1, v4

    .line 59
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 60
    int-to-float v3, v0

    add-int/lit8 v4, v2, -0x1

    int-to-float v4, v4

    div-float/2addr v3, v4

    aget v4, p0, v0

    invoke-static {v3, v4}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v3

    check-cast v3, Landroid/animation/Keyframe$IntKeyframe;

    aput-object v3, v1, v0

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static varargs ofKeyframe([Landroid/animation/Keyframe;)Landroid/animation/KeyframeSet;
    .locals 8
    .param p0, "keyframes"    # [Landroid/animation/Keyframe;

    .prologue
    .line 95
    array-length v6, p0

    .line 96
    .local v6, "numKeyframes":I
    const/4 v1, 0x0

    .line 97
    .local v1, "hasFloat":Z
    const/4 v2, 0x0

    .line 98
    .local v2, "hasInt":Z
    const/4 v3, 0x0

    .line 99
    .local v3, "hasOther":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v6, :cond_2

    .line 100
    aget-object v7, p0, v4

    instance-of v7, v7, Landroid/animation/Keyframe$FloatKeyframe;

    if-eqz v7, :cond_0

    .line 101
    const/4 v1, 0x1

    .line 99
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 102
    :cond_0
    aget-object v7, p0, v4

    instance-of v7, v7, Landroid/animation/Keyframe$IntKeyframe;

    if-eqz v7, :cond_1

    .line 103
    const/4 v2, 0x1

    goto :goto_1

    .line 105
    :cond_1
    const/4 v3, 0x1

    goto :goto_1

    .line 108
    :cond_2
    if-eqz v1, :cond_4

    if-nez v2, :cond_4

    if-nez v3, :cond_4

    .line 109
    new-array v0, v6, [Landroid/animation/Keyframe$FloatKeyframe;

    .line 110
    .local v0, "floatKeyframes":[Landroid/animation/Keyframe$FloatKeyframe;
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v6, :cond_3

    .line 111
    aget-object v7, p0, v4

    check-cast v7, Landroid/animation/Keyframe$FloatKeyframe;

    aput-object v7, v0, v4

    .line 110
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 113
    :cond_3
    new-instance v7, Landroid/animation/FloatKeyframeSet;

    invoke-direct {v7, v0}, Landroid/animation/FloatKeyframeSet;-><init>([Landroid/animation/Keyframe$FloatKeyframe;)V

    .line 121
    .end local v0    # "floatKeyframes":[Landroid/animation/Keyframe$FloatKeyframe;
    :goto_3
    return-object v7

    .line 114
    :cond_4
    if-eqz v2, :cond_6

    if-nez v1, :cond_6

    if-nez v3, :cond_6

    .line 115
    new-array v5, v6, [Landroid/animation/Keyframe$IntKeyframe;

    .line 116
    .local v5, "intKeyframes":[Landroid/animation/Keyframe$IntKeyframe;
    const/4 v4, 0x0

    :goto_4
    if-ge v4, v6, :cond_5

    .line 117
    aget-object v7, p0, v4

    check-cast v7, Landroid/animation/Keyframe$IntKeyframe;

    aput-object v7, v5, v4

    .line 116
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 119
    :cond_5
    new-instance v7, Landroid/animation/IntKeyframeSet;

    invoke-direct {v7, v5}, Landroid/animation/IntKeyframeSet;-><init>([Landroid/animation/Keyframe$IntKeyframe;)V

    goto :goto_3

    .line 121
    .end local v5    # "intKeyframes":[Landroid/animation/Keyframe$IntKeyframe;
    :cond_6
    new-instance v7, Landroid/animation/KeyframeSet;

    invoke-direct {v7, p0}, Landroid/animation/KeyframeSet;-><init>([Landroid/animation/Keyframe;)V

    goto :goto_3
.end method

.method public static varargs ofObject([Ljava/lang/Object;)Landroid/animation/KeyframeSet;
    .locals 7
    .param p0, "values"    # [Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 126
    array-length v2, p0

    .line 127
    .local v2, "numKeyframes":I
    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-array v1, v3, [Landroid/animation/Keyframe$ObjectKeyframe;

    .line 128
    .local v1, "keyframes":[Landroid/animation/Keyframe$ObjectKeyframe;
    if-ne v2, v6, :cond_1

    .line 129
    invoke-static {v5}, Landroid/animation/Keyframe;->ofObject(F)Landroid/animation/Keyframe;

    move-result-object v3

    check-cast v3, Landroid/animation/Keyframe$ObjectKeyframe;

    aput-object v3, v1, v4

    .line 130
    const/high16 v3, 0x3f800000    # 1.0f

    aget-object v4, p0, v4

    invoke-static {v3, v4}, Landroid/animation/Keyframe;->ofObject(FLjava/lang/Object;)Landroid/animation/Keyframe;

    move-result-object v3

    check-cast v3, Landroid/animation/Keyframe$ObjectKeyframe;

    aput-object v3, v1, v6

    .line 137
    :cond_0
    new-instance v3, Landroid/animation/KeyframeSet;

    invoke-direct {v3, v1}, Landroid/animation/KeyframeSet;-><init>([Landroid/animation/Keyframe;)V

    return-object v3

    .line 132
    :cond_1
    aget-object v3, p0, v4

    invoke-static {v5, v3}, Landroid/animation/Keyframe;->ofObject(FLjava/lang/Object;)Landroid/animation/Keyframe;

    move-result-object v3

    check-cast v3, Landroid/animation/Keyframe$ObjectKeyframe;

    aput-object v3, v1, v4

    .line 133
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 134
    int-to-float v3, v0

    add-int/lit8 v4, v2, -0x1

    int-to-float v4, v4

    div-float/2addr v3, v4

    aget-object v4, p0, v0

    invoke-static {v3, v4}, Landroid/animation/Keyframe;->ofObject(FLjava/lang/Object;)Landroid/animation/Keyframe;

    move-result-object v3

    check-cast v3, Landroid/animation/Keyframe$ObjectKeyframe;

    aput-object v3, v1, v0

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public clone()Landroid/animation/KeyframeSet;
    .locals 6

    .prologue
    .line 154
    iget-object v1, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    .line 155
    .local v1, "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Keyframe;>;"
    iget-object v5, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 156
    .local v4, "numKeyframes":I
    new-array v2, v4, [Landroid/animation/Keyframe;

    .line 157
    .local v2, "newKeyframes":[Landroid/animation/Keyframe;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 158
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Keyframe;

    invoke-virtual {v5}, Landroid/animation/Keyframe;->clone()Landroid/animation/Keyframe;

    move-result-object v5

    aput-object v5, v2, v0

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    :cond_0
    new-instance v3, Landroid/animation/KeyframeSet;

    invoke-direct {v3, v2}, Landroid/animation/KeyframeSet;-><init>([Landroid/animation/Keyframe;)V

    .line 161
    .local v3, "newSet":Landroid/animation/KeyframeSet;
    return-object v3
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0}, Landroid/animation/KeyframeSet;->clone()Landroid/animation/KeyframeSet;

    move-result-object v0

    return-object v0
.end method

.method public getValue(F)Ljava/lang/Object;
    .locals 9
    .param p1, "fraction"    # F

    .prologue
    .line 179
    iget v6, p0, Landroid/animation/KeyframeSet;->mNumKeyframes:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 180
    iget-object v6, p0, Landroid/animation/KeyframeSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    if-eqz v6, :cond_0

    .line 181
    iget-object v6, p0, Landroid/animation/KeyframeSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v6, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    .line 183
    :cond_0
    iget-object v6, p0, Landroid/animation/KeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    iget-object v7, p0, Landroid/animation/KeyframeSet;->mFirstKeyframe:Landroid/animation/Keyframe;

    invoke-virtual {v7}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v7

    iget-object v8, p0, Landroid/animation/KeyframeSet;->mLastKeyframe:Landroid/animation/Keyframe;

    invoke-virtual {v8}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, p1, v7, v8}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 226
    :goto_0
    return-object v6

    .line 186
    :cond_1
    const/4 v6, 0x0

    cmpg-float v6, p1, v6

    if-gtz v6, :cond_3

    .line 187
    iget-object v6, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Keyframe;

    .line 188
    .local v3, "nextKeyframe":Landroid/animation/Keyframe;
    invoke-virtual {v3}, Landroid/animation/Keyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v1

    .line 189
    .local v1, "interpolator":Landroid/animation/TimeInterpolator;
    if-eqz v1, :cond_2

    .line 190
    invoke-interface {v1, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    .line 192
    :cond_2
    iget-object v6, p0, Landroid/animation/KeyframeSet;->mFirstKeyframe:Landroid/animation/Keyframe;

    invoke-virtual {v6}, Landroid/animation/Keyframe;->getFraction()F

    move-result v4

    .line 193
    .local v4, "prevFraction":F
    sub-float v6, p1, v4

    invoke-virtual {v3}, Landroid/animation/Keyframe;->getFraction()F

    move-result v7

    sub-float/2addr v7, v4

    div-float v2, v6, v7

    .line 195
    .local v2, "intervalFraction":F
    iget-object v6, p0, Landroid/animation/KeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    iget-object v7, p0, Landroid/animation/KeyframeSet;->mFirstKeyframe:Landroid/animation/Keyframe;

    invoke-virtual {v7}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v2, v7, v8}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    .line 197
    .end local v1    # "interpolator":Landroid/animation/TimeInterpolator;
    .end local v2    # "intervalFraction":F
    .end local v3    # "nextKeyframe":Landroid/animation/Keyframe;
    .end local v4    # "prevFraction":F
    :cond_3
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, p1, v6

    if-ltz v6, :cond_5

    .line 198
    iget-object v6, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    iget v7, p0, Landroid/animation/KeyframeSet;->mNumKeyframes:I

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Keyframe;

    .line 199
    .local v5, "prevKeyframe":Landroid/animation/Keyframe;
    iget-object v6, p0, Landroid/animation/KeyframeSet;->mLastKeyframe:Landroid/animation/Keyframe;

    invoke-virtual {v6}, Landroid/animation/Keyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v1

    .line 200
    .restart local v1    # "interpolator":Landroid/animation/TimeInterpolator;
    if-eqz v1, :cond_4

    .line 201
    invoke-interface {v1, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    .line 203
    :cond_4
    invoke-virtual {v5}, Landroid/animation/Keyframe;->getFraction()F

    move-result v4

    .line 204
    .restart local v4    # "prevFraction":F
    sub-float v6, p1, v4

    iget-object v7, p0, Landroid/animation/KeyframeSet;->mLastKeyframe:Landroid/animation/Keyframe;

    invoke-virtual {v7}, Landroid/animation/Keyframe;->getFraction()F

    move-result v7

    sub-float/2addr v7, v4

    div-float v2, v6, v7

    .line 206
    .restart local v2    # "intervalFraction":F
    iget-object v6, p0, Landroid/animation/KeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    invoke-virtual {v5}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v7

    iget-object v8, p0, Landroid/animation/KeyframeSet;->mLastKeyframe:Landroid/animation/Keyframe;

    invoke-virtual {v8}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v2, v7, v8}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    .line 209
    .end local v1    # "interpolator":Landroid/animation/TimeInterpolator;
    .end local v2    # "intervalFraction":F
    .end local v4    # "prevFraction":F
    .end local v5    # "prevKeyframe":Landroid/animation/Keyframe;
    :cond_5
    iget-object v5, p0, Landroid/animation/KeyframeSet;->mFirstKeyframe:Landroid/animation/Keyframe;

    .line 210
    .restart local v5    # "prevKeyframe":Landroid/animation/Keyframe;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    iget v6, p0, Landroid/animation/KeyframeSet;->mNumKeyframes:I

    if-ge v0, v6, :cond_8

    .line 211
    iget-object v6, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Keyframe;

    .line 212
    .restart local v3    # "nextKeyframe":Landroid/animation/Keyframe;
    invoke-virtual {v3}, Landroid/animation/Keyframe;->getFraction()F

    move-result v6

    cmpg-float v6, p1, v6

    if-gez v6, :cond_7

    .line 213
    invoke-virtual {v3}, Landroid/animation/Keyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v1

    .line 214
    .restart local v1    # "interpolator":Landroid/animation/TimeInterpolator;
    if-eqz v1, :cond_6

    .line 215
    invoke-interface {v1, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    .line 217
    :cond_6
    invoke-virtual {v5}, Landroid/animation/Keyframe;->getFraction()F

    move-result v4

    .line 218
    .restart local v4    # "prevFraction":F
    sub-float v6, p1, v4

    invoke-virtual {v3}, Landroid/animation/Keyframe;->getFraction()F

    move-result v7

    sub-float/2addr v7, v4

    div-float v2, v6, v7

    .line 220
    .restart local v2    # "intervalFraction":F
    iget-object v6, p0, Landroid/animation/KeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    invoke-virtual {v5}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v2, v7, v8}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto/16 :goto_0

    .line 223
    .end local v1    # "interpolator":Landroid/animation/TimeInterpolator;
    .end local v2    # "intervalFraction":F
    .end local v4    # "prevFraction":F
    :cond_7
    move-object v5, v3

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 226
    .end local v3    # "nextKeyframe":Landroid/animation/Keyframe;
    :cond_8
    iget-object v6, p0, Landroid/animation/KeyframeSet;->mLastKeyframe:Landroid/animation/Keyframe;

    invoke-virtual {v6}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v6

    goto/16 :goto_0
.end method

.method public setEvaluator(Landroid/animation/TypeEvaluator;)V
    .locals 0
    .param p1, "evaluator"    # Landroid/animation/TypeEvaluator;

    .prologue
    .line 149
    iput-object p1, p0, Landroid/animation/KeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    .line 150
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 231
    const-string v1, " "

    .line 232
    .local v1, "returnVal":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Landroid/animation/KeyframeSet;->mNumKeyframes:I

    if-ge v0, v2, :cond_0

    .line 233
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Keyframe;

    invoke-virtual {v2}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 232
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    :cond_0
    return-object v1
.end method
