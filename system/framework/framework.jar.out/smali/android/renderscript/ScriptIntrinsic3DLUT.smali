.class public final Landroid/renderscript/ScriptIntrinsic3DLUT;
.super Landroid/renderscript/ScriptIntrinsic;
.source "ScriptIntrinsic3DLUT.java"


# instance fields
.field private mElement:Landroid/renderscript/Element;

.field private mLUT:Landroid/renderscript/Allocation;


# direct methods
.method private constructor <init>(ILandroid/renderscript/RenderScript;Landroid/renderscript/Element;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "rs"    # Landroid/renderscript/RenderScript;
    .param p3, "e"    # Landroid/renderscript/Element;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/renderscript/ScriptIntrinsic;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 35
    iput-object p3, p0, Landroid/renderscript/ScriptIntrinsic3DLUT;->mElement:Landroid/renderscript/Element;

    .line 36
    return-void
.end method

.method public static create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsic3DLUT;
    .locals 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "e"    # Landroid/renderscript/Element;

    .prologue
    .line 49
    const/16 v1, 0x8

    invoke-virtual {p1, p0}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/renderscript/RenderScript;->nScriptIntrinsicCreate(II)I

    move-result v0

    .line 51
    .local v0, "id":I
    invoke-static {p0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "Element must be compatible with uchar4."

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 55
    :cond_0
    new-instance v1, Landroid/renderscript/ScriptIntrinsic3DLUT;

    invoke-direct {v1, v0, p0, p1}, Landroid/renderscript/ScriptIntrinsic3DLUT;-><init>(ILandroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    return-object v1
.end method


# virtual methods
.method public forEach(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 2
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;

    .prologue
    .line 89
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/renderscript/ScriptIntrinsic3DLUT;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;)V

    .line 90
    return-void
.end method

.method public getKernelID()Landroid/renderscript/Script$KernelID;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 98
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/renderscript/ScriptIntrinsic3DLUT;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public setLUT(Landroid/renderscript/Allocation;)V
    .locals 3
    .param p1, "lut"    # Landroid/renderscript/Allocation;

    .prologue
    .line 66
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    .line 68
    .local v0, "t":Landroid/renderscript/Type;
    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    move-result v1

    if-nez v1, :cond_0

    .line 69
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "LUT must be 3d."

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 72
    :cond_0
    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    iget-object v2, p0, Landroid/renderscript/ScriptIntrinsic3DLUT;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v1, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 73
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "LUT element type must match."

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 76
    :cond_1
    iput-object p1, p0, Landroid/renderscript/ScriptIntrinsic3DLUT;->mLUT:Landroid/renderscript/Allocation;

    .line 77
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/renderscript/ScriptIntrinsic3DLUT;->mLUT:Landroid/renderscript/Allocation;

    invoke-virtual {p0, v1, v2}, Landroid/renderscript/ScriptIntrinsic3DLUT;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 78
    return-void
.end method
