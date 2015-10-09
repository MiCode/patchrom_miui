.class public Landroid/renderscript/Allocation;
.super Landroid/renderscript/BaseObj;
.source "Allocation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Allocation$1;,
        Landroid/renderscript/Allocation$OnBufferAvailableListener;,
        Landroid/renderscript/Allocation$MipmapControl;
    }
.end annotation


# static fields
.field public static final USAGE_GRAPHICS_CONSTANTS:I = 0x8

.field public static final USAGE_GRAPHICS_RENDER_TARGET:I = 0x10

.field public static final USAGE_GRAPHICS_TEXTURE:I = 0x2

.field public static final USAGE_GRAPHICS_VERTEX:I = 0x4

.field public static final USAGE_IO_INPUT:I = 0x20

.field public static final USAGE_IO_OUTPUT:I = 0x40

.field public static final USAGE_SCRIPT:I = 0x1

.field public static final USAGE_SHARED:I = 0x80

.field static mAllocationMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/renderscript/Allocation;",
            ">;"
        }
    .end annotation
.end field

.field static mBitmapOptions:Landroid/graphics/BitmapFactory$Options;


# instance fields
.field mAdaptedAllocation:Landroid/renderscript/Allocation;

.field mBitmap:Landroid/graphics/Bitmap;

.field mBufferNotifier:Landroid/renderscript/Allocation$OnBufferAvailableListener;

.field mConstrainedFace:Z

.field mConstrainedLOD:Z

.field mConstrainedY:Z

.field mConstrainedZ:Z

.field mCurrentCount:I

.field mCurrentDimX:I

.field mCurrentDimY:I

.field mCurrentDimZ:I

.field mReadAllowed:Z

.field mSelectedFace:Landroid/renderscript/Type$CubemapFace;

.field mSelectedLOD:I

.field mSelectedY:I

.field mSelectedZ:I

.field mSize:I

.field mType:Landroid/renderscript/Type;

.field mUsage:I

.field mWriteAllowed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/renderscript/Allocation;->mAllocationMap:Ljava/util/HashMap;

    .line 1354
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Landroid/renderscript/Allocation;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 1356
    sget-object v0, Landroid/renderscript/Allocation;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 1357
    return-void
.end method

.method constructor <init>(ILandroid/renderscript/RenderScript;Landroid/renderscript/Type;I)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "rs"    # Landroid/renderscript/RenderScript;
    .param p3, "t"    # Landroid/renderscript/Type;
    .param p4, "usage"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 248
    invoke-direct {p0, p1, p2}, Landroid/renderscript/BaseObj;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 70
    iput-boolean v1, p0, Landroid/renderscript/Allocation;->mReadAllowed:Z

    .line 71
    iput-boolean v1, p0, Landroid/renderscript/Allocation;->mWriteAllowed:Z

    .line 75
    sget-object v1, Landroid/renderscript/Type$CubemapFace;->POSITIVE_X:Landroid/renderscript/Type$CubemapFace;

    iput-object v1, p0, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    .line 249
    and-int/lit16 v1, p4, -0x100

    if-eqz v1, :cond_0

    .line 257
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "Unknown usage specified."

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 260
    :cond_0
    and-int/lit8 v1, p4, 0x20

    if-eqz v1, :cond_1

    .line 261
    iput-boolean v2, p0, Landroid/renderscript/Allocation;->mWriteAllowed:Z

    .line 263
    and-int/lit8 v1, p4, -0x24

    if-eqz v1, :cond_1

    .line 266
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "Invalid usage combination."

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 270
    :cond_1
    iput-object p3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 271
    iput p4, p0, Landroid/renderscript/Allocation;->mUsage:I

    .line 273
    if-eqz p3, :cond_2

    .line 277
    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getCount()I

    move-result v1

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v2

    mul-int/2addr v1, v2

    iput v1, p0, Landroid/renderscript/Allocation;->mSize:I

    .line 278
    invoke-direct {p0, p3}, Landroid/renderscript/Allocation;->updateCacheInfo(Landroid/renderscript/Type;)V

    .line 281
    :cond_2
    :try_start_0
    sget-object v1, Landroid/renderscript/RenderScript;->registerNativeAllocation:Ljava/lang/reflect/Method;

    sget-object v2, Landroid/renderscript/RenderScript;->sRuntime:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Landroid/renderscript/Allocation;->mSize:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    return-void

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RenderScript_jni"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t invoke registerNativeAllocation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t invoke registerNativeAllocation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static createCubemapFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1658
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->createCubemapFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    return-object v0
.end method

.method public static createCubemapFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;
    .locals 10
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "mips"    # Landroid/renderscript/Allocation$MipmapControl;
    .param p3, "usage"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1612
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 1614
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 1615
    .local v1, "height":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 1617
    .local v6, "width":I
    rem-int/lit8 v9, v6, 0x6

    if-eqz v9, :cond_0

    .line 1618
    new-instance v7, Landroid/renderscript/RSIllegalArgumentException;

    const-string v8, "Cubemap height must be multiple of 6"

    invoke-direct {v7, v8}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1620
    :cond_0
    div-int/lit8 v9, v6, 0x6

    if-eq v9, v1, :cond_1

    .line 1621
    new-instance v7, Landroid/renderscript/RSIllegalArgumentException;

    const-string v8, "Only square cube map faces supported"

    invoke-direct {v7, v8}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1623
    :cond_1
    add-int/lit8 v9, v1, -0x1

    and-int/2addr v9, v1

    if-nez v9, :cond_2

    move v3, v7

    .line 1624
    .local v3, "isPow2":Z
    :goto_0
    if-nez v3, :cond_3

    .line 1625
    new-instance v7, Landroid/renderscript/RSIllegalArgumentException;

    const-string v8, "Only power of 2 cube faces supported"

    invoke-direct {v7, v8}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .end local v3    # "isPow2":Z
    :cond_2
    move v3, v8

    .line 1623
    goto :goto_0

    .line 1628
    .restart local v3    # "isPow2":Z
    :cond_3
    invoke-static {p0, p1}, Landroid/renderscript/Allocation;->elementFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Element;

    move-result-object v0

    .line 1629
    .local v0, "e":Landroid/renderscript/Element;
    new-instance v5, Landroid/renderscript/Type$Builder;

    invoke-direct {v5, p0, v0}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 1630
    .local v5, "tb":Landroid/renderscript/Type$Builder;
    invoke-virtual {v5, v1}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 1631
    invoke-virtual {v5, v1}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    .line 1632
    invoke-virtual {v5, v7}, Landroid/renderscript/Type$Builder;->setFaces(Z)Landroid/renderscript/Type$Builder;

    .line 1633
    sget-object v9, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_FULL:Landroid/renderscript/Allocation$MipmapControl;

    if-ne p2, v9, :cond_4

    :goto_1
    invoke-virtual {v5, v7}, Landroid/renderscript/Type$Builder;->setMipmaps(Z)Landroid/renderscript/Type$Builder;

    .line 1634
    invoke-virtual {v5}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v4

    .line 1636
    .local v4, "t":Landroid/renderscript/Type;
    invoke-virtual {v4, p0}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)I

    move-result v7

    iget v8, p2, Landroid/renderscript/Allocation$MipmapControl;->mID:I

    invoke-virtual {p0, v7, v8, p1, p3}, Landroid/renderscript/RenderScript;->nAllocationCubeCreateFromBitmap(IILandroid/graphics/Bitmap;I)I

    move-result v2

    .line 1637
    .local v2, "id":I
    if-nez v2, :cond_5

    .line 1638
    new-instance v7, Landroid/renderscript/RSRuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Load failed for bitmap "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " element "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .end local v2    # "id":I
    .end local v4    # "t":Landroid/renderscript/Type;
    :cond_4
    move v7, v8

    .line 1633
    goto :goto_1

    .line 1640
    .restart local v2    # "id":I
    .restart local v4    # "t":Landroid/renderscript/Type;
    :cond_5
    new-instance v7, Landroid/renderscript/Allocation;

    invoke-direct {v7, v2, p0, v4, p3}, Landroid/renderscript/Allocation;-><init>(ILandroid/renderscript/RenderScript;Landroid/renderscript/Type;I)V

    return-object v7
.end method

