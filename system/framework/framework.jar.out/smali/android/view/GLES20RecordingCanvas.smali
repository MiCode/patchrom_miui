.class Landroid/view/GLES20RecordingCanvas;
.super Landroid/view/GLES20Canvas;
.source "GLES20RecordingCanvas.java"


# static fields
.field private static final POOL_LIMIT:I = 0x19

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Landroid/view/GLES20RecordingCanvas;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDisplayList:Landroid/view/GLES20DisplayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/view/GLES20RecordingCanvas;->sPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 39
    invoke-direct {p0, v0, v0}, Landroid/view/GLES20Canvas;-><init>(ZZ)V

    .line 40
    return-void
.end method

.method static obtain(Landroid/view/GLES20DisplayList;)Landroid/view/GLES20RecordingCanvas;
    .locals 2
    .param p0, "displayList"    # Landroid/view/GLES20DisplayList;

    .prologue
    .line 43
    sget-object v1, Landroid/view/GLES20RecordingCanvas;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v1}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/GLES20RecordingCanvas;

    .line 44
    .local v0, "canvas":Landroid/view/GLES20RecordingCanvas;
    if-nez v0, :cond_0

    .line 45
    new-instance v0, Landroid/view/GLES20RecordingCanvas;

    .end local v0    # "canvas":Landroid/view/GLES20RecordingCanvas;
    invoke-direct {v0}, Landroid/view/GLES20RecordingCanvas;-><init>()V

    .line 47
    .restart local v0    # "canvas":Landroid/view/GLES20RecordingCanvas;
    :cond_0
    iput-object p0, v0, Landroid/view/GLES20RecordingCanvas;->mDisplayList:Landroid/view/GLES20DisplayList;

    .line 48
    return-object v0
.end method


# virtual methods
.method public drawDisplayList(Landroid/view/DisplayList;Landroid/graphics/Rect;I)I
    .locals 2
    .param p1, "displayList"    # Landroid/view/DisplayList;
    .param p2, "dirty"    # Landroid/graphics/Rect;
    .param p3, "flags"    # I

    .prologue
    .line 67
    invoke-super {p0, p1, p2, p3}, Landroid/view/GLES20Canvas;->drawDisplayList(Landroid/view/DisplayList;Landroid/graphics/Rect;I)I

    move-result v0

    .line 68
    .local v0, "status":I
    iget-object v1, p0, Landroid/view/GLES20RecordingCanvas;->mDisplayList:Landroid/view/GLES20DisplayList;

    invoke-virtual {v1}, Landroid/view/GLES20DisplayList;->getChildDisplayLists()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    return v0
.end method

.method end(I)I
    .locals 1
    .param p1, "nativeDisplayList"    # I

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Landroid/view/GLES20RecordingCanvas;->getDisplayList(I)I

    move-result v0

    return v0
.end method

.method recycle()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/GLES20RecordingCanvas;->mDisplayList:Landroid/view/GLES20DisplayList;

    .line 53
    invoke-virtual {p0}, Landroid/view/GLES20RecordingCanvas;->resetDisplayListRenderer()V

    .line 54
    sget-object v0, Landroid/view/GLES20RecordingCanvas;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method

.method start()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Landroid/view/GLES20RecordingCanvas;->mDisplayList:Landroid/view/GLES20DisplayList;

    invoke-virtual {v0}, Landroid/view/GLES20DisplayList;->clearReferences()V

    .line 59
    return-void
.end method
