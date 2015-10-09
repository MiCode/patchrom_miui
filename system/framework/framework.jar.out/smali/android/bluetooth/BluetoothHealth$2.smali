.class Landroid/bluetooth/BluetoothHealth$2;
.super Ljava/lang/Object;
.source "BluetoothHealth.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHealth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothHealth;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothHealth;)V
    .locals 0

    .prologue
    .line 522
    iput-object p1, p0, Landroid/bluetooth/BluetoothHealth$2;->this$0:Landroid/bluetooth/BluetoothHealth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 524
    const-string v0, "BluetoothHealth"

    const-string v1, "Proxy object connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object v0, p0, Landroid/bluetooth/BluetoothHealth$2;->this$0:Landroid/bluetooth/BluetoothHealth;

    invoke-static {p2}, Landroid/bluetooth/IBluetoothHealth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHealth;

    move-result-object v1

    # setter for: Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothHealth;->access$102(Landroid/bluetooth/BluetoothHealth;Landroid/bluetooth/IBluetoothHealth;)Landroid/bluetooth/IBluetoothHealth;

    .line 527
    iget-object v0, p0, Landroid/bluetooth/BluetoothHealth$2;->this$0:Landroid/bluetooth/BluetoothHealth;

    # getter for: Landroid/bluetooth/BluetoothHealth;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothHealth;->access$300(Landroid/bluetooth/BluetoothHealth;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Landroid/bluetooth/BluetoothHealth$2;->this$0:Landroid/bluetooth/BluetoothHealth;

    # getter for: Landroid/bluetooth/BluetoothHealth;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothHealth;->access$300(Landroid/bluetooth/BluetoothHealth;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, p0, Landroid/bluetooth/BluetoothHealth$2;->this$0:Landroid/bluetooth/BluetoothHealth;

    invoke-interface {v0, v1, v2}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V

    .line 530
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 532
    const-string v0, "BluetoothHealth"

    const-string v1, "Proxy object disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-object v0, p0, Landroid/bluetooth/BluetoothHealth$2;->this$0:Landroid/bluetooth/BluetoothHealth;

    const/4 v1, 0x0

    # setter for: Landroid/bluetooth/BluetoothHealth;->mService:Landroid/bluetooth/IBluetoothHealth;
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothHealth;->access$102(Landroid/bluetooth/BluetoothHealth;Landroid/bluetooth/IBluetoothHealth;)Landroid/bluetooth/IBluetoothHealth;

    .line 534
    iget-object v0, p0, Landroid/bluetooth/BluetoothHealth$2;->this$0:Landroid/bluetooth/BluetoothHealth;

    # getter for: Landroid/bluetooth/BluetoothHealth;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothHealth;->access$300(Landroid/bluetooth/BluetoothHealth;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Landroid/bluetooth/BluetoothHealth$2;->this$0:Landroid/bluetooth/BluetoothHealth;

    # getter for: Landroid/bluetooth/BluetoothHealth;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothHealth;->access$300(Landroid/bluetooth/BluetoothHealth;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceDisconnected(I)V

    .line 537
    :cond_0
    return-void
.end method
