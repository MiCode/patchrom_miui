.class Landroid/os/RemoteCallback$DeliverResult;
.super Ljava/lang/Object;
.source "RemoteCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/RemoteCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeliverResult"
.end annotation


# instance fields
.field final mResult:Landroid/os/Bundle;

.field final synthetic this$0:Landroid/os/RemoteCallback;


# direct methods
.method constructor <init>(Landroid/os/RemoteCallback;Landroid/os/Bundle;)V
    .locals 0
    .param p2, "result"    # Landroid/os/Bundle;

    .prologue
    .line 31
    iput-object p1, p0, Landroid/os/RemoteCallback$DeliverResult;->this$0:Landroid/os/RemoteCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p2, p0, Landroid/os/RemoteCallback$DeliverResult;->mResult:Landroid/os/Bundle;

    .line 33
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Landroid/os/RemoteCallback$DeliverResult;->this$0:Landroid/os/RemoteCallback;

    iget-object v1, p0, Landroid/os/RemoteCallback$DeliverResult;->mResult:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallback;->onResult(Landroid/os/Bundle;)V

    .line 37
    return-void
.end method
