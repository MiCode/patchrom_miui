.class public interface abstract Landroid/location/ILocationPolicyListener;
.super Ljava/lang/Object;
.source "ILocationPolicyListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/ILocationPolicyListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onRestrictBackgroundChanged(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onUidRulesChanged(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
