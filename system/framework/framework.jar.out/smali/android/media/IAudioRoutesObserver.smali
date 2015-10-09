.class public interface abstract Landroid/media/IAudioRoutesObserver;
.super Ljava/lang/Object;
.source "IAudioRoutesObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IAudioRoutesObserver$Stub;
    }
.end annotation


# virtual methods
.method public abstract dispatchAudioRoutesChanged(Landroid/media/AudioRoutesInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
