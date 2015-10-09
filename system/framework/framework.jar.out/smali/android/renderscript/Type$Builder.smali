.class public Landroid/renderscript/Type$Builder;
.super Ljava/lang/Object;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mDimFaces:Z

.field mDimMipmaps:Z

.field mDimX:I

.field mDimY:I

.field mDimZ:I

.field mElement:Landroid/renderscript/Element;

.field mRS:Landroid/renderscript/RenderScript;

.field mYuv:I


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V
    .locals 1
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "e"    # Landroid/renderscript/Element;

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    const/4 v0, 0x1

    iput v0, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    .line 240
    invoke-virtual {p2}, Landroid/renderscript/Element;->checkValid()V

    .line 241
    iput-object p1, p0, Landroid/renderscript/Type$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 242
    iput-object p2, p0, Landroid/renderscript/Type$Builder;->mElement:Landroid/renderscript/Element;

    .line 243
    return-void
.end method


# virtual methods
.method public create()Landroid/renderscript/Type;
    .locals 10

    .prologue
    const/4 v1, 0x1

    .line 314
    iget v0, p0, Landroid/renderscript/Type$Builder;->mDimZ:I

    if-lez v0, :cond_2

    .line 315
    iget v0, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    if-ge v0, v1, :cond_1

    .line 316
    :cond_0
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Both X and Y dimension required when Z is present."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_1
    iget-boolean v0, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    if-eqz v0, :cond_2

    .line 319
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cube maps not supported with 3D types."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_2
    iget v0, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    if-lez v0, :cond_3

    .line 323
    iget v0, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    if-ge v0, v1, :cond_3

    .line 324
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "X dimension required when Y is present."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :cond_3
    iget-boolean v0, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    if-eqz v0, :cond_4

    .line 328
    iget v0, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    if-ge v0, v1, :cond_4

    .line 329
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cube maps require 2D Types."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_4
    iget v0, p0, Landroid/renderscript/Type$Builder;->mYuv:I

    if-eqz v0, :cond_6

    .line 334
    iget v0, p0, Landroid/renderscript/Type$Builder;->mDimZ:I

    if-nez v0, :cond_5

    iget-boolean v0, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Landroid/renderscript/Type$Builder;->mDimMipmaps:Z

    if-eqz v0, :cond_6

    .line 335
    :cond_5
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "YUV only supports basic 2D."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :cond_6
    iget-object v0, p0, Landroid/renderscript/Type$Builder;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Type$Builder;->mElement:Landroid/renderscript/Element;

    iget-object v2, p0, Landroid/renderscript/Type$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1, v2}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)I

    move-result v1

    iget v2, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    iget v3, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    iget v4, p0, Landroid/renderscript/Type$Builder;->mDimZ:I

    iget-boolean v5, p0, Landroid/renderscript/Type$Builder;->mDimMipmaps:Z

    iget-boolean v6, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    iget v7, p0, Landroid/renderscript/Type$Builder;->mYuv:I

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->nTypeCreate(IIIIZZI)I

    move-result v8

    .line 341
    .local v8, "id":I
    new-instance v9, Landroid/renderscript/Type;

    iget-object v0, p0, Landroid/renderscript/Type$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v9, v8, v0}, Landroid/renderscript/Type;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 342
    .local v9, "t":Landroid/renderscript/Type;
    iget-object v0, p0, Landroid/renderscript/Type$Builder;->mElement:Landroid/renderscript/Element;

    iput-object v0, v9, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 343
    iget v0, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    iput v0, v9, Landroid/renderscript/Type;->mDimX:I

    .line 344
    iget v0, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    iput v0, v9, Landroid/renderscript/Type;->mDimY:I

    .line 345
    iget v0, p0, Landroid/renderscript/Type$Builder;->mDimZ:I

    iput v0, v9, Landroid/renderscript/Type;->mDimZ:I

    .line 346
    iget-boolean v0, p0, Landroid/renderscript/Type$Builder;->mDimMipmaps:Z

    iput-boolean v0, v9, Landroid/renderscript/Type;->mDimMipmaps:Z

    .line 347
    iget-boolean v0, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    iput-boolean v0, v9, Landroid/renderscript/Type;->mDimFaces:Z

    .line 348
    iget v0, p0, Landroid/renderscript/Type$Builder;->mYuv:I

    iput v0, v9, Landroid/renderscript/Type;->mDimYuv:I

    .line 350
    invoke-virtual {v9}, Landroid/renderscript/Type;->calcElementCount()V

    .line 351
    return-object v9
.end method

.method public setFaces(Z)Landroid/renderscript/Type$Builder;
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 281
    iput-boolean p1, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    .line 282
    return-object p0
.end method

.method public setMipmaps(Z)Landroid/renderscript/Type$Builder;
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 276
    iput-boolean p1, p0, Landroid/renderscript/Type$Builder;->mDimMipmaps:Z

    .line 277
    return-object p0
.end method

.method public setX(I)Landroid/renderscript/Type$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 252
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 253
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Values of less than 1 for Dimension X are not valid."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_0
    iput p1, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    .line 256
    return-object p0
.end method

.method public setY(I)Landroid/renderscript/Type$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 260
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 261
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Values of less than 1 for Dimension Y are not valid."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_0
    iput p1, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    .line 264
    return-object p0
.end method

.method public setYuvFormat(I)Landroid/renderscript/Type$Builder;
    .locals 2
    .param p1, "yuvFormat"    # I

    .prologue
    .line 292
    sparse-switch p1, :sswitch_data_0

    .line 299
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Only ImageFormat.NV21, .YV12, and .YUV_420_888 are supported.."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :sswitch_0
    iput p1, p0, Landroid/renderscript/Type$Builder;->mYuv:I

    .line 304
    return-object p0

    .line 292
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x23 -> :sswitch_0
        0x32315659 -> :sswitch_0
    .end sparse-switch
.end method

.method public setZ(I)Landroid/renderscript/Type$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 268
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 269
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Values of less than 1 for Dimension Z are not valid."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_0
    iput p1, p0, Landroid/renderscript/Type$Builder;->mDimZ:I

    .line 272
    return-object p0
.end method
