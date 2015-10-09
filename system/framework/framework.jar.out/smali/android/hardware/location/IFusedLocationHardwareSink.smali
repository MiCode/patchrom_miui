.class public interface abstract Landroid/hardware/location/IFusedLocationHardwareSink;
.super Ljava/lang/Object;
.source "IFusedLocationHardwareSink.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/IFusedLocationHardwareSink$Stub;
    }
.end annotation


# virtual methods
.method public abstract onDiagnosticDataAvailable(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onLocationAvailable([Landroid/location/Location;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
