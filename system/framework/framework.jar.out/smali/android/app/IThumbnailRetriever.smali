.class public interface abstract Landroid/app/IThumbnailRetriever;
.super Ljava/lang/Object;
.source "IThumbnailRetriever.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IThumbnailRetriever$Stub;
    }
.end annotation


# virtual methods
.method public abstract getThumbnail(I)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
