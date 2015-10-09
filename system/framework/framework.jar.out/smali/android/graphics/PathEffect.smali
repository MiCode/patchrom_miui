.class public Landroid/graphics/PathEffect;
.super Ljava/lang/Object;
.source "PathEffect.java"


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
    .line 27
    iget v0, p0, Landroid/graphics/PathEffect;->native_instance:I

    invoke-static {v0}, Landroid/graphics/PathEffect;->nativeDestructor(I)V

    .line 28
    return-void
.end method
