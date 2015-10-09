.class public interface abstract Landroid/media/IRemoteDisplayCallback;
.super Ljava/lang/Object;
.source "IRemoteDisplayCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IRemoteDisplayCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onStateChanged(Landroid/media/RemoteDisplayState;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
