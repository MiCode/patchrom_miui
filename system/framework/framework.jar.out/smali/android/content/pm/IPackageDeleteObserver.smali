.class public interface abstract Landroid/content/pm/IPackageDeleteObserver;
.super Ljava/lang/Object;
.source "IPackageDeleteObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPackageDeleteObserver$Stub;
    }
.end annotation


# virtual methods
.method public abstract packageDeleted(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
