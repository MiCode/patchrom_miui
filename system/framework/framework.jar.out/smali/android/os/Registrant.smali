.class public Landroid/os/Registrant;
.super Ljava/lang/Object;
.source "Registrant.java"


# instance fields
.field refH:Ljava/lang/ref/WeakReference;

.field userObj:Ljava/lang/Object;

.field what:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/os/Registrant;->refH:Ljava/lang/ref/WeakReference;

    .line 32
    iput p2, p0, Landroid/os/Registrant;->what:I

    .line 33
    iput-object p3, p0, Landroid/os/Registrant;->userObj:Ljava/lang/Object;

    .line 34
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Landroid/os/Registrant;->refH:Ljava/lang/ref/WeakReference;

    .line 40
    iput-object v0, p0, Landroid/os/Registrant;->userObj:Ljava/lang/Object;

    .line 41
    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Landroid/os/Registrant;->refH:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 115
    const/4 v0, 0x0

    .line 117
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/os/Registrant;->refH:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    goto :goto_0
.end method

.method internalNotifyRegistrant(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 73
    invoke-virtual {p0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 75
    .local v0, "h":Landroid/os/Handler;
    if-nez v0, :cond_0

    .line 76
    invoke-virtual {p0}, Landroid/os/Registrant;->clear()V

    .line 86
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 80
    .local v1, "msg":Landroid/os/Message;
    iget v2, p0, Landroid/os/Registrant;->what:I

    iput v2, v1, Landroid/os/Message;->what:I

    .line 82
    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p0, Landroid/os/Registrant;->userObj:Ljava/lang/Object;

    invoke-direct {v2, v3, p1, p2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 84
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public messageForRegistrant()Landroid/os/Message;
    .locals 3

    .prologue
    .line 95
    invoke-virtual {p0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 97
    .local v0, "h":Landroid/os/Handler;
    if-nez v0, :cond_0

    .line 98
    invoke-virtual {p0}, Landroid/os/Registrant;->clear()V

    .line 100
    const/4 v1, 0x0

    .line 107
    :goto_0
    return-object v1

    .line 102
    :cond_0
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 104
    .local v1, "msg":Landroid/os/Message;
    iget v2, p0, Landroid/os/Registrant;->what:I

    iput v2, v1, Landroid/os/Message;->what:I

    .line 105
    iget-object v2, p0, Landroid/os/Registrant;->userObj:Ljava/lang/Object;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0
.end method

.method public notifyException(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/os/Registrant;->internalNotifyRegistrant(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 59
    return-void
.end method

.method public notifyRegistrant()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-virtual {p0, v0, v0}, Landroid/os/Registrant;->internalNotifyRegistrant(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 47
    return-void
.end method

.method public notifyRegistrant(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 67
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v0, v1}, Landroid/os/Registrant;->internalNotifyRegistrant(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 68
    return-void
.end method

.method public notifyResult(Ljava/lang/Object;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/Registrant;->internalNotifyRegistrant(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 53
    return-void
.end method
