.class public Landroid/graphics/DrawFilter;
.super Ljava/lang/Object;
.source "DrawFilter.java"


# instance fields
.field mNativeInt:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativeDestructor(I)V
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
    .line 32
    :try_start_0
    iget v0, p0, Landroid/graphics/DrawFilter;->mNativeInt:I

    invoke-static {v0}, Landroid/graphics/DrawFilter;->nativeDestructor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 36
    return-void

    .line 34
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
