.class Landroid/os/storage/StorageManager$StorageStateChangedStorageEvent;
.super Landroid/os/storage/StorageManager$StorageEvent;
.source "StorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/StorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StorageStateChangedStorageEvent"
.end annotation


# instance fields
.field public newState:Ljava/lang/String;

.field public oldState:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field final synthetic this$0:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>(Landroid/os/storage/StorageManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "p"    # Ljava/lang/String;
    .param p3, "oldS"    # Ljava/lang/String;
    .param p4, "newS"    # Ljava/lang/String;

    .prologue
    .line 247
    iput-object p1, p0, Landroid/os/storage/StorageManager$StorageStateChangedStorageEvent;->this$0:Landroid/os/storage/StorageManager;

    .line 248
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Landroid/os/storage/StorageManager$StorageEvent;-><init>(Landroid/os/storage/StorageManager;I)V

    .line 249
    iput-object p2, p0, Landroid/os/storage/StorageManager$StorageStateChangedStorageEvent;->path:Ljava/lang/String;

    .line 250
    iput-object p3, p0, Landroid/os/storage/StorageManager$StorageStateChangedStorageEvent;->oldState:Ljava/lang/String;

    .line 251
    iput-object p4, p0, Landroid/os/storage/StorageManager$StorageStateChangedStorageEvent;->newState:Ljava/lang/String;

    .line 252
    return-void
.end method
