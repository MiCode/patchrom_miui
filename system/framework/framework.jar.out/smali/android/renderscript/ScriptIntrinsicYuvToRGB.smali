.class public final Landroid/renderscript/ScriptIntrinsicYuvToRGB;
.super Landroid/renderscript/ScriptIntrinsic;
.source "ScriptIntrinsicYuvToRGB.java"


# instance fields
.field private mInput:Landroid/renderscript/Allocation;


# direct methods
.method constructor <init>(ILandroid/renderscript/RenderScript;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/renderscript/ScriptIntrinsic;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 32
    return-void
.end method

.method public static create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicYuvToRGB;
    .locals 4
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "e"    # Landroid/renderscript/Element;

    .prologue
    .line 46
    const/4 v2, 0x6

    invoke-virtual {p1, p0}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/renderscript/RenderScript;->nScriptIntrinsicCreate(II)I

    move-result v0

    .line 47
    .local v0, "id":I
    new-instance v1, Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    invoke-direct {v1, v0, p0}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 48
    .local v1, "si":Landroid/renderscript/ScriptIntrinsicYuvToRGB;
    return-object v1
.end method


# virtual methods
.method public forEach(Landroid/renderscript/Allocation;)V
    .locals 2
    .param p1, "aout"    # Landroid/renderscript/Allocation;

    .prologue
    const/4 v1, 0x0

    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, p1, v1}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;)V

    .line 70
    return-void
.end method

.method public getFieldID_Input()Landroid/renderscript/Script$FieldID;
    .locals 2

    .prologue
    .line 87
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID()Landroid/renderscript/Script$KernelID;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 78
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public setInput(Landroid/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/renderscript/Allocation;

    .prologue
    .line 58
    iput-object p1, p0, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->mInput:Landroid/renderscript/Allocation;

    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 60
    return-void
.end method
