.class public final Landroid/renderscript/ScriptGroup;
.super Landroid/renderscript/BaseObj;
.source "ScriptGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/ScriptGroup$Builder;,
        Landroid/renderscript/ScriptGroup$Node;,
        Landroid/renderscript/ScriptGroup$ConnectLine;,
        Landroid/renderscript/ScriptGroup$IO;
    }
.end annotation


# instance fields
.field mInputs:[Landroid/renderscript/ScriptGroup$IO;

.field mOutputs:[Landroid/renderscript/ScriptGroup$IO;


# direct methods
.method constructor <init>(ILandroid/renderscript/RenderScript;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Landroid/renderscript/BaseObj;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 94
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Landroid/renderscript/ScriptGroup;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/ScriptGroup;->getID(Landroid/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/renderscript/RenderScript;->nScriptGroupExecute(I)V

    .line 143
    return-void
.end method

.method public setInput(Landroid/renderscript/Script$KernelID;Landroid/renderscript/Allocation;)V
    .locals 5
    .param p1, "s"    # Landroid/renderscript/Script$KernelID;
    .param p2, "a"    # Landroid/renderscript/Allocation;

    .prologue
    .line 106
    const/4 v0, 0x0

    .local v0, "ct":I
    :goto_0
    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mInputs:[Landroid/renderscript/ScriptGroup$IO;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 107
    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mInputs:[Landroid/renderscript/ScriptGroup$IO;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/renderscript/ScriptGroup$IO;->mKID:Landroid/renderscript/Script$KernelID;

    if-ne v1, p1, :cond_0

    .line 108
    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mInputs:[Landroid/renderscript/ScriptGroup$IO;

    aget-object v1, v1, v0

    iput-object p2, v1, Landroid/renderscript/ScriptGroup$IO;->mAllocation:Landroid/renderscript/Allocation;

    .line 109
    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Landroid/renderscript/ScriptGroup;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/renderscript/ScriptGroup;->getID(Landroid/renderscript/RenderScript;)I

    move-result v2

    iget-object v3, p0, Landroid/renderscript/ScriptGroup;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p1, v3}, Landroid/renderscript/Script$KernelID;->getID(Landroid/renderscript/RenderScript;)I

    move-result v3

    iget-object v4, p0, Landroid/renderscript/ScriptGroup;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v4, p2}, Landroid/renderscript/RenderScript;->safeID(Landroid/renderscript/BaseObj;)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/renderscript/RenderScript;->nScriptGroupSetInput(III)V

    .line 110
    return-void

    .line 106
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_1
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "Script not found"

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setOutput(Landroid/renderscript/Script$KernelID;Landroid/renderscript/Allocation;)V
    .locals 5
    .param p1, "s"    # Landroid/renderscript/Script$KernelID;
    .param p2, "a"    # Landroid/renderscript/Allocation;

    .prologue
    .line 126
    const/4 v0, 0x0

    .local v0, "ct":I
    :goto_0
    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mOutputs:[Landroid/renderscript/ScriptGroup$IO;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 127
    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mOutputs:[Landroid/renderscript/ScriptGroup$IO;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/renderscript/ScriptGroup$IO;->mKID:Landroid/renderscript/Script$KernelID;

    if-ne v1, p1, :cond_0

    .line 128
    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mOutputs:[Landroid/renderscript/ScriptGroup$IO;

    aget-object v1, v1, v0

    iput-object p2, v1, Landroid/renderscript/ScriptGroup$IO;->mAllocation:Landroid/renderscript/Allocation;

    .line 129
    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Landroid/renderscript/ScriptGroup;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/renderscript/ScriptGroup;->getID(Landroid/renderscript/RenderScript;)I

    move-result v2

    iget-object v3, p0, Landroid/renderscript/ScriptGroup;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p1, v3}, Landroid/renderscript/Script$KernelID;->getID(Landroid/renderscript/RenderScript;)I

    move-result v3

    iget-object v4, p0, Landroid/renderscript/ScriptGroup;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v4, p2}, Landroid/renderscript/RenderScript;->safeID(Landroid/renderscript/BaseObj;)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/renderscript/RenderScript;->nScriptGroupSetOutput(III)V

    .line 130
    return-void

    .line 126
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :cond_1
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "Script not found"

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
