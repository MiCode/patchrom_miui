.class public Landroid/renderscript/Program;
.super Landroid/renderscript/BaseObj;
.source "Program.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Program$BaseProgramBuilder;,
        Landroid/renderscript/Program$ProgramParam;,
        Landroid/renderscript/Program$TextureType;
    }
.end annotation


# static fields
.field static final MAX_CONSTANT:I = 0x8

.field static final MAX_INPUT:I = 0x8

.field static final MAX_OUTPUT:I = 0x8

.field static final MAX_TEXTURE:I = 0x8


# instance fields
.field mConstants:[Landroid/renderscript/Type;

.field mInputs:[Landroid/renderscript/Element;

.field mOutputs:[Landroid/renderscript/Element;

.field mShader:Ljava/lang/String;

.field mTextureCount:I

.field mTextureNames:[Ljava/lang/String;

.field mTextures:[Landroid/renderscript/Program$TextureType;


# direct methods
.method constructor <init>(ILandroid/renderscript/RenderScript;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/renderscript/BaseObj;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 79
    return-void
.end method


# virtual methods
.method public bindConstants(Landroid/renderscript/Allocation;I)V
    .locals 4
    .param p1, "a"    # Landroid/renderscript/Allocation;
    .param p2, "slot"    # I

    .prologue
    .line 146
    if-ltz p2, :cond_0

    iget-object v1, p0, Landroid/renderscript/Program;->mConstants:[Landroid/renderscript/Type;

    array-length v1, v1

    if-lt p2, v1, :cond_1

    .line 147
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Slot ID out of range."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 149
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    iget-object v2, p0, Landroid/renderscript/Program;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1, v2}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)I

    move-result v1

    iget-object v2, p0, Landroid/renderscript/Program;->mConstants:[Landroid/renderscript/Type;

    aget-object v2, v2, p2

    iget-object v3, p0, Landroid/renderscript/Program;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2, v3}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 151
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Allocation type does not match slot type."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 153
    :cond_2
    if-eqz p1, :cond_3

    iget-object v1, p0, Landroid/renderscript/Program;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p1, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)I

    move-result v0

    .line 154
    .local v0, "id":I
    :goto_0
    iget-object v1, p0, Landroid/renderscript/Program;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Landroid/renderscript/Program;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/renderscript/Program;->getID(Landroid/renderscript/RenderScript;)I

    move-result v2

    invoke-virtual {v1, v2, p2, v0}, Landroid/renderscript/RenderScript;->nProgramBindConstants(III)V

    .line 155
    return-void

    .line 153
    .end local v0    # "id":I
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bindSampler(Landroid/renderscript/Sampler;I)V
    .locals 3
    .param p1, "vs"    # Landroid/renderscript/Sampler;
    .param p2, "slot"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 190
    iget-object v1, p0, Landroid/renderscript/Program;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    .line 191
    if-ltz p2, :cond_0

    iget v1, p0, Landroid/renderscript/Program;->mTextureCount:I

    if-lt p2, v1, :cond_1

    .line 192
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Slot ID out of range."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 195
    :cond_1
    if-eqz p1, :cond_2

    iget-object v1, p0, Landroid/renderscript/Program;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p1, v1}, Landroid/renderscript/Sampler;->getID(Landroid/renderscript/RenderScript;)I

    move-result v0

    .line 196
    .local v0, "id":I
    :goto_0
    iget-object v1, p0, Landroid/renderscript/Program;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Landroid/renderscript/Program;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/renderscript/Program;->getID(Landroid/renderscript/RenderScript;)I

    move-result v2

    invoke-virtual {v1, v2, p2, v0}, Landroid/renderscript/RenderScript;->nProgramBindSampler(III)V

    .line 197
    return-void

    .line 195
    .end local v0    # "id":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bindTexture(Landroid/renderscript/Allocation;I)V
    .locals 3
    .param p1, "va"    # Landroid/renderscript/Allocation;
    .param p2, "slot"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 166
    iget-object v1, p0, Landroid/renderscript/Program;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    .line 167
    if-ltz p2, :cond_0

    iget v1, p0, Landroid/renderscript/Program;->mTextureCount:I

    if-lt p2, v1, :cond_1

    .line 168
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Slot ID out of range."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 170
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/renderscript/Program;->mTextures:[Landroid/renderscript/Program$TextureType;

    aget-object v1, v1, p2

    sget-object v2, Landroid/renderscript/Program$TextureType;->TEXTURE_CUBE:Landroid/renderscript/Program$TextureType;

    if-eq v1, v2, :cond_2

    .line 172
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot bind cubemap to 2d texture slot"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 175
    :cond_2
    if-eqz p1, :cond_3

    iget-object v1, p0, Landroid/renderscript/Program;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p1, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)I

    move-result v0

    .line 176
    .local v0, "id":I
    :goto_0
    iget-object v1, p0, Landroid/renderscript/Program;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Landroid/renderscript/Program;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/renderscript/Program;->getID(Landroid/renderscript/RenderScript;)I

    move-result v2

    invoke-virtual {v1, v2, p2, v0}, Landroid/renderscript/RenderScript;->nProgramBindTexture(III)V

    .line 177
    return-void

    .line 175
    .end local v0    # "id":I
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConstant(I)Landroid/renderscript/Type;
    .locals 2
    .param p1, "slot"    # I

    .prologue
    .line 98
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/renderscript/Program;->mConstants:[Landroid/renderscript/Type;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 99
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Slot ID out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_1
    iget-object v0, p0, Landroid/renderscript/Program;->mConstants:[Landroid/renderscript/Type;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getConstantCount()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Landroid/renderscript/Program;->mConstants:[Landroid/renderscript/Type;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/renderscript/Program;->mConstants:[Landroid/renderscript/Type;

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTextureCount()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Landroid/renderscript/Program;->mTextureCount:I

    return v0
.end method

.method public getTextureName(I)Ljava/lang/String;
    .locals 2
    .param p1, "slot"    # I

    .prologue
    .line 131
    if-ltz p1, :cond_0

    iget v0, p0, Landroid/renderscript/Program;->mTextureCount:I

    if-lt p1, v0, :cond_1

    .line 132
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Slot ID out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_1
    iget-object v0, p0, Landroid/renderscript/Program;->mTextureNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getTextureType(I)Landroid/renderscript/Program$TextureType;
    .locals 2
    .param p1, "slot"    # I

    .prologue
    .line 118
    if-ltz p1, :cond_0

    iget v0, p0, Landroid/renderscript/Program;->mTextureCount:I

    if-lt p1, v0, :cond_1

    .line 119
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Slot ID out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_1
    iget-object v0, p0, Landroid/renderscript/Program;->mTextures:[Landroid/renderscript/Program$TextureType;

    aget-object v0, v0, p1

    return-object v0
.end method
