.class public Landroid/graphics/drawable/TransitionDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "TransitionDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/TransitionDrawable$1;,
        Landroid/graphics/drawable/TransitionDrawable$TransitionState;
    }
.end annotation


# static fields
.field private static final TRANSITION_NONE:I = 0x2

.field private static final TRANSITION_RUNNING:I = 0x1

.field private static final TRANSITION_STARTING:I


# instance fields
.field private mAlpha:I

.field private mCrossFade:Z

.field private mDuration:I

.field private mFrom:I

.field private mOriginalDuration:I

.field private mReverse:Z

.field private mStartTimeMillis:J

.field private mTo:I

.field private mTransitionState:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 88
    new-instance v1, Landroid/graphics/drawable/TransitionDrawable$TransitionState;

    invoke-direct {v1, v0, v0, v0}, Landroid/graphics/drawable/TransitionDrawable$TransitionState;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/graphics/drawable/TransitionDrawable;Landroid/content/res/Resources;)V

    check-cast v0, Landroid/content/res/Resources;

    invoke-direct {p0, v1, v0}, Landroid/graphics/drawable/TransitionDrawable;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/content/res/Resources;)V

    .line 89
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "state"    # Landroid/graphics/drawable/TransitionDrawable$TransitionState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/LayerDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V

    .line 62
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    .line 93
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/content/res/Resources;Landroid/graphics/drawable/TransitionDrawable$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/graphics/drawable/TransitionDrawable$TransitionState;
    .param p2, "x1"    # Landroid/content/res/Resources;
    .param p3, "x2"    # Landroid/graphics/drawable/TransitionDrawable$1;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/TransitionDrawable;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;[Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "state"    # Landroid/graphics/drawable/TransitionDrawable$TransitionState;
    .param p2, "layers"    # [Landroid/graphics/drawable/Drawable;

    .prologue
    .line 96
    invoke-direct {p0, p2, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/LayerDrawable$LayerState;)V

    .line 62
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    .line 97
    return-void
.end method

