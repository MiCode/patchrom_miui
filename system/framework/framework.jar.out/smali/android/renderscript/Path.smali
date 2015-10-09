.class public Landroid/renderscript/Path;
.super Landroid/renderscript/BaseObj;
.source "Path.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Path$Primitive;
    }
.end annotation


# instance fields
.field mCoverageToAlpha:Z

.field mLoopBuffer:Landroid/renderscript/Allocation;

.field mPrimitive:Landroid/renderscript/Path$Primitive;

.field mQuality:F

.field mVertexBuffer:Landroid/renderscript/Allocation;


# direct methods
.method constructor <init>(ILandroid/renderscript/RenderScript;Landroid/renderscript/Path$Primitive;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;F)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "rs"    # Landroid/renderscript/RenderScript;
    .param p3, "p"    # Landroid/renderscript/Path$Primitive;
    .param p4, "vtx"    # Landroid/renderscript/Allocation;
    .param p5, "loop"    # Landroid/renderscript/Allocation;
    .param p6, "q"    # F

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/renderscript/BaseObj;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 46
    iput-object p4, p0, Landroid/renderscript/Path;->mVertexBuffer:Landroid/renderscript/Allocation;

    .line 47
    iput-object p5, p0, Landroid/renderscript/Path;->mLoopBuffer:Landroid/renderscript/Allocation;

    .line 48
    iput-object p3, p0, Landroid/renderscript/Path;->mPrimitive:Landroid/renderscript/Path$Primitive;

    .line 49
    iput p6, p0, Landroid/renderscript/Path;->mQuality:F

    .line 50
    return-void
.end method

.method public static createDynamicPath(Landroid/renderscript/RenderScript;Landroid/renderscript/Path$Primitive;FLandroid/renderscript/Allocation;)Landroid/renderscript/Path;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "p"    # Landroid/renderscript/Path$Primitive;
    .param p2, "quality"    # F
    .param p3, "vtx"    # Landroid/renderscript/Allocation;

    .prologue
    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public static createDynamicPath(Landroid/renderscript/RenderScript;Landroid/renderscript/Path$Primitive;FLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)Landroid/renderscript/Path;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "p"    # Landroid/renderscript/Path$Primitive;
    .param p2, "quality"    # F
    .param p3, "vtx"    # Landroid/renderscript/Allocation;
    .param p4, "loops"    # Landroid/renderscript/Allocation;

    .prologue
    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method public static createStaticPath(Landroid/renderscript/RenderScript;Landroid/renderscript/Path$Primitive;FLandroid/renderscript/Allocation;)Landroid/renderscript/Path;
    .locals 7
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "p"    # Landroid/renderscript/Path$Primitive;
    .param p2, "quality"    # F
    .param p3, "vtx"    # Landroid/renderscript/Allocation;

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 70
    iget v1, p1, Landroid/renderscript/Path$Primitive;->mID:I

    invoke-virtual {p3, p0}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)I

    move-result v3

    move-object v0, p0

    move v4, v2

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->nPathCreate(IZIIF)I

    move-result v1

    .line 71
    .local v1, "id":I
    new-instance v0, Landroid/renderscript/Path;

    move-object v2, p0

    move-object v3, p1

    move-object v4, v6

    move-object v5, v6

    move v6, p2

    invoke-direct/range {v0 .. v6}, Landroid/renderscript/Path;-><init>(ILandroid/renderscript/RenderScript;Landroid/renderscript/Path$Primitive;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;F)V

    .line 72
    .local v0, "newPath":Landroid/renderscript/Path;
    return-object v0
.end method

.method public static createStaticPath(Landroid/renderscript/RenderScript;Landroid/renderscript/Path$Primitive;FLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)Landroid/renderscript/Path;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "p"    # Landroid/renderscript/Path$Primitive;
    .param p2, "quality"    # F
    .param p3, "vtx"    # Landroid/renderscript/Allocation;
    .param p4, "loops"    # Landroid/renderscript/Allocation;

    .prologue
    .line 76
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getLoopAllocation()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Landroid/renderscript/Path;->mLoopBuffer:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public getPrimitive()Landroid/renderscript/Path$Primitive;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Landroid/renderscript/Path;->mPrimitive:Landroid/renderscript/Path$Primitive;

    return-object v0
.end method

.method public getVertexAllocation()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Landroid/renderscript/Path;->mVertexBuffer:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method updateFromNative()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method
