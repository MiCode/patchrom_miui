.class Landroid/os/RemoteCallback$LocalCallback;
.super Landroid/os/IRemoteCallback$Stub;
.source "RemoteCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/RemoteCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocalCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/RemoteCallback;


# direct methods
.method constructor <init>(Landroid/os/RemoteCallback;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Landroid/os/RemoteCallback$LocalCallback;->this$0:Landroid/os/RemoteCallback;

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendResult(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 42
    iget-object v0, p0, Landroid/os/RemoteCallback$LocalCallback;->this$0:Landroid/os/RemoteCallback;

    iget-object v0, v0, Landroid/os/RemoteCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/os/RemoteCallback$DeliverResult;

    iget-object v2, p0, Landroid/os/RemoteCallback$LocalCallback;->this$0:Landroid/os/RemoteCallback;

    invoke-direct {v1, v2, p1}, Landroid/os/RemoteCallback$DeliverResult;-><init>(Landroid/os/RemoteCallback;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 43
    return-void
.end method
