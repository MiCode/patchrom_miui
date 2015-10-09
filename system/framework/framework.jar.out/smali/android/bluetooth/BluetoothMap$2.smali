.class Landroid/bluetooth/BluetoothMap$2;
.super Ljava/lang/Object;
.source "BluetoothMap.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothMap;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothMap;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Landroid/bluetooth/BluetoothMap$2;->this$0:Landroid/bluetooth/BluetoothMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 374
    const-string v0, "Proxy object connected"

    # invokes: Landroid/bluetooth/BluetoothMap;->log(Ljava/lang/String;)V
    invoke-static {v0}, Landroid/bluetooth/BluetoothMap;->access$300(Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Landroid/bluetooth/BluetoothMap$2;->this$0:Landroid/bluetooth/BluetoothMap;

    invoke-static {p2}, Landroid/bluetooth/IBluetoothMap$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothMap;

    move-result-object v1

    # setter for: Landroid/bluetooth/BluetoothMap;->mService:Landroid/bluetooth/IBluetoothMap;
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothMap;->access$102(Landroid/bluetooth/BluetoothMap;Landroid/bluetooth/IBluetoothMap;)Landroid/bluetooth/IBluetoothMap;

    .line 376
    iget-object v0, p0, Landroid/bluetooth/BluetoothMap$2;->this$0:Landroid/bluetooth/BluetoothMap;

    # getter for: Landroid/bluetooth/BluetoothMap;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothMap;->access$400(Landroid/bluetooth/BluetoothMap;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Landroid/bluetooth/BluetoothMap$2;->this$0:Landroid/bluetooth/BluetoothMap;

    # getter for: Landroid/bluetooth/BluetoothMap;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothMap;->access$400(Landroid/bluetooth/BluetoothMap;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    const/16 v1, 0x9

    iget-object v2, p0, Landroid/bluetooth/BluetoothMap$2;->this$0:Landroid/bluetooth/BluetoothMap;

    invoke-interface {v0, v1, v2}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V

    .line 379
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 381
    const-string v0, "Proxy object disconnected"

    # invokes: Landroid/bluetooth/BluetoothMap;->log(Ljava/lang/String;)V
    invoke-static {v0}, Landroid/bluetooth/BluetoothMap;->access$300(Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Landroid/bluetooth/BluetoothMap$2;->this$0:Landroid/bluetooth/BluetoothMap;

    const/4 v1, 0x0

    # setter for: Landroid/bluetooth/BluetoothMap;->mService:Landroid/bluetooth/IBluetoothMap;
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothMap;->access$102(Landroid/bluetooth/BluetoothMap;Landroid/bluetooth/IBluetoothMap;)Landroid/bluetooth/IBluetoothMap;

    .line 383
    iget-object v0, p0, Landroid/bluetooth/BluetoothMap$2;->this$0:Landroid/bluetooth/BluetoothMap;

    # getter for: Landroid/bluetooth/BluetoothMap;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothMap;->access$400(Landroid/bluetooth/BluetoothMap;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Landroid/bluetooth/BluetoothMap$2;->this$0:Landroid/bluetooth/BluetoothMap;

    # getter for: Landroid/bluetooth/BluetoothMap;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothMap;->access$400(Landroid/bluetooth/BluetoothMap;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceDisconnected(I)V

    .line 386
    :cond_0
    return-void
.end method
