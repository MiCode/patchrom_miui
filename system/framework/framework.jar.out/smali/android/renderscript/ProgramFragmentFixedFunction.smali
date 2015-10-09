.class public Landroid/renderscript/ProgramFragmentFixedFunction;
.super Landroid/renderscript/ProgramFragment;
.source "ProgramFragmentFixedFunction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/ProgramFragmentFixedFunction$1;,
        Landroid/renderscript/ProgramFragmentFixedFunction$Builder;,
        Landroid/renderscript/ProgramFragmentFixedFunction$InternalBuilder;
    }
.end annotation


# direct methods
.method constructor <init>(ILandroid/renderscript/RenderScript;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/renderscript/ProgramFragment;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 36
    return-void
.end method
