.class Landroid/os/storage/StorageManager$ObbListenerDelegate;
.super Ljava/lang/Object;
.source "StorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/StorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObbListenerDelegate"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mObbEventListenerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/storage/OnObbStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final nonce:I

.field final synthetic this$0:Landroid/os/storage/StorageManager;


# direct methods
.method constructor <init>(Landroid/os/storage/StorageManager;Landroid/os/storage/OnObbStateChangeListener;)V
    .locals 2
    .param p2, "listener"    # Landroid/os/storage/OnObbStateChangeListener;

    .prologue
    .line 154
    iput-object p1, p0, Landroid/os/storage/StorageManager$ObbListenerDelegate;->this$0:Landroid/os/storage/StorageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    # invokes: Landroid/os/storage/StorageManager;->getNextNonce()I
    invoke-static {p1}, Landroid/os/storage/StorageManager;->access$300(Landroid/os/storage/StorageManager;)I

    move-result v0

    iput v0, p0, Landroid/os/storage/StorageManager$ObbListenerDelegate;->nonce:I

    .line 156
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/os/storage/StorageManager$ObbListenerDelegate;->mObbEventListenerRef:Ljava/lang/ref/WeakReference;

    .line 157
    new-instance v0, Landroid/os/storage/StorageManager$ObbListenerDelegate$1;

    # getter for: Landroid/os/storage/StorageManager;->mTgtLooper:Landroid/os/Looper;
    invoke-static {p1}, Landroid/os/storage/StorageManager;->access$400(Landroid/os/storage/StorageManager;)Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Landroid/os/storage/StorageManager$ObbListenerDelegate$1;-><init>(Landroid/os/storage/StorageManager$ObbListenerDelegate;Landroid/os/Looper;Landroid/os/storage/StorageManager;)V

    iput-object v0, p0, Landroid/os/storage/StorageManager$ObbListenerDelegate;->mHandler:Landroid/os/Handler;

    .line 175
    return-void
.end method

.method static synthetic access$200(Landroid/os/storage/StorageManager$ObbListenerDelegate;)I
    .locals 1
    .param p0, "x0"    # Landroid/os/storage/StorageManager$ObbListenerDelegate;

    .prologue
    .line 148
    iget v0, p0, Landroid/os/storage/StorageManager$ObbListenerDelegate;->nonce:I

    return v0
.end method


# virtual methods
.method getListener()Landroid/os/storage/OnObbStateChangeListener;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Landroid/os/storage/StorageManager$ObbListenerDelegate;->mObbEventListenerRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 179
    const/4 v0, 0x0

    .line 181
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/os/storage/StorageManager$ObbListenerDelegate;->mObbEventListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/OnObbStateChangeListener;

    goto :goto_0
.end method

.method sendObbStateChanged(Ljava/lang/String;I)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "state"    # I

    .prologue
    .line 185
    new-instance v0, Landroid/os/storage/StorageManager$ObbStateChangedStorageEvent;

    iget-object v1, p0, Landroid/os/storage/StorageManager$ObbListenerDelegate;->this$0:Landroid/os/storage/StorageManager;

    invoke-direct {v0, v1, p1, p2}, Landroid/os/storage/StorageManager$ObbStateChangedStorageEvent;-><init>(Landroid/os/storage/StorageManager;Ljava/lang/String;I)V

    .line 186
    .local v0, "e":Landroid/os/storage/StorageManager$ObbStateChangedStorageEvent;
    iget-object v1, p0, Landroid/os/storage/StorageManager$ObbListenerDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager$ObbStateChangedStorageEvent;->getMessage()Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 187
    return-void
.end method
