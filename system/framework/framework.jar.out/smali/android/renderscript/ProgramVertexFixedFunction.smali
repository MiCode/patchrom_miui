.class public Landroid/renderscript/ProgramVertexFixedFunction;
.super Landroid/renderscript/ProgramVertex;
.source "ProgramVertexFixedFunction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/ProgramVertexFixedFunction$Constants;,
        Landroid/renderscript/ProgramVertexFixedFunction$Builder;,
        Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;
    }
.end annotation


# direct methods
.method constructor <init>(ILandroid/renderscript/RenderScript;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/renderscript/ProgramVertex;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 36
    return-void
.end method


# virtual methods
.method public bindConstants(Landroid/renderscript/ProgramVertexFixedFunction$Constants;)V
    .locals 2
    .param p1, "va"    # Landroid/renderscript/ProgramVertexFixedFunction$Constants;

    .prologue
    .line 46
    iget-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 47
    invoke-virtual {p1}, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/ProgramVertexFixedFunction;->bindConstants(Landroid/renderscript/Allocation;I)V

    .line 48
    return-void
.end method
