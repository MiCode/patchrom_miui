.class public Landroid/filterpacks/imageproc/ToPackedGrayFilter;
.super Landroid/filterfw/core/Filter;
.source "ToPackedGrayFilter.java"


# instance fields
.field private final mColorToPackedGrayShader:Ljava/lang/String;

.field private mKeepAspectRatio:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "keepAspectRatio"
    .end annotation
.end field

.field private mOHeight:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "oheight"
    .end annotation
.end field

.field private mOWidth:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "owidth"
    .end annotation
.end field

.field private mProgram:Landroid/filterfw/core/Program;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 38
    iput v0, p0, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->mOWidth:I

    .line 40
    iput v0, p0, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->mOHeight:I

    .line 42
    iput-boolean v0, p0, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->mKeepAspectRatio:Z

    .line 47
    const-string/jumbo v0, "precision mediump float;\nconst vec4 coeff_y = vec4(0.299, 0.587, 0.114, 0);\nuniform sampler2D tex_sampler_0;\nuniform float pix_stride;\nvarying vec2 v_texcoord;\nvoid main() {\n  for (int i = 0; i < 4; ++i) {\n    vec4 p = texture2D(tex_sampler_0,\n                       v_texcoord + vec2(pix_stride * float(i), 0.0));\n    gl_FragColor[i] = dot(p, coeff_y);\n  }\n}\n"

    iput-object v0, p0, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->mColorToPackedGrayShader:Ljava/lang/String;

    .line 63
    return-void
.end method

.method private checkOutputDimensions(II)V
    .locals 3
    .param p1, "outputWidth"    # I
    .param p2, "outputHeight"    # I

    .prologue
    .line 78
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid output dimensions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_1
    return-void
.end method

.method private convertInputFormat(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 6
    .param p1, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .prologue
    const/4 v4, 0x4

    .line 85
    iget v2, p0, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->mOWidth:I

    .line 86
    .local v2, "ow":I
    iget v1, p0, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->mOHeight:I

    .line 87
    .local v1, "oh":I
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    .line 88
    .local v3, "w":I
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v0

    .line 89
    .local v0, "h":I
    iget v5, p0, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->mOWidth:I

    if-nez v5, :cond_0

    .line 90
    move v2, v3

    .line 92
    :cond_0
    iget v5, p0, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->mOHeight:I

    if-nez v5, :cond_1

    .line 93
    move v1, v0

    .line 95
    :cond_1
    iget-boolean v5, p0, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->mKeepAspectRatio:Z

    if-eqz v5, :cond_2

    .line 98
    if-le v3, v0, :cond_3

    .line 99
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 100
    mul-int v5, v2, v0

    div-int v1, v5, v3

    .line 106
    :cond_2
    :goto_0
    if-lez v2, :cond_4

    if-ge v2, v4, :cond_4

    move v2, v4

    .line 107
    :goto_1
    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-static {v2, v1, v4, v5}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v4

    return-object v4

    .line 102
    :cond_3
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 103
    mul-int v5, v1, v3

    div-int v2, v5, v0

    goto :goto_0

    .line 106
    :cond_4
    div-int/lit8 v4, v2, 0x4

    mul-int/lit8 v2, v4, 0x4

    goto :goto_1
.end method


# virtual methods
.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 1
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .prologue
    .line 74
    invoke-direct {p0, p2}, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->convertInputFormat(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    return-object v0
.end method

.method public prepare(Landroid/filterfw/core/FilterContext;)V
    .locals 2
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 114
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v1, "precision mediump float;\nconst vec4 coeff_y = vec4(0.299, 0.587, 0.114, 0);\nuniform sampler2D tex_sampler_0;\nuniform float pix_stride;\nvarying vec2 v_texcoord;\nvoid main() {\n  for (int i = 0; i < 4; ++i) {\n    vec4 p = texture2D(tex_sampler_0,\n                       v_texcoord + vec2(pix_stride * float(i), 0.0));\n    gl_FragColor[i] = dot(p, coeff_y);\n  }\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 115
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 12
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 119
    const-string v8, "image"

    invoke-virtual {p0, v8}, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 120
    .local v0, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    .line 121
    .local v1, "inputFormat":Landroid/filterfw/core/FrameFormat;
    invoke-direct {p0, v1}, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->convertInputFormat(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;

    move-result-object v4

    .line 122
    .local v4, "outputFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {v4}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v5

    .line 123
    .local v5, "ow":I
    invoke-virtual {v4}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v2

    .line 124
    .local v2, "oh":I
    invoke-direct {p0, v5, v2}, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->checkOutputDimensions(II)V

    .line 125
    iget-object v8, p0, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string/jumbo v9, "pix_stride"

    const/high16 v10, 0x3f800000    # 1.0f

    int-to-float v11, v5

    div-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 128
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v7

    .line 129
    .local v7, "tempFrameFormat":Landroid/filterfw/core/MutableFrameFormat;
    div-int/lit8 v8, v5, 0x4

    invoke-virtual {v7, v8, v2}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 130
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v6

    .line 131
    .local v6, "temp":Landroid/filterfw/core/Frame;
    iget-object v8, p0, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v8, v0, v6}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 134
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v3

    .line 135
    .local v3, "output":Landroid/filterfw/core/Frame;
    invoke-virtual {v3, v6}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    .line 136
    invoke-virtual {v6}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 139
    const-string v8, "image"

    invoke-virtual {p0, v8, v3}, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 140
    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 141
    return-void
.end method

.method public setupPorts()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 67
    const-string v0, "image"

    invoke-static {v1, v1}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 69
    const-string v0, "image"

    const-string v1, "image"

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method
