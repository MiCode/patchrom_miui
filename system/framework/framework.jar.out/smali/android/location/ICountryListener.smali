.class public interface abstract Landroid/location/ICountryListener;
.super Ljava/lang/Object;
.source "ICountryListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/ICountryListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onCountryDetected(Landroid/location/Country;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
