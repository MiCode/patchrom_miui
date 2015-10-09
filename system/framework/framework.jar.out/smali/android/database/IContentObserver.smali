.class public interface abstract Landroid/database/IContentObserver;
.super Ljava/lang/Object;
.source "IContentObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/IContentObserver$Stub;
    }
.end annotation


# virtual methods
.method public abstract onChange(ZLandroid/net/Uri;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
