.class public interface abstract Lcom/mediatek/CellConnService/IPhoneStatesMgrService;
.super Ljava/lang/Object;
.source "IPhoneStatesMgrService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/CellConnService/IPhoneStatesMgrService$Stub;
    }
.end annotation


# virtual methods
.method public abstract verifyPhoneState(IILcom/mediatek/CellConnService/IPhoneStatesCallback;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
