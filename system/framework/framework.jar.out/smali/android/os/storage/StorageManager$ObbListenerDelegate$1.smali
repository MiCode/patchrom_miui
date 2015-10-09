.class Landroid/os/storage/StorageManager$ObbListenerDelegate$1;
.super Landroid/os/Handler;
.source "StorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/storage/StorageManager$ObbListenerDelegate;-><init>(Landroid/os/storage/StorageManager;Landroid/os/storage/OnObbStateChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/os/storage/StorageManager$ObbListenerDelegate;

.field final synthetic val$this$0:Landroid/os/storage/StorageManager;


# direct methods
.method constructor <init>(Landroid/os/storage/StorageManager$ObbListenerDelegate;Landroid/os/Looper;Landroid/os/storage/StorageManager;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 157
    iput-object p1, p0, Landroid/os/storage/StorageManager$ObbListenerDelegate$1;->this$1:Landroid/os/storage/StorageManager$ObbListenerDelegate;

    iput-object p3, p0, Landroid/os/storage/StorageManager$ObbListenerDelegate$1;->val$this$0:Landroid/os/storage/StorageManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 160
    iget-object v3, p0, Landroid/os/storage/StorageManager$ObbListenerDelegate$1;->this$1:Landroid/os/storage/StorageManager$ObbListenerDelegate;

    invoke-virtual {v3}, Landroid/os/storage/StorageManager$ObbListenerDelegate;->getListener()Landroid/os/storage/OnObbStateChangeListener;

    move-result-object v0

    .line 161
    .local v0, "changeListener":Landroid/os/storage/OnObbStateChangeListener;
    if-nez v0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/storage/StorageManager$StorageEvent;

    .line 167
    .local v1, "e":Landroid/os/storage/StorageManager$StorageEvent;
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    move-object v2, v1

    .line 168
    check-cast v2, Landroid/os/storage/StorageManager$ObbStateChangedStorageEvent;

    .line 169
    .local v2, "ev":Landroid/os/storage/StorageManager$ObbStateChangedStorageEvent;
    iget-object v3, v2, Landroid/os/storage/StorageManager$ObbStateChangedStorageEvent;->path:Ljava/lang/String;

    iget v4, v2, Landroid/os/storage/StorageManager$ObbStateChangedStorageEvent;->state:I

    invoke-virtual {v0, v3, v4}, Landroid/os/storage/OnObbStateChangeListener;->onObbStateChange(Ljava/lang/String;I)V

    goto :goto_0

    .line 171
    .end local v2    # "ev":Landroid/os/storage/StorageManager$ObbStateChangedStorageEvent;
    :cond_1
    const-string v3, "StorageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
