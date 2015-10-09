.class public Landroid/graphics/ComposeShader;
.super Landroid/graphics/Shader;
.source "ComposeShader.java"


# static fields
.field private static final TYPE_PORTERDUFFMODE:I = 0x2

.field private static final TYPE_XFERMODE:I = 0x1


# instance fields
.field private mPorterDuffMode:Landroid/graphics/PorterDuff$Mode;

.field private final mShaderA:Landroid/graphics/Shader;

.field private final mShaderB:Landroid/graphics/Shader;

.field private mType:I

.field private mXferMode:Landroid/graphics/Xfermode;


# direct methods
.method public constructor <init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V
    .locals 4
    .param p1, "shaderA"    # Landroid/graphics/Shader;
    .param p2, "shaderB"    # Landroid/graphics/Shader;
    .param p3, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    .line 76
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/ComposeShader;->mType:I

    .line 77
    iput-object p1, p0, Landroid/graphics/ComposeShader;->mShaderA:Landroid/graphics/Shader;

    .line 78
    iput-object p2, p0, Landroid/graphics/ComposeShader;->mShaderB:Landroid/graphics/Shader;

    .line 79
    iput-object p3, p0, Landroid/graphics/ComposeShader;->mPorterDuffMode:Landroid/graphics/PorterDuff$Mode;

    .line 80
    iget v0, p1, Landroid/graphics/Shader;->native_instance:I

    iget v1, p2, Landroid/graphics/Shader;->native_instance:I

    iget v2, p3, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/ComposeShader;->nativeCreate2(III)I

    move-result v0

    iput v0, p0, Landroid/graphics/ComposeShader;->native_instance:I

    .line 82
    iget v0, p0, Landroid/graphics/ComposeShader;->native_instance:I

    iget v1, p1, Landroid/graphics/Shader;->native_shader:I

    iget v2, p2, Landroid/graphics/Shader;->native_shader:I

    iget v3, p3, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/ComposeShader;->nativePostCreate2(IIII)I

    move-result v0

    iput v0, p0, Landroid/graphics/ComposeShader;->native_shader:I

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/Xfermode;)V
    .locals 5
    .param p1, "shaderA"    # Landroid/graphics/Shader;
    .param p2, "shaderB"    # Landroid/graphics/Shader;
    .param p3, "mode"    # Landroid/graphics/Xfermode;

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    .line 52
    const/4 v1, 0x1

    iput v1, p0, Landroid/graphics/ComposeShader;->mType:I

    .line 53
    iput-object p1, p0, Landroid/graphics/ComposeShader;->mShaderA:Landroid/graphics/Shader;

    .line 54
    iput-object p2, p0, Landroid/graphics/ComposeShader;->mShaderB:Landroid/graphics/Shader;

    .line 55
    iput-object p3, p0, Landroid/graphics/ComposeShader;->mXferMode:Landroid/graphics/Xfermode;

    .line 56
    iget v3, p1, Landroid/graphics/Shader;->native_instance:I

    iget v4, p2, Landroid/graphics/Shader;->native_instance:I

    if-eqz p3, :cond_1

    iget v1, p3, Landroid/graphics/Xfermode;->native_instance:I

    :goto_0
    invoke-static {v3, v4, v1}, Landroid/graphics/ComposeShader;->nativeCreate1(III)I

    move-result v1

    iput v1, p0, Landroid/graphics/ComposeShader;->native_instance:I

    .line 58
    instance-of v1, p3, Landroid/graphics/PorterDuffXfermode;

    if-eqz v1, :cond_2

    .line 59
    check-cast p3, Landroid/graphics/PorterDuffXfermode;

    .end local p3    # "mode":Landroid/graphics/Xfermode;
    iget-object v0, p3, Landroid/graphics/PorterDuffXfermode;->mode:Landroid/graphics/PorterDuff$Mode;

    .line 60
    .local v0, "pdMode":Landroid/graphics/PorterDuff$Mode;
    iget v1, p0, Landroid/graphics/ComposeShader;->native_instance:I

    iget v3, p1, Landroid/graphics/Shader;->native_shader:I

    iget v4, p2, Landroid/graphics/Shader;->native_shader:I

    if-eqz v0, :cond_0

    iget v2, v0, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    :cond_0
    invoke-static {v1, v3, v4, v2}, Landroid/graphics/ComposeShader;->nativePostCreate2(IIII)I

    move-result v1

    iput v1, p0, Landroid/graphics/ComposeShader;->native_shader:I

    .line 66
    .end local v0    # "pdMode":Landroid/graphics/PorterDuff$Mode;
    :goto_1
    return-void

    .restart local p3    # "mode":Landroid/graphics/Xfermode;
    :cond_1
    move v1, v2

    .line 56
    goto :goto_0

    .line 63
    :cond_2
    iget v1, p0, Landroid/graphics/ComposeShader;->native_instance:I

    iget v3, p1, Landroid/graphics/Shader;->native_shader:I

    iget v4, p2, Landroid/graphics/Shader;->native_shader:I

    if-eqz p3, :cond_3

    iget v2, p3, Landroid/graphics/Xfermode;->native_instance:I

    :cond_3
    invoke-static {v1, v3, v4, v2}, Landroid/graphics/ComposeShader;->nativePostCreate1(IIII)I

    move-result v1

    iput v1, p0, Landroid/graphics/ComposeShader;->native_shader:I

    goto :goto_1
