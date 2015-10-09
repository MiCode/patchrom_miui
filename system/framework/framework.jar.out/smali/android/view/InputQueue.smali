.class public final Landroid/view/InputQueue;
.super Ljava/lang/Object;
.source "InputQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InputQueue$1;,
        Landroid/view/InputQueue$FinishedInputEventCallback;,
        Landroid/view/InputQueue$Callback;,
        Landroid/view/InputQueue$ActiveInputEvent;
    }
.end annotation


# instance fields
.field private final mActiveEventArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/InputQueue$ActiveInputEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mActiveInputEventPool:Landroid/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$Pool",
            "<",
            "Landroid/view/InputQueue$ActiveInputEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mPtr:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x14

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/view/InputQueue;->mActiveEventArray:Landroid/util/SparseArray;

    .line 37
    new-instance v0, Landroid/util/Pools$SimplePool;

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Landroid/view/InputQueue;->mActiveInputEventPool:Landroid/util/Pools$Pool;

    .line 40
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InputQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 52
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/view/InputQueue;->nativeInit(Ljava/lang/ref/WeakReference;Landroid/os/MessageQueue;)I

    move-result v0

    iput v0, p0, Landroid/view/InputQueue;->mPtr:I

    .line 54
    iget-object v0, p0, Landroid/view/InputQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "dispose"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method private finishInputEvent(IZ)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "handled"    # Z

    .prologue
    .line 105
    iget-object v2, p0, Landroid/view/InputQueue;->mActiveEventArray:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 106
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 107
    iget-object v2, p0, Landroid/view/InputQueue;->mActiveEventArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InputQueue$ActiveInputEvent;

    .line 108
    .local v0, "e":Landroid/view/InputQueue$ActiveInputEvent;
    iget-object v2, p0, Landroid/view/InputQueue;->mActiveEventArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 109
    iget-object v2, v0, Landroid/view/InputQueue$ActiveInputEvent;->mCallback:Landroid/view/InputQueue$FinishedInputEventCallback;

    iget-object v3, v0, Landroid/view/InputQueue$ActiveInputEvent;->mToken:Ljava/lang/Object;

    invoke-interface {v2, v3, p2}, Landroid/view/InputQueue$FinishedInputEventCallback;->onFinishedInputEvent(Ljava/lang/Object;Z)V

    .line 110
    invoke-direct {p0, v0}, Landroid/view/InputQueue;->recycleActiveInputEvent(Landroid/view/InputQueue$ActiveInputEvent;)V

    .line 112
    .end local v0    # "e":Landroid/view/InputQueue$ActiveInputEvent;
    :cond_0
    return-void
.end method

.method private static native nativeDispose(I)V
.end method

.method private static native nativeInit(Ljava/lang/ref/WeakReference;Landroid/os/MessageQueue;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/InputQueue;",
            ">;",
            "Landroid/os/MessageQueue;",
            ")I"
        }
    .end annotation
.end method

.method private static native nativeSendKeyEvent(ILandroid/view/KeyEvent;Z)I
.end method

.method private static native nativeSendMotionEvent(ILandroid/view/MotionEvent;)I
.end method

.method private obtainActiveInputEvent(Ljava/lang/Object;Landroid/view/InputQueue$FinishedInputEventCallback;)Landroid/view/InputQueue$ActiveInputEvent;
    .locals 2
    .param p1, "token"    # Ljava/lang/Object;
    .param p2, "callback"    # Landroid/view/InputQueue$FinishedInputEventCallback;

    .prologue
    .line 116
    iget-object v1, p0, Landroid/view/InputQueue;->mActiveInputEventPool:Landroid/util/Pools$Pool;

    invoke-interface {v1}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InputQueue$ActiveInputEvent;

    .line 117
    .local v0, "e":Landroid/view/InputQueue$ActiveInputEvent;
    if-nez v0, :cond_0

    .line 118
    new-instance v0, Landroid/view/InputQueue$ActiveInputEvent;

    .end local v0    # "e":Landroid/view/InputQueue$ActiveInputEvent;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/InputQueue$ActiveInputEvent;-><init>(Landroid/view/InputQueue;Landroid/view/InputQueue$1;)V

    .line 120
    .restart local v0    # "e":Landroid/view/InputQueue$ActiveInputEvent;
    :cond_0
    iput-object p1, v0, Landroid/view/InputQueue$ActiveInputEvent;->mToken:Ljava/lang/Object;

    .line 121
    iput-object p2, v0, Landroid/view/InputQueue$ActiveInputEvent;->mCallback:Landroid/view/InputQueue$FinishedInputEventCallback;

    .line 122
    return-object v0
