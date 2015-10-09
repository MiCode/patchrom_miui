.class public interface abstract Landroid/view/IInputFilter;
.super Ljava/lang/Object;
.source "IInputFilter.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IInputFilter$Stub;
    }
.end annotation


# virtual methods
.method public abstract filterInputEvent(Landroid/view/InputEvent;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract install(Landroid/view/IInputFilterHost;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract uninstall()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
