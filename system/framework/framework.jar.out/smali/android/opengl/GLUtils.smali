.class public final Landroid/opengl/GLUtils;
.super Ljava/lang/Object;
.source "GLUtils.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 37
    invoke-static {}, Landroid/opengl/GLUtils;->nativeClassInit()V

    .line 38
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static getEGLErrorString(I)Ljava/lang/String;
    .locals 2
    .param p0, "error"    # I

    .prologue
    .line 236
    packed-switch p0, :pswitch_data_0

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 238
    :pswitch_0
    const-string v0, "EGL_SUCCESS"

    goto :goto_0

    .line 240
    :pswitch_1
    const-string v0, "EGL_NOT_INITIALIZED"

    goto :goto_0

    .line 242
    :pswitch_2
    const-string v0, "EGL_BAD_ACCESS"

    goto :goto_0

    .line 244
    :pswitch_3
    const-string v0, "EGL_BAD_ALLOC"

    goto :goto_0

    .line 246
    :pswitch_4
    const-string v0, "EGL_BAD_ATTRIBUTE"

    goto :goto_0

    .line 248
    :pswitch_5
    const-string v0, "EGL_BAD_CONFIG"

    goto :goto_0

    .line 250
    :pswitch_6
    const-string v0, "EGL_BAD_CONTEXT"

    goto :goto_0

    .line 252
    :pswitch_7
    const-string v0, "EGL_BAD_CURRENT_SURFACE"

    goto :goto_0

    .line 254
    :pswitch_8
    const-string v0, "EGL_BAD_DISPLAY"

    goto :goto_0

    .line 256
    :pswitch_9
    const-string v0, "EGL_BAD_MATCH"

    goto :goto_0

    .line 258
    :pswitch_a
    const-string v0, "EGL_BAD_NATIVE_PIXMAP"

    goto :goto_0

    .line 260
    :pswitch_b
    const-string v0, "EGL_BAD_NATIVE_WINDOW"

    goto :goto_0

    .line 262
    :pswitch_c
    const-string v0, "EGL_BAD_PARAMETER"

    goto :goto_0

    .line 264
    :pswitch_d
    const-string v0, "EGL_BAD_SURFACE"

    goto :goto_0

    .line 266
    :pswitch_e
    const-string v0, "EGL_CONTEXT_LOST"

    goto :goto_0

    .line 236
    :pswitch_data_0
    .packed-switch 0x3000
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public static getInternalFormat(Landroid/graphics/Bitmap;)I
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 49
    if-nez p0, :cond_0

    .line 50
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "getInternalFormat can\'t be used with a null Bitmap"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 52
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bitmap is recycled"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 55
    :cond_1
    invoke-static {p0}, Landroid/opengl/GLUtils;->native_getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 56
    .local v0, "result":I
    if-gez v0, :cond_2

    .line 57
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown internalformat"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 59
    :cond_2
    return v0
.end method

.method public static getType(Landroid/graphics/Bitmap;)I
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 71
    if-nez p0, :cond_0

    .line 72
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "getType can\'t be used with a null Bitmap"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 74
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bitmap is recycled"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 77
    :cond_1
    invoke-static {p0}, Landroid/opengl/GLUtils;->native_getType(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 78
    .local v0, "result":I
    if-gez v0, :cond_2

    .line 79
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 81
    :cond_2
    return v0
.end method

.method private static native nativeClassInit()V
.end method

.method private static native native_getInternalFormat(Landroid/graphics/Bitmap;)I
.end method

.method private static native native_getType(Landroid/graphics/Bitmap;)I
.end method

.method private static native native_texImage2D(IIILandroid/graphics/Bitmap;II)I
.end method

.method private static native native_texSubImage2D(IIIILandroid/graphics/Bitmap;II)I
.end method

.method public static native setTracingLevel(I)V
.end method

.method public static texImage2D(IIILandroid/graphics/Bitmap;I)V
    .locals 6
    .param p0, "target"    # I
    .param p1, "level"    # I
    .param p2, "internalformat"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "border"    # I

    .prologue
    .line 108
    if-nez p3, :cond_0

    .line 109
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "texImage2D can\'t be used with a null Bitmap"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitmap is recycled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_1
    const/4 v4, -0x1

    move v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLUtils;->native_texImage2D(IIILandroid/graphics/Bitmap;II)I

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid Bitmap format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_2
    return-void
.end method

.method public static texImage2D(IIILandroid/graphics/Bitmap;II)V
    .locals 2
    .param p0, "target"    # I
    .param p1, "level"    # I
    .param p2, "internalformat"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "type"    # I
    .param p5, "border"    # I

    .prologue
    .line 134
    if-nez p3, :cond_0

    .line 135
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "texImage2D can\'t be used with a null Bitmap"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_0
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitmap is recycled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_1
    invoke-static/range {p0 .. p5}, Landroid/opengl/GLUtils;->native_texImage2D(IIILandroid/graphics/Bitmap;II)I

    move-result v0

    if-eqz v0, :cond_2

    .line 141
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid Bitmap format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_2
    return-void
.end method

.method public static texImage2D(IILandroid/graphics/Bitmap;I)V
    .locals 6
    .param p0, "target"    # I
    .param p1, "level"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "border"    # I

    .prologue
    const/4 v2, -0x1

    .line 156
    if-nez p2, :cond_0

    .line 157
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "texImage2D can\'t be used with a null Bitmap"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitmap is recycled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, p0

    move v1, p1

    move-object v3, p2

    move v4, v2

    move v5, p3

    .line 162
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLUtils;->native_texImage2D(IIILandroid/graphics/Bitmap;II)I

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid Bitmap format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_2
    return-void
.end method

.method public static texSubImage2D(IIIILandroid/graphics/Bitmap;)V
    .locals 7
    .param p0, "target"    # I
    .param p1, "level"    # I
    .param p2, "xoffset"    # I
    .param p3, "yoffset"    # I
    .param p4, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 191
    if-nez p4, :cond_0

    .line 192
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "texSubImage2D can\'t be used with a null Bitmap"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_0
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitmap is recycled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_1
    invoke-static {p4}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v6

    .line 198
    .local v6, "type":I
    const/4 v5, -0x1

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLUtils;->native_texSubImage2D(IIIILandroid/graphics/Bitmap;II)I

    move-result v0

    if-eqz v0, :cond_2

    .line 199
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid Bitmap format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_2
    return-void
.end method

.method public static texSubImage2D(IIIILandroid/graphics/Bitmap;II)V
    .locals 2
    .param p0, "target"    # I
    .param p1, "level"    # I
    .param p2, "xoffset"    # I
    .param p3, "yoffset"    # I
    .param p4, "bitmap"    # Landroid/graphics/Bitmap;
    .param p5, "format"    # I
    .param p6, "type"    # I

    .prologue
    .line 216
    if-nez p4, :cond_0

    .line 217
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "texSubImage2D can\'t be used with a null Bitmap"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_0
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitmap is recycled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_1
    invoke-static/range {p0 .. p6}, Landroid/opengl/GLUtils;->native_texSubImage2D(IIIILandroid/graphics/Bitmap;II)I

    move-result v0

    if-eqz v0, :cond_2

    .line 223
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid Bitmap format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_2
    return-void
.end method