.method public static createCubemapFromCubeFaces(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;
    .locals 9
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "xpos"    # Landroid/graphics/Bitmap;
    .param p2, "xneg"    # Landroid/graphics/Bitmap;
    .param p3, "ypos"    # Landroid/graphics/Bitmap;
    .param p4, "yneg"    # Landroid/graphics/Bitmap;
    .param p5, "zpos"    # Landroid/graphics/Bitmap;
    .param p6, "zneg"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1753
    sget-object v7, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v8, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v8}, Landroid/renderscript/Allocation;->createCubemapFromCubeFaces(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    return-object v0
.end method

.method public static createCubemapFromCubeFaces(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;
    .locals 11
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "xpos"    # Landroid/graphics/Bitmap;
    .param p2, "xneg"    # Landroid/graphics/Bitmap;
    .param p3, "ypos"    # Landroid/graphics/Bitmap;
    .param p4, "yneg"    # Landroid/graphics/Bitmap;
    .param p5, "zpos"    # Landroid/graphics/Bitmap;
    .param p6, "zneg"    # Landroid/graphics/Bitmap;
    .param p7, "mips"    # Landroid/renderscript/Allocation$MipmapControl;
    .param p8, "usage"    # I

    .prologue
    .line 1689
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 1690
    .local v5, "height":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    if-ne v9, v5, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    if-ne v9, v5, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-ne v9, v5, :cond_0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    if-ne v9, v5, :cond_0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-ne v9, v5, :cond_0

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    if-ne v9, v5, :cond_0

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-ne v9, v5, :cond_0

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    if-ne v9, v5, :cond_0

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-ne v9, v5, :cond_0

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    if-ne v9, v5, :cond_0

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-eq v9, v5, :cond_1

    .line 1696
    :cond_0
    new-instance v9, Landroid/renderscript/RSIllegalArgumentException;

    const-string v10, "Only square cube map faces supported"

    invoke-direct {v9, v10}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1698
    :cond_1
    add-int/lit8 v9, v5, -0x1

    and-int/2addr v9, v5

    if-nez v9, :cond_2

    const/4 v6, 0x1

    .line 1699
    .local v6, "isPow2":Z
    :goto_0
    if-nez v6, :cond_3

    .line 1700
    new-instance v9, Landroid/renderscript/RSIllegalArgumentException;

    const-string v10, "Only power of 2 cube faces supported"

    invoke-direct {v9, v10}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1698
    .end local v6    # "isPow2":Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 1703
    .restart local v6    # "isPow2":Z
    :cond_3
    invoke-static {p0, p1}, Landroid/renderscript/Allocation;->elementFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Element;

    move-result-object v4

    .line 1704
    .local v4, "e":Landroid/renderscript/Element;
    new-instance v8, Landroid/renderscript/Type$Builder;

    invoke-direct {v8, p0, v4}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 1705
    .local v8, "tb":Landroid/renderscript/Type$Builder;
    invoke-virtual {v8, v5}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 1706
    invoke-virtual {v8, v5}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    .line 1707
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/renderscript/Type$Builder;->setFaces(Z)Landroid/renderscript/Type$Builder;

    .line 1708
    sget-object v9, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_FULL:Landroid/renderscript/Allocation$MipmapControl;

    move-object/from16 v0, p7

    if-ne v0, v9, :cond_4

    const/4 v9, 0x1

    :goto_1
    invoke-virtual {v8, v9}, Landroid/renderscript/Type$Builder;->setMipmaps(Z)Landroid/renderscript/Type$Builder;

    .line 1709
    invoke-virtual {v8}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v7

    .line 1710
    .local v7, "t":Landroid/renderscript/Type;
    move-object/from16 v0, p7

    move/from16 v1, p8

    invoke-static {p0, v7, v0, v1}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v3

    .line 1712
    .local v3, "cubemap":Landroid/renderscript/Allocation;
    invoke-static {p0, v3}, Landroid/renderscript/AllocationAdapter;->create2D(Landroid/renderscript/RenderScript;Landroid/renderscript/Allocation;)Landroid/renderscript/AllocationAdapter;

    move-result-object v2

    .line 1713
    .local v2, "adapter":Landroid/renderscript/AllocationAdapter;
    sget-object v9, Landroid/renderscript/Type$CubemapFace;->POSITIVE_X:Landroid/renderscript/Type$CubemapFace;

    invoke-virtual {v2, v9}, Landroid/renderscript/AllocationAdapter;->setFace(Landroid/renderscript/Type$CubemapFace;)V

    .line 1714
    invoke-virtual {v2, p1}, Landroid/renderscript/AllocationAdapter;->copyFrom(Landroid/graphics/Bitmap;)V

    .line 1715
    sget-object v9, Landroid/renderscript/Type$CubemapFace;->NEGATIVE_X:Landroid/renderscript/Type$CubemapFace;

    invoke-virtual {v2, v9}, Landroid/renderscript/AllocationAdapter;->setFace(Landroid/renderscript/Type$CubemapFace;)V

    .line 1716
    invoke-virtual {v2, p2}, Landroid/renderscript/AllocationAdapter;->copyFrom(Landroid/graphics/Bitmap;)V

    .line 1717
    sget-object v9, Landroid/renderscript/Type$CubemapFace;->POSITIVE_Y:Landroid/renderscript/Type$CubemapFace;

    invoke-virtual {v2, v9}, Landroid/renderscript/AllocationAdapter;->setFace(Landroid/renderscript/Type$CubemapFace;)V

    .line 1718
    invoke-virtual {v2, p3}, Landroid/renderscript/AllocationAdapter;->copyFrom(Landroid/graphics/Bitmap;)V

    .line 1719
    sget-object v9, Landroid/renderscript/Type$CubemapFace;->NEGATIVE_Y:Landroid/renderscript/Type$CubemapFace;

    invoke-virtual {v2, v9}, Landroid/renderscript/AllocationAdapter;->setFace(Landroid/renderscript/Type$CubemapFace;)V

    .line 1720
    invoke-virtual {v2, p4}, Landroid/renderscript/AllocationAdapter;->copyFrom(Landroid/graphics/Bitmap;)V

    .line 1721
    sget-object v9, Landroid/renderscript/Type$CubemapFace;->POSITIVE_Z:Landroid/renderscript/Type$CubemapFace;

    invoke-virtual {v2, v9}, Landroid/renderscript/AllocationAdapter;->setFace(Landroid/renderscript/Type$CubemapFace;)V

    .line 1722
    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Landroid/renderscript/AllocationAdapter;->copyFrom(Landroid/graphics/Bitmap;)V

    .line 1723
    sget-object v9, Landroid/renderscript/Type$CubemapFace;->NEGATIVE_Z:Landroid/renderscript/Type$CubemapFace;

    invoke-virtual {v2, v9}, Landroid/renderscript/AllocationAdapter;->setFace(Landroid/renderscript/Type$CubemapFace;)V

    .line 1724
    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Landroid/renderscript/AllocationAdapter;->copyFrom(Landroid/graphics/Bitmap;)V

    .line 1726
    return-object v3

    .line 1708
    .end local v2    # "adapter":Landroid/renderscript/AllocationAdapter;
    .end local v3    # "cubemap":Landroid/renderscript/Allocation;
    .end local v7    # "t":Landroid/renderscript/Type;
    :cond_4
    const/4 v9, 0x0

    goto :goto_1
.end method

.method public static createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1586
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 1587
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/16 v1, 0x83

    invoke-static {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 1590
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    goto :goto_0
.end method

.method public static createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;
    .locals 11
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "mips"    # Landroid/renderscript/Allocation$MipmapControl;
    .param p3, "usage"    # I

    .prologue
    const-wide/32 v9, 0x8000

    const/4 v8, 0x0

    .line 1494
    const-string v5, "createFromBitmap"

    invoke-static {v9, v10, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1495
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 1498
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    if-nez v5, :cond_1

    .line 1499
    and-int/lit16 v5, p3, 0x80

    if-eqz v5, :cond_0

    .line 1500
    new-instance v5, Landroid/renderscript/RSIllegalArgumentException;

    const-string v6, "USAGE_SHARED cannot be used with a Bitmap that has a null config."

    invoke-direct {v5, v6}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1502
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1503
    .local v3, "newBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1504
    .local v1, "c":Landroid/graphics/Canvas;
    const/4 v5, 0x0

    invoke-virtual {v1, p1, v8, v8, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1505
    invoke-static {p0, v3, p2, p3}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 1531
    .end local v1    # "c":Landroid/graphics/Canvas;
    .end local v3    # "newBitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 1508
    :cond_1
    invoke-static {p0, p1, p2}, Landroid/renderscript/Allocation;->typeFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;)Landroid/renderscript/Type;

    move-result-object v4

    .line 1511
    .local v4, "t":Landroid/renderscript/Type;
    sget-object v5, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    if-ne p2, v5, :cond_3

    invoke-virtual {v4}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v5

    invoke-static {p0}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x83

    if-ne p3, v5, :cond_3

    .line 1514
    invoke-virtual {v4, p0}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)I

    move-result v5

    iget v6, p2, Landroid/renderscript/Allocation$MipmapControl;->mID:I

    invoke-virtual {p0, v5, v6, p1, p3}, Landroid/renderscript/RenderScript;->nAllocationCreateBitmapBackedAllocation(IILandroid/graphics/Bitmap;I)I

    move-result v2

    .line 1515
    .local v2, "id":I
    if-nez v2, :cond_2

    .line 1516
    new-instance v5, Landroid/renderscript/RSRuntimeException;

    const-string v6, "Load failed."

    invoke-direct {v5, v6}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1520
    :cond_2
    new-instance v0, Landroid/renderscript/Allocation;

    invoke-direct {v0, v2, p0, v4, p3}, Landroid/renderscript/Allocation;-><init>(ILandroid/renderscript/RenderScript;Landroid/renderscript/Type;I)V

    .line 1521
    .local v0, "alloc":Landroid/renderscript/Allocation;
    invoke-direct {v0, p1}, Landroid/renderscript/Allocation;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1526
    .end local v0    # "alloc":Landroid/renderscript/Allocation;
    .end local v2    # "id":I
    :cond_3
    invoke-virtual {v4, p0}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)I

    move-result v5

    iget v6, p2, Landroid/renderscript/Allocation$MipmapControl;->mID:I

    invoke-virtual {p0, v5, v6, p1, p3}, Landroid/renderscript/RenderScript;->nAllocationCreateFromBitmap(IILandroid/graphics/Bitmap;I)I

    move-result v2

    .line 1527
    .restart local v2    # "id":I
    if-nez v2, :cond_4

    .line 1528
    new-instance v5, Landroid/renderscript/RSRuntimeException;

    const-string v6, "Load failed."

    invoke-direct {v5, v6}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1530
    :cond_4
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 1531
    new-instance v0, Landroid/renderscript/Allocation;

    invoke-direct {v0, v2, p0, v4, p3}, Landroid/renderscript/Allocation;-><init>(ILandroid/renderscript/RenderScript;Landroid/renderscript/Type;I)V

    goto :goto_0
.end method

.method public static createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)Landroid/renderscript/Allocation;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "id"    # I

    .prologue
    .line 1808
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 1809
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v1, 0x3

    invoke-static {p0, p1, p2, v0, v1}, Landroid/renderscript/Allocation;->createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;ILandroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 1813
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v1, 0x2

    invoke-static {p0, p1, p2, v0, v1}, Landroid/renderscript/Allocation;->createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;ILandroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    goto :goto_0
.end method

.method public static createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;ILandroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;
    .locals 4
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "id"    # I
    .param p3, "mips"    # Landroid/renderscript/Allocation$MipmapControl;
    .param p4, "usage"    # I

    .prologue
    .line 1779
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 1780
    and-int/lit16 v2, p4, 0xe0

    if-eqz v2, :cond_0

    .line 1781
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string v3, "Unsupported usage specified."

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1783
    :cond_0
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1784
    .local v1, "b":Landroid/graphics/Bitmap;
    invoke-static {p0, v1, p3, p4}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 1785
    .local v0, "alloc":Landroid/renderscript/Allocation;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1786
    return-object v0
.end method

.method public static createFromString(Landroid/renderscript/RenderScript;Ljava/lang/String;I)Landroid/renderscript/Allocation;
    .locals 5
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "usage"    # I

    .prologue
    .line 1830
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 1831
    const/4 v1, 0x0

    .line 1833
    .local v1, "allocArray":[B
    :try_start_0
    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 1834
    invoke-static {p0}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    array-length v4, v1

    invoke-static {p0, v3, v4, p2}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 1835
    .local v0, "alloc":Landroid/renderscript/Allocation;
    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->copyFrom([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1836
    return-object v0

    .line 1838
    .end local v0    # "alloc":Landroid/renderscript/Allocation;
    :catch_0
    move-exception v2

    .line 1839
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "Could not convert string to utf-8."

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;I)Landroid/renderscript/Allocation;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "e"    # Landroid/renderscript/Element;
    .param p2, "count"    # I

    .prologue
    .line 1448
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;

    move-result-object v0

    return-object v0
.end method

.method public static createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;
    .locals 8
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "e"    # Landroid/renderscript/Element;
    .param p2, "count"    # I
    .param p3, "usage"    # I

    .prologue
    const-wide/32 v6, 0x8000

    .line 1424
    const-string v3, "createSized"

    invoke-static {v6, v7, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1425
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 1426
    new-instance v0, Landroid/renderscript/Type$Builder;

    invoke-direct {v0, p0, p1}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 1427
    .local v0, "b":Landroid/renderscript/Type$Builder;
    invoke-virtual {v0, p2}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 1428
    invoke-virtual {v0}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v2

    .line 1430
    .local v2, "t":Landroid/renderscript/Type;
    invoke-virtual {v2, p0}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)I

    move-result v3

    sget-object v4, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    iget v4, v4, Landroid/renderscript/Allocation$MipmapControl;->mID:I

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, p3, v5}, Landroid/renderscript/RenderScript;->nAllocationCreateTyped(IIII)I

    move-result v1

    .line 1431
    .local v1, "id":I
    if-nez v1, :cond_0

    .line 1432
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "Allocation creation failed."

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1434
    :cond_0
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1435
    new-instance v3, Landroid/renderscript/Allocation;

    invoke-direct {v3, v1, p0, v2, p3}, Landroid/renderscript/Allocation;-><init>(ILandroid/renderscript/RenderScript;Landroid/renderscript/Type;I)V

    return-object v3
.end method

.method public static createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "type"    # Landroid/renderscript/Type;

    .prologue
    .line 1408
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    return-object v0
.end method

.method public static createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "type"    # Landroid/renderscript/Type;
    .param p2, "usage"    # I

    .prologue
    .line 1395
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    invoke-static {p0, p1, v0, p2}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    return-object v0
.end method

.method public static createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;
    .locals 6
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "type"    # Landroid/renderscript/Type;
    .param p2, "mips"    # Landroid/renderscript/Allocation$MipmapControl;
    .param p3, "usage"    # I

    .prologue
    const-wide/32 v4, 0x8000

    .line 1370
    const-string v1, "createTyped"

    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1371
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 1372
    invoke-virtual {p1, p0}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1373
    new-instance v1, Landroid/renderscript/RSInvalidStateException;

    const-string v2, "Bad Type"

    invoke-direct {v1, v2}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1375
    :cond_0
    invoke-virtual {p1, p0}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)I

    move-result v1

    iget v2, p2, Landroid/renderscript/Allocation$MipmapControl;->mID:I

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, p3, v3}, Landroid/renderscript/RenderScript;->nAllocationCreateTyped(IIII)I

    move-result v0

    .line 1376
    .local v0, "id":I
    if-nez v0, :cond_1

    .line 1377
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Allocation creation failed."

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1379
    :cond_1
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1380
    new-instance v1, Landroid/renderscript/Allocation;

    invoke-direct {v1, v0, p0, p1, p3}, Landroid/renderscript/Allocation;-><init>(ILandroid/renderscript/RenderScript;Landroid/renderscript/Type;I)V

    return-object v1
