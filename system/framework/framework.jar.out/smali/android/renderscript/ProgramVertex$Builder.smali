.class public Landroid/renderscript/ProgramVertex$Builder;
.super Landroid/renderscript/Program$BaseProgramBuilder;
.source "ProgramVertex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ProgramVertex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 0
    .param p1, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Landroid/renderscript/Program$BaseProgramBuilder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 99
    return-void
.end method


# virtual methods
.method public addInput(Landroid/renderscript/Element;)Landroid/renderscript/ProgramVertex$Builder;
    .locals 3
    .param p1, "e"    # Landroid/renderscript/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 111
    iget v0, p0, Landroid/renderscript/ProgramVertex$Builder;->mInputCount:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 112
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Max input count exceeded."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    invoke-virtual {p1}, Landroid/renderscript/Element;->isComplex()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Complex elements not allowed."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_1
    iget-object v0, p0, Landroid/renderscript/ProgramVertex$Builder;->mInputs:[Landroid/renderscript/Element;

    iget v1, p0, Landroid/renderscript/ProgramVertex$Builder;->mInputCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/ProgramVertex$Builder;->mInputCount:I

    aput-object p1, v0, v1

    .line 118
    return-object p0
.end method

.method public create()Landroid/renderscript/ProgramVertex;
    .locals 9

    .prologue
    .line 128
    iget-object v7, p0, Landroid/renderscript/ProgramVertex$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v7}, Landroid/renderscript/RenderScript;->validate()V

    .line 129
    iget v7, p0, Landroid/renderscript/ProgramVertex$Builder;->mInputCount:I

    iget v8, p0, Landroid/renderscript/ProgramVertex$Builder;->mOutputCount:I

    add-int/2addr v7, v8

    iget v8, p0, Landroid/renderscript/ProgramVertex$Builder;->mConstantCount:I

    add-int/2addr v7, v8

    iget v8, p0, Landroid/renderscript/ProgramVertex$Builder;->mTextureCount:I

    add-int/2addr v7, v8

    mul-int/lit8 v7, v7, 0x2

    new-array v6, v7, [I

    .line 130
    .local v6, "tmp":[I
    iget v7, p0, Landroid/renderscript/ProgramVertex$Builder;->mTextureCount:I

    new-array v5, v7, [Ljava/lang/String;

    .line 131
    .local v5, "texNames":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 133
    .local v2, "idx":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v7, p0, Landroid/renderscript/ProgramVertex$Builder;->mInputCount:I

    if-ge v0, v7, :cond_0

    .line 134
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "idx":I
    .local v3, "idx":I
    sget-object v7, Landroid/renderscript/Program$ProgramParam;->INPUT:Landroid/renderscript/Program$ProgramParam;

    iget v7, v7, Landroid/renderscript/Program$ProgramParam;->mID:I

    aput v7, v6, v2

    .line 135
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "idx":I
    .restart local v2    # "idx":I
    iget-object v7, p0, Landroid/renderscript/ProgramVertex$Builder;->mInputs:[Landroid/renderscript/Element;

    aget-object v7, v7, v0

    iget-object v8, p0, Landroid/renderscript/ProgramVertex$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v7, v8}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)I

    move-result v7

    aput v7, v6, v3

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget v7, p0, Landroid/renderscript/ProgramVertex$Builder;->mOutputCount:I

    if-ge v0, v7, :cond_1

    .line 138
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "idx":I
    .restart local v3    # "idx":I
    sget-object v7, Landroid/renderscript/Program$ProgramParam;->OUTPUT:Landroid/renderscript/Program$ProgramParam;

    iget v7, v7, Landroid/renderscript/Program$ProgramParam;->mID:I

    aput v7, v6, v2

    .line 139
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "idx":I
    .restart local v2    # "idx":I
    iget-object v7, p0, Landroid/renderscript/ProgramVertex$Builder;->mOutputs:[Landroid/renderscript/Element;

    aget-object v7, v7, v0

    iget-object v8, p0, Landroid/renderscript/ProgramVertex$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v7, v8}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)I

    move-result v7

    aput v7, v6, v3

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 141
    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget v7, p0, Landroid/renderscript/ProgramVertex$Builder;->mConstantCount:I

    if-ge v0, v7, :cond_2

    .line 142
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "idx":I
    .restart local v3    # "idx":I
    sget-object v7, Landroid/renderscript/Program$ProgramParam;->CONSTANT:Landroid/renderscript/Program$ProgramParam;

    iget v7, v7, Landroid/renderscript/Program$ProgramParam;->mID:I

    aput v7, v6, v2

    .line 143
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "idx":I
    .restart local v2    # "idx":I
    iget-object v7, p0, Landroid/renderscript/ProgramVertex$Builder;->mConstants:[Landroid/renderscript/Type;

    aget-object v7, v7, v0

    iget-object v8, p0, Landroid/renderscript/ProgramVertex$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v7, v8}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)I

    move-result v7

    aput v7, v6, v3

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 145
    :cond_2
    const/4 v0, 0x0

    :goto_3
    iget v7, p0, Landroid/renderscript/ProgramVertex$Builder;->mTextureCount:I

    if-ge v0, v7, :cond_3

    .line 146
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "idx":I
    .restart local v3    # "idx":I
    sget-object v7, Landroid/renderscript/Program$ProgramParam;->TEXTURE_TYPE:Landroid/renderscript/Program$ProgramParam;

    iget v7, v7, Landroid/renderscript/Program$ProgramParam;->mID:I

    aput v7, v6, v2

    .line 147
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "idx":I
    .restart local v2    # "idx":I
    iget-object v7, p0, Landroid/renderscript/ProgramVertex$Builder;->mTextureTypes:[Landroid/renderscript/Program$TextureType;

    aget-object v7, v7, v0

    iget v7, v7, Landroid/renderscript/Program$TextureType;->mID:I

    aput v7, v6, v3

    .line 148
    iget-object v7, p0, Landroid/renderscript/ProgramVertex$Builder;->mTextureNames:[Ljava/lang/String;

    aget-object v7, v7, v0

    aput-object v7, v5, v0

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 151
    :cond_3
    iget-object v7, p0, Landroid/renderscript/ProgramVertex$Builder;->mRS:Landroid/renderscript/RenderScript;

    iget-object v8, p0, Landroid/renderscript/ProgramVertex$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v7, v8, v5, v6}, Landroid/renderscript/RenderScript;->nProgramVertexCreate(Ljava/lang/String;[Ljava/lang/String;[I)I

    move-result v1

    .line 152
    .local v1, "id":I
    new-instance v4, Landroid/renderscript/ProgramVertex;

    iget-object v7, p0, Landroid/renderscript/ProgramVertex$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v4, v1, v7}, Landroid/renderscript/ProgramVertex;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 153
    .local v4, "pv":Landroid/renderscript/ProgramVertex;
    invoke-virtual {p0, v4}, Landroid/renderscript/ProgramVertex$Builder;->initProgram(Landroid/renderscript/Program;)V

    .line 154
    return-object v4
.end method
