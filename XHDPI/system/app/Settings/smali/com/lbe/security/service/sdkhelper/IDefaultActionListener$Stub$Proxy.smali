.class Lcom/lbe/security/service/sdkhelper/IDefaultActionListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDefaultActionListener.java"

# interfaces
.implements Lcom/lbe/security/service/sdkhelper/IDefaultActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lbe/security/service/sdkhelper/IDefaultActionListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .parameter "remote"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/lbe/security/service/sdkhelper/IDefaultActionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 65
    return-void
.end method


# virtual methods
.method public OnDefaultActionChanged(II)V
    .locals 5
    .parameter "permId"
    .parameter "action"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 77
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 79
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.lbe.security.service.sdkhelper.IDefaultActionListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget-object v2, p0, Lcom/lbe/security/service/sdkhelper/IDefaultActionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 83
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 87
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 89
    return-void

    .line 85
    :catchall_0
    move-exception v2

    .line 86
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 87
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 88
    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lbe/security/service/sdkhelper/IDefaultActionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method
