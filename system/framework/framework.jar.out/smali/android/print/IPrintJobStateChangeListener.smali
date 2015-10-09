.class public interface abstract Landroid/print/IPrintJobStateChangeListener;
.super Ljava/lang/Object;
.source "IPrintJobStateChangeListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/IPrintJobStateChangeListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onPrintJobStateChanged(Landroid/print/PrintJobId;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
