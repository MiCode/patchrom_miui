.class public Landroid/renderscript/Script;
.super Landroid/renderscript/BaseObj;
.source "Script.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Script$LaunchOptions;,
        Landroid/renderscript/Script$FieldBase;,
        Landroid/renderscript/Script$Builder;,
        Landroid/renderscript/Script$FieldID;,
        Landroid/renderscript/Script$KernelID;
    }
.end annotation


# instance fields
.field private final mFIDs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/renderscript/Script$FieldID;",
            ">;"
        }
    .end annotation
.end field

.field private final mKIDs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/renderscript/Script$KernelID;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILandroid/renderscript/RenderScript;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 180
    invoke-direct {p0, p1, p2}, Landroid/renderscript/BaseObj;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 47
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/renderscript/Script;->mKIDs:Landroid/util/SparseArray;

    .line 85
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/renderscript/Script;->mFIDs:Landroid/util/SparseArray;

    .line 181
    return-void
.end method


# virtual methods
.method public bindAllocation(Landroid/renderscript/Allocation;I)V
    .locals 3
    .param p1, "va"    # Landroid/renderscript/Allocation;
    .param p2, "slot"    # I

    .prologue
    .line 189
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 190
    if-eqz p1, :cond_0

    .line 191
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)I

    move-result v1

    iget-object v2, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p1, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)I

    move-result v2

    invoke-virtual {v0, v1, v2, p2}, Landroid/renderscript/RenderScript;->nScriptBindAllocation(III)V

    .line 195
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2}, Landroid/renderscript/RenderScript;->nScriptBindAllocation(III)V

    goto :goto_0
.end method

.method protected createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;
    .locals 5
    .param p1, "slot"    # I
    .param p2, "e"    # Landroid/renderscript/Element;

    .prologue
    .line 90
    iget-object v3, p0, Landroid/renderscript/Script;->mFIDs:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/renderscript/Script$FieldID;

    .line 91
    .local v0, "f":Landroid/renderscript/Script$FieldID;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 102
    .end local v0    # "f":Landroid/renderscript/Script$FieldID;
    .local v1, "f":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 95
    .end local v1    # "f":Ljava/lang/Object;
    .restart local v0    # "f":Landroid/renderscript/Script$FieldID;
    :cond_0
    iget-object v3, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v4, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v4}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)I

    move-result v4

    invoke-virtual {v3, v4, p1}, Landroid/renderscript/RenderScript;->nScriptFieldIDCreate(II)I

    move-result v2

    .line 96
    .local v2, "id":I
    if-nez v2, :cond_1

    .line 97
    new-instance v3, Landroid/renderscript/RSDriverException;

    const-string v4, "Failed to create FieldID"

    invoke-direct {v3, v4}, Landroid/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 100
    :cond_1
    new-instance v0, Landroid/renderscript/Script$FieldID;

    .end local v0    # "f":Landroid/renderscript/Script$FieldID;
    iget-object v3, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v0, v2, v3, p0, p1}, Landroid/renderscript/Script$FieldID;-><init>(ILandroid/renderscript/RenderScript;Landroid/renderscript/Script;I)V

    .line 101
    .restart local v0    # "f":Landroid/renderscript/Script$FieldID;
    iget-object v3, p0, Landroid/renderscript/Script;->mFIDs:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v1, v0

    .line 102
    .restart local v1    # "f":Ljava/lang/Object;
    goto :goto_0
.end method

