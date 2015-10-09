.class public interface abstract Landroid/content/IAnonymousSyncAdapter;
.super Ljava/lang/Object;
.source "IAnonymousSyncAdapter.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/IAnonymousSyncAdapter$Stub;
    }
.end annotation


# virtual methods
.method public abstract cancelSync(Landroid/content/ISyncContext;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startSync(Landroid/content/ISyncContext;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
