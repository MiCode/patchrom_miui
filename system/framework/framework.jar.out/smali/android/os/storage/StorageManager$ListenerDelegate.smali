.class Landroid/os/storage/StorageManager$ListenerDelegate;
.super Ljava/lang/Object;
.source "StorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/StorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerDelegate"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field final mStorageEventListener:Landroid/os/storage/StorageEventListener;

.field final synthetic this$0:Landroid/os/storage/StorageManager;


# direct methods
.method constructor <init>(Landroid/os/storage/StorageManager;Landroid/os/storage/StorageEventListener;)V
    .locals 2
    .param p2, "listener"    # Landroid/os/storage/StorageEventListener;

    .prologue
    .line 262
    iput-object p1, p0, Landroid/os/storage/StorageManager$ListenerDelegate;->this$0:Landroid/os/storage/StorageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    iput-object p2, p0, Landroid/os/storage/StorageManager$ListenerDelegate;->mStorageEventListener:Landroid/os/storage/StorageEventListener;

    .line 264
    new-instance v0, Landroid/os/storage/StorageManager$ListenerDelegate$1;

    # getter for: Landroid/os/storage/StorageManager;->mTgtLooper:Landroid/os/Looper;
    invoke-static {p1}, Landroid/os/storage/StorageManager;->access$400(Landroid/os/storage/StorageManager;)Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Landroid/os/storage/StorageManager$ListenerDelegate$1;-><init>(Landroid/os/storage/StorageManager$ListenerDelegate;Landroid/os/Looper;Landroid/os/storage/StorageManager;)V

    iput-object v0, p0, Landroid/os/storage/StorageManager$ListenerDelegate;->mHandler:Landroid/os/Handler;

    .line 280
    return-void
.end method


# virtual methods
.method getListener()Landroid/os/storage/StorageEventListener;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Landroid/os/storage/StorageManager$ListenerDelegate;->mStorageEventListener:Landroid/os/storage/StorageEventListener;

    return-object v0
.end method

.method sendShareAvailabilityChanged(Z)V
    .locals 3
    .param p1, "available"    # Z

    .prologue
    .line 287
    new-instance v0, Landroid/os/storage/StorageManager$UmsConnectionChangedStorageEvent;

    iget-object v1, p0, Landroid/os/storage/StorageManager$ListenerDelegate;->this$0:Landroid/os/storage/StorageManager;

    invoke-direct {v0, v1, p1}, Landroid/os/storage/StorageManager$UmsConnectionChangedStorageEvent;-><init>(Landroid/os/storage/StorageManager;Z)V

    .line 288
    .local v0, "e":Landroid/os/storage/StorageManager$UmsConnectionChangedStorageEvent;
    iget-object v1, p0, Landroid/os/storage/StorageManager$ListenerDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager$UmsConnectionChangedStorageEvent;->getMessage()Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 289
    return-void
.end method

.method sendStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "oldState"    # Ljava/lang/String;
    .param p3, "newState"    # Ljava/lang/String;

    .prologue
    .line 292
    new-instance v0, Landroid/os/storage/StorageManager$StorageStateChangedStorageEvent;

    iget-object v1, p0, Landroid/os/storage/StorageManager$ListenerDelegate;->this$0:Landroid/os/storage/StorageManager;

    invoke-direct {v0, v1, p1, p2, p3}, Landroid/os/storage/StorageManager$StorageStateChangedStorageEvent;-><init>(Landroid/os/storage/StorageManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    .local v0, "e":Landroid/os/storage/StorageManager$StorageStateChangedStorageEvent;
    iget-object v1, p0, Landroid/os/storage/StorageManager$ListenerDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager$StorageStateChangedStorageEvent;->getMessage()Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 294
    return-void
.end method