.end method

.method private data1DChecks(IIII)V
    .locals 3
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "len"    # I
    .param p4, "dataSize"    # I

    .prologue
    .line 771
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 772
    if-gez p1, :cond_0

    .line 773
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Offset must be >= 0."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 775
    :cond_0
    const/4 v0, 0x1

    if-ge p2, v0, :cond_1

    .line 776
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Count must be >= 1."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 778
    :cond_1
    add-int v0, p1, p2

    iget v1, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    if-le v0, v1, :cond_2

    .line 779
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Overflow, Available count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 782
    :cond_2
    if-ge p3, p4, :cond_3

    .line 783
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Array too small for allocation type."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 785
    :cond_3
    return-void
.end method

.method static elementFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Element;
    .locals 4
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1452
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 1453
    .local v0, "bc":Landroid/graphics/Bitmap$Config;
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_0

    .line 1454
    invoke-static {p0}, Landroid/renderscript/Element;->A_8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    .line 1463
    :goto_0
    return-object v1

    .line 1456
    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_1

    .line 1457
    invoke-static {p0}, Landroid/renderscript/Element;->RGBA_4444(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    goto :goto_0

    .line 1459
    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_2

    .line 1460
    invoke-static {p0}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    goto :goto_0

    .line 1462
    :cond_2
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_3

    .line 1463
    invoke-static {p0}, Landroid/renderscript/Element;->RGB_565(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    goto :goto_0

    .line 1465
    :cond_3
    new-instance v1, Landroid/renderscript/RSInvalidStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad bitmap type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getIDSafe()I
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)I

    move-result v0

    .line 195
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)I

    move-result v0

    goto :goto_0
.end method

.method static sendBufferNotification(I)V
    .locals 4
    .param p0, "id"    # I

    .prologue
    .line 1867
    sget-object v2, Landroid/renderscript/Allocation;->mAllocationMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 1868
    :try_start_0
    sget-object v1, Landroid/renderscript/Allocation;->mAllocationMap:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/renderscript/Allocation;

    .line 1870
    .local v0, "a":Landroid/renderscript/Allocation;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/renderscript/Allocation;->mBufferNotifier:Landroid/renderscript/Allocation$OnBufferAvailableListener;

    if-eqz v1, :cond_0

    .line 1871
    iget-object v1, v0, Landroid/renderscript/Allocation;->mBufferNotifier:Landroid/renderscript/Allocation$OnBufferAvailableListener;

    invoke-interface {v1, v0}, Landroid/renderscript/Allocation$OnBufferAvailableListener;->onBufferAvailable(Landroid/renderscript/Allocation;)V

    .line 1873
    :cond_0
    monitor-exit v2

    .line 1874
    return-void

    .line 1873
    .end local v0    # "a":Landroid/renderscript/Allocation;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 244
    iput-object p1, p0, Landroid/renderscript/Allocation;->mBitmap:Landroid/graphics/Bitmap;

    .line 245
    return-void
.end method

