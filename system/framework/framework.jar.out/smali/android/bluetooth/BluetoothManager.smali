.class public final Landroid/bluetooth/BluetoothManager;
.super Ljava/lang/Object;
.source "BluetoothManager.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothManager"

.field private static final VDBG:Z = true


# instance fields
.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 58
    if-nez p1, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context not associated with any application (using a mock context?)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 64
    return-void
.end method


# virtual methods
.method public getAdapter()Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Landroid/bluetooth/BluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method public getConnectedDevices(I)Ljava/util/List;
    .locals 8
    .param p1, "profile"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    const-string v5, "BluetoothManager"

    const-string v6, "getConnectedDevices"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/4 v5, 0x7

    if-eq p1, v5, :cond_0

    const/16 v5, 0x8

    if-eq p1, v5, :cond_0

    .line 123
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Profile not supported: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 126
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v0, "connectedDevices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :try_start_0
    iget-object v5, p0, Landroid/bluetooth/BluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v4

    .line 130
    .local v4, "managerService":Landroid/bluetooth/IBluetoothManager;
    invoke-interface {v4}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v3

    .line 131
    .local v3, "iGatt":Landroid/bluetooth/IBluetoothGatt;
    if-nez v3, :cond_1

    move-object v1, v0

    .line 139
    .end local v0    # "connectedDevices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v3    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    .end local v4    # "managerService":Landroid/bluetooth/IBluetoothManager;
    .local v1, "connectedDevices":Ljava/lang/Object;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :goto_0
    return-object v1

    .line 133
    .end local v1    # "connectedDevices":Ljava/lang/Object;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .restart local v0    # "connectedDevices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .restart local v3    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    .restart local v4    # "managerService":Landroid/bluetooth/IBluetoothManager;
    :cond_1
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/4 v7, 0x2

    aput v7, v5, v6

    invoke-interface {v3, v5}, Landroid/bluetooth/IBluetoothGatt;->getDevicesMatchingConnectionStates([I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .end local v3    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    .end local v4    # "managerService":Landroid/bluetooth/IBluetoothManager;
    :goto_1
    move-object v1, v0

    .line 139
    .restart local v1    # "connectedDevices":Ljava/lang/Object;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    goto :goto_0

    .line 135
    .end local v1    # "connectedDevices":Ljava/lang/Object;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :catch_0
    move-exception v2

    .line 136
    .local v2, "e":Landroid/os/RemoteException;
    const-string v5, "BluetoothManager"

    const-string v6, ""

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;I)I
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "profile"    # I

    .prologue
    .line 93
    const-string v3, "BluetoothManager"

    const-string v4, "getConnectionState()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {p0, p2}, Landroid/bluetooth/BluetoothManager;->getConnectedDevices(I)Ljava/util/List;

    move-result-object v1

    .line 96
    .local v1, "connectedDevices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 97
    .local v0, "connectedDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 98
    const/4 v3, 0x2

    .line 102
    .end local v0    # "connectedDevice":Landroid/bluetooth/BluetoothDevice;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getDevicesMatchingConnectionStates(I[I)Ljava/util/List;
    .locals 8
    .param p1, "profile"    # I
    .param p2, "states"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    const-string v5, "BluetoothManager"

    const-string v6, "getDevicesMatchingConnectionStates"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v5, 0x7

    if-eq p1, v5, :cond_0

    const/16 v5, 0x8

    if-eq p1, v5, :cond_0

    .line 168
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Profile not supported: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 171
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v0, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :try_start_0
    iget-object v5, p0, Landroid/bluetooth/BluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v4

    .line 175
    .local v4, "managerService":Landroid/bluetooth/IBluetoothManager;
    invoke-interface {v4}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v3

    .line 176
    .local v3, "iGatt":Landroid/bluetooth/IBluetoothGatt;
    if-nez v3, :cond_1

    move-object v1, v0

    .line 182
    .end local v0    # "devices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v3    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    .end local v4    # "managerService":Landroid/bluetooth/IBluetoothManager;
    .local v1, "devices":Ljava/lang/Object;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :goto_0
    return-object v1

    .line 177
    .end local v1    # "devices":Ljava/lang/Object;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .restart local v0    # "devices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .restart local v3    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    .restart local v4    # "managerService":Landroid/bluetooth/IBluetoothManager;
    :cond_1
    invoke-interface {v3, p2}, Landroid/bluetooth/IBluetoothGatt;->getDevicesMatchingConnectionStates([I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .end local v3    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    .end local v4    # "managerService":Landroid/bluetooth/IBluetoothManager;
    :goto_1
    move-object v1, v0

    .line 182
    .restart local v1    # "devices":Ljava/lang/Object;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    goto :goto_0

    .line 178
    .end local v1    # "devices":Ljava/lang/Object;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :catch_0
    move-exception v2

    .line 179
    .local v2, "e":Landroid/os/RemoteException;
    const-string v5, "BluetoothManager"

    const-string v6, ""

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public openGattServer(Landroid/content/Context;Landroid/bluetooth/BluetoothGattServerCallback;)Landroid/bluetooth/BluetoothGattServer;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Landroid/bluetooth/BluetoothGattServerCallback;

    .prologue
    const/4 v5, 0x0

    .line 197
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 198
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "null parameter: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 205
    :cond_1
    :try_start_0
    iget-object v6, p0, Landroid/bluetooth/BluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v3

    .line 206
    .local v3, "managerService":Landroid/bluetooth/IBluetoothManager;
    invoke-interface {v3}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v1

    .line 207
    .local v1, "iGatt":Landroid/bluetooth/IBluetoothGatt;
    if-nez v1, :cond_2

    .line 208
    const-string v6, "BluetoothManager"

    const-string v7, "Fail to get GATT Server connection"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    .end local v1    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    .end local v3    # "managerService":Landroid/bluetooth/IBluetoothManager;
    :goto_0
    return-object v5

    .line 211
    .restart local v1    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    .restart local v3    # "managerService":Landroid/bluetooth/IBluetoothManager;
    :cond_2
    new-instance v2, Landroid/bluetooth/BluetoothGattServer;

    invoke-direct {v2, p1, v1}, Landroid/bluetooth/BluetoothGattServer;-><init>(Landroid/content/Context;Landroid/bluetooth/IBluetoothGatt;)V

    .line 212
    .local v2, "mGattServer":Landroid/bluetooth/BluetoothGattServer;
    invoke-virtual {v2, p2}, Landroid/bluetooth/BluetoothGattServer;->registerCallback(Landroid/bluetooth/BluetoothGattServerCallback;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 213
    .local v4, "regStatus":Ljava/lang/Boolean;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_3

    .end local v2    # "mGattServer":Landroid/bluetooth/BluetoothGattServer;
    :goto_1
    move-object v5, v2

    goto :goto_0

    .restart local v2    # "mGattServer":Landroid/bluetooth/BluetoothGattServer;
    :cond_3
    move-object v2, v5

    goto :goto_1

    .line 214
    .end local v1    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    .end local v2    # "mGattServer":Landroid/bluetooth/BluetoothGattServer;
    .end local v3    # "managerService":Landroid/bluetooth/IBluetoothManager;
    .end local v4    # "regStatus":Ljava/lang/Boolean;
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Landroid/os/RemoteException;
    const-string v6, "BluetoothManager"

    const-string v7, ""

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
