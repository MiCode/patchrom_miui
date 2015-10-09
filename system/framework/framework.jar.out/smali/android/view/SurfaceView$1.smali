.class Landroid/view/SurfaceView$1;
.super Landroid/os/Handler;
.source "SurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/SurfaceView;


# direct methods
.method constructor <init>(Landroid/view/SurfaceView;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x0

    .line 121
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 132
    :goto_0
    return-void

    .line 123
    :pswitch_0
    iget-object v1, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->setKeepScreenOn(Z)V

    goto :goto_0

    .line 126
    :pswitch_1
    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->handleGetNewSurface()V

    goto :goto_0

    .line 129
    :pswitch_2
    iget-object v1, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    # invokes: Landroid/view/SurfaceView;->updateWindow(ZZ)V
    invoke-static {v1, v0, v0}, Landroid/view/SurfaceView;->access$000(Landroid/view/SurfaceView;ZZ)V

    goto :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
