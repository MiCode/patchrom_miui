.class public interface abstract Landroid/os/IBatteryPropertiesListener;
.super Ljava/lang/Object;
.source "IBatteryPropertiesListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IBatteryPropertiesListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract batteryPropertiesChanged(Landroid/os/BatteryProperties;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
