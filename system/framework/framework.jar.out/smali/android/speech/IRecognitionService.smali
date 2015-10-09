.class public interface abstract Landroid/speech/IRecognitionService;
.super Ljava/lang/Object;
.source "IRecognitionService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/IRecognitionService$Stub;
    }
.end annotation


# virtual methods
.method public abstract cancel(Landroid/speech/IRecognitionListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startListening(Landroid/content/Intent;Landroid/speech/IRecognitionListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopListening(Landroid/speech/IRecognitionListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
