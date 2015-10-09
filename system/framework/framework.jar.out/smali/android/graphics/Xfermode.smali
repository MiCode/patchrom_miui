.class public Landroid/graphics/Xfermode;
.super Ljava/lang/Object;
.source "Xfermode.java"


# instance fields
.field native_instance:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
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
    .line 35
    :try_start_0
    iget v0, p0, Landroid/graphics/Xfermode;->native_instance:I

    invoke-static {v0}, Landroid/graphics/Xfermode;->finalizer(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 39
    return-void

    .line 37
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
