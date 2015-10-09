.class public interface abstract Landroid/media/IAudioFocusDispatcher;
.super Ljava/lang/Object;
.source "IAudioFocusDispatcher.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IAudioFocusDispatcher$Stub;
    }
.end annotation


# virtual methods
.method public abstract dispatchAudioFocusChange(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
