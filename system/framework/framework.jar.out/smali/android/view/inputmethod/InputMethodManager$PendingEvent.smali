.class final Landroid/view/inputmethod/InputMethodManager$PendingEvent;
.super Ljava/lang/Object;
.source "InputMethodManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PendingEvent"
.end annotation


# instance fields
.field public mCallback:Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;

.field public mEvent:Landroid/view/InputEvent;

.field public mHandled:Z

.field public mHandler:Landroid/os/Handler;

.field public mInputMethodId:Ljava/lang/String;

.field public mToken:Ljava/lang/Object;

.field final synthetic this$0:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method private constructor <init>(Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    .prologue
    .line 2008
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/inputmethod/InputMethodManager;
    .param p2, "x1"    # Landroid/view/inputmethod/InputMethodManager$1;

    .prologue
    .line 2008
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager$PendingEvent;-><init>(Landroid/view/inputmethod/InputMethodManager;)V

    return-void
.end method


# virtual methods
.method public recycle()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2017
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mEvent:Landroid/view/InputEvent;

    .line 2018
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mToken:Ljava/lang/Object;

    .line 2019
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mInputMethodId:Ljava/lang/String;

    .line 2020
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mCallback:Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;

    .line 2021
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mHandler:Landroid/os/Handler;

    .line 2022
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mHandled:Z

    .line 2023
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 2027
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mCallback:Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mToken:Ljava/lang/Object;

    iget-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mHandled:Z

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;->onFinishedInputEvent(Ljava/lang/Object;Z)V

    .line 2029
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 2030
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->this$0:Landroid/view/inputmethod/InputMethodManager;

    # invokes: Landroid/view/inputmethod/InputMethodManager;->recyclePendingEventLocked(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V
    invoke-static {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->access$200(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V

    .line 2031
    monitor-exit v1

    .line 2032
    return-void

    .line 2031
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
