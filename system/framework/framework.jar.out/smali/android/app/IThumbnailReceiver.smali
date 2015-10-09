.class public interface abstract Landroid/app/IThumbnailReceiver;
.super Ljava/lang/Object;
.source "IThumbnailReceiver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IThumbnailReceiver$Stub;
    }
.end annotation


# virtual methods
.method public abstract finished()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract newThumbnail(ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
