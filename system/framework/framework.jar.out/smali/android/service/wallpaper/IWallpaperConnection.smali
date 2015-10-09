.class public interface abstract Landroid/service/wallpaper/IWallpaperConnection;
.super Ljava/lang/Object;
.source "IWallpaperConnection.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/wallpaper/IWallpaperConnection$Stub;
    }
.end annotation


# virtual methods
.method public abstract attachEngine(Landroid/service/wallpaper/IWallpaperEngine;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract engineShown(Landroid/service/wallpaper/IWallpaperEngine;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
