.class public final Landroid/renderscript/ScriptIntrinsicBlur;
.super Landroid/renderscript/ScriptIntrinsic;
.source "ScriptIntrinsicBlur.java"


# instance fields
.field private mInput:Landroid/renderscript/Allocation;

.field private final mValues:[F


# direct methods
.method private constructor <init>(ILandroid/renderscript/RenderScript;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/renderscript/ScriptIntrinsic;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 30
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/renderscript/ScriptIntrinsicBlur;->mValues:[F

    .line 35
    return-void
.end method

.method public static create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;
    .locals 4
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "e"    # Landroid/renderscript/Element;

    .prologue
    .line 49
    invoke-static {p0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 50
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string v3, "Unsuported element type."

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 52
    :cond_0
    const/4 v2, 0x5

    invoke-virtual {p1, p0}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/renderscript/RenderScript;->nScriptIntrinsicCreate(II)I

    move-result v0

    .line 53
    .local v0, "id":I
    new-instance v1, Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-direct {v1, v0, p0}, Landroid/renderscript/ScriptIntrinsicBlur;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 54
    .local v1, "sib":Landroid/renderscript/ScriptIntrinsicBlur;
    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {v1, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 55
    return-object v1
.end method


# virtual methods
.method public forEach(Landroid/renderscript/Allocation;)V
    .locals 2
    .param p1, "aout"    # Landroid/renderscript/Allocation;

    .prologue
    const/4 v1, 0x0

    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, p1, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;)V

    .line 92
    return-void
.end method

.method public getFieldID_Input()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 109
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID()Landroid/renderscript/Script$KernelID;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 100
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public setInput(Landroid/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/renderscript/Allocation;

    .prologue
    .line 65
    iput-object p1, p0, Landroid/renderscript/ScriptIntrinsicBlur;->mInput:Landroid/renderscript/Allocation;

    .line 66
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/ScriptIntrinsicBlur;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 67
    return-void
.end method

.method public setRadius(F)V
    .locals 2
    .param p1, "radius"    # F

    .prologue
    .line 77
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x41c80000    # 25.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 78
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Radius out of range (0 < r <= 25)."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/ScriptIntrinsicBlur;->setVar(IF)V

    .line 81
    return-void
.end method
