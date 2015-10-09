.class public interface abstract Landroid/database/IBulkCursor;
.super Ljava/lang/Object;
.source "IBulkCursor.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final CLOSE_TRANSACTION:I = 0x7

.field public static final DEACTIVATE_TRANSACTION:I = 0x2

.field public static final GET_CURSOR_WINDOW_TRANSACTION:I = 0x1

.field public static final GET_EXTRAS_TRANSACTION:I = 0x5

.field public static final ON_MOVE_TRANSACTION:I = 0x4

.field public static final REQUERY_TRANSACTION:I = 0x3

.field public static final RESPOND_TRANSACTION:I = 0x6

.field public static final descriptor:Ljava/lang/String; = "android.content.IBulkCursor"


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract deactivate()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getExtras()Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getWindow(I)Landroid/database/CursorWindow;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onMove(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requery(Landroid/database/IContentObserver;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
