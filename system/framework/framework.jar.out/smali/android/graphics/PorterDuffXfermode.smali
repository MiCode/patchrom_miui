.class public Landroid/graphics/PorterDuffXfermode;
.super Landroid/graphics/Xfermode;
.source "PorterDuffXfermode.java"


# instance fields
.field public final mode:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method public constructor <init>(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/graphics/Xfermode;-><init>()V

    .line 31
    iput-object p1, p0, Landroid/graphics/PorterDuffXfermode;->mode:Landroid/graphics/PorterDuff$Mode;

    .line 32
    iget v0, p1, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0}, Landroid/graphics/PorterDuffXfermode;->nativeCreateXfermode(I)I

    move-result v0

    iput v0, p0, Landroid/graphics/PorterDuffXfermode;->native_instance:I

    .line 33
    return-void
.end method

.method private static native nativeCreateXfermode(I)I
.end method
