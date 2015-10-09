.class public interface abstract Landroid/media/IMediaScannerListener;
.super Ljava/lang/Object;
.source "IMediaScannerListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IMediaScannerListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract scanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
