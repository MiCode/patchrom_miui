.class public interface abstract Landroid/hardware/IConsumerIrService;
.super Ljava/lang/Object;
.source "IConsumerIrService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/IConsumerIrService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getCarrierFrequencies()[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract hasIrEmitter()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract transmit(Ljava/lang/String;I[I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
