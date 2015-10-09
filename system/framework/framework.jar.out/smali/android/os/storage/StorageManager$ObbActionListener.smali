.class Landroid/os/storage/StorageManager$ObbActionListener;
.super Landroid/os/storage/IObbActionListener$Stub;
.source "StorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/StorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObbActionListener"
.end annotation


# instance fields
.field private mListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/storage/StorageManager$ObbListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/os/storage/StorageManager;


# direct methods
.method private constructor <init>(Landroid/os/storage/StorageManager;)V
    .locals 1

    .prologue
    .line 111
    iput-object p1, p0, Landroid/os/storage/StorageManager$ObbActionListener;->this$0:Landroid/os/storage/StorageManager;

    invoke-direct {p0}, Landroid/os/storage/IObbActionListener$Stub;-><init>()V

    .line 112
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/os/storage/StorageManager$ObbActionListener;->mListeners:Landroid/util/SparseArray;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/storage/StorageManager;Landroid/os/storage/StorageManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/storage/StorageManager;
    .param p2, "x1"    # Landroid/os/storage/StorageManager$1;

    .prologue
    .line 111
    invoke-direct {p0, p1}, Landroid/os/storage/StorageManager$ObbActionListener;-><init>(Landroid/os/storage/StorageManager;)V

    return-void
.end method


# virtual methods
.method public addListener(Landroid/os/storage/OnObbStateChangeListener;)I
    .locals 4
    .param p1, "listener"    # Landroid/os/storage/OnObbStateChangeListener;

    .prologue
    .line 131
    new-instance v0, Landroid/os/storage/StorageManager$ObbListenerDelegate;

    iget-object v1, p0, Landroid/os/storage/StorageManager$ObbActionListener;->this$0:Landroid/os/storage/StorageManager;

    invoke-direct {v0, v1, p1}, Landroid/os/storage/StorageManager$ObbListenerDelegate;-><init>(Landroid/os/storage/StorageManager;Landroid/os/storage/OnObbStateChangeListener;)V

    .line 133
    .local v0, "delegate":Landroid/os/storage/StorageManager$ObbListenerDelegate;
    iget-object v2, p0, Landroid/os/storage/StorageManager$ObbActionListener;->mListeners:Landroid/util/SparseArray;

    monitor-enter v2

    .line 134
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager$ObbActionListener;->mListeners:Landroid/util/SparseArray;

    # getter for: Landroid/os/storage/StorageManager$ObbListenerDelegate;->nonce:I
    invoke-static {v0}, Landroid/os/storage/StorageManager$ObbListenerDelegate;->access$200(Landroid/os/storage/StorageManager$ObbListenerDelegate;)I

    move-result v3

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 135
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    # getter for: Landroid/os/storage/StorageManager$ObbListenerDelegate;->nonce:I
    invoke-static {v0}, Landroid/os/storage/StorageManager$ObbListenerDelegate;->access$200(Landroid/os/storage/StorageManager$ObbListenerDelegate;)I

    move-result v1

    return v1

    .line 135
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onObbResult(Ljava/lang/String;II)V
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "nonce"    # I
    .param p3, "status"    # I

    .prologue
    .line 118
    iget-object v2, p0, Landroid/os/storage/StorageManager$ObbActionListener;->mListeners:Landroid/util/SparseArray;

    monitor-enter v2

    .line 119
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager$ObbActionListener;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager$ObbListenerDelegate;

    .line 120
    .local v0, "delegate":Landroid/os/storage/StorageManager$ObbListenerDelegate;
    if-eqz v0, :cond_0

    .line 121
    iget-object v1, p0, Landroid/os/storage/StorageManager$ObbActionListener;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 123
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {v0, p1, p3}, Landroid/os/storage/StorageManager$ObbListenerDelegate;->sendObbStateChanged(Ljava/lang/String;I)V

    .line 128
    :cond_1
    return-void

    .line 123
    .end local v0    # "delegate":Landroid/os/storage/StorageManager$ObbListenerDelegate;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
