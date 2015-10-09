.class public interface abstract Landroid/content/pm/IPackageInstallObserver;
.super Ljava/lang/Object;
.source "IPackageInstallObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPackageInstallObserver$Stub;
    }
.end annotation


# virtual methods
.method public abstract packageInstalled(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
