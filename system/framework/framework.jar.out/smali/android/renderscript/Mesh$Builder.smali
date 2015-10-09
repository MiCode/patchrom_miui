.class public Landroid/renderscript/Mesh$Builder;
.super Ljava/lang/Object;
.source "Mesh.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Mesh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Mesh$Builder$Entry;
    }
.end annotation


# instance fields
.field mIndexTypes:Ljava/util/Vector;

.field mRS:Landroid/renderscript/RenderScript;

.field mUsage:I

.field mVertexTypeCount:I

.field mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;I)V
    .locals 1
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "usage"    # I

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    iput-object p1, p0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 217
    iput p2, p0, Landroid/renderscript/Mesh$Builder;->mUsage:I

    .line 218
    const/4 v0, 0x0

    iput v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    .line 219
    const/16 v0, 0x10

    new-array v0, v0, [Landroid/renderscript/Mesh$Builder$Entry;

    iput-object v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;

    .line 220
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    .line 221
    return-void
.end method


# virtual methods
.method public addIndexSetType(Landroid/renderscript/Element;ILandroid/renderscript/Mesh$Primitive;)Landroid/renderscript/Mesh$Builder;
    .locals 2
    .param p1, "e"    # Landroid/renderscript/Element;
    .param p2, "size"    # I
    .param p3, "p"    # Landroid/renderscript/Mesh$Primitive;

    .prologue
    .line 331
    new-instance v0, Landroid/renderscript/Mesh$Builder$Entry;

    invoke-direct {v0, p0}, Landroid/renderscript/Mesh$Builder$Entry;-><init>(Landroid/renderscript/Mesh$Builder;)V

    .line 332
    .local v0, "indexType":Landroid/renderscript/Mesh$Builder$Entry;
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/renderscript/Mesh$Builder$Entry;->t:Landroid/renderscript/Type;

    .line 333
    iput-object p1, v0, Landroid/renderscript/Mesh$Builder$Entry;->e:Landroid/renderscript/Element;

    .line 334
    iput p2, v0, Landroid/renderscript/Mesh$Builder$Entry;->size:I

    .line 335
    iput-object p3, v0, Landroid/renderscript/Mesh$Builder$Entry;->prim:Landroid/renderscript/Mesh$Primitive;

    .line 336
    iget-object v1, p0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 337
    return-object p0
.end method

.method public addIndexSetType(Landroid/renderscript/Mesh$Primitive;)Landroid/renderscript/Mesh$Builder;
    .locals 2
    .param p1, "p"    # Landroid/renderscript/Mesh$Primitive;

    .prologue
    const/4 v1, 0x0

    .line 311
    new-instance v0, Landroid/renderscript/Mesh$Builder$Entry;

    invoke-direct {v0, p0}, Landroid/renderscript/Mesh$Builder$Entry;-><init>(Landroid/renderscript/Mesh$Builder;)V

    .line 312
    .local v0, "indexType":Landroid/renderscript/Mesh$Builder$Entry;
    iput-object v1, v0, Landroid/renderscript/Mesh$Builder$Entry;->t:Landroid/renderscript/Type;

    .line 313
    iput-object v1, v0, Landroid/renderscript/Mesh$Builder$Entry;->e:Landroid/renderscript/Element;

    .line 314
    const/4 v1, 0x0

    iput v1, v0, Landroid/renderscript/Mesh$Builder$Entry;->size:I

    .line 315
    iput-object p1, v0, Landroid/renderscript/Mesh$Builder$Entry;->prim:Landroid/renderscript/Mesh$Primitive;

    .line 316
    iget-object v1, p0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 317
    return-object p0
.end method

.method public addIndexSetType(Landroid/renderscript/Type;Landroid/renderscript/Mesh$Primitive;)Landroid/renderscript/Mesh$Builder;
    .locals 2
    .param p1, "t"    # Landroid/renderscript/Type;
    .param p2, "p"    # Landroid/renderscript/Mesh$Primitive;

    .prologue
    .line 293
    new-instance v0, Landroid/renderscript/Mesh$Builder$Entry;

    invoke-direct {v0, p0}, Landroid/renderscript/Mesh$Builder$Entry;-><init>(Landroid/renderscript/Mesh$Builder;)V

    .line 294
    .local v0, "indexType":Landroid/renderscript/Mesh$Builder$Entry;
    iput-object p1, v0, Landroid/renderscript/Mesh$Builder$Entry;->t:Landroid/renderscript/Type;

    .line 295
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/renderscript/Mesh$Builder$Entry;->e:Landroid/renderscript/Element;

    .line 296
    const/4 v1, 0x0

    iput v1, v0, Landroid/renderscript/Mesh$Builder$Entry;->size:I

    .line 297
    iput-object p2, v0, Landroid/renderscript/Mesh$Builder$Entry;->prim:Landroid/renderscript/Mesh$Primitive;

    .line 298
    iget-object v1, p0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 299
    return-object p0
.end method

.method public addVertexType(Landroid/renderscript/Element;I)Landroid/renderscript/Mesh$Builder;
    .locals 3
    .param p1, "e"    # Landroid/renderscript/Element;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 271
    iget v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    iget-object v1, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 272
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Max vertex types exceeded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_0
    iget-object v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;

    iget v1, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    new-instance v2, Landroid/renderscript/Mesh$Builder$Entry;

    invoke-direct {v2, p0}, Landroid/renderscript/Mesh$Builder$Entry;-><init>(Landroid/renderscript/Mesh$Builder;)V

    aput-object v2, v0, v1

    .line 276
    iget-object v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;

    iget v1, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/renderscript/Mesh$Builder$Entry;->t:Landroid/renderscript/Type;

    .line 277
    iget-object v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;

    iget v1, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    aget-object v0, v0, v1

    iput-object p1, v0, Landroid/renderscript/Mesh$Builder$Entry;->e:Landroid/renderscript/Element;

    .line 278
    iget-object v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;

    iget v1, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    aget-object v0, v0, v1

    iput p2, v0, Landroid/renderscript/Mesh$Builder$Entry;->size:I

    .line 279
    iget v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    .line 280
    return-object p0
.end method

.method public addVertexType(Landroid/renderscript/Type;)Landroid/renderscript/Mesh$Builder;
    .locals 3
    .param p1, "t"    # Landroid/renderscript/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 250
    iget v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    iget-object v1, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 251
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Max vertex types exceeded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_0
    iget-object v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;

    iget v1, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    new-instance v2, Landroid/renderscript/Mesh$Builder$Entry;

    invoke-direct {v2, p0}, Landroid/renderscript/Mesh$Builder$Entry;-><init>(Landroid/renderscript/Mesh$Builder;)V

    aput-object v2, v0, v1

    .line 255
    iget-object v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;

    iget v1, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    aget-object v0, v0, v1

    iput-object p1, v0, Landroid/renderscript/Mesh$Builder$Entry;->t:Landroid/renderscript/Type;

    .line 256
    iget-object v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;

    iget v1, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/renderscript/Mesh$Builder$Entry;->e:Landroid/renderscript/Element;

    .line 257
    iget v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    .line 258
    return-object p0
.end method

.method public create()Landroid/renderscript/Mesh;
    .locals 17

    .prologue
    .line 352
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v13}, Landroid/renderscript/RenderScript;->validate()V

    .line 353
    move-object/from16 v0, p0

    iget v13, v0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    new-array v12, v13, [I

    .line 354
    .local v12, "vtx":[I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v13

    new-array v6, v13, [I

    .line 355
    .local v6, "idx":[I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v13

    new-array v9, v13, [I

    .line 357
    .local v9, "prim":[I
    move-object/from16 v0, p0

    iget v13, v0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    new-array v11, v13, [Landroid/renderscript/Allocation;

    .line 358
    .local v11, "vertexBuffers":[Landroid/renderscript/Allocation;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v13

    new-array v7, v13, [Landroid/renderscript/Allocation;

    .line 359
    .local v7, "indexBuffers":[Landroid/renderscript/Allocation;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v13

    new-array v10, v13, [Landroid/renderscript/Mesh$Primitive;

    .line 361
    .local v10, "primitives":[Landroid/renderscript/Mesh$Primitive;
    const/4 v3, 0x0

    .local v3, "ct":I
    :goto_0
    move-object/from16 v0, p0

    iget v13, v0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    if-ge v3, v13, :cond_2

    .line 362
    const/4 v1, 0x0

    .line 363
    .local v1, "alloc":Landroid/renderscript/Allocation;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/renderscript/Mesh$Builder;->mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;

    aget-object v4, v13, v3

    .line 364
    .local v4, "entry":Landroid/renderscript/Mesh$Builder$Entry;
    iget-object v13, v4, Landroid/renderscript/Mesh$Builder$Entry;->t:Landroid/renderscript/Type;

    if-eqz v13, :cond_1

    .line 365
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    iget-object v14, v4, Landroid/renderscript/Mesh$Builder$Entry;->t:Landroid/renderscript/Type;

    move-object/from16 v0, p0

    iget v15, v0, Landroid/renderscript/Mesh$Builder;->mUsage:I

    invoke-static {v13, v14, v15}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v1

    .line 369
    :cond_0
    :goto_1
    aput-object v1, v11, v3

    .line 370
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1, v13}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)I

    move-result v13

    aput v13, v12, v3

    .line 361
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 366
    :cond_1
    iget-object v13, v4, Landroid/renderscript/Mesh$Builder$Entry;->e:Landroid/renderscript/Element;

    if-eqz v13, :cond_0

    .line 367
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    iget-object v14, v4, Landroid/renderscript/Mesh$Builder$Entry;->e:Landroid/renderscript/Element;

    iget v15, v4, Landroid/renderscript/Mesh$Builder$Entry;->size:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/renderscript/Mesh$Builder;->mUsage:I

    move/from16 v16, v0

    invoke-static/range {v13 .. v16}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;

    move-result-object v1

    goto :goto_1

    .line 373
    .end local v1    # "alloc":Landroid/renderscript/Allocation;
    .end local v4    # "entry":Landroid/renderscript/Mesh$Builder$Entry;
    :cond_2
    const/4 v3, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v13

    if-ge v3, v13, :cond_6

    .line 374
    const/4 v1, 0x0

    .line 375
    .restart local v1    # "alloc":Landroid/renderscript/Allocation;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v13, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/renderscript/Mesh$Builder$Entry;

    .line 376
    .restart local v4    # "entry":Landroid/renderscript/Mesh$Builder$Entry;
    iget-object v13, v4, Landroid/renderscript/Mesh$Builder$Entry;->t:Landroid/renderscript/Type;

    if-eqz v13, :cond_4

    .line 377
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    iget-object v14, v4, Landroid/renderscript/Mesh$Builder$Entry;->t:Landroid/renderscript/Type;

    move-object/from16 v0, p0

    iget v15, v0, Landroid/renderscript/Mesh$Builder;->mUsage:I

    invoke-static {v13, v14, v15}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v1

    .line 381
    :cond_3
    :goto_3
    if-nez v1, :cond_5

    const/4 v2, 0x0

    .line 382
    .local v2, "allocID":I
    :goto_4
    aput-object v1, v7, v3

    .line 383
    iget-object v13, v4, Landroid/renderscript/Mesh$Builder$Entry;->prim:Landroid/renderscript/Mesh$Primitive;

    aput-object v13, v10, v3

    .line 385
    aput v2, v6, v3

    .line 386
    iget-object v13, v4, Landroid/renderscript/Mesh$Builder$Entry;->prim:Landroid/renderscript/Mesh$Primitive;

    iget v13, v13, Landroid/renderscript/Mesh$Primitive;->mID:I

    aput v13, v9, v3

    .line 373
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 378
    .end local v2    # "allocID":I
    :cond_4
    iget-object v13, v4, Landroid/renderscript/Mesh$Builder$Entry;->e:Landroid/renderscript/Element;

    if-eqz v13, :cond_3

    .line 379
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    iget-object v14, v4, Landroid/renderscript/Mesh$Builder$Entry;->e:Landroid/renderscript/Element;

    iget v15, v4, Landroid/renderscript/Mesh$Builder$Entry;->size:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/renderscript/Mesh$Builder;->mUsage:I

    move/from16 v16, v0

    invoke-static/range {v13 .. v16}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;

    move-result-object v1

    goto :goto_3

    .line 381
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1, v13}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)I

    move-result v2

    goto :goto_4

    .line 389
    .end local v1    # "alloc":Landroid/renderscript/Allocation;
    .end local v4    # "entry":Landroid/renderscript/Mesh$Builder$Entry;
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v13, v12, v6, v9}, Landroid/renderscript/RenderScript;->nMeshCreate([I[I[I)I

    move-result v5

    .line 390
    .local v5, "id":I
    new-instance v8, Landroid/renderscript/Mesh;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v8, v5, v13}, Landroid/renderscript/Mesh;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 391
    .local v8, "newMesh":Landroid/renderscript/Mesh;
    iput-object v11, v8, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    .line 392
    iput-object v7, v8, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    .line 393
    iput-object v10, v8, Landroid/renderscript/Mesh;->mPrimitives:[Landroid/renderscript/Mesh$Primitive;

    .line 395
    return-object v8
.end method

.method public getCurrentIndexSetIndex()I
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getCurrentVertexTypeIndex()I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method newType(Landroid/renderscript/Element;I)Landroid/renderscript/Type;
    .locals 2
    .param p1, "e"    # Landroid/renderscript/Element;
    .param p2, "size"    # I

    .prologue
    .line 341
    new-instance v0, Landroid/renderscript/Type$Builder;

    iget-object v1, p0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v0, v1, p1}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 342
    .local v0, "tb":Landroid/renderscript/Type$Builder;
    invoke-virtual {v0, p2}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 343
    invoke-virtual {v0}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v1

    return-object v1
.end method
