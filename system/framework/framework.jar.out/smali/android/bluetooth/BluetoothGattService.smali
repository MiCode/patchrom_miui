.class public Landroid/bluetooth/BluetoothGattService;
.super Ljava/lang/Object;
.source "BluetoothGattService.java"


# static fields
.field public static final SERVICE_TYPE_PRIMARY:I = 0x0

.field public static final SERVICE_TYPE_SECONDARY:I = 0x1


# instance fields
.field private mAdvertisePreferred:Z

.field protected mCharacteristics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ">;"
        }
    .end annotation
.end field

.field protected mDevice:Landroid/bluetooth/BluetoothDevice;

.field protected mHandles:I

.field protected mIncludedServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation
.end field

.field protected mInstanceId:I

.field protected mServiceType:I

.field protected mUuid:Ljava/util/UUID;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;II)V
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "instanceId"    # I
    .param p4, "serviceType"    # I

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/BluetoothGattService;->mHandles:I

    .line 111
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 112
    iput-object p2, p0, Landroid/bluetooth/BluetoothGattService;->mUuid:Ljava/util/UUID;

    .line 113
    iput p3, p0, Landroid/bluetooth/BluetoothGattService;->mInstanceId:I

    .line 114
    iput p4, p0, Landroid/bluetooth/BluetoothGattService;->mServiceType:I

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mCharacteristics:Ljava/util/List;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mIncludedServices:Ljava/util/List;

    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;I)V
    .locals 2
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "serviceType"    # I

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput v1, p0, Landroid/bluetooth/BluetoothGattService;->mHandles:I

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 98
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattService;->mUuid:Ljava/util/UUID;

    .line 99
    iput v1, p0, Landroid/bluetooth/BluetoothGattService;->mInstanceId:I

    .line 100
    iput p2, p0, Landroid/bluetooth/BluetoothGattService;->mServiceType:I

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mCharacteristics:Ljava/util/List;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mIncludedServices:Ljava/util/List;

    .line 103
    return-void
.end method


# virtual methods
.method public addCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 1
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 147
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mCharacteristics:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    invoke-virtual {p1, p0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setService(Landroid/bluetooth/BluetoothGattService;)V

    .line 149
    const/4 v0, 0x1

    return v0
.end method

.method addIncludedService(Landroid/bluetooth/BluetoothGattService;)V
    .locals 1
    .param p1, "includedService"    # Landroid/bluetooth/BluetoothGattService;

    .prologue
    .line 196
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mIncludedServices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    return-void
.end method

.method public addService(Landroid/bluetooth/BluetoothGattService;)Z
    .locals 1
    .param p1, "service"    # Landroid/bluetooth/BluetoothGattService;

    .prologue
    .line 135
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mIncludedServices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method public getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 3
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 263
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattService;->mCharacteristics:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 264
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 267
    .end local v0    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getCharacteristic(Ljava/util/UUID;I)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 3
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "instanceId"    # I

    .prologue
    .line 157
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattService;->mCharacteristics:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 158
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 162
    .end local v0    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCharacteristics()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mCharacteristics:Ljava/util/List;

    return-object v0
.end method

.method getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method getHandles()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Landroid/bluetooth/BluetoothGattService;->mHandles:I

    return v0
.end method

.method public getIncludedServices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mIncludedServices:Ljava/util/List;

    return-object v0
.end method

.method public getInstanceId()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Landroid/bluetooth/BluetoothGattService;->mInstanceId:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Landroid/bluetooth/BluetoothGattService;->mServiceType:I

    return v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mUuid:Ljava/util/UUID;

    return-object v0
.end method

.method public isAdvertisePreferred()Z
    .locals 1

    .prologue
    .line 275
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothGattService;->mAdvertisePreferred:Z

    return v0
.end method

.method public setAdvertisePreferred(Z)V
    .locals 0
    .param p1, "advertisePreferred"    # Z

    .prologue
    .line 283
    iput-boolean p1, p0, Landroid/bluetooth/BluetoothGattService;->mAdvertisePreferred:Z

    .line 284
    return-void
.end method

.method public setHandles(I)V
    .locals 0
    .param p1, "handles"    # I

    .prologue
    .line 188
    iput p1, p0, Landroid/bluetooth/BluetoothGattService;->mHandles:I

    .line 189
    return-void
.end method

.method public setInstanceId(I)V
    .locals 0
    .param p1, "instanceId"    # I

    .prologue
    .line 171
    iput p1, p0, Landroid/bluetooth/BluetoothGattService;->mInstanceId:I

    .line 172
    return-void
.end method
