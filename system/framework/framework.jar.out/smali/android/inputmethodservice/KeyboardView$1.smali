.class Landroid/inputmethodservice/KeyboardView$1;
.super Landroid/os/Handler;
.source "KeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/KeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/KeyboardView;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/KeyboardView;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Landroid/inputmethodservice/KeyboardView$1;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 258
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 260
    :pswitch_0
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView$1;->this$0:Landroid/inputmethodservice/KeyboardView;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Landroid/inputmethodservice/KeyboardView;->showKey(I)V
    invoke-static {v1, v2}, Landroid/inputmethodservice/KeyboardView;->access$100(Landroid/inputmethodservice/KeyboardView;I)V

    goto :goto_0

    .line 263
    :pswitch_1
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView$1;->this$0:Landroid/inputmethodservice/KeyboardView;

    # getter for: Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/inputmethodservice/KeyboardView;->access$200(Landroid/inputmethodservice/KeyboardView;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 266
    :pswitch_2
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView$1;->this$0:Landroid/inputmethodservice/KeyboardView;

    # invokes: Landroid/inputmethodservice/KeyboardView;->repeatKey()Z
    invoke-static {v1}, Landroid/inputmethodservice/KeyboardView;->access$300(Landroid/inputmethodservice/KeyboardView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    const/4 v1, 0x3

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 268
    .local v0, "repeat":Landroid/os/Message;
    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Landroid/inputmethodservice/KeyboardView$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 272
    .end local v0    # "repeat":Landroid/os/Message;
    :pswitch_3
    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView$1;->this$0:Landroid/inputmethodservice/KeyboardView;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/MotionEvent;

    # invokes: Landroid/inputmethodservice/KeyboardView;->openPopupIfRequired(Landroid/view/MotionEvent;)Z
    invoke-static {v2, v1}, Landroid/inputmethodservice/KeyboardView;->access$400(Landroid/inputmethodservice/KeyboardView;Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 258
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
