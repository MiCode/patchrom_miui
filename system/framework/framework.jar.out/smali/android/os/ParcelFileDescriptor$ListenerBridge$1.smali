.class Landroid/os/ParcelFileDescriptor$ListenerBridge$1;
.super Landroid/os/Handler;
.source "ParcelFileDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/ParcelFileDescriptor$ListenerBridge;-><init>(Ljava/io/FileDescriptor;Landroid/os/Looper;Landroid/os/ParcelFileDescriptor$OnCloseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/ParcelFileDescriptor$ListenerBridge;

.field final synthetic val$listener:Landroid/os/ParcelFileDescriptor$OnCloseListener;


# direct methods
.method constructor <init>(Landroid/os/ParcelFileDescriptor$ListenerBridge;Landroid/os/Looper;Landroid/os/ParcelFileDescriptor$OnCloseListener;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 1006
    iput-object p1, p0, Landroid/os/ParcelFileDescriptor$ListenerBridge$1;->this$0:Landroid/os/ParcelFileDescriptor$ListenerBridge;

    iput-object p3, p0, Landroid/os/ParcelFileDescriptor$ListenerBridge$1;->val$listener:Landroid/os/ParcelFileDescriptor$OnCloseListener;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1009
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/ParcelFileDescriptor$Status;

    .line 1010
    .local v0, "s":Landroid/os/ParcelFileDescriptor$Status;
    iget-object v2, p0, Landroid/os/ParcelFileDescriptor$ListenerBridge$1;->val$listener:Landroid/os/ParcelFileDescriptor$OnCloseListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor$Status;->asIOException()Ljava/io/IOException;

    move-result-object v1

    :goto_0
    invoke-interface {v2, v1}, Landroid/os/ParcelFileDescriptor$OnCloseListener;->onClose(Ljava/io/IOException;)V

    .line 1011
    return-void

    .line 1010
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
