.class public final Landroid/renderscript/ScriptIntrinsicConvolve3x3;
.super Landroid/renderscript/ScriptIntrinsic;
.source "ScriptIntrinsicConvolve3x3.java"


# instance fields
.field private mInput:Landroid/renderscript/Allocation;

.field private final mValues:[F


# direct methods
.method private constructor <init>(ILandroid/renderscript/RenderScript;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/renderscript/ScriptIntrinsic;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 26
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->mValues:[F

    .line 31
    return-void
.end method

.method public static create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicConvolve3x3;
    .locals 5
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "e"    # Landroid/renderscript/Element;

    .prologue
    .line 53
    const/16 v3, 0x9

    new-array v0, v3, [F

    fill-array-data v0, :array_0

    .line 54
    .local v0, "f":[F
    invoke-static {p0}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0}, Landroid/renderscript/Element;->U8_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0}, Landroid/renderscript/Element;->U8_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0}, Landroid/renderscript/Element;->F32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0}, Landroid/renderscript/Element;->F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 62
    new-instance v3, Landroid/renderscript/RSIllegalArgumentException;

    const-string v4, "Unsuported element type."

    invoke-direct {v3, v4}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 64
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {p1, p0}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/renderscript/RenderScript;->nScriptIntrinsicCreate(II)I

    move-result v1

    .line 65
    .local v1, "id":I
    new-instance v2, Landroid/renderscript/ScriptIntrinsicConvolve3x3;

    invoke-direct {v2, v1, p0}, Landroid/renderscript/ScriptIntrinsicConvolve3x3;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 66
    .local v2, "si":Landroid/renderscript/ScriptIntrinsicConvolve3x3;
    invoke-virtual {v2, v0}, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->setCoefficients([F)V

    .line 67
    return-object v2

    .line 53
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public forEach(Landroid/renderscript/Allocation;)V
    .locals 2
    .param p1, "aout"    # Landroid/renderscript/Allocation;

    .prologue
    const/4 v1, 0x0

    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, p1, v1}, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;)V

    .line 112
    return-void
.end method

.method public getFieldID_Input()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 129
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID()Landroid/renderscript/Script$KernelID;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 120
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public setCoefficients([F)V
    .locals 4
    .param p1, "v"    # [F

    .prologue
    .line 95
    new-instance v1, Landroid/renderscript/FieldPacker;

    const/16 v2, 0x24

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 96
    .local v1, "fp":Landroid/renderscript/FieldPacker;
    const/4 v0, 0x0

    .local v0, "ct":I
    :goto_0
    iget-object v2, p0, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->mValues:[F

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 97
    iget-object v2, p0, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->mValues:[F

    aget v3, p1, v0

    aput v3, v2, v0

    .line 98
    iget-object v2, p0, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->mValues:[F

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->setVar(ILandroid/renderscript/FieldPacker;)V

    .line 101
    return-void
.end method

.method public setInput(Landroid/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/renderscript/Allocation;

    .prologue
    .line 78
    iput-object p1, p0, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->mInput:Landroid/renderscript/Allocation;

    .line 79
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 80
    return-void
.end method
