.class public Landroid/filterpacks/base/CallbackFilter;
.super Landroid/filterfw/core/Filter;
.source "CallbackFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/filterpacks/base/CallbackFilter$CallbackRunnable;
    }
.end annotation


# instance fields
.field private mCallbacksOnUiThread:Z
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = true
        name = "callUiThread"
    .end annotation
.end field

.field private mListener:Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "listener"
    .end annotation
.end field

.field private mUiThreadHandler:Landroid/os/Handler;

.field private mUserData:Ljava/lang/Object;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "userData"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/filterpacks/base/CallbackFilter;->mCallbacksOnUiThread:Z

    .line 72
    return-void
.end method


# virtual methods
.method public prepare(Landroid/filterfw/core/FilterContext;)V
    .locals 2
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 80
    iget-boolean v0, p0, Landroid/filterpacks/base/CallbackFilter;->mCallbacksOnUiThread:Z

    if-eqz v0, :cond_0

    .line 81
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/filterpacks/base/CallbackFilter;->mUiThreadHandler:Landroid/os/Handler;

    .line 83
    :cond_0
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 6
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 87
    const-string v1, "frame"

    invoke-virtual {p0, v1}, Landroid/filterpacks/base/CallbackFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v4

    .line 88
    .local v4, "input":Landroid/filterfw/core/Frame;
    iget-object v1, p0, Landroid/filterpacks/base/CallbackFilter;->mListener:Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;

    if-eqz v1, :cond_2

    .line 89
    iget-boolean v1, p0, Landroid/filterpacks/base/CallbackFilter;->mCallbacksOnUiThread:Z

    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {v4}, Landroid/filterfw/core/Frame;->retain()Landroid/filterfw/core/Frame;

    .line 91
    new-instance v0, Landroid/filterpacks/base/CallbackFilter$CallbackRunnable;

    iget-object v2, p0, Landroid/filterpacks/base/CallbackFilter;->mListener:Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;

    iget-object v5, p0, Landroid/filterpacks/base/CallbackFilter;->mUserData:Ljava/lang/Object;

    move-object v1, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Landroid/filterpacks/base/CallbackFilter$CallbackRunnable;-><init>(Landroid/filterpacks/base/CallbackFilter;Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;Landroid/filterfw/core/Filter;Landroid/filterfw/core/Frame;Ljava/lang/Object;)V

    .line 92
    .local v0, "uiRunnable":Landroid/filterpacks/base/CallbackFilter$CallbackRunnable;
    iget-object v1, p0, Landroid/filterpacks/base/CallbackFilter;->mUiThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 93
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to send callback to UI thread!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    .end local v0    # "uiRunnable":Landroid/filterpacks/base/CallbackFilter$CallbackRunnable;
    :cond_0
    iget-object v1, p0, Landroid/filterpacks/base/CallbackFilter;->mListener:Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;

    iget-object v2, p0, Landroid/filterpacks/base/CallbackFilter;->mUserData:Ljava/lang/Object;

    invoke-interface {v1, p0, v4, v2}, Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;->onFrameReceived(Landroid/filterfw/core/Filter;Landroid/filterfw/core/Frame;Ljava/lang/Object;)V

    .line 101
    :cond_1
    return-void

    .line 99
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CallbackFilter received frame, but no listener set!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setupPorts()V
    .locals 1

    .prologue
    .line 76
    const-string v0, "frame"

    invoke-virtual {p0, v0}, Landroid/filterpacks/base/CallbackFilter;->addInputPort(Ljava/lang/String;)V

    .line 77
    return-void
.end method
