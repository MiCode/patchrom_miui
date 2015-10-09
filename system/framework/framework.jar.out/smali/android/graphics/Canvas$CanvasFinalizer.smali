.class final Landroid/graphics/Canvas$CanvasFinalizer;
.super Ljava/lang/Object;
.source "Canvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Canvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CanvasFinalizer"
.end annotation


# instance fields
.field private mNativeCanvas:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "nativeCanvas"    # I

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput p1, p0, Landroid/graphics/Canvas$CanvasFinalizer;->mNativeCanvas:I

    .line 91
    return-void
.end method

.method static synthetic access$102(Landroid/graphics/Canvas$CanvasFinalizer;I)I
    .locals 0
    .param p0, "x0"    # Landroid/graphics/Canvas$CanvasFinalizer;
    .param p1, "x1"    # I

    .prologue
    .line 86
    iput p1, p0, Landroid/graphics/Canvas$CanvasFinalizer;->mNativeCanvas:I

    return p1
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Landroid/graphics/Canvas$CanvasFinalizer;->mNativeCanvas:I

    if-eqz v0, :cond_0

    .line 104
    iget v0, p0, Landroid/graphics/Canvas$CanvasFinalizer;->mNativeCanvas:I

    # invokes: Landroid/graphics/Canvas;->finalizer(I)V
    invoke-static {v0}, Landroid/graphics/Canvas;->access$000(I)V

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/Canvas$CanvasFinalizer;->mNativeCanvas:I

    .line 107
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 96
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Canvas$CanvasFinalizer;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 100
    return-void

    .line 98
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
