.class public abstract Landroid/view/InputEventSender;
.super Ljava/lang/Object;
.source "InputEventSender.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "InputEventSender"


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mInputChannel:Landroid/view/InputChannel;

.field private mMessageQueue:Landroid/os/MessageQueue;

.field private mSenderPtr:I


# direct methods
.method public constructor <init>(Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 2
    .param p1, "inputChannel"    # Landroid/view/InputChannel;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InputEventSender;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 56
    if-nez p1, :cond_0

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputChannel must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    if-nez p2, :cond_1

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "looper must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_1
    iput-object p1, p0, Landroid/view/InputEventSender;->mInputChannel:Landroid/view/InputChannel;

    .line 64
    invoke-virtual {p2}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InputEventSender;->mMessageQueue:Landroid/os/MessageQueue;

    .line 65
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Landroid/view/InputEventSender;->mMessageQueue:Landroid/os/MessageQueue;

    invoke-static {v0, p1, v1}, Landroid/view/InputEventSender;->nativeInit(Ljava/lang/ref/WeakReference;Landroid/view/InputChannel;Landroid/os/MessageQueue;)I

    move-result v0

    iput v0, p0, Landroid/view/InputEventSender;->mSenderPtr:I

    .line 68
    iget-object v0, p0, Landroid/view/InputEventSender;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "dispose"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method private dispatchInputEventFinished(IZ)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "handled"    # Z

    .prologue
    .line 141
    invoke-virtual {p0, p1, p2}, Landroid/view/InputEventSender;->onInputEventFinished(IZ)V

    .line 142
    return-void
.end method

.method private dispose(Z)V
    .locals 2
    .param p1, "finalized"    # Z

    .prologue
    const/4 v1, 0x0

    .line 88
    iget-object v0, p0, Landroid/view/InputEventSender;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_1

    .line 89
    if-eqz p1, :cond_0

    .line 90
    iget-object v0, p0, Landroid/view/InputEventSender;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 92
    :cond_0
    iget-object v0, p0, Landroid/view/InputEventSender;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 95
    :cond_1
    iget v0, p0, Landroid/view/InputEventSender;->mSenderPtr:I

    if-eqz v0, :cond_2

    .line 96
    iget v0, p0, Landroid/view/InputEventSender;->mSenderPtr:I

    invoke-static {v0}, Landroid/view/InputEventSender;->nativeDispose(I)V

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/InputEventSender;->mSenderPtr:I

    .line 99
    :cond_2
    iput-object v1, p0, Landroid/view/InputEventSender;->mInputChannel:Landroid/view/InputChannel;

    .line 100
    iput-object v1, p0, Landroid/view/InputEventSender;->mMessageQueue:Landroid/os/MessageQueue;

    .line 101
    return-void
.end method

.method private static native nativeDispose(I)V
.end method

.method private static native nativeInit(Ljava/lang/ref/WeakReference;Landroid/view/InputChannel;Landroid/os/MessageQueue;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/InputEventSender;",
            ">;",
            "Landroid/view/InputChannel;",
            "Landroid/os/MessageQueue;",
            ")I"
        }
    .end annotation
.end method

.method private static native nativeSendKeyEvent(IILandroid/view/KeyEvent;)Z
.end method

.method private static native nativeSendMotionEvent(IILandroid/view/MotionEvent;)Z
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/InputEventSender;->dispose(Z)V

    .line 85
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
    .line 74
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Landroid/view/InputEventSender;->dispose(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 78
    return-void

    .line 76
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public onInputEventFinished(IZ)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "handled"    # Z

    .prologue
    .line 110
    return-void
.end method

.method public final sendInputEvent(ILandroid/view/InputEvent;)Z
    .locals 2
    .param p1, "seq"    # I
    .param p2, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 122
    if-nez p2, :cond_0

    .line 123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_0
    iget v0, p0, Landroid/view/InputEventSender;->mSenderPtr:I

    if-nez v0, :cond_1

    .line 126
    const-string v0, "InputEventSender"

    const-string v1, "Attempted to send an input event but the input event sender has already been disposed."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v0, 0x0

    .line 134
    .end local p2    # "event":Landroid/view/InputEvent;
    :goto_0
    return v0

    .line 131
    .restart local p2    # "event":Landroid/view/InputEvent;
    :cond_1
    instance-of v0, p2, Landroid/view/KeyEvent;

    if-eqz v0, :cond_2

    .line 132
    iget v0, p0, Landroid/view/InputEventSender;->mSenderPtr:I

    check-cast p2, Landroid/view/KeyEvent;

    .end local p2    # "event":Landroid/view/InputEvent;
    invoke-static {v0, p1, p2}, Landroid/view/InputEventSender;->nativeSendKeyEvent(IILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 134
    .restart local p2    # "event":Landroid/view/InputEvent;
    :cond_2
    iget v0, p0, Landroid/view/InputEventSender;->mSenderPtr:I

    check-cast p2, Landroid/view/MotionEvent;

    .end local p2    # "event":Landroid/view/InputEvent;
    invoke-static {v0, p1, p2}, Landroid/view/InputEventSender;->nativeSendMotionEvent(IILandroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
