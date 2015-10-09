.class Landroid/bluetooth/BluetoothAdapter$1;
.super Ljava/lang/Object;
.source "BluetoothAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/BluetoothAdapter;->startAdvertising(Landroid/bluetooth/BluetoothAdapter$AdvertiseCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothAdapter;

.field final synthetic val$callback:Landroid/bluetooth/BluetoothAdapter$AdvertiseCallback;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothAdapter$AdvertiseCallback;)V
    .locals 0

    .prologue
    .line 546
    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$1;->this$0:Landroid/bluetooth/BluetoothAdapter;

    iput-object p2, p0, Landroid/bluetooth/BluetoothAdapter$1;->val$callback:Landroid/bluetooth/BluetoothAdapter$AdvertiseCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 550
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$1;->val$callback:Landroid/bluetooth/BluetoothAdapter$AdvertiseCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/bluetooth/BluetoothAdapter$AdvertiseCallback;->onAdvertiseStart(I)V

    .line 551
    return-void
.end method
