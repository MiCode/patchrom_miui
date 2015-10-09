.class public interface abstract Landroid/content/ISyncContext;
.super Ljava/lang/Object;
.source "ISyncContext.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ISyncContext$Stub;
    }
.end annotation


# virtual methods
.method public abstract onFinished(Landroid/content/SyncResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendHeartbeat()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
