.class Landroid/media/RemoteDisplay$2;
.super Ljava/lang/Object;
.source "RemoteDisplay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/RemoteDisplay;->notifyDisplayDisconnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/RemoteDisplay;


# direct methods
.method constructor <init>(Landroid/media/RemoteDisplay;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Landroid/media/RemoteDisplay$2;->this$0:Landroid/media/RemoteDisplay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Landroid/media/RemoteDisplay$2;->this$0:Landroid/media/RemoteDisplay;

    # getter for: Landroid/media/RemoteDisplay;->mListener:Landroid/media/RemoteDisplay$Listener;
    invoke-static {v0}, Landroid/media/RemoteDisplay;->access$000(Landroid/media/RemoteDisplay;)Landroid/media/RemoteDisplay$Listener;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/RemoteDisplay$Listener;->onDisplayDisconnected()V

    .line 141
    return-void
.end method