.method protected createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;
    .locals 7
    .param p1, "slot"    # I
    .param p2, "sig"    # I
    .param p3, "ein"    # Landroid/renderscript/Element;
    .param p4, "eout"    # Landroid/renderscript/Element;

    .prologue
    .line 52
    iget-object v2, p0, Landroid/renderscript/Script;->mKIDs:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/renderscript/Script$KernelID;

    .line 53
    .local v0, "k":Landroid/renderscript/Script$KernelID;
    if-eqz v0, :cond_0

    move-object v6, v0

    .line 64
    .end local v0    # "k":Landroid/renderscript/Script$KernelID;
    .local v6, "k":Ljava/lang/Object;
    :goto_0
    return-object v6

    .line 57
    .end local v6    # "k":Ljava/lang/Object;
    .restart local v0    # "k":Landroid/renderscript/Script$KernelID;
    :cond_0
    iget-object v2, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v3}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)I

    move-result v3

    invoke-virtual {v2, v3, p1, p2}, Landroid/renderscript/RenderScript;->nScriptKernelIDCreate(III)I

    move-result v1

    .line 58
    .local v1, "id":I
    if-nez v1, :cond_1

    .line 59
    new-instance v2, Landroid/renderscript/RSDriverException;

    const-string v3, "Failed to create KernelID"

    invoke-direct {v2, v3}, Landroid/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 62
    :cond_1
    new-instance v0, Landroid/renderscript/Script$KernelID;

    .end local v0    # "k":Landroid/renderscript/Script$KernelID;
    iget-object v2, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Script$KernelID;-><init>(ILandroid/renderscript/RenderScript;Landroid/renderscript/Script;II)V

    .line 63
    .restart local v0    # "k":Landroid/renderscript/Script$KernelID;
    iget-object v2, p0, Landroid/renderscript/Script;->mKIDs:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v6, v0

    .line 64
    .restart local v6    # "k":Ljava/lang/Object;
    goto :goto_0
.end method

