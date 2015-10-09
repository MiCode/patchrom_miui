.class public Landroid/graphics/BitmapShader;
.super Landroid/graphics/Shader;
.source "BitmapShader.java"


# instance fields
.field public final mBitmap:Landroid/graphics/Bitmap;

.field private mTileX:Landroid/graphics/Shader$TileMode;

.field private mTileY:Landroid/graphics/Shader$TileMode;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "tileX"    # Landroid/graphics/Shader$TileMode;
    .param p3, "tileY"    # Landroid/graphics/Shader$TileMode;

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    .line 42
    iput-object p1, p0, Landroid/graphics/BitmapShader;->mBitmap:Landroid/graphics/Bitmap;

    .line 43
    iput-object p2, p0, Landroid/graphics/BitmapShader;->mTileX:Landroid/graphics/Shader$TileMode;

    .line 44
    iput-object p3, p0, Landroid/graphics/BitmapShader;->mTileY:Landroid/graphics/Shader$TileMode;

    .line 45
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->ni()I

    move-result v0

    .line 46
    .local v0, "b":I
    iget v1, p2, Landroid/graphics/Shader$TileMode;->nativeInt:I

    iget v2, p3, Landroid/graphics/Shader$TileMode;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapShader;->nativeCreate(III)I

    move-result v1

    iput v1, p0, Landroid/graphics/BitmapShader;->native_instance:I

    .line 47
    iget v1, p0, Landroid/graphics/BitmapShader;->native_instance:I

    iget v2, p2, Landroid/graphics/Shader$TileMode;->nativeInt:I

    iget v3, p3, Landroid/graphics/Shader$TileMode;->nativeInt:I

    invoke-static {v1, v0, v2, v3}, Landroid/graphics/BitmapShader;->nativePostCreate(IIII)I

    move-result v1

    iput v1, p0, Landroid/graphics/BitmapShader;->native_shader:I

    .line 48
    return-void
.end method

.method private static native nativeCreate(III)I
.end method

.method private static native nativePostCreate(IIII)I
.end method


# virtual methods
.method protected copy()Landroid/graphics/Shader;
    .locals 4

    .prologue
    .line 55
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Landroid/graphics/BitmapShader;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Landroid/graphics/BitmapShader;->mTileX:Landroid/graphics/Shader$TileMode;

    iget-object v3, p0, Landroid/graphics/BitmapShader;->mTileY:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 56
    .local v0, "copy":Landroid/graphics/BitmapShader;
    invoke-virtual {p0, v0}, Landroid/graphics/BitmapShader;->copyLocalMatrix(Landroid/graphics/Shader;)V

    .line 57
    return-object v0
.end method
