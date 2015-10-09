.class public Landroid/graphics/RegionIterator;
.super Ljava/lang/Object;
.source "RegionIterator.java"


# instance fields
.field private final mNativeIter:I


# direct methods
.method public constructor <init>(Landroid/graphics/Region;)V
    .locals 1
    .param p1, "region"    # Landroid/graphics/Region;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/graphics/Region;->ni()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/RegionIterator;->nativeConstructor(I)I

    move-result v0

    iput v0, p0, Landroid/graphics/RegionIterator;->mNativeIter:I

    .line 30
    return-void
.end method

.method private static native nativeConstructor(I)I
.end method

.method private static native nativeDestructor(I)V
.end method

.method private static native nativeNext(ILandroid/graphics/Rect;)Z
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
    .line 45
    iget v0, p0, Landroid/graphics/RegionIterator;->mNativeIter:I

    invoke-static {v0}, Landroid/graphics/RegionIterator;->nativeDestructor(I)V

    .line 46
    return-void
.end method

.method public final next(Landroid/graphics/Rect;)Z
    .locals 2
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 38
    if-nez p1, :cond_0

    .line 39
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The Rect must be provided"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    iget v0, p0, Landroid/graphics/RegionIterator;->mNativeIter:I

    invoke-static {v0, p1}, Landroid/graphics/RegionIterator;->nativeNext(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method
