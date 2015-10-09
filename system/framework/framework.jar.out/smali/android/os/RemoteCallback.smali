.class public abstract Landroid/os/RemoteCallback;
.super Ljava/lang/Object;
.source "RemoteCallback.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/RemoteCallback$RemoteCallbackProxy;,
        Landroid/os/RemoteCallback$LocalCallback;,
        Landroid/os/RemoteCallback$DeliverResult;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/RemoteCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mHandler:Landroid/os/Handler;

.field final mTarget:Landroid/os/IRemoteCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    new-instance v0, Landroid/os/RemoteCallback$1;

    invoke-direct {v0}, Landroid/os/RemoteCallback$1;-><init>()V

    sput-object v0, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Landroid/os/RemoteCallback;->mHandler:Landroid/os/Handler;

    .line 57
    new-instance v0, Landroid/os/RemoteCallback$LocalCallback;

    invoke-direct {v0, p0}, Landroid/os/RemoteCallback$LocalCallback;-><init>(Landroid/os/RemoteCallback;)V

    iput-object v0, p0, Landroid/os/RemoteCallback;->mTarget:Landroid/os/IRemoteCallback;

    .line 58
    return-void
.end method

.method constructor <init>(Landroid/os/IRemoteCallback;)V
    .locals 1
    .param p1, "target"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/RemoteCallback;->mHandler:Landroid/os/Handler;

    .line 62
    iput-object p1, p0, Landroid/os/RemoteCallback;->mTarget:Landroid/os/IRemoteCallback;

    .line 63
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "otherObj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 72
    if-nez p1, :cond_0

    .line 80
    .end local p1    # "otherObj":Ljava/lang/Object;
    :goto_0
    return v0

    .line 76
    .restart local p1    # "otherObj":Ljava/lang/Object;
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/RemoteCallback;->mTarget:Landroid/os/IRemoteCallback;

    invoke-interface {v1}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    check-cast p1, Landroid/os/RemoteCallback;

    .end local p1    # "otherObj":Ljava/lang/Object;
    iget-object v2, p1, Landroid/os/RemoteCallback;->mTarget:Landroid/os/IRemoteCallback;

    invoke-interface {v2}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Landroid/os/RemoteCallback;->mTarget:Landroid/os/IRemoteCallback;

    invoke-interface {v0}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method protected abstract onResult(Landroid/os/Bundle;)V
.end method

.method public sendResult(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Landroid/os/RemoteCallback;->mTarget:Landroid/os/IRemoteCallback;

    invoke-interface {v0, p1}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 67
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 92
    iget-object v0, p0, Landroid/os/RemoteCallback;->mTarget:Landroid/os/IRemoteCallback;

    invoke-interface {v0}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 93
    return-void
.end method