.method protected forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;)V
    .locals 6
    .param p1, "slot"    # I
    .param p2, "ain"    # Landroid/renderscript/Allocation;
    .param p3, "aout"    # Landroid/renderscript/Allocation;
    .param p4, "v"    # Landroid/renderscript/FieldPacker;

    .prologue
    .line 131
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 132
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "At least one of ain or aout is required to be non-null."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    const/4 v3, 0x0

    .line 136
    .local v3, "in_id":I
    if-eqz p2, :cond_1

    .line 137
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p2, v0}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)I

    move-result v3

    .line 139
    :cond_1
    const/4 v4, 0x0

    .line 140
    .local v4, "out_id":I
    if-eqz p3, :cond_2

    .line 141
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p3, v0}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)I

    move-result v4

    .line 143
    :cond_2
    const/4 v5, 0x0

    .line 144
    .local v5, "params":[B
    if-eqz p4, :cond_3

    .line 145
    invoke-virtual {p4}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v5

    .line 147
    :cond_3
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)I

    move-result v1

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->nScriptForEach(IIII[B)V

    .line 148
    return-void
.end method

.method protected forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 12
    .param p1, "slot"    # I
    .param p2, "ain"    # Landroid/renderscript/Allocation;
    .param p3, "aout"    # Landroid/renderscript/Allocation;
    .param p4, "v"    # Landroid/renderscript/FieldPacker;
    .param p5, "sc"    # Landroid/renderscript/Script$LaunchOptions;

    .prologue
    .line 155
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 156
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "At least one of ain or aout is required to be non-null."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_0
    if-nez p5, :cond_1

    .line 161
    invoke-virtual/range {p0 .. p4}, Landroid/renderscript/Script;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;)V

    .line 177
    :goto_0
    return-void

    .line 164
    :cond_1
    const/4 v3, 0x0

    .line 165
    .local v3, "in_id":I
    if-eqz p2, :cond_2

    .line 166
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p2, v0}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)I

    move-result v3

    .line 168
    :cond_2
    const/4 v4, 0x0

    .line 169
    .local v4, "out_id":I
    if-eqz p3, :cond_3

    .line 170
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p3, v0}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)I

    move-result v4

    .line 172
    :cond_3
    const/4 v5, 0x0

    .line 173
    .local v5, "params":[B
    if-eqz p4, :cond_4

    .line 174
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v5

    .line 176
    :cond_4
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)I

    move-result v1

    # getter for: Landroid/renderscript/Script$LaunchOptions;->xstart:I
    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->access$000(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v6

    # getter for: Landroid/renderscript/Script$LaunchOptions;->xend:I
    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->access$100(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v7

    # getter for: Landroid/renderscript/Script$LaunchOptions;->ystart:I
    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->access$200(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v8

    # getter for: Landroid/renderscript/Script$LaunchOptions;->yend:I
    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->access$300(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v9

    # getter for: Landroid/renderscript/Script$LaunchOptions;->zstart:I
    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->access$400(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v10

    # getter for: Landroid/renderscript/Script$LaunchOptions;->zend:I
    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->access$500(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v11

    move v2, p1

    invoke-virtual/range {v0 .. v11}, Landroid/renderscript/RenderScript;->nScriptForEachClipped(IIII[BIIIIII)V

    goto :goto_0
.end method

.method public getVarB(I)Z
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 251
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/renderscript/RenderScript;->nScriptGetVarI(II)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVarD(I)D
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 216
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/renderscript/RenderScript;->nScriptGetVarD(II)D

    move-result-wide v0

    return-wide v0
.end method

.method public getVarF(I)F
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 205
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/renderscript/RenderScript;->nScriptGetVarF(II)F

    move-result v0

    return v0
.end method

.method public getVarI(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 227
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/renderscript/RenderScript;->nScriptGetVarI(II)I

    move-result v0

    return v0
.end method

.method public getVarJ(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 239
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/renderscript/RenderScript;->nScriptGetVarJ(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public getVarV(ILandroid/renderscript/FieldPacker;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "v"    # Landroid/renderscript/FieldPacker;

    .prologue
    .line 283
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {p2}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Landroid/renderscript/RenderScript;->nScriptGetVarV(II[B)V

    .line 284
    return-void
.end method

.method protected invoke(I)V
    .locals 2
    .param p1, "slot"    # I

    .prologue
    .line 111
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/renderscript/RenderScript;->nScriptInvoke(II)V

    .line 112
    return-void
.end method

.method protected invoke(ILandroid/renderscript/FieldPacker;)V
    .locals 3
    .param p1, "slot"    # I
    .param p2, "v"    # Landroid/renderscript/FieldPacker;

    .prologue
    .line 119
    if-eqz p2, :cond_0

    .line 120
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {p2}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Landroid/renderscript/RenderScript;->nScriptInvokeV(II[B)V

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/renderscript/RenderScript;->nScriptInvoke(II)V

    goto :goto_0
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 4
    .param p1, "timeZone"    # Ljava/lang/String;

    .prologue
    .line 287
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    .line 289
    :try_start_0
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)I

    move-result v2

    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/renderscript/RenderScript;->nScriptSetTimeZone(I[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    return-void

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setVar(ID)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "v"    # D

    .prologue
    .line 213
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/renderscript/RenderScript;->nScriptSetVarD(IID)V

    .line 214
    return-void
.end method

.method public setVar(IF)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "v"    # F

    .prologue
    .line 202
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->nScriptSetVarF(IIF)V

    .line 203
    return-void
.end method

.method public setVar(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "v"    # I

    .prologue
    .line 224
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->nScriptSetVarI(III)V

    .line 225
    return-void
.end method

.method public setVar(IJ)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "v"    # J

    .prologue
    .line 236
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/renderscript/RenderScript;->nScriptSetVarJ(IIJ)V

    .line 237
    return-void
.end method

.method public setVar(ILandroid/renderscript/BaseObj;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "o"    # Landroid/renderscript/BaseObj;

    .prologue
    .line 259
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)I

    move-result v2

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, p1, v0}, Landroid/renderscript/RenderScript;->nScriptSetVarObj(III)V

    .line 260
    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p2, v0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)I

    move-result v0

    goto :goto_0
.end method

.method public setVar(ILandroid/renderscript/FieldPacker;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "v"    # Landroid/renderscript/FieldPacker;

    .prologue
    .line 267
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {p2}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Landroid/renderscript/RenderScript;->nScriptSetVarV(II[B)V

    .line 268
    return-void
.end method

.method public setVar(ILandroid/renderscript/FieldPacker;Landroid/renderscript/Element;[I)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "v"    # Landroid/renderscript/FieldPacker;
    .param p3, "e"    # Landroid/renderscript/Element;
    .param p4, "dims"    # [I

    .prologue
    .line 275
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {p2}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v3

    iget-object v2, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p3, v2}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)I

    move-result v4

    move v2, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->nScriptSetVarVE(II[BI[I)V

    .line 276
    return-void
.end method

.method public setVar(IZ)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "v"    # Z

    .prologue
    .line 248
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)I

    move-result v2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, p1, v0}, Landroid/renderscript/RenderScript;->nScriptSetVarI(III)V

    .line 249
    return-void

    .line 248
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
