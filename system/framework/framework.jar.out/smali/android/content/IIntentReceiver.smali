.class public interface abstract Landroid/content/IIntentReceiver;
.super Ljava/lang/Object;
.source "IIntentReceiver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/IIntentReceiver$Stub;
    }
.end annotation


# virtual methods
.method public abstract performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
