.class public Landroid/renderscript/Mesh;
.super Landroid/renderscript/BaseObj;
.source "Mesh.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Mesh$TriangleMeshBuilder;,
        Landroid/renderscript/Mesh$AllocationBuilder;,
        Landroid/renderscript/Mesh$Builder;,
        Landroid/renderscript/Mesh$Primitive;
    }
.end annotation


# instance fields
.field mIndexBuffers:[Landroid/renderscript/Allocation;

.field mPrimitives:[Landroid/renderscript/Mesh$Primitive;

.field mVertexBuffers:[Landroid/renderscript/Allocation;


# direct methods
.method constructor <init>(ILandroid/renderscript/RenderScript;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Landroid/renderscript/BaseObj;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 96
    return-void
.end method


# virtual methods
.method public getIndexSetAllocation(I)Landroid/renderscript/Allocation;
    .locals 1
    .param p1, "slot"    # I

    .prologue
    .line 139
    iget-object v0, p0, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getPrimitive(I)Landroid/renderscript/Mesh$Primitive;
    .locals 1
    .param p1, "slot"    # I

    .prologue
    .line 148
    iget-object v0, p0, Landroid/renderscript/Mesh;->mPrimitives:[Landroid/renderscript/Mesh$Primitive;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getPrimitiveCount()I
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    if-nez v0, :cond_0

    .line 126
    const/4 v0, 0x0

    .line 128
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    array-length v0, v0

    goto :goto_0
.end method

.method public getVertexAllocation(I)Landroid/renderscript/Allocation;
    .locals 1
    .param p1, "slot"    # I

    .prologue
    .line 116
    iget-object v0, p0, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getVertexAllocationCount()I
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    if-nez v0, :cond_0

    .line 105
    const/4 v0, 0x0

    .line 107
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    array-length v0, v0

    goto :goto_0
.end method

.method updateFromNative()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 153
    invoke-super {p0}, Landroid/renderscript/BaseObj;->updateFromNative()V

    .line 154
    iget-object v6, p0, Landroid/renderscript/Mesh;->mRS:Landroid/renderscript/RenderScript;

    iget-object v7, p0, Landroid/renderscript/Mesh;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v7}, Landroid/renderscript/Mesh;->getID(Landroid/renderscript/RenderScript;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/renderscript/RenderScript;->nMeshGetVertexBufferCount(I)I

    move-result v4

    .line 155
    .local v4, "vtxCount":I
    iget-object v6, p0, Landroid/renderscript/Mesh;->mRS:Landroid/renderscript/RenderScript;

    iget-object v7, p0, Landroid/renderscript/Mesh;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v7}, Landroid/renderscript/Mesh;->getID(Landroid/renderscript/RenderScript;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/renderscript/RenderScript;->nMeshGetIndexCount(I)I

    move-result v1

    .line 157
    .local v1, "idxCount":I
    new-array v5, v4, [I

    .line 158
    .local v5, "vtxIDs":[I
    new-array v2, v1, [I

    .line 159
    .local v2, "idxIDs":[I
    new-array v3, v1, [I

    .line 161
    .local v3, "primitives":[I
    iget-object v6, p0, Landroid/renderscript/Mesh;->mRS:Landroid/renderscript/RenderScript;

    iget-object v7, p0, Landroid/renderscript/Mesh;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v7}, Landroid/renderscript/Mesh;->getID(Landroid/renderscript/RenderScript;)I

    move-result v7

    invoke-virtual {v6, v7, v5, v4}, Landroid/renderscript/RenderScript;->nMeshGetVertices(I[II)V

    .line 162
    iget-object v6, p0, Landroid/renderscript/Mesh;->mRS:Landroid/renderscript/RenderScript;

    iget-object v7, p0, Landroid/renderscript/Mesh;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v7}, Landroid/renderscript/Mesh;->getID(Landroid/renderscript/RenderScript;)I

    move-result v7

    invoke-virtual {v6, v7, v2, v3, v1}, Landroid/renderscript/RenderScript;->nMeshGetIndices(I[I[II)V

    .line 164
    new-array v6, v4, [Landroid/renderscript/Allocation;

    iput-object v6, p0, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    .line 165
    new-array v6, v1, [Landroid/renderscript/Allocation;

    iput-object v6, p0, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    .line 166
    new-array v6, v1, [Landroid/renderscript/Mesh$Primitive;

    iput-object v6, p0, Landroid/renderscript/Mesh;->mPrimitives:[Landroid/renderscript/Mesh$Primitive;

    .line 168
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 169
    aget v6, v5, v0

    if-eqz v6, :cond_0

    .line 170
    iget-object v6, p0, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    new-instance v7, Landroid/renderscript/Allocation;

    aget v8, v5, v0

    iget-object v9, p0, Landroid/renderscript/Mesh;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v7, v8, v9, v11, v10}, Landroid/renderscript/Allocation;-><init>(ILandroid/renderscript/RenderScript;Landroid/renderscript/Type;I)V

    aput-object v7, v6, v0

    .line 171
    iget-object v6, p0, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Landroid/renderscript/Allocation;->updateFromNative()V

    .line 168
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_3

    .line 176
    aget v6, v2, v0

    if-eqz v6, :cond_2

    .line 177
    iget-object v6, p0, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    new-instance v7, Landroid/renderscript/Allocation;

    aget v8, v2, v0

    iget-object v9, p0, Landroid/renderscript/Mesh;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v7, v8, v9, v11, v10}, Landroid/renderscript/Allocation;-><init>(ILandroid/renderscript/RenderScript;Landroid/renderscript/Type;I)V

    aput-object v7, v6, v0

    .line 178
    iget-object v6, p0, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Landroid/renderscript/Allocation;->updateFromNative()V

    .line 180
    :cond_2
    iget-object v6, p0, Landroid/renderscript/Mesh;->mPrimitives:[Landroid/renderscript/Mesh$Primitive;

    invoke-static {}, Landroid/renderscript/Mesh$Primitive;->values()[Landroid/renderscript/Mesh$Primitive;

    move-result-object v7

    aget v8, v3, v0

    aget-object v7, v7, v8

    aput-object v7, v6, v0

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 182
    :cond_3
    return-void
.end method
