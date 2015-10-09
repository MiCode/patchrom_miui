.class public Landroid/graphics/PixelXorXfermode;
.super Landroid/graphics/Xfermode;
.source "PixelXorXfermode.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "opColor"    # I

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/graphics/Xfermode;-><init>()V

    .line 29
    invoke-static {p1}, Landroid/graphics/PixelXorXfermode;->nativeCreate(I)I

    move-result v0

    iput v0, p0, Landroid/graphics/PixelXorXfermode;->native_instance:I

    .line 30
    return-void
.end method

.method private static native nativeCreate(I)I
.end method
