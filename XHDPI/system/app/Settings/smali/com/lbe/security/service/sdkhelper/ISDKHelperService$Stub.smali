.class public abstract Lcom/lbe/security/service/sdkhelper/ISDKHelperService$Stub;
.super Landroid/os/Binder;
.source "ISDKHelperService.java"

# interfaces
.implements Lcom/lbe/security/service/sdkhelper/ISDKHelperService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lbe/security/service/sdkhelper/ISDKHelperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lbe/security/service/sdkhelper/ISDKHelperService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.lbe.security.service.sdkhelper.ISDKHelperService"

    invoke-virtual {p0, p0, v0}, Lcom/lbe/security/service/sdkhelper/ISDKHelperService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lbe/security/service/sdkhelper/ISDKHelperService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.lbe.security.service.sdkhelper.ISDKHelperService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/lbe/security/service/sdkhelper/ISDKHelperService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/lbe/security/service/sdkhelper/ISDKHelperService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/lbe/security/service/sdkhelper/ISDKHelperService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lbe/security/service/sdkhelper/ISDKHelperService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 133
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 42
    :sswitch_0
    const-string v3, "com.lbe.security.service.sdkhelper.ISDKHelperService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v3, "com.lbe.security.service.sdkhelper.ISDKHelperService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/lbe/security/service/sdkhelper/ISDKHelperService$Stub;->getSDKVersion()I

    move-result v2

    .line 49
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 55
    .end local v2           #_result:I
    :sswitch_2
    const-string v3, "com.lbe.security.service.sdkhelper.ISDKHelperService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/lbe/security/service/sdkhelper/ISDKHelperService$Stub;->getPermissionConfig()Ljava/util/List;

    move-result-object v2

    .line 57
    .local v2, _result:Ljava/util/List;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto :goto_0

    .line 63
    .end local v2           #_result:Ljava/util/List;
    :sswitch_3
    const-string v3, "com.lbe.security.service.sdkhelper.ISDKHelperService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/lbe/security/service/sdkhelper/ISDKHelperService$Stub;->getActionConfig()Ljava/util/List;

    move-result-object v2

    .line 65
    .restart local v2       #_result:Ljava/util/List;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto :goto_0

    .line 71
    .end local v2           #_result:Ljava/util/List;
    :sswitch_4
    const-string v5, "com.lbe.security.service.sdkhelper.ISDKHelperService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/lbe/security/service/sdkhelper/ISDKHelperService$Stub;->getHIPSEnabled()Z

    move-result v2

    .line 73
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    if-eqz v2, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 79
    .end local v2           #_result:Z
    :sswitch_5
    const-string v5, "com.lbe.security.service.sdkhelper.ISDKHelperService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    move v0, v4

    .line 82
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/lbe/security/service/sdkhelper/ISDKHelperService$Stub;->setHIPSEnabled(Z)V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0           #_arg0:Z
    :cond_1
    move v0, v3

    .line 81
    goto :goto_1

    .line 88
    :sswitch_6
    const-string v5, "com.lbe.security.service.sdkhelper.ISDKHelperService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/lbe/security/service/sdkhelper/ISDKHelperService$Stub;->getROOTEnabled()Z

    move-result v2

    .line 90
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    if-eqz v2, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 96
    .end local v2           #_result:Z
    :sswitch_7
    const-string v5, "com.lbe.security.service.sdkhelper.ISDKHelperService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    move v0, v4

    .line 99
    .restart local v0       #_arg0:Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/lbe/security/service/sdkhelper/ISDKHelperService$Stub;->setROOTEnabled(Z)V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_3
    move v0, v3

    .line 98
    goto :goto_2

    .line 105
    :sswitch_8
    const-string v3, "com.lbe.security.service.sdkhelper.ISDKHelperService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/lbe/security/service/sdkhelper/IDefaultActionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lbe/security/service/sdkhelper/IDefaultActionListener;

    move-result-object v0

    .line 108
    .local v0, _arg0:Lcom/lbe/security/service/sdkhelper/IDefaultActionListener;
    invoke-virtual {p0, v0}, Lcom/lbe/security/service/sdkhelper/ISDKHelperService$Stub;->registerDefaultActionListener(Lcom/lbe/security/service/sdkhelper/IDefaultActionListener;)V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 114
    .end local v0           #_arg0:Lcom/lbe/security/service/sdkhelper/IDefaultActionListener;
    :sswitch_9
    const-string v3, "com.lbe.security.service.sdkhelper.ISDKHelperService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/lbe/security/service/sdkhelper/IDefaultActionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lbe/security/service/sdkhelper/IDefaultActionListener;

    move-result-object v0

    .line 117
    .restart local v0       #_arg0:Lcom/lbe/security/service/sdkhelper/IDefaultActionListener;
    invoke-virtual {p0, v0}, Lcom/lbe/security/service/sdkhelper/ISDKHelperService$Stub;->unregisterDefaultActionListener(Lcom/lbe/security/service/sdkhelper/IDefaultActionListener;)V

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 123
    .end local v0           #_arg0:Lcom/lbe/security/service/sdkhelper/IDefaultActionListener;
    :sswitch_a
    const-string v3, "com.lbe.security.service.sdkhelper.ISDKHelperService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 127
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 128
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/lbe/security/service/sdkhelper/ISDKHelperService$Stub;->setDefaultAction(II)V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
