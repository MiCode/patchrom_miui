.class public interface abstract Landroid/os/storage/IMountShutdownObserver;
.super Ljava/lang/Object;
.source "IMountShutdownObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/IMountShutdownObserver$Stub;
    }
.end annotation


# virtual methods
.method public abstract onShutDownComplete(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