.method static typeFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;)Landroid/renderscript/Type;
    .locals 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "mip"    # Landroid/renderscript/Allocation$MipmapControl;

    .prologue
    .line 1470
    invoke-static {p0, p1}, Landroid/renderscript/Allocation;->elementFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Element;

    move-result-object v0

    .line 1471
    .local v0, "e":Landroid/renderscript/Element;
    new-instance v1, Landroid/renderscript/Type$Builder;

    invoke-direct {v1, p0, v0}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 1472
    .local v1, "tb":Landroid/renderscript/Type$Builder;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 1473
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    .line 1474
    sget-object v2, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_FULL:Landroid/renderscript/Allocation$MipmapControl;

    if-ne p2, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Landroid/renderscript/Type$Builder;->setMipmaps(Z)Landroid/renderscript/Type$Builder;

    .line 1475
    invoke-virtual {v1}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v2

    return-object v2

    .line 1474
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateCacheInfo(Landroid/renderscript/Type;)V
    .locals 3
    .param p1, "t"    # Landroid/renderscript/Type;

    .prologue
    const/4 v2, 0x1

    .line 231
    invoke-virtual {p1}, Landroid/renderscript/Type;->getX()I

    move-result v0

    iput v0, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    .line 232
    invoke-virtual {p1}, Landroid/renderscript/Type;->getY()I

    move-result v0

    iput v0, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    .line 233
    invoke-virtual {p1}, Landroid/renderscript/Type;->getZ()I

    move-result v0

    iput v0, p0, Landroid/renderscript/Allocation;->mCurrentDimZ:I

    .line 234
    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    iput v0, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    .line 235
    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    if-le v0, v2, :cond_0

    .line 236
    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    iget v1, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    .line 238
    :cond_0
    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentDimZ:I

    if-le v0, v2, :cond_1

    .line 239
    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    iget v1, p0, Landroid/renderscript/Allocation;->mCurrentDimZ:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    .line 241
    :cond_1
    return-void
.end method

