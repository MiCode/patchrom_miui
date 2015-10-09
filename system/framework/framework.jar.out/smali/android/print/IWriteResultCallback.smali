.class public interface abstract Landroid/print/IWriteResultCallback;
.super Ljava/lang/Object;
.source "IWriteResultCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/IWriteResultCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onWriteFailed(Ljava/lang/CharSequence;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onWriteFinished([Landroid/print/PageRange;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
