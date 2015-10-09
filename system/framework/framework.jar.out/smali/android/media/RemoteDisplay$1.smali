.class Landroid/media/RemoteDisplay$1;
.super Ljava/lang/Object;
.source "RemoteDisplay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/RemoteDisplay;->notifyDisplayConnected(Landroid/view/Surface;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/RemoteDisplay;

.field final synthetic val$flags:I

.field final synthetic val$height:I

.field final synthetic val$session:I

.field final synthetic val$surface:Landroid/view/Surface;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Landroid/media/RemoteDisplay;Landroid/view/Surface;IIII)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Landroid/media/RemoteDisplay$1;->this$0:Landroid/media/RemoteDisplay;

    iput-object p2, p0, Landroid/media/RemoteDisplay$1;->val$surface:Landroid/view/Surface;

    iput p3, p0, Landroid/media/RemoteDisplay$1;->val$width:I

    iput p4, p0, Landroid/media/RemoteDisplay$1;->val$height:I

    iput p5, p0, Landroid/media/RemoteDisplay$1;->val$flags:I

    iput p6, p0, Landroid/media/RemoteDisplay$1;->val$session:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 130
    iget-object v0, p0, Landroid/media/RemoteDisplay$1;->this$0:Landroid/media/RemoteDisplay;

    # getter for: Landroid/media/RemoteDisplay;->mListener:Landroid/media/RemoteDisplay$Listener;
    invoke-static {v0}, Landroid/media/RemoteDisplay;->access$000(Landroid/media/RemoteDisplay;)Landroid/media/RemoteDisplay$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RemoteDisplay$1;->val$surface:Landroid/view/Surface;

    iget v2, p0, Landroid/media/RemoteDisplay$1;->val$width:I

    iget v3, p0, Landroid/media/RemoteDisplay$1;->val$height:I

    iget v4, p0, Landroid/media/RemoteDisplay$1;->val$flags:I

    iget v5, p0, Landroid/media/RemoteDisplay$1;->val$session:I

    invoke-interface/range {v0 .. v5}, Landroid/media/RemoteDisplay$Listener;->onDisplayConnected(Landroid/view/Surface;IIII)V

    .line 131
    return-void
.end method