.method private validate2DRange(IIII)V
    .locals 2
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 946
    iget-object v0, p0, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_1

    .line 960
    :cond_0
    return-void

    .line 950
    :cond_1
    if-ltz p1, :cond_2

    if-gez p2, :cond_3

    .line 951
    :cond_2
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Offset cannot be negative."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 953
    :cond_3
    if-ltz p4, :cond_4

    if-gez p3, :cond_5

    .line 954
    :cond_4
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Height or width cannot be negative."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 956
    :cond_5
    add-int v0, p1, p3

    iget v1, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    if-gt v0, v1, :cond_6

    add-int v0, p2, p4

    iget v1, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    if-le v0, v1, :cond_0

    .line 957
    :cond_6
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Updated region larger than allocation."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validate3DRange(IIIIII)V
    .locals 2
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "zoff"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "d"    # I

    .prologue
    .line 1116
    iget-object v0, p0, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_1

    .line 1130
    :cond_0
    return-void

    .line 1120
    :cond_1
    if-ltz p1, :cond_2

    if-ltz p2, :cond_2

    if-gez p3, :cond_3

    .line 1121
    :cond_2
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Offset cannot be negative."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1123
    :cond_3
    if-ltz p5, :cond_4

    if-ltz p4, :cond_4

    if-gez p6, :cond_5

    .line 1124
    :cond_4
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Height or width cannot be negative."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1126
    :cond_5
    add-int v0, p1, p4

    iget v1, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    if-gt v0, v1, :cond_6

    add-int v0, p2, p5

    iget v1, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    if-gt v0, v1, :cond_6

    add-int v0, p3, p6

    iget v1, p0, Landroid/renderscript/Allocation;->mCurrentDimZ:I

    if-le v0, v1, :cond_0

    .line 1127
    :cond_6
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Updated region larger than allocation."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateBitmapFormat(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x2

    .line 460
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 461
    .local v0, "bc":Landroid/graphics/Bitmap$Config;
    if-nez v0, :cond_0

    .line 462
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "Bitmap has an unsupported format for this operation"

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 464
    :cond_0
    sget-object v1, Landroid/renderscript/Allocation$1;->$SwitchMap$android$graphics$Bitmap$Config:[I

    invoke-virtual {v0}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 506
    :cond_1
    return-void

    .line 466
    :pswitch_0
    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    iget-object v1, v1, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_A:Landroid/renderscript/Element$DataKind;

    if-eq v1, v2, :cond_1

    .line 467
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Allocation kind is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    iget-object v3, v3, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    iget-object v3, v3, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes, passed bitmap was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 475
    :pswitch_1
    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    iget-object v1, v1, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 477
    :cond_2
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Allocation kind is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    iget-object v3, v3, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    iget-object v3, v3, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes, passed bitmap was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 485
    :pswitch_2
    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    iget-object v1, v1, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 487
    :cond_3
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Allocation kind is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    iget-object v3, v3, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    iget-object v3, v3, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes, passed bitmap was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 495
    :pswitch_3
    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    iget-object v1, v1, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 497
    :cond_4
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Allocation kind is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    iget-object v3, v3, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    iget-object v3, v3, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes, passed bitmap was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 464
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private validateBitmapSize(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 509
    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 510
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Cannot update allocation from bitmap, sizes mismatch"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 512
    :cond_1
    return-void
.end method

.method private validateIsFloat32()V
    .locals 3

    .prologue
    .line 321
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    if-ne v0, v1, :cond_0

    .line 322
    return-void

    .line 324
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "32 bit float source does not match allocation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateIsInt16()V
    .locals 3

    .prologue
    .line 303
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    if-ne v0, v1, :cond_1

    .line 305
    :cond_0
    return-void

    .line 307
    :cond_1
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "16 bit integer source does not match allocation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateIsInt32()V
    .locals 3

    .prologue
    .line 294
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_32:Landroid/renderscript/Element$DataType;

    if-ne v0, v1, :cond_1

    .line 296
    :cond_0
    return-void

    .line 298
    :cond_1
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "32 bit integer source does not match allocation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateIsInt8()V
    .locals 3

    .prologue
    .line 312
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    if-ne v0, v1, :cond_1

    .line 314
    :cond_0
    return-void

    .line 316
    :cond_1
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "8 bit integer source does not match allocation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateIsObject()V
    .locals 3

    .prologue
    .line 329
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_ELEMENT:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_TYPE:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_ALLOCATION:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_SAMPLER:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_SCRIPT:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_MESH:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_PROGRAM_FRAGMENT:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_PROGRAM_VERTEX:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_PROGRAM_RASTER:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_PROGRAM_STORE:Landroid/renderscript/Element$DataType;

    if-ne v0, v1, :cond_1

    .line 339
    :cond_0
    return-void

    .line 341
    :cond_1
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Object source does not match allocation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public copy1DRangeFrom(IILandroid/renderscript/Allocation;I)V
    .locals 14
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "data"    # Landroid/renderscript/Allocation;
    .param p4, "dataOff"    # I

    .prologue
    .line 938
    const-wide/32 v1, 0x8000

    const-string v3, "copy1DRangeFrom"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 939
    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {p0}, Landroid/renderscript/Allocation;->getIDSafe()I

    move-result v2

    const/4 v4, 0x0

    iget v5, p0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    iget-object v3, p0, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    iget v6, v3, Landroid/renderscript/Type$CubemapFace;->mID:I

    const/4 v8, 0x1

    iget-object v3, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)I

    move-result v9

    const/4 v11, 0x0

    move-object/from16 v0, p3

    iget v12, v0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    iget v13, v3, Landroid/renderscript/Type$CubemapFace;->mID:I

    move v3, p1

    move/from16 v7, p2

    move/from16 v10, p4

    invoke-virtual/range {v1 .. v13}, Landroid/renderscript/RenderScript;->nAllocationData2D(IIIIIIIIIIII)V

    .line 943
    return-void
.end method

.method public copy1DRangeFrom(II[B)V
    .locals 3
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [B

    .prologue
    const-wide/32 v1, 0x8000

    .line 907
    const-string v0, "copy1DRangeFrom"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 908
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt8()V

    .line 909
    invoke-virtual {p0, p1, p2, p3}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(II[B)V

    .line 910
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 911
    return-void
.end method

.method public copy1DRangeFrom(II[F)V
    .locals 3
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [F

    .prologue
    const-wide/32 v1, 0x8000

    .line 923
    const-string v0, "copy1DRangeFrom"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 924
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsFloat32()V

    .line 925
    invoke-virtual {p0, p1, p2, p3}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(II[F)V

    .line 926
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 927
    return-void
.end method

.method public copy1DRangeFrom(II[I)V
    .locals 3
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [I

    .prologue
    const-wide/32 v1, 0x8000

    .line 875
    const-string v0, "copy1DRangeFrom"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 876
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt32()V

    .line 877
    invoke-virtual {p0, p1, p2, p3}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(II[I)V

    .line 878
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 879
    return-void
.end method

.method public copy1DRangeFrom(II[S)V
    .locals 3
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [S

    .prologue
    const-wide/32 v1, 0x8000

    .line 891
    const-string v0, "copy1DRangeFrom"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 892
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt16()V

    .line 893
    invoke-virtual {p0, p1, p2, p3}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(II[S)V

    .line 894
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 895
    return-void
.end method

.method public copy1DRangeFromUnchecked(II[B)V
    .locals 9
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [B

    .prologue
    const-wide/32 v7, 0x8000

    .line 842
    const-string v0, "copy1DRangeFromUnchecked"

    invoke-static {v7, v8, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 843
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v0}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v0

    mul-int v6, v0, p2

    .line 844
    .local v6, "dataSize":I
    array-length v0, p3

    invoke-direct {p0, p1, p2, v0, v6}, Landroid/renderscript/Allocation;->data1DChecks(IIII)V

    .line 845
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {p0}, Landroid/renderscript/Allocation;->getIDSafe()I

    move-result v1

    iget v3, p0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    move v2, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/RenderScript;->nAllocationData1D(IIII[BI)V

    .line 846
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 847
    return-void
.end method

.method public copy1DRangeFromUnchecked(II[F)V
    .locals 9
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [F

    .prologue
    const-wide/32 v7, 0x8000

    .line 858
    const-string v0, "copy1DRangeFromUnchecked"

    invoke-static {v7, v8, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 859
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v0}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v0

    mul-int v6, v0, p2

    .line 860
    .local v6, "dataSize":I
    array-length v0, p3

    mul-int/lit8 v0, v0, 0x4

    invoke-direct {p0, p1, p2, v0, v6}, Landroid/renderscript/Allocation;->data1DChecks(IIII)V

    .line 861
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {p0}, Landroid/renderscript/Allocation;->getIDSafe()I

    move-result v1

    iget v3, p0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    move v2, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/RenderScript;->nAllocationData1D(IIII[FI)V

    .line 862
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 863
    return-void
.end method

.method public copy1DRangeFromUnchecked(II[I)V
    .locals 9
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [I

    .prologue
    const-wide/32 v7, 0x8000

    .line 810
    const-string v0, "copy1DRangeFromUnchecked"

    invoke-static {v7, v8, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 811
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v0}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v0

    mul-int v6, v0, p2

    .line 812
    .local v6, "dataSize":I
    array-length v0, p3

    mul-int/lit8 v0, v0, 0x4

    invoke-direct {p0, p1, p2, v0, v6}, Landroid/renderscript/Allocation;->data1DChecks(IIII)V

    .line 813
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {p0}, Landroid/renderscript/Allocation;->getIDSafe()I

    move-result v1

    iget v3, p0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    move v2, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/RenderScript;->nAllocationData1D(IIII[II)V

    .line 814
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 815
    return-void
.end method

.method public copy1DRangeFromUnchecked(II[S)V
    .locals 9
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [S

    .prologue
    const-wide/32 v7, 0x8000

    .line 826
    const-string v0, "copy1DRangeFromUnchecked"

    invoke-static {v7, v8, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 827
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v0}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v0

    mul-int v6, v0, p2

    .line 828
    .local v6, "dataSize":I
    array-length v0, p3

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, p1, p2, v0, v6}, Landroid/renderscript/Allocation;->data1DChecks(IIII)V

    .line 829
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {p0}, Landroid/renderscript/Allocation;->getIDSafe()I

    move-result v1

    iget v3, p0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    move v2, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/RenderScript;->nAllocationData1D(IIII[SI)V

    .line 830
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 831
    return-void
.end method

.method public copy2DRangeFrom(IIIILandroid/renderscript/Allocation;II)V
    .locals 14
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "data"    # Landroid/renderscript/Allocation;
    .param p6, "dataXoff"    # I
    .param p7, "dataYoff"    # I

    .prologue
    .line 1080
    const-wide/32 v1, 0x8000

    const-string v3, "copy2DRangeFrom"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1081
    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    .line 1082
    invoke-direct/range {p0 .. p4}, Landroid/renderscript/Allocation;->validate2DRange(IIII)V

    .line 1083
    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {p0}, Landroid/renderscript/Allocation;->getIDSafe()I

    move-result v2

    iget v5, p0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    iget-object v3, p0, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    iget v6, v3, Landroid/renderscript/Type$CubemapFace;->mID:I

    iget-object v3, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)I

    move-result v9

    move-object/from16 v0, p5

    iget v12, v0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    move-object/from16 v0, p5

    iget-object v3, v0, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    iget v13, v3, Landroid/renderscript/Type$CubemapFace;->mID:I

    move v3, p1

    move/from16 v4, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-virtual/range {v1 .. v13}, Landroid/renderscript/RenderScript;->nAllocationData2D(IIIIIIIIIIII)V

    .line 1087
    const-wide/32 v1, 0x8000

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1088
    return-void
.end method

.method public copy2DRangeFrom(IIII[B)V
    .locals 3
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "data"    # [B

    .prologue
    const-wide/32 v1, 0x8000

    .line 1009
    const-string v0, "copy2DRangeFrom"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1010
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt8()V

    .line 1011
    invoke-virtual/range {p0 .. p5}, Landroid/renderscript/Allocation;->copy2DRangeFromUnchecked(IIII[B)V

    .line 1012
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1013
    return-void
.end method

.method public copy2DRangeFrom(IIII[F)V
    .locals 3
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "data"    # [F

    .prologue
    const-wide/32 v1, 0x8000

    .line 1060
    const-string v0, "copy2DRangeFrom"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1061
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsFloat32()V

    .line 1062
    invoke-virtual/range {p0 .. p5}, Landroid/renderscript/Allocation;->copy2DRangeFromUnchecked(IIII[F)V

    .line 1063
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1064
    return-void
.end method

.method public copy2DRangeFrom(IIII[I)V
    .locals 3
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "data"    # [I

    .prologue
    const-wide/32 v1, 0x8000

    .line 1043
    const-string v0, "copy2DRangeFrom"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1044
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt32()V

    .line 1045
    invoke-virtual/range {p0 .. p5}, Landroid/renderscript/Allocation;->copy2DRangeFromUnchecked(IIII[I)V

    .line 1046
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1047
    return-void
.end method

.method public copy2DRangeFrom(IIII[S)V
    .locals 3
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "data"    # [S

    .prologue
    const-wide/32 v1, 0x8000

    .line 1026
    const-string v0, "copy2DRangeFrom"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1027
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt16()V

    .line 1028
    invoke-virtual/range {p0 .. p5}, Landroid/renderscript/Allocation;->copy2DRangeFromUnchecked(IIII[S)V

    .line 1029
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1030
    return-void
.end method

.method public copy2DRangeFrom(IILandroid/graphics/Bitmap;)V
    .locals 11
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "data"    # Landroid/graphics/Bitmap;

    .prologue
    const-wide/32 v9, 0x8000

    const/4 v3, 0x0

    .line 1100
    const-string v0, "copy2DRangeFrom"

    invoke-static {v9, v10, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1101
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 1102
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1103
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1104
    .local v8, "newBitmap":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1105
    .local v7, "c":Landroid/graphics/Canvas;
    const/4 v0, 0x0

    invoke-virtual {v7, p3, v3, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1106
    invoke-virtual {p0, p1, p2, v8}, Landroid/renderscript/Allocation;->copy2DRangeFrom(IILandroid/graphics/Bitmap;)V

    .line 1113
    .end local v7    # "c":Landroid/graphics/Canvas;
    .end local v8    # "newBitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 1109
    :cond_0
    invoke-direct {p0, p3}, Landroid/renderscript/Allocation;->validateBitmapFormat(Landroid/graphics/Bitmap;)V

    .line 1110
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/renderscript/Allocation;->validate2DRange(IIII)V

    .line 1111
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {p0}, Landroid/renderscript/Allocation;->getIDSafe()I

    move-result v1

    iget v4, p0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    iget-object v2, p0, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    iget v5, v2, Landroid/renderscript/Type$CubemapFace;->mID:I

    move v2, p1

    move v3, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/RenderScript;->nAllocationData2D(IIIIILandroid/graphics/Bitmap;)V

    .line 1112
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0
.end method

.method copy2DRangeFromUnchecked(IIII[B)V
    .locals 10
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "data"    # [B

    .prologue
    .line 963
    const-wide/32 v0, 0x8000

    const-string v2, "copy2DRangeFromUnchecked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 964
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 965
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/renderscript/Allocation;->validate2DRange(IIII)V

    .line 966
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {p0}, Landroid/renderscript/Allocation;->getIDSafe()I

    move-result v1

    iget v4, p0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    iget-object v2, p0, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    iget v5, v2, Landroid/renderscript/Type$CubemapFace;->mID:I

    array-length v9, p5

    move v2, p1

    move v3, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-virtual/range {v0 .. v9}, Landroid/renderscript/RenderScript;->nAllocationData2D(IIIIIII[BI)V

    .line 968
    const-wide/32 v0, 0x8000

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 969
    return-void
.end method

.method copy2DRangeFromUnchecked(IIII[F)V
    .locals 10
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "data"    # [F

    .prologue
    .line 990
    const-wide/32 v0, 0x8000

    const-string v2, "copy2DRangeFromUnchecked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 991
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 992
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/renderscript/Allocation;->validate2DRange(IIII)V

    .line 993
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {p0}, Landroid/renderscript/Allocation;->getIDSafe()I

    move-result v1

    iget v4, p0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    iget-object v2, p0, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    iget v5, v2, Landroid/renderscript/Type$CubemapFace;->mID:I

    array-length v2, p5

    mul-int/lit8 v9, v2, 0x4

    move v2, p1

    move v3, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-virtual/range {v0 .. v9}, Landroid/renderscript/RenderScript;->nAllocationData2D(IIIIIII[FI)V

    .line 995
    const-wide/32 v0, 0x8000

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 996
    return-void
.end method

.method copy2DRangeFromUnchecked(IIII[I)V
    .locals 10
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "data"    # [I

    .prologue
    .line 981
    const-wide/32 v0, 0x8000

    const-string v2, "copy2DRangeFromUnchecked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 982
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 983
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/renderscript/Allocation;->validate2DRange(IIII)V

    .line 984
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {p0}, Landroid/renderscript/Allocation;->getIDSafe()I

    move-result v1

    iget v4, p0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    iget-object v2, p0, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    iget v5, v2, Landroid/renderscript/Type$CubemapFace;->mID:I

    array-length v2, p5

    mul-int/lit8 v9, v2, 0x4

    move v2, p1

    move v3, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-virtual/range {v0 .. v9}, Landroid/renderscript/RenderScript;->nAllocationData2D(IIIIIII[II)V

    .line 986
    const-wide/32 v0, 0x8000

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 987
    return-void
.end method

.method copy2DRangeFromUnchecked(IIII[S)V
    .locals 10
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "data"    # [S

    .prologue
    .line 972
    const-wide/32 v0, 0x8000

    const-string v2, "copy2DRangeFromUnchecked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 973
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 974
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/renderscript/Allocation;->validate2DRange(IIII)V

    .line 975
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {p0}, Landroid/renderscript/Allocation;->getIDSafe()I

    move-result v1

    iget v4, p0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    iget-object v2, p0, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    iget v5, v2, Landroid/renderscript/Type$CubemapFace;->mID:I

    array-length v2, p5

    mul-int/lit8 v9, v2, 0x2

    move v2, p1

    move v3, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-virtual/range {v0 .. v9}, Landroid/renderscript/RenderScript;->nAllocationData2D(IIIIIII[SI)V

    .line 977
    const-wide/32 v0, 0x8000

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 978
    return-void
.end method

.method public copy3DRangeFrom(IIIIIILandroid/renderscript/Allocation;III)V
    .locals 15
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "zoff"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "d"    # I
    .param p7, "data"    # Landroid/renderscript/Allocation;
    .param p8, "dataXoff"    # I
    .param p9, "dataYoff"    # I
    .param p10, "dataZoff"    # I

    .prologue
    .line 1240
    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    .line 1241
    invoke-direct/range {p0 .. p6}, Landroid/renderscript/Allocation;->validate3DRange(IIIIII)V

    .line 1242
    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {p0}, Landroid/renderscript/Allocation;->getIDSafe()I

    move-result v2

    iget v6, p0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    iget-object v3, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)I

    move-result v10

    move-object/from16 v0, p7

    iget v14, v0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    invoke-virtual/range {v1 .. v14}, Landroid/renderscript/RenderScript;->nAllocationData3D(IIIIIIIIIIIII)V

    .line 1245
    return-void
.end method

.method public copy3DRangeFrom(IIIIII[B)V
    .locals 0
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "zoff"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "d"    # I
    .param p7, "data"    # [B

    .prologue
    .line 1191
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt8()V

    .line 1192
    invoke-virtual/range {p0 .. p7}, Landroid/renderscript/Allocation;->copy3DRangeFromUnchecked(IIIIII[B)V

    .line 1193
    return-void
.end method

.method public copy3DRangeFrom(IIIIII[F)V
    .locals 0
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "zoff"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "d"    # I
    .param p7, "data"    # [F

    .prologue
    .line 1218
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsFloat32()V

    .line 1219
    invoke-virtual/range {p0 .. p7}, Landroid/renderscript/Allocation;->copy3DRangeFromUnchecked(IIIIII[F)V

    .line 1220
    return-void
.end method

.method public copy3DRangeFrom(IIIIII[I)V
    .locals 0
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "zoff"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "d"    # I
    .param p7, "data"    # [I

    .prologue
    .line 1209
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt32()V

    .line 1210
    invoke-virtual/range {p0 .. p7}, Landroid/renderscript/Allocation;->copy3DRangeFromUnchecked(IIIIII[I)V

    .line 1211
    return-void
.end method

.method public copy3DRangeFrom(IIIIII[S)V
    .locals 0
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "zoff"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "d"    # I
    .param p7, "data"    # [S

    .prologue
    .line 1200
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt16()V

    .line 1201
    invoke-virtual/range {p0 .. p7}, Landroid/renderscript/Allocation;->copy3DRangeFromUnchecked(IIIIII[S)V

    .line 1202
    return-void
.end method

.method copy3DRangeFromUnchecked(IIIIII[B)V
    .locals 12
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "zoff"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "d"    # I
    .param p7, "data"    # [B

    .prologue
    .line 1137
    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    .line 1138
    invoke-direct/range {p0 .. p6}, Landroid/renderscript/Allocation;->validate3DRange(IIIIII)V

    .line 1139
    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {p0}, Landroid/renderscript/Allocation;->getIDSafe()I

    move-result v2

    iget v6, p0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    move-object/from16 v0, p7

    array-length v11, v0

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v1 .. v11}, Landroid/renderscript/RenderScript;->nAllocationData3D(IIIIIIII[BI)V

    .line 1141
    return-void
.end method

.method copy3DRangeFromUnchecked(IIIIII[F)V
    .locals 12
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "zoff"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "d"    # I
    .param p7, "data"    # [F

    .prologue
    .line 1170
    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    .line 1171
    invoke-direct/range {p0 .. p6}, Landroid/renderscript/Allocation;->validate3DRange(IIIIII)V

    .line 1172
    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {p0}, Landroid/renderscript/Allocation;->getIDSafe()I

    move-result v2

    iget v6, p0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    move-object/from16 v0, p7

    array-length v3, v0

    mul-int/lit8 v11, v3, 0x4

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v1 .. v11}, Landroid/renderscript/RenderScript;->nAllocationData3D(IIIIIIII[FI)V

    .line 1174
    return-void
.end method

.method copy3DRangeFromUnchecked(IIIIII[I)V
    .locals 12
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "zoff"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "d"    # I
    .param p7, "data"    # [I

    .prologue
    .line 1159
    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    .line 1160
    invoke-direct/range {p0 .. p6}, Landroid/renderscript/Allocation;->validate3DRange(IIIIII)V

    .line 1161
    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {p0}, Landroid/renderscript/Allocation;->getIDSafe()I

    move-result v2

    iget v6, p0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    move-object/from16 v0, p7

    array-length v3, v0

    mul-int/lit8 v11, v3, 0x4

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v1 .. v11}, Landroid/renderscript/RenderScript;->nAllocationData3D(IIIIIIII[II)V

    .line 1163
    return-void
.end method

.method copy3DRangeFromUnchecked(IIIIII[S)V
    .locals 12
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "zoff"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "d"    # I
    .param p7, "data"    # [S

    .prologue
    .line 1148
    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    .line 1149
    invoke-direct/range {p0 .. p6}, Landroid/renderscript/Allocation;->validate3DRange(IIIIII)V

    .line 1150
    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {p0}, Landroid/renderscript/Allocation;->getIDSafe()I

    move-result v2

    iget v6, p0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    move-object/from16 v0, p7

    array-length v3, v0

    mul-int/lit8 v11, v3, 0x2

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v1 .. v11}, Landroid/renderscript/RenderScript;->nAllocationData3D(IIIIIIII[SI)V

    .line 1152
    return-void
.end method

.method public copyFrom(Landroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    const-wide/32 v6, 0x8000

    const/4 v5, 0x0

    .line 689
    const-string v2, "copyFrom"

    invoke-static {v6, v7, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 690
    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->validate()V

    .line 691
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    if-nez v2, :cond_0

    .line 692
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 693
    .local v1, "newBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 694
    .local v0, "c":Landroid/graphics/Canvas;
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v5, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 695
    invoke-virtual {p0, v1}, Landroid/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V

    .line 702
    .end local v0    # "c":Landroid/graphics/Canvas;
    .end local v1    # "newBitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 698
    :cond_0
    invoke-direct {p0, p1}, Landroid/renderscript/Allocation;->validateBitmapSize(Landroid/graphics/Bitmap;)V

    .line 699
    invoke-direct {p0, p1}, Landroid/renderscript/Allocation;->validateBitmapFormat(Landroid/graphics/Bitmap;)V

    .line 700
    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)I

    move-result v3

    invoke-virtual {v2, v3, p1}, Landroid/renderscript/RenderScript;->nAllocationCopyFromBitmap(ILandroid/graphics/Bitmap;)V

    .line 701
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0
.end method

.method public copyFrom(Landroid/renderscript/Allocation;)V
    .locals 10
    .param p1, "a"    # Landroid/renderscript/Allocation;

    .prologue
    const-wide/32 v8, 0x8000

    const/4 v1, 0x0

    .line 711
    const-string v0, "copyFrom"

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 712
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 713
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/renderscript/Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 714
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Types of allocations must match."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 716
    :cond_0
    iget v3, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    iget v4, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    move-object v0, p0

    move v2, v1

    move-object v5, p1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeFrom(IIIILandroid/renderscript/Allocation;II)V

    .line 717
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 718
    return-void
.end method

.method public copyFrom([B)V
    .locals 10
    .param p1, "d"    # [B

    .prologue
    const-wide/32 v8, 0x8000

    const/4 v1, 0x0

    .line 643
    const-string v0, "copyFrom"

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 644
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 645
    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentDimZ:I

    if-lez v0, :cond_0

    .line 646
    iget v4, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    iget v5, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    iget v6, p0, Landroid/renderscript/Allocation;->mCurrentDimZ:I

    move-object v0, p0

    move v2, v1

    move v3, v1

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy3DRangeFrom(IIIIII[B)V

    .line 652
    :goto_0
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 653
    return-void

    .line 647
    :cond_0
    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    if-lez v0, :cond_1

    .line 648
    iget v3, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    iget v4, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    move-object v0, p0

    move v2, v1

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy2DRangeFrom(IIII[B)V

    goto :goto_0

    .line 650
    :cond_1
    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    invoke-virtual {p0, v1, v0, p1}, Landroid/renderscript/Allocation;->copy1DRangeFrom(II[B)V

    goto :goto_0
.end method

.method public copyFrom([F)V
    .locals 10
    .param p1, "d"    # [F

    .prologue
    const-wide/32 v8, 0x8000

    const/4 v1, 0x0

    .line 663
    const-string v0, "copyFrom"

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 664
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 665
    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentDimZ:I

    if-lez v0, :cond_0

    .line 666
    iget v4, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    iget v5, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    iget v6, p0, Landroid/renderscript/Allocation;->mCurrentDimZ:I

    move-object v0, p0

    move v2, v1

    move v3, v1

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy3DRangeFrom(IIIIII[F)V

    .line 672
    :goto_0
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 673
    return-void

    .line 667
    :cond_0
    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    if-lez v0, :cond_1

    .line 668
    iget v3, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    iget v4, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    move-object v0, p0

    move v2, v1

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy2DRangeFrom(IIII[F)V

    goto :goto_0

    .line 670
    :cond_1
    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    invoke-virtual {p0, v1, v0, p1}, Landroid/renderscript/Allocation;->copy1DRangeFrom(II[F)V

    goto :goto_0
.end method

.method public copyFrom([I)V
    .locals 10
    .param p1, "d"    # [I

    .prologue
    const-wide/32 v8, 0x8000

    const/4 v1, 0x0

    .line 603
    const-string v0, "copyFrom"

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 604
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 605
    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentDimZ:I

    if-lez v0, :cond_0

    .line 606
    iget v4, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    iget v5, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    iget v6, p0, Landroid/renderscript/Allocation;->mCurrentDimZ:I

    move-object v0, p0

    move v2, v1

    move v3, v1

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy3DRangeFrom(IIIIII[I)V

    .line 612
    :goto_0
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 613
    return-void

    .line 607
    :cond_0
    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    if-lez v0, :cond_1

    .line 608
    iget v3, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    iget v4, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    move-object v0, p0

    move v2, v1

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy2DRangeFrom(IIII[I)V

    goto :goto_0

    .line 610
    :cond_1
    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    invoke-virtual {p0, v1, v0, p1}, Landroid/renderscript/Allocation;->copy1DRangeFrom(II[I)V

    goto :goto_0
.end method

.method public copyFrom([Landroid/renderscript/BaseObj;)V
    .locals 6
    .param p1, "d"    # [Landroid/renderscript/BaseObj;

    .prologue
    const-wide/32 v4, 0x8000

    .line 444
    const-string v2, "copyFrom"

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 445
    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->validate()V

    .line 446
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsObject()V

    .line 447
    array-length v2, p1

    iget v3, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    if-eq v2, v3, :cond_0

    .line 448
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Array size mismatch, allocation sizeX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", array length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 451
    :cond_0
    array-length v2, p1

    new-array v1, v2, [I

    .line 452
    .local v1, "i":[I
    const/4 v0, 0x0

    .local v0, "ct":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 453
    aget-object v2, p1, v0

    iget-object v3, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2, v3}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)I

    move-result v2

    aput v2, v1, v0

    .line 452
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 455
    :cond_1
    const/4 v2, 0x0

    iget v3, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    invoke-virtual {p0, v2, v3, v1}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(II[I)V

    .line 456
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 457
    return-void
.end method

.method public copyFrom([S)V
    .locals 10
    .param p1, "d"    # [S

    .prologue
    const-wide/32 v8, 0x8000

    const/4 v1, 0x0

    .line 623
    const-string v0, "copyFrom"

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 624
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 625
    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentDimZ:I

    if-lez v0, :cond_0

    .line 626
    iget v4, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    iget v5, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    iget v6, p0, Landroid/renderscript/Allocation;->mCurrentDimZ:I

    move-object v0, p0

    move v2, v1

    move v3, v1

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy3DRangeFrom(IIIIII[S)V

    .line 632
    :goto_0
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 633
    return-void

    .line 627
    :cond_0
    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    if-lez v0, :cond_1

    .line 628
    iget v3, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    iget v4, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    move-object v0, p0

    move v2, v1

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy2DRangeFrom(IIII[S)V

    goto :goto_0

    .line 630
    :cond_1
    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    invoke-virtual {p0, v1, v0, p1}, Landroid/renderscript/Allocation;->copy1DRangeFrom(II[S)V

    goto :goto_0
.end method

.method public copyFromUnchecked([B)V
    .locals 10
    .param p1, "d"    # [B

    .prologue
    const-wide/32 v8, 0x8000

    const/4 v1, 0x0

    .line 562
    const-string v0, "copyFromUnchecked"

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 563
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 564
    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentDimZ:I

    if-lez v0, :cond_0

    .line 565
    iget v4, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    iget v5, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    iget v6, p0, Landroid/renderscript/Allocation;->mCurrentDimZ:I

    move-object v0, p0

    move v2, v1

    move v3, v1

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy3DRangeFromUnchecked(IIIIII[B)V

    .line 571
    :goto_0
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 572
    return-void

    .line 566
    :cond_0
    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    if-lez v0, :cond_1

    .line 567
    iget v3, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    iget v4, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    move-object v0, p0

    move v2, v1

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy2DRangeFromUnchecked(IIII[B)V

    goto :goto_0

    .line 569
    :cond_1
    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    invoke-virtual {p0, v1, v0, p1}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(II[B)V

    goto :goto_0
.end method

.method public copyFromUnchecked([F)V
    .locals 10
    .param p1, "d"    # [F

    .prologue
    const-wide/32 v8, 0x8000

    const/4 v1, 0x0

    .line 582
    const-string v0, "copyFromUnchecked"

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 583
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 584
    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentDimZ:I

    if-lez v0, :cond_0

    .line 585
    iget v4, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    iget v5, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    iget v6, p0, Landroid/renderscript/Allocation;->mCurrentDimZ:I

    move-object v0, p0

    move v2, v1

    move v3, v1

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy3DRangeFromUnchecked(IIIIII[F)V

    .line 591
    :goto_0
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 592
    return-void

    .line 586
    :cond_0
    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    if-lez v0, :cond_1

    .line 587
    iget v3, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    iget v4, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    move-object v0, p0

    move v2, v1

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy2DRangeFromUnchecked(IIII[F)V

    goto :goto_0

    .line 589
    :cond_1
    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    invoke-virtual {p0, v1, v0, p1}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(II[F)V

    goto :goto_0
.end method

.method public copyFromUnchecked([I)V
    .locals 10
    .param p1, "d"    # [I

    .prologue
    const-wide/32 v8, 0x8000

    const/4 v1, 0x0

    .line 522
    const-string v0, "copyFromUnchecked"

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 523
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 524
    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentDimZ:I

    if-lez v0, :cond_0

    .line 525
    iget v4, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    iget v5, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    iget v6, p0, Landroid/renderscript/Allocation;->mCurrentDimZ:I

    move-object v0, p0

    move v2, v1

    move v3, v1

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy3DRangeFromUnchecked(IIIIII[I)V

    .line 531
    :goto_0
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 532
    return-void

    .line 526
    :cond_0
    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    if-lez v0, :cond_1

    .line 527
    iget v3, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    iget v4, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    move-object v0, p0

    move v2, v1

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy2DRangeFromUnchecked(IIII[I)V

    goto :goto_0

    .line 529
    :cond_1
    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    invoke-virtual {p0, v1, v0, p1}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(II[I)V

    goto :goto_0
.end method

.method public copyFromUnchecked([S)V
    .locals 10
    .param p1, "d"    # [S

    .prologue
    const-wide/32 v8, 0x8000

    const/4 v1, 0x0

    .line 542
    const-string v0, "copyFromUnchecked"

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 543
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 544
    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentDimZ:I

    if-lez v0, :cond_0

    .line 545
    iget v4, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    iget v5, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    iget v6, p0, Landroid/renderscript/Allocation;->mCurrentDimZ:I

    move-object v0, p0

    move v2, v1

    move v3, v1

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy3DRangeFromUnchecked(IIIIII[S)V

    .line 551
    :goto_0
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 552
    return-void

    .line 546
    :cond_0
    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    if-lez v0, :cond_1

    .line 547
    iget v3, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    iget v4, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    move-object v0, p0

    move v2, v1

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy2DRangeFromUnchecked(IIII[S)V

    goto :goto_0

    .line 549
    :cond_1
    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    invoke-virtual {p0, v1, v0, p1}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(II[S)V

    goto :goto_0
.end method

.method public copyTo(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    const-wide/32 v2, 0x8000

    .line 1255
    const-string v0, "copyTo"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1256
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 1257
    invoke-direct {p0, p1}, Landroid/renderscript/Allocation;->validateBitmapFormat(Landroid/graphics/Bitmap;)V

    .line 1258
    invoke-direct {p0, p1}, Landroid/renderscript/Allocation;->validateBitmapSize(Landroid/graphics/Bitmap;)V

    .line 1259
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/renderscript/RenderScript;->nAllocationCopyToBitmap(ILandroid/graphics/Bitmap;)V

    .line 1260
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1261
    return-void
.end method

.method public copyTo([B)V
    .locals 4
    .param p1, "d"    # [B

    .prologue
    const-wide/32 v2, 0x8000

    .line 1271
    const-string v0, "copyTo"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1272
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt8()V

    .line 1273
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 1274
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/renderscript/RenderScript;->nAllocationRead(I[B)V

    .line 1275
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1276
    return-void
.end method

.method public copyTo([F)V
    .locals 4
    .param p1, "d"    # [F

    .prologue
    const-wide/32 v2, 0x8000

    .line 1316
    const-string v0, "copyTo"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1317
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsFloat32()V

    .line 1318
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 1319
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/renderscript/RenderScript;->nAllocationRead(I[F)V

    .line 1320
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1321
    return-void
.end method

.method public copyTo([I)V
    .locals 4
    .param p1, "d"    # [I

    .prologue
    const-wide/32 v2, 0x8000

    .line 1301
    const-string v0, "copyTo"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1302
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt32()V

    .line 1303
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 1304
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/renderscript/RenderScript;->nAllocationRead(I[I)V

    .line 1305
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1306
    return-void
.end method

.method public copyTo([S)V
    .locals 4
    .param p1, "d"    # [S

    .prologue
    const-wide/32 v2, 0x8000

    .line 1286
    const-string v0, "copyTo"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1287
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt16()V

    .line 1288
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 1289
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/renderscript/RenderScript;->nAllocationRead(I[S)V

    .line 1290
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1291
    return-void
.end method

.method protected finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 289
    sget-object v0, Landroid/renderscript/RenderScript;->registerNativeFree:Ljava/lang/reflect/Method;

    sget-object v1, Landroid/renderscript/RenderScript;->sRuntime:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Landroid/renderscript/Allocation;->mSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    invoke-super {p0}, Landroid/renderscript/BaseObj;->finalize()V

    .line 291
    return-void
.end method

.method public generateMipmaps()V
    .locals 2

    .prologue
    .line 798
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/renderscript/RenderScript;->nAllocationGenerateMipmaps(I)V

    .line 799
    return-void
.end method

.method public getBytesSize()I
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getCount()I

    move-result v0

    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public getElement()Landroid/renderscript/Element;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    return-object v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 2

    .prologue
    .line 1543
    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    .line 1544
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Allocation is not a surface texture."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1546
    :cond_0
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/renderscript/RenderScript;->nAllocationGetSurface(I)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getType()Landroid/renderscript/Type;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    return-object v0
.end method

.method public getUsage()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    return v0
.end method

.method public ioReceive()V
    .locals 4

    .prologue
    const-wide/32 v2, 0x8000

    .line 428
    const-string v0, "ioReceive"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 429
    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    .line 430
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Can only receive if IO_INPUT usage specified."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 433
    :cond_0
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 434
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/renderscript/RenderScript;->nAllocationIoReceive(I)V

    .line 435
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 436
    return-void
.end method

.method public ioSend()V
    .locals 4

    .prologue
    const-wide/32 v2, 0x8000

    .line 404
    const-string v0, "ioSend"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 405
    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    .line 406
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Can only send buffer if IO_OUTPUT usage specified."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :cond_0
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 410
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/renderscript/RenderScript;->nAllocationIoSend(I)V

    .line 411
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 412
    return-void
.end method

.method public ioSendOutput()V
    .locals 0

    .prologue
    .line 419
    invoke-virtual {p0}, Landroid/renderscript/Allocation;->ioSend()V

    .line 420
    return-void
.end method

.method public declared-synchronized resize(I)V
    .locals 3
    .param p1, "dimX"    # I

    .prologue
    .line 1339
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getZ()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1340
    :cond_0
    new-instance v1, Landroid/renderscript/RSInvalidStateException;

    const-string v2, "Resize only support for 1D allocations at this time."

    invoke-direct {v1, v2}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1339
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1342
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/renderscript/RenderScript;->nAllocationResize1D(II)V

    .line 1343
    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->finish()V

    .line 1345
    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/renderscript/RenderScript;->nAllocationGetType(I)I

    move-result v0

    .line 1346
    .local v0, "typeID":I
    new-instance v1, Landroid/renderscript/Type;

    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v1, v0, v2}, Landroid/renderscript/Type;-><init>(ILandroid/renderscript/RenderScript;)V

    iput-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 1347
    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->updateFromNative()V

    .line 1348
    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-direct {p0, v1}, Landroid/renderscript/Allocation;->updateCacheInfo(Landroid/renderscript/Type;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1349
    monitor-exit p0

    return-void
.end method

.method public setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    .locals 8
    .param p1, "xoff"    # I
    .param p2, "component_number"    # I
    .param p3, "fp"    # Landroid/renderscript/FieldPacker;

    .prologue
    .line 749
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 750
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    array-length v0, v0

    if-lt p2, v0, :cond_0

    .line 751
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Component_number "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " out of range."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 753
    :cond_0
    if-gez p1, :cond_1

    .line 754
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Offset must be >= 0."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 757
    :cond_1
    invoke-virtual {p3}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v5

    .line 758
    .local v5, "data":[B
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v7

    .line 759
    .local v7, "eSize":I
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mArraySizes:[I

    aget v0, v0, p2

    mul-int/2addr v7, v0

    .line 761
    array-length v0, v5

    if-eq v0, v7, :cond_2

    .line 762
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field packer sizelength "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not match component size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 766
    :cond_2
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {p0}, Landroid/renderscript/Allocation;->getIDSafe()I

    move-result v1

    iget v3, p0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    array-length v6, v5

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/RenderScript;->nAllocationElementData1D(IIII[BI)V

    .line 768
    return-void
.end method

.method public setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V
    .locals 6
    .param p1, "xoff"    # I
    .param p2, "fp"    # Landroid/renderscript/FieldPacker;

    .prologue
    .line 728
    iget-object v3, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v3}, Landroid/renderscript/RenderScript;->validate()V

    .line 729
    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v3, v3, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v3}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v2

    .line 730
    .local v2, "eSize":I
    invoke-virtual {p2}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v1

    .line 732
    .local v1, "data":[B
    array-length v3, v1

    div-int v0, v3, v2

    .line 733
    .local v0, "count":I
    mul-int v3, v2, v0

    array-length v4, v1

    if-eq v3, v4, :cond_0

    .line 734
    new-instance v3, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Field packer length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not divisible by element size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 737
    :cond_0
    invoke-virtual {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(II[B)V

    .line 738
    return-void
.end method

.method public setOnBufferAvailableListener(Landroid/renderscript/Allocation$OnBufferAvailableListener;)V
    .locals 4
    .param p1, "callback"    # Landroid/renderscript/Allocation$OnBufferAvailableListener;

    .prologue
    .line 1860
    sget-object v1, Landroid/renderscript/Allocation;->mAllocationMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1861
    :try_start_0
    sget-object v0, Landroid/renderscript/Allocation;->mAllocationMap:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    iget-object v3, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1862
    iput-object p1, p0, Landroid/renderscript/Allocation;->mBufferNotifier:Landroid/renderscript/Allocation$OnBufferAvailableListener;

    .line 1863
    monitor-exit v1

    .line 1864
    return-void

    .line 1863
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "sur"    # Landroid/view/Surface;

    .prologue
    .line 1563
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 1564
    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    .line 1565
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Allocation is not USAGE_IO_OUTPUT."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1568
    :cond_0
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/renderscript/RenderScript;->nAllocationSetSurface(ILandroid/view/Surface;)V

    .line 1569
    return-void
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .param p1, "st"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 1553
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {p0, v0}, Landroid/renderscript/Allocation;->setSurface(Landroid/view/Surface;)V

    .line 1554
    return-void
.end method

.method public syncAll(I)V
    .locals 4
    .param p1, "srcLocation"    # I

    .prologue
    const-wide/32 v2, 0x8000

    .line 372
    const-string/jumbo v0, "syncAll"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 373
    sparse-switch p1, :sswitch_data_0

    .line 389
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Source must be exactly one usage type."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 376
    :sswitch_0
    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Landroid/renderscript/Allocation;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Landroid/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V

    .line 391
    :cond_0
    :goto_0
    :sswitch_1
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 392
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {p0}, Landroid/renderscript/Allocation;->getIDSafe()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/renderscript/RenderScript;->nAllocationSyncAll(II)V

    .line 393
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 394
    return-void

    .line 384
    :sswitch_2
    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Landroid/renderscript/Allocation;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 373
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_1
        0x80 -> :sswitch_2
    .end sparse-switch
.end method

.method updateFromNative()V
    .locals 3

    .prologue
    .line 347
    invoke-super {p0}, Landroid/renderscript/BaseObj;->updateFromNative()V

    .line 348
    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/renderscript/RenderScript;->nAllocationGetType(I)I

    move-result v0

    .line 349
    .local v0, "typeID":I
    if-eqz v0, :cond_0

    .line 350
    new-instance v1, Landroid/renderscript/Type;

    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v1, v0, v2}, Landroid/renderscript/Type;-><init>(ILandroid/renderscript/RenderScript;)V

    iput-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 351
    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->updateFromNative()V

    .line 352
    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-direct {p0, v1}, Landroid/renderscript/Allocation;->updateCacheInfo(Landroid/renderscript/Type;)V

    .line 354
    :cond_0
    return-void
.end method
