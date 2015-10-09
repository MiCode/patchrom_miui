.class public Landroid/filterpacks/imageproc/ImageEncoder;
.super Landroid/filterfw/core/Filter;
.source "ImageEncoder.java"


# instance fields
.field private mOutputStream:Ljava/io/OutputStream;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "stream"
    .end annotation
.end field

.field private mQuality:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "quality"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 44
    const/16 v0, 0x50

    iput v0, p0, Landroid/filterpacks/imageproc/ImageEncoder;->mQuality:I

    .line 49
    return-void
.end method


# virtual methods
.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 5
    .param p1, "env"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 59
    const-string v2, "image"

    invoke-virtual {p0, v2}, Landroid/filterpacks/imageproc/ImageEncoder;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 60
    .local v1, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 61
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iget v3, p0, Landroid/filterpacks/imageproc/ImageEncoder;->mQuality:I

    iget-object v4, p0, Landroid/filterpacks/imageproc/ImageEncoder;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 62
    return-void
.end method

.method public setupPorts()V
    .locals 3

    .prologue
    .line 53
    const-string v0, "image"

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/ImageEncoder;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 55
    return-void
.end method
