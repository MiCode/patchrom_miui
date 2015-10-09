.class public interface abstract Landroid/location/IFusedProvider;
.super Ljava/lang/Object;
.source "IFusedProvider.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/IFusedProvider$Stub;
    }
.end annotation


# virtual methods
.method public abstract onFusedLocationHardwareChange(Landroid/hardware/location/IFusedLocationHardware;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
