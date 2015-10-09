.class abstract Landroid/view/HardwareLayer;
.super Ljava/lang/Object;
.source "HardwareLayer.java"


# static fields
.field static final DIMENSION_UNDEFINED:I = -0x1


# instance fields
.field mDisplayList:Landroid/view/DisplayList;

.field mHeight:I

.field mOpaque:Z

.field mWidth:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, v1, v1, v0}, Landroid/view/HardwareLayer;-><init>(IIZ)V

    .line 49
    return-void
.end method

.method constructor <init>(IIZ)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "isOpaque"    # Z

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p1, p0, Landroid/view/HardwareLayer;->mWidth:I

    .line 61
    iput p2, p0, Landroid/view/HardwareLayer;->mHeight:I

    .line 62
    iput-boolean p3, p0, Landroid/view/HardwareLayer;->mOpaque:Z

    .line 63
    return-void
.end method


# virtual methods
.method abstract clearStorage()V
.end method

.method abstract copyInto(Landroid/graphics/Bitmap;)Z
.end method

.method abstract destroy()V
.end method

.method abstract end(Landroid/graphics/Canvas;)V
.end method

.method abstract getCanvas()Landroid/view/HardwareCanvas;
.end method

.method getDisplayList()Landroid/view/DisplayList;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Landroid/view/HardwareLayer;->mDisplayList:Landroid/view/DisplayList;

    return-object v0
.end method

.method getHeight()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Landroid/view/HardwareLayer;->mHeight:I

    return v0
.end method

.method getWidth()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Landroid/view/HardwareLayer;->mWidth:I

    return v0
.end method

.method isOpaque()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Landroid/view/HardwareLayer;->mOpaque:Z

    return v0
.end method

.method abstract isValid()Z
.end method

.method abstract redrawLater(Landroid/view/DisplayList;Landroid/graphics/Rect;)V
.end method

.method abstract resize(II)Z
.end method

.method setDisplayList(Landroid/view/DisplayList;)V
    .locals 0
    .param p1, "displayList"    # Landroid/view/DisplayList;

    .prologue
    .line 106
    iput-object p1, p0, Landroid/view/HardwareLayer;->mDisplayList:Landroid/view/DisplayList;

    .line 107
    return-void
.end method

.method setLayerPaint(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 71
    return-void
.end method

.method abstract setOpaque(Z)V
.end method

.method abstract setTransform(Landroid/graphics/Matrix;)V
.end method

.method abstract start(Landroid/graphics/Canvas;)Landroid/view/HardwareCanvas;
.end method

.method abstract start(Landroid/graphics/Canvas;Landroid/graphics/Rect;)Landroid/view/HardwareCanvas;
.end method

.method update(IIZ)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "isOpaque"    # Z

    .prologue
    .line 200
    iput p1, p0, Landroid/view/HardwareLayer;->mWidth:I

    .line 201
    iput p2, p0, Landroid/view/HardwareLayer;->mHeight:I

    .line 202
    iput-boolean p3, p0, Landroid/view/HardwareLayer;->mOpaque:Z

    .line 203
    return-void
.end method
