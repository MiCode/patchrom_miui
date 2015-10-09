.class public interface abstract Landroid/content/pm/IPackageDataObserver;
.super Ljava/lang/Object;
.source "IPackageDataObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPackageDataObserver$Stub;
    }
.end annotation


# virtual methods
.method public abstract onRemoveCompleted(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
