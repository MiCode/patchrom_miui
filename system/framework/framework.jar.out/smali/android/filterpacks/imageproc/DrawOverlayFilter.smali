.class public Landroid/filterpacks/imageproc/DrawOverlayFilter;
.super Landroid/filterfw/core/Filter;
.source "DrawOverlayFilter.java"


# instance fields
.field private mProgram:Landroid/filterfw/core/ShaderProgram;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 44
    return-void
.end method


# virtual methods
.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .prologue
    .line 58
    return-object p2
.end method

.method public prepare(Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 63
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object v0

    iput-object v0, p0, Landroid/filterpacks/imageproc/DrawOverlayFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    .line 64
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 7
    .param p1, "env"    # Landroid/filterfw/core/FilterContext;

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 69
    const-string/jumbo v5, "source"

    invoke-virtual {p0, v5}, Landroid/filterpacks/imageproc/DrawOverlayFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v4

    .line 70
    .local v4, "sourceFrame":Landroid/filterfw/core/Frame;
    const-string/jumbo v5, "overlay"

    invoke-virtual {p0, v5}, Landroid/filterpacks/imageproc/DrawOverlayFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v3

    .line 71
    .local v3, "overlayFrame":Landroid/filterfw/core/Frame;
    const-string v5, "box"

    invoke-virtual {p0, v5}, Landroid/filterpacks/imageproc/DrawOverlayFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 74
    .local v1, "boxFrame":Landroid/filterfw/core/Frame;
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getObjectValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/filterfw/geometry/Quad;

    .line 75
    .local v0, "box":Landroid/filterfw/geometry/Quad;
    invoke-virtual {v0, v6, v6}, Landroid/filterfw/geometry/Quad;->translated(FF)Landroid/filterfw/geometry/Quad;

    move-result-object v5

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {v5, v6}, Landroid/filterfw/geometry/Quad;->scaled(F)Landroid/filterfw/geometry/Quad;

    move-result-object v0

    .line 77
    iget-object v5, p0, Landroid/filterpacks/imageproc/DrawOverlayFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v5, v0}, Landroid/filterfw/core/ShaderProgram;->setTargetRegion(Landroid/filterfw/geometry/Quad;)V

    .line 80
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v5

    invoke-virtual {v4}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v2

    .line 81
    .local v2, "output":Landroid/filterfw/core/Frame;
    invoke-virtual {v2, v4}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    .line 84
    iget-object v5, p0, Landroid/filterpacks/imageproc/DrawOverlayFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v5, v3, v2}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 87
    const-string v5, "image"

    invoke-virtual {p0, v5, v2}, Landroid/filterpacks/imageproc/DrawOverlayFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 90
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 91
    return-void
.end method

.method public setupPorts()V
    .locals 4

    .prologue
    const/4 v1, 0x3

    .line 48
    invoke-static {v1, v1}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 50
    .local v0, "imageFormatMask":Landroid/filterfw/core/FrameFormat;
    const-string/jumbo v1, "source"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/imageproc/DrawOverlayFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 51
    const-string/jumbo v1, "overlay"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/imageproc/DrawOverlayFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 52
    const-string v1, "box"

    const-class v2, Landroid/filterfw/geometry/Quad;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/filterpacks/imageproc/DrawOverlayFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 53
    const-string v1, "image"

    const-string/jumbo v2, "source"

    invoke-virtual {p0, v1, v2}, Landroid/filterpacks/imageproc/DrawOverlayFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method
