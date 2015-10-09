.class public Landroid/graphics/Rasterizer;
.super Ljava/lang/Object;
.source "Rasterizer.java"


# instance fields
.field native_instance:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native finalizer(I)V
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 27
    iget v0, p0, Landroid/graphics/Rasterizer;->native_instance:I

    invoke-static {v0}, Landroid/graphics/Rasterizer;->finalizer(I)V

    .line 28
    return-void
.end method
