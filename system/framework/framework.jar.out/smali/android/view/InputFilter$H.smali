.class final Landroid/view/InputFilter$H;
.super Landroid/os/Handler;
.source "InputFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/InputFilter;


# direct methods
.method public constructor <init>(Landroid/view/InputFilter;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 220
    iput-object p1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    .line 221
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 222
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 226
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 259
    :goto_0
    return-void

    .line 228
    :pswitch_0
    iget-object v2, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/IInputFilterHost;

    # setter for: Landroid/view/InputFilter;->mHost:Landroid/view/IInputFilterHost;
    invoke-static {v2, v1}, Landroid/view/InputFilter;->access$002(Landroid/view/InputFilter;Landroid/view/IInputFilterHost;)Landroid/view/IInputFilterHost;

    .line 229
    iget-object v1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    # getter for: Landroid/view/InputFilter;->mInboundInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;
    invoke-static {v1}, Landroid/view/InputFilter;->access$100(Landroid/view/InputFilter;)Landroid/view/InputEventConsistencyVerifier;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 230
    iget-object v1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    # getter for: Landroid/view/InputFilter;->mInboundInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;
    invoke-static {v1}, Landroid/view/InputFilter;->access$100(Landroid/view/InputFilter;)Landroid/view/InputEventConsistencyVerifier;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InputEventConsistencyVerifier;->reset()V

    .line 232
    :cond_0
    iget-object v1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    # getter for: Landroid/view/InputFilter;->mOutboundInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;
    invoke-static {v1}, Landroid/view/InputFilter;->access$200(Landroid/view/InputFilter;)Landroid/view/InputEventConsistencyVerifier;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 233
    iget-object v1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    # getter for: Landroid/view/InputFilter;->mOutboundInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;
    invoke-static {v1}, Landroid/view/InputFilter;->access$200(Landroid/view/InputFilter;)Landroid/view/InputEventConsistencyVerifier;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InputEventConsistencyVerifier;->reset()V

    .line 235
    :cond_1
    iget-object v1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    invoke-virtual {v1}, Landroid/view/InputFilter;->onInstalled()V

    goto :goto_0

    .line 240
    :pswitch_1
    :try_start_0
    iget-object v1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    invoke-virtual {v1}, Landroid/view/InputFilter;->onUninstalled()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    iget-object v1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    # setter for: Landroid/view/InputFilter;->mHost:Landroid/view/IInputFilterHost;
    invoke-static {v1, v3}, Landroid/view/InputFilter;->access$002(Landroid/view/InputFilter;Landroid/view/IInputFilterHost;)Landroid/view/IInputFilterHost;

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    # setter for: Landroid/view/InputFilter;->mHost:Landroid/view/IInputFilterHost;
    invoke-static {v2, v3}, Landroid/view/InputFilter;->access$002(Landroid/view/InputFilter;Landroid/view/IInputFilterHost;)Landroid/view/IInputFilterHost;

    throw v1

    .line 247
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/InputEvent;

    .line 249
    .local v0, "event":Landroid/view/InputEvent;
    :try_start_1
    iget-object v1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    # getter for: Landroid/view/InputFilter;->mInboundInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;
    invoke-static {v1}, Landroid/view/InputFilter;->access$100(Landroid/view/InputFilter;)Landroid/view/InputEventConsistencyVerifier;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 250
    iget-object v1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    # getter for: Landroid/view/InputFilter;->mInboundInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;
    invoke-static {v1}, Landroid/view/InputFilter;->access$100(Landroid/view/InputFilter;)Landroid/view/InputEventConsistencyVerifier;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/InputEventConsistencyVerifier;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 252
    :cond_2
    iget-object v1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0, v2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 254
    invoke-virtual {v0}, Landroid/view/InputEvent;->recycle()V

    goto :goto_0

    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Landroid/view/InputEvent;->recycle()V

    throw v1

    .line 226
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
