.class public Landroid/view/ExtraGLES20Canvas;
.super Ljava/lang/Object;
.source "ExtraGLES20Canvas.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static freeCaches()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/view/GLES20Canvas;->flushCaches(I)V

    .line 20
    return-void
.end method
