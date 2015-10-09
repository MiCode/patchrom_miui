.class public abstract Landroid/os/storage/StorageEventListener;
.super Ljava/lang/Object;
.source "StorageEventListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "oldState"    # Ljava/lang/String;
    .param p3, "newState"    # Ljava/lang/String;

    .prologue
    .line 39
    return-void
.end method

.method public onUsbMassStorageConnectionChanged(Z)V
    .locals 0
    .param p1, "connected"    # Z

    .prologue
    .line 30
    return-void
.end method
