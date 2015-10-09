.class Landroid/os/storage/StorageManager$StorageEvent;
.super Ljava/lang/Object;
.source "StorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/StorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StorageEvent"
.end annotation


# static fields
.field static final EVENT_OBB_STATE_CHANGED:I = 0x3

.field static final EVENT_STORAGE_STATE_CHANGED:I = 0x2

.field static final EVENT_UMS_CONNECTION_CHANGED:I = 0x1


# instance fields
.field private mMessage:Landroid/os/Message;

.field final synthetic this$0:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>(Landroid/os/storage/StorageManager;I)V
    .locals 1
    .param p2, "what"    # I

    .prologue
    .line 216
    iput-object p1, p0, Landroid/os/storage/StorageManager$StorageEvent;->this$0:Landroid/os/storage/StorageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/StorageManager$StorageEvent;->mMessage:Landroid/os/Message;

    .line 218
    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEvent;->mMessage:Landroid/os/Message;

    iput p2, v0, Landroid/os/Message;->what:I

    .line 219
    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEvent;->mMessage:Landroid/os/Message;

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 220
    return-void
.end method


# virtual methods
.method public getMessage()Landroid/os/Message;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEvent;->mMessage:Landroid/os/Message;

    return-object v0
.end method
