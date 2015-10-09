.class Landroid/bluetooth/BluetoothInputDevice$2;
.super Ljava/lang/Object;
.source "BluetoothInputDevice.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothInputDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothInputDevice;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothInputDevice;)V
    .locals 0

    .prologue
    .line 461
    iput-object p1, p0, Landroid/bluetooth/BluetoothInputDevice$2;->this$0:Landroid/bluetooth/BluetoothInputDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 463
    const-string v0, "BluetoothInputDevice"

    const-string v1, "Proxy object connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget-object v0, p0, Landroid/bluetooth/BluetoothInputDevice$2;->this$0:Landroid/bluetooth/BluetoothInputDevice;

    invoke-static {p2}, Landroid/bluetooth/IBluetoothInputDevice$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothInputDevice;

    move-result-object v1

    # setter for: Landroid/bluetooth/BluetoothInputDevice;->mService:Landroid/bluetooth/IBluetoothInputDevice;
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothInputDevice;->access$102(Landroid/bluetooth/BluetoothInputDevice;Landroid/bluetooth/IBluetoothInputDevice;)Landroid/bluetooth/IBluetoothInputDevice;

    .line 466
    iget-object v0, p0, Landroid/bluetooth/BluetoothInputDevice$2;->this$0:Landroid/bluetooth/BluetoothInputDevice;

    # getter for: Landroid/bluetooth/BluetoothInputDevice;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothInputDevice;->access$300(Landroid/bluetooth/BluetoothInputDevice;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Landroid/bluetooth/BluetoothInputDevice$2;->this$0:Landroid/bluetooth/BluetoothInputDevice;

    # getter for: Landroid/bluetooth/BluetoothInputDevice;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothInputDevice;->access$300(Landroid/bluetooth/BluetoothInputDevice;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    const/4 v1, 0x4

    iget-object v2, p0, Landroid/bluetooth/BluetoothInputDevice$2;->this$0:Landroid/bluetooth/BluetoothInputDevice;

    invoke-interface {v0, v1, v2}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V

    .line 469
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 471
    const-string v0, "BluetoothInputDevice"

    const-string v1, "Proxy object disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v0, p0, Landroid/bluetooth/BluetoothInputDevice$2;->this$0:Landroid/bluetooth/BluetoothInputDevice;

    const/4 v1, 0x0

    # setter for: Landroid/bluetooth/BluetoothInputDevice;->mService:Landroid/bluetooth/IBluetoothInputDevice;
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothInputDevice;->access$102(Landroid/bluetooth/BluetoothInputDevice;Landroid/bluetooth/IBluetoothInputDevice;)Landroid/bluetooth/IBluetoothInputDevice;

    .line 473
    iget-object v0, p0, Landroid/bluetooth/BluetoothInputDevice$2;->this$0:Landroid/bluetooth/BluetoothInputDevice;

    # getter for: Landroid/bluetooth/BluetoothInputDevice;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothInputDevice;->access$300(Landroid/bluetooth/BluetoothInputDevice;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Landroid/bluetooth/BluetoothInputDevice$2;->this$0:Landroid/bluetooth/BluetoothInputDevice;

    # getter for: Landroid/bluetooth/BluetoothInputDevice;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothInputDevice;->access$300(Landroid/bluetooth/BluetoothInputDevice;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceDisconnected(I)V

    .line 476
    :cond_0
    return-void
.end method
