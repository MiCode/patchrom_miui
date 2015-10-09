.class public Landroid/bluetooth/BluetoothGattDescriptor;
.super Ljava/lang/Object;
.source "BluetoothGattDescriptor.java"


# static fields
.field public static final DISABLE_NOTIFICATION_VALUE:[B

.field public static final ENABLE_INDICATION_VALUE:[B

.field public static final ENABLE_NOTIFICATION_VALUE:[B

.field public static final PERMISSION_READ:I = 0x1

.field public static final PERMISSION_READ_ENCRYPTED:I = 0x2

.field public static final PERMISSION_READ_ENCRYPTED_MITM:I = 0x4

.field public static final PERMISSION_WRITE:I = 0x10

.field public static final PERMISSION_WRITE_ENCRYPTED:I = 0x20

.field public static final PERMISSION_WRITE_ENCRYPTED_MITM:I = 0x40

.field public static final PERMISSION_WRITE_SIGNED:I = 0x80

.field public static final PERMISSION_WRITE_SIGNED_MITM:I = 0x100


# instance fields
.field protected mCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field protected mInstance:I

.field protected mPermissions:I

.field protected mUuid:Ljava/util/UUID;

.field protected mValue:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 33
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    .line 38
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_INDICATION_VALUE:[B

    .line 43
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Landroid/bluetooth/BluetoothGattDescriptor;->DISABLE_NOTIFICATION_VALUE:[B

    return-void

    .line 33
    nop

    :array_0
    .array-data 1
        0x1t
        0x0t
    .end array-data

    .line 38
    nop

    :array_1
    .array-data 1
        0x2t
        0x0t
    .end array-data

    .line 43
    nop

    :array_2
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method constructor <init>(Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/util/UUID;II)V
    .locals 0
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "instance"    # I
    .param p4, "permissions"    # I

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/bluetooth/BluetoothGattDescriptor;->initDescriptor(Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/util/UUID;II)V

    .line 139
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;I)V
    .locals 2
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "permissions"    # I

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Landroid/bluetooth/BluetoothGattDescriptor;->initDescriptor(Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/util/UUID;II)V

    .line 126
    return-void
.end method

.method private initDescriptor(Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/util/UUID;II)V
    .locals 0
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "instance"    # I
    .param p4, "permissions"    # I

    .prologue
    .line 143
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattDescriptor;->mCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 144
    iput-object p2, p0, Landroid/bluetooth/BluetoothGattDescriptor;->mUuid:Ljava/util/UUID;

    .line 145
    iput p3, p0, Landroid/bluetooth/BluetoothGattDescriptor;->mInstance:I

    .line 146
    iput p4, p0, Landroid/bluetooth/BluetoothGattDescriptor;->mPermissions:I

    .line 147
    return-void
.end method


# virtual methods
.method public getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattDescriptor;->mCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object v0
.end method

.method public getInstanceId()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Landroid/bluetooth/BluetoothGattDescriptor;->mInstance:I

    return v0
.end method

.method public getPermissions()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Landroid/bluetooth/BluetoothGattDescriptor;->mPermissions:I

    return v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattDescriptor;->mUuid:Ljava/util/UUID;

    return-object v0
.end method

.method public getValue()[B
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattDescriptor;->mValue:[B

    return-object v0
.end method

.method setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 162
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattDescriptor;->mCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 163
    return-void
.end method

.method public setValue([B)Z
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 225
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattDescriptor;->mValue:[B

    .line 226
    const/4 v0, 0x1

    return v0
.end method
