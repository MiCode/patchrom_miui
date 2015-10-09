.class public Landroid/graphics/drawable/ScaleDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ScaleDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/ScaleDrawable$1;,
        Landroid/graphics/drawable/ScaleDrawable$ScaleState;
    }
.end annotation


# instance fields
.field private mMutated:Z

.field private mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, v0, v0}, Landroid/graphics/drawable/ScaleDrawable;-><init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;IFF)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "gravity"    # I
    .param p3, "scaleWidth"    # F
    .param p4, "scaleHeight"    # F

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, v0, v0}, Landroid/graphics/drawable/ScaleDrawable;-><init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;)V

    .line 58
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iput-object p1, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 59
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iput p2, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mGravity:I

    .line 60
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iput p3, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleWidth:F

    .line 61
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iput p4, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleHeight:F

    .line 63
    if-eqz p1, :cond_0

    .line 64
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 66
    :cond_0
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "state"    # Landroid/graphics/drawable/ScaleDrawable$ScaleState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 318
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 319
    new-instance v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/ScaleDrawable$ScaleState;-><init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/graphics/drawable/ScaleDrawable;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    .line 320
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;Landroid/graphics/drawable/ScaleDrawable$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/graphics/drawable/ScaleDrawable$ScaleState;
    .param p2, "x1"    # Landroid/content/res/Resources;
    .param p3, "x2"    # Landroid/graphics/drawable/ScaleDrawable$1;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/ScaleDrawable;-><init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private static getPercent(Landroid/content/res/TypedArray;I)F
    .locals 4
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "name"    # I

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 78
    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "f":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    .line 83
    .end local v0    # "f":Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/high16 v2, -0x40800000    # -1.0f

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 151
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-object v0, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-object v0, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 153
    :cond_0
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-object v0, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 157
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget v1, v1, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mChangingConfigurations:I

    or-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-object v1, v1, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    invoke-virtual {v0}, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mChangingConfigurations:I

    .line 251
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    .line 253
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-object v0, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-object v0, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-object v0, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-object v0, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 165
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-object v0, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 10
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
    .line 89
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 93
    sget-object v8, Lcom/android/internal/R$styleable;->ScaleDrawable:[I

    invoke-virtual {p1, p3, v8}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 95
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v8, 0x1

    invoke-static {v0, v8}, Landroid/graphics/drawable/ScaleDrawable;->getPercent(Landroid/content/res/TypedArray;I)F

    move-result v6

    .line 96
    .local v6, "sw":F
    const/4 v8, 0x2

    invoke-static {v0, v8}, Landroid/graphics/drawable/ScaleDrawable;->getPercent(Landroid/content/res/TypedArray;I)F

    move-result v5

    .line 97
    .local v5, "sh":F
    const/4 v8, 0x3

    const/4 v9, 0x3

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 98
    .local v2, "g":I
    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 100
    .local v3, "min":Z
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 102
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 104
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    .line 106
    .local v4, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .local v7, "type":I
    const/4 v8, 0x1

    if-eq v7, v8, :cond_2

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v4, :cond_2

    .line 107
    :cond_1
    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 110
    invoke-static {p1, p2, p3}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 113
    :cond_2
    if-nez v1, :cond_3

    .line 114
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "No drawable specified for <scale>"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 117
    :cond_3
    iget-object v8, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iput-object v1, v8, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 118
    iget-object v8, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iput v6, v8, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleWidth:F

    .line 119
    iget-object v8, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iput v5, v8, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleHeight:F

    .line 120
    iget-object v8, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iput v2, v8, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mGravity:I

    .line 121
    iget-object v8, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iput-boolean v3, v8, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mUseIntrinsicSizeAsMin:Z

    .line 122
    if-eqz v1, :cond_4

    .line 123
    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 125
    :cond_4
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 130
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    :cond_0
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-object v0, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 259
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-object v0, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 260
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mMutated:Z

    .line 262
    :cond_0
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 13
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v0, 0x0

    const v12, 0x461c4000    # 10000.0f

    const/4 v11, 0x0

    .line 216
    iget-object v4, p0, Landroid/graphics/drawable/ScaleDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 217
    .local v4, "r":Landroid/graphics/Rect;
    iget-object v3, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-boolean v9, v3, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mUseIntrinsicSizeAsMin:Z

    .line 218
    .local v9, "min":Z
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getLevel()I

    move-result v8

    .line 219
    .local v8, "level":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 220
    .local v1, "w":I
    iget-object v3, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget v3, v3, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleWidth:F

    cmpl-float v3, v3, v11

    if-lez v3, :cond_0

    .line 221
    if-eqz v9, :cond_3

    iget-object v3, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-object v3, v3, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 222
    .local v7, "iw":I
    :goto_0
    sub-int v3, v1, v7

    rsub-int v10, v8, 0x2710

    mul-int/2addr v3, v10

    int-to-float v3, v3

    iget-object v10, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget v10, v10, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleWidth:F

    mul-float/2addr v3, v10

    div-float/2addr v3, v12

    float-to-int v3, v3

    sub-int/2addr v1, v3

    .line 224
    .end local v7    # "iw":I
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 225
    .local v2, "h":I
    iget-object v3, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget v3, v3, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleHeight:F

    cmpl-float v3, v3, v11

    if-lez v3, :cond_1

    .line 226
    if-eqz v9, :cond_4

    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-object v0, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 227
    .local v6, "ih":I
    :goto_1
    sub-int v0, v2, v6

    rsub-int v3, v8, 0x2710

    mul-int/2addr v0, v3

    int-to-float v0, v0

    iget-object v3, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget v3, v3, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleHeight:F

    mul-float/2addr v0, v3

    div-float/2addr v0, v12

    float-to-int v0, v0

    sub-int/2addr v2, v0

    .line 229
    .end local v6    # "ih":I
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getLayoutDirection()I

    move-result v5

    .line 230
    .local v5, "layoutDirection":I
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget v0, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mGravity:I

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 232
    if-lez v1, :cond_2

    if-lez v2, :cond_2

    .line 233
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-object v0, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, v4, Landroid/graphics/Rect;->left:I

    iget v10, v4, Landroid/graphics/Rect;->top:I

    iget v11, v4, Landroid/graphics/Rect;->right:I

    iget v12, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v3, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 235
    :cond_2
    return-void

    .end local v2    # "h":I
    .end local v5    # "layoutDirection":I
    :cond_3
    move v7, v0

    .line 221
    goto :goto_0

    .restart local v2    # "h":I
    :cond_4
    move v6, v0

    .line 226
    goto :goto_1
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 208
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-object v0, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 209
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/ScaleDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 210
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->invalidateSelf()V

    .line 211
    const/4 v0, 0x1

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 2
    .param p1, "state"    # [I

    .prologue
    .line 201
    iget-object v1, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-object v1, v1, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    .line 202
    .local v0, "changed":Z
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/ScaleDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 203
    return v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .prologue
    .line 136
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 139
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 176
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-object v0, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 177
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 186
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-object v0, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 187
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .prologue
    .line 170
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-object v0, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 171
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .prologue
    .line 142
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 145
    :cond_0
    return-void
.end method
