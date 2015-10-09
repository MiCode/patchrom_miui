.class Landroid/bluetooth/BluetoothAdapter$2;
.super Landroid/bluetooth/IBluetoothManagerCallback$Stub;
.source "BluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 0

    .prologue
    .line 1434
    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$2;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothManagerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothServiceDown()V
    .locals 6

    .prologue
    .line 1453
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$2;->this$0:Landroid/bluetooth/BluetoothAdapter;

    # getter for: Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;
    invoke-static {v3}, Landroid/bluetooth/BluetoothAdapter;->access$200(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/IBluetoothManagerCallback;

    move-result-object v4

    monitor-enter v4

    .line 1454
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$2;->this$0:Landroid/bluetooth/BluetoothAdapter;

    const/4 v5, 0x0

    # setter for: Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;
    invoke-static {v3, v5}, Landroid/bluetooth/BluetoothAdapter;->access$302(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;

    .line 1456
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$2;->this$0:Landroid/bluetooth/BluetoothAdapter;

    const/4 v5, 0x0

    # setter for: Landroid/bluetooth/BluetoothAdapter;->mBluetoothAdvScanData:Landroid/bluetooth/BluetoothAdvScanData;
    invoke-static {v3, v5}, Landroid/bluetooth/BluetoothAdapter;->access$502(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothAdvScanData;)Landroid/bluetooth/BluetoothAdvScanData;

    .line 1457
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$2;->this$0:Landroid/bluetooth/BluetoothAdapter;

    # getter for: Landroid/bluetooth/BluetoothAdapter;->mProxyServiceStateCallbacks:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/bluetooth/BluetoothAdapter;->access$400(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothManagerCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1459
    .local v0, "cb":Landroid/bluetooth/IBluetoothManagerCallback;
    if-eqz v0, :cond_0

    .line 1460
    :try_start_1
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManagerCallback;->onBluetoothServiceDown()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1464
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "BluetoothAdapter"

    const-string v5, ""

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1466
    .end local v0    # "cb":Landroid/bluetooth/IBluetoothManagerCallback;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1462
    .restart local v0    # "cb":Landroid/bluetooth/IBluetoothManagerCallback;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_3
    const-string v3, "BluetoothAdapter"

    const-string/jumbo v5, "onBluetoothServiceDown: cb is null!!!"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1466
    .end local v0    # "cb":Landroid/bluetooth/IBluetoothManagerCallback;
    :cond_1
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1467
    return-void
.end method

.method public onBluetoothServiceUp(Landroid/bluetooth/IBluetooth;)V
    .locals 6
    .param p1, "bluetoothService"    # Landroid/bluetooth/IBluetooth;

    .prologue
    .line 1437
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$2;->this$0:Landroid/bluetooth/BluetoothAdapter;

    # getter for: Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;
    invoke-static {v3}, Landroid/bluetooth/BluetoothAdapter;->access$200(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/IBluetoothManagerCallback;

    move-result-object v4

    monitor-enter v4

    .line 1438
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$2;->this$0:Landroid/bluetooth/BluetoothAdapter;

    # setter for: Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;
    invoke-static {v3, p1}, Landroid/bluetooth/BluetoothAdapter;->access$302(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;

    .line 1439
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$2;->this$0:Landroid/bluetooth/BluetoothAdapter;

    # getter for: Landroid/bluetooth/BluetoothAdapter;->mProxyServiceStateCallbacks:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/bluetooth/BluetoothAdapter;->access$400(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothManagerCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1441
    .local v0, "cb":Landroid/bluetooth/IBluetoothManagerCallback;
    if-eqz v0, :cond_0

    .line 1442
    :try_start_1
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothManagerCallback;->onBluetoothServiceUp(Landroid/bluetooth/IBluetooth;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1446
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "BluetoothAdapter"

    const-string v5, ""

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1448
    .end local v0    # "cb":Landroid/bluetooth/IBluetoothManagerCallback;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1444
    .restart local v0    # "cb":Landroid/bluetooth/IBluetoothManagerCallback;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_3
    const-string v3, "BluetoothAdapter"

    const-string/jumbo v5, "onBluetoothServiceUp: cb is null!!!"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1448
    .end local v0    # "cb":Landroid/bluetooth/IBluetoothManagerCallback;
    :cond_1
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1449
    return-void
.end method
