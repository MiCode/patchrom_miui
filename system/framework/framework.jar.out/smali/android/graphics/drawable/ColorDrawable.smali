.class public Landroid/graphics/drawable/ColorDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ColorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/ColorDrawable$1;,
        Landroid/graphics/drawable/ColorDrawable$ColorState;
    }
.end annotation


# instance fields
.field private mMutated:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private mState:Landroid/graphics/drawable/ColorDrawable$ColorState;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "state_"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(Landroid/graphics/drawable/ColorDrawable$ColorState;)V

    .line 48
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(Landroid/graphics/drawable/ColorDrawable$ColorState;)V

    .line 57
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 58
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/ColorDrawable$ColorState;)V
    .locals 1
    .param p1, "state"    # Landroid/graphics/drawable/ColorDrawable$ColorState;

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mPaint:Landroid/graphics/Paint;

    .line 61
    new-instance v0, Landroid/graphics/drawable/ColorDrawable$ColorState;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable$ColorState;-><init>(Landroid/graphics/drawable/ColorDrawable$ColorState;)V

    iput-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    .line 62
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/ColorDrawable$ColorState;Landroid/graphics/drawable/ColorDrawable$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/graphics/drawable/ColorDrawable$ColorState;
    .param p2, "x1"    # Landroid/graphics/drawable/ColorDrawable$1;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(Landroid/graphics/drawable/ColorDrawable$ColorState;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 86
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iget v0, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mUseColor:I

    ushr-int/lit8 v0, v0, 0x18

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/graphics/drawable/ColorDrawable;->mState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iget v1, v1, Landroid/graphics/drawable/ColorDrawable$ColorState;->mUseColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Landroid/graphics/drawable/ColorDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 90
    :cond_0
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iget v0, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mUseColor:I

    ushr-int/lit8 v0, v0, 0x18

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 66
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/ColorDrawable;->mState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iget v1, v1, Landroid/graphics/drawable/ColorDrawable$ColorState;->mChangingConfigurations:I

    or-int/2addr v0, v1

    return v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iget v0, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mUseColor:I

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mChangingConfigurations:I

    .line 175
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iget v0, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mUseColor:I

    ushr-int/lit8 v0, v0, 0x18

    sparse-switch v0, :sswitch_data_0

    .line 155
    const/4 v0, -0x3

    :goto_0
    return v0

    .line 151
    :sswitch_0
    const/4 v0, -0x1

    goto :goto_0

    .line 153
    :sswitch_1
    const/4 v0, -0x2

    goto :goto_0

    .line 149
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0xff -> :sswitch_0
    .end sparse-switch
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 4
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
    .line 161
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 163
    sget-object v2, Lcom/android/internal/R$styleable;->ColorDrawable:[I

    invoke-virtual {p1, p3, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 165
    .local v0, "a":Landroid/content/res/TypedArray;
    iget-object v2, p0, Landroid/graphics/drawable/ColorDrawable;->mState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iget v1, v2, Landroid/graphics/drawable/ColorDrawable$ColorState;->mBaseColor:I

    .line 166
    .local v1, "color":I
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 167
    iget-object v2, p0, Landroid/graphics/drawable/ColorDrawable;->mState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iget-object v3, p0, Landroid/graphics/drawable/ColorDrawable;->mState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iput v1, v3, Landroid/graphics/drawable/ColorDrawable$ColorState;->mUseColor:I

    iput v1, v2, Landroid/graphics/drawable/ColorDrawable$ColorState;->mBaseColor:I

    .line 169
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 170
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 77
    iget-boolean v0, p0, Landroid/graphics/drawable/ColorDrawable;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 78
    new-instance v0, Landroid/graphics/drawable/ColorDrawable$ColorState;

    iget-object v1, p0, Landroid/graphics/drawable/ColorDrawable;->mState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable$ColorState;-><init>(Landroid/graphics/drawable/ColorDrawable$ColorState;)V

    iput-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/ColorDrawable;->mMutated:Z

    .line 81
    :cond_0
    return-object p0
.end method

.method public setAlpha(I)V
    .locals 6
    .param p1, "alpha"    # I

    .prologue
    .line 130
    shr-int/lit8 v3, p1, 0x7

    add-int/2addr p1, v3

    .line 131
    iget-object v3, p0, Landroid/graphics/drawable/ColorDrawable;->mState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iget v3, v3, Landroid/graphics/drawable/ColorDrawable$ColorState;->mBaseColor:I

    ushr-int/lit8 v0, v3, 0x18

    .line 132
    .local v0, "baseAlpha":I
    mul-int v3, v0, p1

    shr-int/lit8 v2, v3, 0x8

    .line 133
    .local v2, "useAlpha":I
    iget-object v3, p0, Landroid/graphics/drawable/ColorDrawable;->mState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iget v1, v3, Landroid/graphics/drawable/ColorDrawable$ColorState;->mUseColor:I

    .line 134
    .local v1, "oldUseColor":I
    iget-object v3, p0, Landroid/graphics/drawable/ColorDrawable;->mState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iget-object v4, p0, Landroid/graphics/drawable/ColorDrawable;->mState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iget v4, v4, Landroid/graphics/drawable/ColorDrawable$ColorState;->mBaseColor:I

    shl-int/lit8 v4, v4, 0x8

    ushr-int/lit8 v4, v4, 0x8

    shl-int/lit8 v5, v2, 0x18

    or-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/drawable/ColorDrawable$ColorState;->mUseColor:I

    .line 135
    iget-object v3, p0, Landroid/graphics/drawable/ColorDrawable;->mState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iget v3, v3, Landroid/graphics/drawable/ColorDrawable$ColorState;->mUseColor:I

    if-eq v1, v3, :cond_0

    .line 136
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->invalidateSelf()V

    .line 138
    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 108
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iget v0, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mBaseColor:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iget v0, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mUseColor:I

    if-eq v0, p1, :cond_1

    .line 109
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->invalidateSelf()V

    .line 110
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iget-object v1, p0, Landroid/graphics/drawable/ColorDrawable;->mState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iput p1, v1, Landroid/graphics/drawable/ColorDrawable$ColorState;->mUseColor:I

    iput p1, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mBaseColor:I

    .line 112
    :cond_1
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 146
    return-void
.end method
