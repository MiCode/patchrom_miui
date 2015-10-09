.class public Landroid/filterpacks/imageproc/BitmapOverlayFilter;
.super Landroid/filterfw/core/Filter;
.source "BitmapOverlayFilter.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "bitmap"
    .end annotation
.end field

.field private mFrame:Landroid/filterfw/core/Frame;

.field private final mOverlayShader:Ljava/lang/String;

.field private mProgram:Landroid/filterfw/core/Program;

.field private mTarget:I

.field private mTileSize:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "tile_size"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 43
    const/16 v0, 0x280

    iput v0, p0, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->mTileSize:I

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->mTarget:I

    .line 51
    const-string/jumbo v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 original = texture2D(tex_sampler_0, v_texcoord);\n  vec4 mask = texture2D(tex_sampler_1, v_texcoord);\n  gl_FragColor = vec4(original.rgb * (1.0 - mask.a) + mask.rgb, 1.0);\n}\n"

    iput-object v0, p0, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->mOverlayShader:Ljava/lang/String;

    .line 64
    return-void
.end method

.method private createBitmapFrame(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/Frame;
    .locals 5
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    const/4 v4, 0x3

    .line 133
    iget-object v2, p0, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v2, v3, v4, v4}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 138
    .local v0, "format":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 139
    .local v1, "frame":Landroid/filterfw/core/Frame;
    iget-object v2, p0, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/filterfw/core/Frame;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 141
    iget-object v2, p0, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 142
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->mBitmap:Landroid/graphics/Bitmap;

    .line 144
    return-object v1
.end method


# virtual methods
.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .prologue
    .line 74
    return-object p2
.end method

.method public initProgram(Landroid/filterfw/core/FilterContext;I)V
    .locals 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "target"    # I

    .prologue
    .line 78
    packed-switch p2, :pswitch_data_0

    .line 86
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Filter FisheyeFilter does not support frames of target "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 80
    :pswitch_0
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 original = texture2D(tex_sampler_0, v_texcoord);\n  vec4 mask = texture2D(tex_sampler_1, v_texcoord);\n  gl_FragColor = vec4(original.rgb * (1.0 - mask.a) + mask.rgb, 1.0);\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 81
    .local v0, "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 82
    iput-object v0, p0, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 89
    iput p2, p0, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->mTarget:I

    .line 90
    return-void

    .line 78
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 7
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 103
    const-string v5, "image"

    invoke-virtual {p0, v5}, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 104
    .local v1, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    .line 107
    .local v2, "inputFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v4

    .line 110
    .local v4, "output":Landroid/filterfw/core/Frame;
    iget-object v5, p0, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v5

    iget v6, p0, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->mTarget:I

    if-eq v5, v6, :cond_1

    .line 111
    :cond_0
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v5

    invoke-virtual {p0, p1, v5}, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 114
    :cond_1
    iget-object v5, p0, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_2

    .line 115
    invoke-direct {p0, p1}, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->createBitmapFrame(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 117
    .local v0, "frame":Landroid/filterfw/core/Frame;
    const/4 v5, 0x2

    new-array v3, v5, [Landroid/filterfw/core/Frame;

    const/4 v5, 0x0

    aput-object v1, v3, v5

    const/4 v5, 0x1

    aput-object v0, v3, v5

    .line 118
    .local v3, "inputs":[Landroid/filterfw/core/Frame;
    iget-object v5, p0, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v5, v3, v4}, Landroid/filterfw/core/Program;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 120
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 126
    .end local v0    # "frame":Landroid/filterfw/core/Frame;
    .end local v3    # "inputs":[Landroid/filterfw/core/Frame;
    :goto_0
    const-string v5, "image"

    invoke-virtual {p0, v5, v4}, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 129
    invoke-virtual {v4}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 130
    return-void

    .line 122
    :cond_2
    invoke-virtual {v4, v1}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    goto :goto_0
.end method

.method public setupPorts()V
    .locals 2

    .prologue
    .line 68
    const-string v0, "image"

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 69
    const-string v0, "image"

    const-string v1, "image"

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 94
    iget-object v0, p0, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->mFrame:Landroid/filterfw/core/Frame;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->mFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterpacks/imageproc/BitmapOverlayFilter;->mFrame:Landroid/filterfw/core/Frame;

    .line 98
    :cond_0
    return-void
.end method
