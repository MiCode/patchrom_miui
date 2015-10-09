.class public interface abstract Landroid/content/pm/IPackageMoveObserver;
.super Ljava/lang/Object;
.source "IPackageMoveObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPackageMoveObserver$Stub;
    }
.end annotation


# virtual methods
.method public abstract packageMoved(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
