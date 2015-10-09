.class public Landroid/filterpacks/imageproc/BitmapSource;
.super Landroid/filterfw/core/Filter;
.source "BitmapSource.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "bitmap"
    .end annotation
.end field

.field private mImageFrame:Landroid/filterfw/core/Frame;

.field private mRecycleBitmap:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "recycleBitmap"
    .end annotation
.end field

.field mRepeatFrame:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "repeatFrame"
    .end annotation
.end field

.field private mTarget:I

.field mTargetString:Ljava/lang/String;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "target"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/filterpacks/imageproc/BitmapSource;->mRecycleBitmap:Z

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/filterpacks/imageproc/BitmapSource;->mRepeatFrame:Z

    .line 56
    return-void
.end method


# virtual methods
.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 90
    const-string v0, "bitmap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "target"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    :cond_0
    iget-object v0, p0, Landroid/filterpacks/imageproc/BitmapSource;->mImageFrame:Landroid/filterfw/core/Frame;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Landroid/filterpacks/imageproc/BitmapSource;->mImageFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterpacks/imageproc/BitmapSource;->mImageFrame:Landroid/filterfw/core/Frame;

    .line 96
    :cond_1
    return-void
.end method

.method public loadImage(Landroid/filterfw/core/FilterContext;)V
    .locals 5
    .param p1, "filterContext"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 71
    iget-object v1, p0, Landroid/filterpacks/imageproc/BitmapSource;->mTargetString:Ljava/lang/String;

    invoke-static {v1}, Landroid/filterfw/core/FrameFormat;->readTargetString(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/filterpacks/imageproc/BitmapSource;->mTarget:I

    .line 72
    iget-object v1, p0, Landroid/filterpacks/imageproc/BitmapSource;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Landroid/filterpacks/imageproc/BitmapSource;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x3

    iget v4, p0, Landroid/filterpacks/imageproc/BitmapSource;->mTarget:I

    invoke-static {v1, v2, v3, v4}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 76
    .local v0, "outputFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v1

    iput-object v1, p0, Landroid/filterpacks/imageproc/BitmapSource;->mImageFrame:Landroid/filterfw/core/Frame;

    .line 77
    iget-object v1, p0, Landroid/filterpacks/imageproc/BitmapSource;->mImageFrame:Landroid/filterfw/core/Frame;

    iget-object v2, p0, Landroid/filterpacks/imageproc/BitmapSource;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/filterfw/core/Frame;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 78
    iget-object v1, p0, Landroid/filterpacks/imageproc/BitmapSource;->mImageFrame:Landroid/filterfw/core/Frame;

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/Frame;->setTimestamp(J)V

    .line 81
    iget-boolean v1, p0, Landroid/filterpacks/imageproc/BitmapSource;->mRecycleBitmap:Z

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Landroid/filterpacks/imageproc/BitmapSource;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 84
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/filterpacks/imageproc/BitmapSource;->mBitmap:Landroid/graphics/Bitmap;

    .line 85
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 2
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 100
    iget-object v0, p0, Landroid/filterpacks/imageproc/BitmapSource;->mImageFrame:Landroid/filterfw/core/Frame;

    if-nez v0, :cond_0

    .line 101
    invoke-virtual {p0, p1}, Landroid/filterpacks/imageproc/BitmapSource;->loadImage(Landroid/filterfw/core/FilterContext;)V

    .line 104
    :cond_0
    const-string v0, "image"

    iget-object v1, p0, Landroid/filterpacks/imageproc/BitmapSource;->mImageFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/BitmapSource;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 106
    iget-boolean v0, p0, Landroid/filterpacks/imageproc/BitmapSource;->mRepeatFrame:Z

    if-nez v0, :cond_1

    .line 107
    const-string v0, "image"

    invoke-virtual {p0, v0}, Landroid/filterpacks/imageproc/BitmapSource;->closeOutputPort(Ljava/lang/String;)V

    .line 109
    :cond_1
    return-void
.end method

.method public setupPorts()V
    .locals 3

    .prologue
    .line 62
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 66
    .local v0, "outputFormat":Landroid/filterfw/core/FrameFormat;
    const-string v1, "image"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/imageproc/BitmapSource;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 67
    return-void
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .param p1, "env"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/filterpacks/imageproc/BitmapSource;->mImageFrame:Landroid/filterfw/core/Frame;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Landroid/filterpacks/imageproc/BitmapSource;->mImageFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterpacks/imageproc/BitmapSource;->mImageFrame:Landroid/filterfw/core/Frame;

    .line 117
    :cond_0
    return-void
.end method