.end method

.method private static native nativeCreate1(III)I
.end method

.method private static native nativeCreate2(III)I
.end method

.method private static native nativePostCreate1(IIII)I
.end method

.method private static native nativePostCreate2(IIII)I
.end method


# virtual methods
.method protected copy()Landroid/graphics/Shader;
    .locals 4

    .prologue
    .line 92
    iget v1, p0, Landroid/graphics/ComposeShader;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 100
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ComposeShader should be created with either Xfermode or PorterDuffMode"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 94
    :pswitch_0
    new-instance v0, Landroid/graphics/ComposeShader;

    iget-object v1, p0, Landroid/graphics/ComposeShader;->mShaderA:Landroid/graphics/Shader;

    invoke-virtual {v1}, Landroid/graphics/Shader;->copy()Landroid/graphics/Shader;

    move-result-object v1

    iget-object v2, p0, Landroid/graphics/ComposeShader;->mShaderB:Landroid/graphics/Shader;

    invoke-virtual {v2}, Landroid/graphics/Shader;->copy()Landroid/graphics/Shader;

    move-result-object v2

    iget-object v3, p0, Landroid/graphics/ComposeShader;->mXferMode:Landroid/graphics/Xfermode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/Xfermode;)V

    .line 103
    .local v0, "copy":Landroid/graphics/ComposeShader;
    :goto_0
    invoke-virtual {p0, v0}, Landroid/graphics/ComposeShader;->copyLocalMatrix(Landroid/graphics/Shader;)V

    .line 104
    return-object v0

    .line 97
    .end local v0    # "copy":Landroid/graphics/ComposeShader;
    :pswitch_1
    new-instance v0, Landroid/graphics/ComposeShader;

    iget-object v1, p0, Landroid/graphics/ComposeShader;->mShaderA:Landroid/graphics/Shader;

    invoke-virtual {v1}, Landroid/graphics/Shader;->copy()Landroid/graphics/Shader;

    move-result-object v1

    iget-object v2, p0, Landroid/graphics/ComposeShader;->mShaderB:Landroid/graphics/Shader;

    invoke-virtual {v2}, Landroid/graphics/Shader;->copy()Landroid/graphics/Shader;

    move-result-object v2

    iget-object v3, p0, Landroid/graphics/ComposeShader;->mPorterDuffMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    .line 98
    .restart local v0    # "copy":Landroid/graphics/ComposeShader;
    goto :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
