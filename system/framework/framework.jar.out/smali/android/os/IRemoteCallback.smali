.class public interface abstract Landroid/os/IRemoteCallback;
.super Ljava/lang/Object;
.source "IRemoteCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IRemoteCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract sendResult(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
