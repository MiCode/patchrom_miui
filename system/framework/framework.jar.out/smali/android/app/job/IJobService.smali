.class public interface abstract Landroid/app/job/IJobService;
.super Ljava/lang/Object;
.source "IJobService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/job/IJobService$Stub;
    }
.end annotation


# virtual methods
.method public abstract startJob(Landroid/app/job/JobParameters;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopJob(Landroid/app/job/JobParameters;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
