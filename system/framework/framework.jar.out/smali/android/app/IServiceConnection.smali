.class public interface abstract Landroid/app/IServiceConnection;
.super Ljava/lang/Object;
.source "IServiceConnection.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IServiceConnection$Stub;
    }
.end annotation


# virtual methods
.method public abstract connected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
