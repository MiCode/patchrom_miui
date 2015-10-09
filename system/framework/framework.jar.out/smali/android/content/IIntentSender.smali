.class public interface abstract Landroid/content/IIntentSender;
.super Ljava/lang/Object;
.source "IIntentSender.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/IIntentSender$Stub;
    }
.end annotation


# virtual methods
.method public abstract send(ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
