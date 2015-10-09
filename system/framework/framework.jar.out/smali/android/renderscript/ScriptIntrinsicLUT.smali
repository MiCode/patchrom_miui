.class public final Landroid/renderscript/ScriptIntrinsicLUT;
.super Landroid/renderscript/ScriptIntrinsic;
.source "ScriptIntrinsicLUT.java"


# instance fields
.field private final mCache:[B

.field private mDirty:Z

.field private final mMatrix:Landroid/renderscript/Matrix4f;

.field private mTables:Landroid/renderscript/Allocation;


# direct methods
.method private constructor <init>(ILandroid/renderscript/RenderScript;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    const/16 v2, 0x400

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/renderscript/ScriptIntrinsic;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 28
    new-instance v1, Landroid/renderscript/Matrix4f;

    invoke-direct {v1}, Landroid/renderscript/Matrix4f;-><init>()V

    iput-object v1, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mMatrix:Landroid/renderscript/Matrix4f;

    .line 30
    new-array v1, v2, [B

    iput-object v1, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mCache:[B

    .line 31
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    .line 35
    invoke-static {p2}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-static {p2, v1, v2}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;I)Landroid/renderscript/Allocation;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mTables:Landroid/renderscript/Allocation;

    .line 36
    const/4 v0, 0x0

    .local v0, "ct":I
    :goto_0
    const/16 v1, 0x100

    if-ge v0, v1, :cond_0

    .line 37
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mCache:[B

    int-to-byte v2, v0

    aput-byte v2, v1, v0

    .line 38
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mCache:[B

    add-int/lit16 v2, v0, 0x100

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 39
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mCache:[B

    add-int/lit16 v2, v0, 0x200

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 40
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mCache:[B

    add-int/lit16 v2, v0, 0x300

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mTables:Landroid/renderscript/Allocation;

    invoke-virtual {p0, v1, v2}, Landroid/renderscript/ScriptIntrinsicLUT;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 43
    return-void
.end method

.method public static create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicLUT;
    .locals 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "e"    # Landroid/renderscript/Element;

    .prologue
    .line 56
    const/4 v1, 0x3

    invoke-virtual {p1, p0}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/renderscript/RenderScript;->nScriptIntrinsicCreate(II)I

    move-result v0

    .line 57
    .local v0, "id":I
    new-instance v1, Landroid/renderscript/ScriptIntrinsicLUT;

    invoke-direct {v1, v0, p0}, Landroid/renderscript/ScriptIntrinsicLUT;-><init>(ILandroid/renderscript/RenderScript;)V

    return-object v1
.end method

.method private validate(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    const/16 v0, 0xff

    .line 63
    if-ltz p1, :cond_0

    if-le p1, v0, :cond_1

    .line 64
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Index out of range (0-255)."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_1
    if-ltz p2, :cond_2

    if-le p2, v0, :cond_3

    .line 67
    :cond_2
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Value out of range (0-255)."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_3
    return-void
.end method


# virtual methods
.method public forEach(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 3
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;

    .prologue
    const/4 v2, 0x0

    .line 128
    iget-boolean v0, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    if-eqz v0, :cond_0

    .line 129
    iput-boolean v2, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    .line 130
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mTables:Landroid/renderscript/Allocation;

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mCache:[B

    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked([B)V

    .line 132
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v2, p1, p2, v0}, Landroid/renderscript/ScriptIntrinsicLUT;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;)V

    .line 133
    return-void
.end method

.method public getKernelID()Landroid/renderscript/Script$KernelID;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 141
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/renderscript/ScriptIntrinsicLUT;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public setAlpha(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Landroid/renderscript/ScriptIntrinsicLUT;->validate(II)V

    .line 115
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mCache:[B

    add-int/lit16 v1, p1, 0x300

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    .line 117
    return-void
.end method

.method public setBlue(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Landroid/renderscript/ScriptIntrinsicLUT;->validate(II)V

    .line 103
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mCache:[B

    add-int/lit16 v1, p1, 0x200

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    .line 105
    return-void
.end method

.method public setGreen(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Landroid/renderscript/ScriptIntrinsicLUT;->validate(II)V

    .line 91
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mCache:[B

    add-int/lit16 v1, p1, 0x100

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    .line 93
    return-void
.end method

.method public setRed(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/renderscript/ScriptIntrinsicLUT;->validate(II)V

    .line 79
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mCache:[B

    int-to-byte v1, p2

    aput-byte v1, v0, p1

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    .line 81
    return-void
.end method