.end method

.method private recycleActiveInputEvent(Landroid/view/InputQueue$ActiveInputEvent;)V
    .locals 1
    .param p1, "e"    # Landroid/view/InputQueue$ActiveInputEvent;

    .prologue
    .line 126
    invoke-virtual {p1}, Landroid/view/InputQueue$ActiveInputEvent;->recycle()V

    .line 127
    iget-object v0, p0, Landroid/view/InputQueue;->mActiveInputEventPool:Landroid/util/Pools$Pool;

    invoke-interface {v0, p1}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 128
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/InputQueue;->dispose(Z)V

    .line 69
    return-void
.end method

.method public dispose(Z)V
    .locals 1
    .param p1, "finalized"    # Z

    .prologue
    .line 73
    iget-object v0, p0, Landroid/view/InputQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_1

    .line 74
    if-eqz p1, :cond_0

    .line 75
    iget-object v0, p0, Landroid/view/InputQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 77
    :cond_0
    iget-object v0, p0, Landroid/view/InputQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 80
    :cond_1
    iget v0, p0, Landroid/view/InputQueue;->mPtr:I

    if-eqz v0, :cond_2

    .line 81
    iget v0, p0, Landroid/view/InputQueue;->mPtr:I

    invoke-static {v0}, Landroid/view/InputQueue;->nativeDispose(I)V

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/InputQueue;->mPtr:I

    .line 84
    :cond_2
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
    .line 60
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/view/InputQueue;->dispose(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 64
    return-void

    .line 62
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getNativePtr()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Landroid/view/InputQueue;->mPtr:I

    return v0
.end method

.method public sendInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;ZLandroid/view/InputQueue$FinishedInputEventCallback;)V
    .locals 3
    .param p1, "e"    # Landroid/view/InputEvent;
    .param p2, "token"    # Ljava/lang/Object;
    .param p3, "predispatch"    # Z
    .param p4, "callback"    # Landroid/view/InputQueue$FinishedInputEventCallback;

    .prologue
    .line 94
    invoke-direct {p0, p2, p4}, Landroid/view/InputQueue;->obtainActiveInputEvent(Ljava/lang/Object;Landroid/view/InputQueue$FinishedInputEventCallback;)Landroid/view/InputQueue$ActiveInputEvent;

    move-result-object v0

    .line 96
    .local v0, "event":Landroid/view/InputQueue$ActiveInputEvent;
    instance-of v2, p1, Landroid/view/KeyEvent;

    if-eqz v2, :cond_0

    .line 97
    iget v2, p0, Landroid/view/InputQueue;->mPtr:I

    check-cast p1, Landroid/view/KeyEvent;

    .end local p1    # "e":Landroid/view/InputEvent;
    invoke-static {v2, p1, p3}, Landroid/view/InputQueue;->nativeSendKeyEvent(ILandroid/view/KeyEvent;Z)I

    move-result v1

    .line 101
    .local v1, "id":I
    :goto_0
    iget-object v2, p0, Landroid/view/InputQueue;->mActiveEventArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 102
    return-void

    .line 99
    .end local v1    # "id":I
    .restart local p1    # "e":Landroid/view/InputEvent;
    :cond_0
    iget v2, p0, Landroid/view/InputQueue;->mPtr:I

    check-cast p1, Landroid/view/MotionEvent;

    .end local p1    # "e":Landroid/view/InputEvent;
    invoke-static {v2, p1}, Landroid/view/InputQueue;->nativeSendMotionEvent(ILandroid/view/MotionEvent;)I

    move-result v1

    .restart local v1    # "id":I
    goto :goto_0
.end method
