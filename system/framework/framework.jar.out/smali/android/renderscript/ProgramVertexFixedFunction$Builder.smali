.class public Landroid/renderscript/ProgramVertexFixedFunction$Builder;
.super Ljava/lang/Object;
.source "ProgramVertexFixedFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ProgramVertexFixedFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mRS:Landroid/renderscript/RenderScript;

.field mShader:Ljava/lang/String;

.field mTextureMatrixEnable:Z


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 0
    .param p1, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 127
    return-void
.end method

.method private buildShaderString()V
    .locals 2

    .prologue
    .line 153
    const-string v0, "//rs_shader_internal\n"

    iput-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "varying vec4 varColor;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "varying vec2 varTex0;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "void main() {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  gl_Position = UNI_MVP * ATTRIB_position;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  gl_PointSize = 1.0;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  varColor = ATTRIB_color;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 162
    iget-boolean v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mTextureMatrixEnable:Z

    if-eqz v0, :cond_0

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  varTex0 = (UNI_TexMatrix * vec4(ATTRIB_texture0, 0.0, 1.0)).xy;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 167
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 168
    return-void

    .line 165
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  varTex0 = ATTRIB_texture0;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    goto :goto_0
.end method

.method static getConstantInputType(Landroid/renderscript/RenderScript;)Landroid/renderscript/Type;
    .locals 4
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 140
    new-instance v0, Landroid/renderscript/Element$Builder;

    invoke-direct {v0, p0}, Landroid/renderscript/Element$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 141
    .local v0, "b":Landroid/renderscript/Element$Builder;
    invoke-static {p0}, Landroid/renderscript/Element;->MATRIX4X4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    const-string v3, "MV"

    invoke-virtual {v0, v2, v3}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 142
    invoke-static {p0}, Landroid/renderscript/Element;->MATRIX4X4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    const-string v3, "P"

    invoke-virtual {v0, v2, v3}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 143
    invoke-static {p0}, Landroid/renderscript/Element;->MATRIX4X4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    const-string v3, "TexMatrix"

    invoke-virtual {v0, v2, v3}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 144
    invoke-static {p0}, Landroid/renderscript/Element;->MATRIX4X4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    const-string v3, "MVP"

    invoke-virtual {v0, v2, v3}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 146
    new-instance v1, Landroid/renderscript/Type$Builder;

    invoke-virtual {v0}, Landroid/renderscript/Element$Builder;->create()Landroid/renderscript/Element;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 147
    .local v1, "typeBuilder":Landroid/renderscript/Type$Builder;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 148
    invoke-virtual {v1}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public create()Landroid/renderscript/ProgramVertexFixedFunction;
    .locals 4

    .prologue
    .line 178
    invoke-direct {p0}, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->buildShaderString()V

    .line 180
    new-instance v1, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;

    iget-object v2, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v1, v2}, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 181
    .local v1, "sb":Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;
    iget-object v2, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->setShader(Ljava/lang/String;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 182
    iget-object v2, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->getConstantInputType(Landroid/renderscript/RenderScript;)Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->addConstant(Landroid/renderscript/Type;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 184
    new-instance v0, Landroid/renderscript/Element$Builder;

    iget-object v2, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v0, v2}, Landroid/renderscript/Element$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 185
    .local v0, "b":Landroid/renderscript/Element$Builder;
    iget-object v2, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    const-string/jumbo v3, "position"

    invoke-virtual {v0, v2, v3}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 186
    iget-object v2, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    const-string v3, "color"

    invoke-virtual {v0, v2, v3}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 187
    iget-object v2, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    const-string/jumbo v3, "normal"

    invoke-virtual {v0, v2, v3}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 188
    iget-object v2, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    const-string/jumbo v3, "texture0"

    invoke-virtual {v0, v2, v3}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 189
    invoke-virtual {v0}, Landroid/renderscript/Element$Builder;->create()Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->addInput(Landroid/renderscript/Element;)Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;

    .line 191
    invoke-virtual {v1}, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->create()Landroid/renderscript/ProgramVertexFixedFunction;

    move-result-object v2

    return-object v2
.end method

.method public setTextureMatrixEnable(Z)Landroid/renderscript/ProgramVertexFixedFunction$Builder;
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 136
    iput-boolean p1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mTextureMatrixEnable:Z

    .line 137
    return-object p0
.end method