.method public constructor <init>([Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "layers"    # [Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 78
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable$TransitionState;

    invoke-direct {v0, v1, v1, v1}, Landroid/graphics/drawable/TransitionDrawable$TransitionState;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/graphics/drawable/TransitionDrawable;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, p1}, Landroid/graphics/drawable/TransitionDrawable;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;[Landroid/graphics/drawable/Drawable;)V

    .line 79
    return-void
.end method


# virtual methods
.method createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/LayerDrawable$LayerState;
    .locals 1
    .param p1, "state"    # Landroid/graphics/drawable/LayerDrawable$LayerState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 101
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable$TransitionState;

    check-cast p1, Landroid/graphics/drawable/TransitionDrawable$TransitionState;

    .end local p1    # "state":Landroid/graphics/drawable/LayerDrawable$LayerState;
    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/TransitionDrawable$TransitionState;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/graphics/drawable/TransitionDrawable;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v13, 0x3f800000    # 1.0f

    const/16 v12, 0xff

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 167
    const/4 v4, 0x1

    .line 169
    .local v4, "done":Z
    iget v8, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    packed-switch v8, :pswitch_data_0

    .line 187
    :cond_0
    :goto_0
    iget v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    .line 188
    .local v0, "alpha":I
    iget-boolean v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mCrossFade:Z

    .line 189
    .local v2, "crossFade":Z
    iget-object v8, p0, Landroid/graphics/drawable/TransitionDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v8, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 191
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    if-eqz v4, :cond_5

    .line 194
    if-eqz v2, :cond_1

    if-nez v0, :cond_2

    .line 195
    :cond_1
    aget-object v7, v1, v7

    iget-object v7, v7, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 197
    :cond_2
    if-ne v0, v12, :cond_3

    .line 198
    aget-object v6, v1, v6

    iget-object v6, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 223
    :cond_3
    :goto_1
    return-void

    .line 171
    .end local v0    # "alpha":I
    .end local v1    # "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .end local v2    # "crossFade":Z
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/graphics/drawable/TransitionDrawable;->mStartTimeMillis:J

    .line 172
    const/4 v4, 0x0

    .line 173
    iput v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    goto :goto_0

    .line 177
    :pswitch_1
    iget-wide v8, p0, Landroid/graphics/drawable/TransitionDrawable;->mStartTimeMillis:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-ltz v8, :cond_0

    .line 178
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Landroid/graphics/drawable/TransitionDrawable;->mStartTimeMillis:J

    sub-long/2addr v8, v10

    long-to-float v8, v8

    iget v9, p0, Landroid/graphics/drawable/TransitionDrawable;->mDuration:I

    int-to-float v9, v9

    div-float v5, v8, v9

    .line 180
    .local v5, "normalized":F
    cmpl-float v8, v5, v13

    if-ltz v8, :cond_4

    move v4, v6

    .line 181
    :goto_2
    invoke-static {v5, v13}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 182
    iget v8, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    int-to-float v8, v8

    iget v9, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    iget v10, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    goto :goto_0

    :cond_4
    move v4, v7

    .line 180
    goto :goto_2

    .line 204
    .end local v5    # "normalized":F
    .restart local v0    # "alpha":I
    .restart local v1    # "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .restart local v2    # "crossFade":Z
    :cond_5
    aget-object v7, v1, v7

    iget-object v3, v7, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 205
    .local v3, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_6

    .line 206
    rsub-int v7, v0, 0xff

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 208
    :cond_6
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 209
    if-eqz v2, :cond_7

    .line 210
    invoke-virtual {v3, v12}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 213
    :cond_7
    if-lez v0, :cond_8

    .line 214
    aget-object v6, v1, v6

    iget-object v3, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 215
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 216
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 217
    invoke-virtual {v3, v12}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 220
    :cond_8
    if-nez v4, :cond_3

    .line 221
    invoke-virtual {p0}, Landroid/graphics/drawable/TransitionDrawable;->invalidateSelf()V

    goto :goto_1

    .line 169
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isCrossFadeEnabled()Z
    .locals 1

    .prologue
    .line 243
    iget-boolean v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mCrossFade:Z

    return v0
.end method

.method public resetTransition()V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    .line 124
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    .line 125
    invoke-virtual {p0}, Landroid/graphics/drawable/TransitionDrawable;->invalidateSelf()V

    .line 126
    return-void
.end method

.method public reverseTransition(I)V
    .locals 9
    .param p1, "duration"    # I

    .prologue
    const/4 v2, 0x1

    const/16 v4, 0xff

    const/4 v3, 0x0

    .line 137
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 139
    .local v0, "time":J
    iget-wide v5, p0, Landroid/graphics/drawable/TransitionDrawable;->mStartTimeMillis:J

    sub-long v5, v0, v5

    iget v7, p0, Landroid/graphics/drawable/TransitionDrawable;->mDuration:I

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    .line 140
    iget v5, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    if-nez v5, :cond_0

    .line 141
    iput v3, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    .line 142
    iput v4, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    .line 143
    iput v3, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    .line 144
    iput-boolean v3, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    .line 151
    :goto_0
    iput p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mOriginalDuration:I

    iput p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mDuration:I

    .line 152
    iput v3, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    .line 153
    invoke-virtual {p0}, Landroid/graphics/drawable/TransitionDrawable;->invalidateSelf()V

    .line 163
    :goto_1
    return-void

    .line 146
    :cond_0
    iput v4, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    .line 147
    iput v3, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    .line 148
    iput v4, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    .line 149
    iput-boolean v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    goto :goto_0

    .line 157
    :cond_1
    iget-boolean v5, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    if-nez v5, :cond_2

    :goto_2
    iput-boolean v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    .line 158
    iget v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    iput v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    .line 159
    iget-boolean v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    if-eqz v2, :cond_3

    move v2, v3

    :goto_3
    iput v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    .line 160
    iget-boolean v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    if-eqz v2, :cond_4

    iget-wide v4, p0, Landroid/graphics/drawable/TransitionDrawable;->mStartTimeMillis:J

    sub-long v4, v0, v4

    :goto_4
    long-to-int v2, v4

    iput v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mDuration:I

    .line 162
    iput v3, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    goto :goto_1

    :cond_2
    move v2, v3

    .line 157
    goto :goto_2

    :cond_3
    move v2, v4

    .line 159
    goto :goto_3

    .line 160
    :cond_4
    iget v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mOriginalDuration:I

    int-to-long v4, v2

    iget-wide v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mStartTimeMillis:J

    sub-long v6, v0, v6

    sub-long/2addr v4, v6

    goto :goto_4
.end method

.method public setCrossFadeEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 234
    iput-boolean p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mCrossFade:Z

    .line 235
    return-void
.end method

.method public startTransition(I)V
    .locals 2
    .param p1, "durationMillis"    # I

    .prologue
    const/4 v1, 0x0

    .line 110
    iput v1, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    .line 111
    const/16 v0, 0xff

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    .line 112
    iput v1, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    .line 113
    iput p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mOriginalDuration:I

    iput p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mDuration:I

    .line 114
    iput-boolean v1, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    .line 115
    iput v1, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    .line 116
    invoke-virtual {p0}, Landroid/graphics/drawable/TransitionDrawable;->invalidateSelf()V

    .line 117
    return-void
.end method
