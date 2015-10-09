.class final Landroid/graphics/drawable/LevelListDrawable$LevelListState;
.super Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
.source "LevelListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/LevelListDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LevelListState"
.end annotation


# instance fields
.field private mHighs:[I

.field private mLows:[I


# direct methods
.method constructor <init>(Landroid/graphics/drawable/LevelListDrawable$LevelListState;Landroid/graphics/drawable/LevelListDrawable;Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "orig"    # Landroid/graphics/drawable/LevelListDrawable$LevelListState;
    .param p2, "owner"    # Landroid/graphics/drawable/LevelListDrawable;
    .param p3, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 161
    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;-><init>(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;Landroid/graphics/drawable/DrawableContainer;Landroid/content/res/Resources;)V

    .line 163
    if-eqz p1, :cond_0

    .line 164
    iget-object v0, p1, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mLows:[I

    iput-object v0, p0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mLows:[I

    .line 165
    iget-object v0, p1, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mHighs:[I

    iput-object v0, p0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mHighs:[I

    .line 170
    :goto_0
    return-void

    .line 167
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->getCapacity()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mLows:[I

    .line 168
    invoke-virtual {p0}, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->getCapacity()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mHighs:[I

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/graphics/drawable/LevelListDrawable$LevelListState;)[I
    .locals 1
    .param p0, "x0"    # Landroid/graphics/drawable/LevelListDrawable$LevelListState;

    .prologue
    .line 156
    iget-object v0, p0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mLows:[I

    return-object v0
.end method

.method static synthetic access$002(Landroid/graphics/drawable/LevelListDrawable$LevelListState;[I)[I
    .locals 0
    .param p0, "x0"    # Landroid/graphics/drawable/LevelListDrawable$LevelListState;
    .param p1, "x1"    # [I

    .prologue
    .line 156
    iput-object p1, p0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mLows:[I

    return-object p1
.end method

.method static synthetic access$100(Landroid/graphics/drawable/LevelListDrawable$LevelListState;)[I
    .locals 1
    .param p0, "x0"    # Landroid/graphics/drawable/LevelListDrawable$LevelListState;

    .prologue
    .line 156
    iget-object v0, p0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mHighs:[I

    return-object v0
.end method

.method static synthetic access$102(Landroid/graphics/drawable/LevelListDrawable$LevelListState;[I)[I
    .locals 0
    .param p0, "x0"    # Landroid/graphics/drawable/LevelListDrawable$LevelListState;
    .param p1, "x1"    # [I

    .prologue
    .line 156
    iput-object p1, p0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mHighs:[I

    return-object p1
.end method


# virtual methods
.method public addLevel(IILandroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "low"    # I
    .param p2, "high"    # I
    .param p3, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 173
    invoke-virtual {p0, p3}, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->addChild(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    .line 174
    .local v0, "pos":I
    iget-object v1, p0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mLows:[I

    aput p1, v1, v0

    .line 175
    iget-object v1, p0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mHighs:[I

    aput p2, v1, v0

    .line 176
    return-void
.end method

.method public growArray(II)V
    .locals 3
    .param p1, "oldSize"    # I
    .param p2, "newSize"    # I

    .prologue
    const/4 v2, 0x0

    .line 202
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->growArray(II)V

    .line 203
    new-array v0, p2, [I

    .line 204
    .local v0, "newInts":[I
    iget-object v1, p0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mLows:[I

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    iput-object v0, p0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mLows:[I

    .line 206
    new-array v0, p2, [I

    .line 207
    iget-object v1, p0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mHighs:[I

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    iput-object v0, p0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mHighs:[I

    .line 209
    return-void
.end method

.method public indexOfLevel(I)I
    .locals 5
    .param p1, "level"    # I

    .prologue
    .line 179
    iget-object v3, p0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mLows:[I

    .line 180
    .local v3, "lows":[I
    iget-object v1, p0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mHighs:[I

    .line 181
    .local v1, "highs":[I
    invoke-virtual {p0}, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->getChildCount()I

    move-result v0

    .line 182
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 183
    aget v4, v3, v2

    if-lt p1, v4, :cond_0

    aget v4, v1, v2

    if-gt p1, v4, :cond_0

    .line 187
    .end local v2    # "i":I
    :goto_1
    return v2

    .line 182
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 187
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 192
    new-instance v0, Landroid/graphics/drawable/LevelListDrawable;

    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/LevelListDrawable;-><init>(Landroid/graphics/drawable/LevelListDrawable$LevelListState;Landroid/content/res/Resources;Landroid/graphics/drawable/LevelListDrawable$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 197
    new-instance v0, Landroid/graphics/drawable/LevelListDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/LevelListDrawable;-><init>(Landroid/graphics/drawable/LevelListDrawable$LevelListState;Landroid/content/res/Resources;Landroid/graphics/drawable/LevelListDrawable$1;)V

    return-object v0
.end method
