.class public interface abstract Landroid/bluetooth/IBluetoothManagerCallback;
.super Ljava/lang/Object;
.source "IBluetoothManagerCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothManagerCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onBluetoothServiceDown()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onBluetoothServiceUp(Landroid/bluetooth/IBluetooth;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
