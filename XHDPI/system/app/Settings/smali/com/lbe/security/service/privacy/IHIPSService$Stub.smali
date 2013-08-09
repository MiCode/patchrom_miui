.class public abstract Lcom/lbe/security/service/privacy/IHIPSService$Stub;
.super Landroid/os/Binder;
.source "IHIPSService.java"

# interfaces
.implements Lcom/lbe/security/service/privacy/IHIPSService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lbe/security/service/privacy/IHIPSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lbe/security/service/privacy/IHIPSService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.lbe.security.service.privacy.IHIPSService"

    invoke-virtual {p0, p0, v0}, Lcom/lbe/security/service/privacy/IHIPSService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lbe/security/service/privacy/IHIPSService;
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
    const-string v1, "com.lbe.security.service.privacy.IHIPSService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/lbe/security/service/privacy/IHIPSService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/lbe/security/service/privacy/IHIPSService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/lbe/security/service/privacy/IHIPSService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lbe/security/service/privacy/IHIPSService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
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
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 405
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_0
    return v8

    .line 42
    :sswitch_0
    const-string v9, "com.lbe.security.service.privacy.IHIPSService"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v9, "com.lbe.security.service.privacy.IHIPSService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/lbe/security/service/privacy/IHIPSService$Stub;->getServiceStatus()I

    move-result v5

    .line 49
    .local v5, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 55
    .end local v5           #_result:I
    :sswitch_2
    const-string v10, "com.lbe.security.service.privacy.IHIPSService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 61
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_0

    move v3, v8

    .line 62
    .local v3, _arg2:Z
    :goto_1
    invoke-virtual {p0, v0, v2, v3}, Lcom/lbe/security/service/privacy/IHIPSService$Stub;->createProcess(Ljava/lang/String;IZ)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v3           #_arg2:Z
    :cond_0
    move v3, v9

    .line 61
    goto :goto_1

    .line 68
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    :sswitch_3
    const-string v9, "com.lbe.security.service.privacy.IHIPSService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/lbe/security/service/privacy/IHIPSService$Stub;->reboot()V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 75
    :sswitch_4
    const-string v9, "com.lbe.security.service.privacy.IHIPSService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1

    .line 78
    sget-object v9, Lcom/lbe/security/bean/EventLog;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/bean/EventLog;

    .line 83
    .local v0, _arg0:Lcom/lbe/security/bean/EventLog;
    :goto_2
    invoke-virtual {p0, v0}, Lcom/lbe/security/service/privacy/IHIPSService$Stub;->addLog(Lcom/lbe/security/bean/EventLog;)V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 81
    .end local v0           #_arg0:Lcom/lbe/security/bean/EventLog;
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/lbe/security/bean/EventLog;
    goto :goto_2

    .line 89
    .end local v0           #_arg0:Lcom/lbe/security/bean/EventLog;
    :sswitch_5
    const-string v9, "com.lbe.security.service.privacy.IHIPSService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_2

    .line 92
    sget-object v9, Lcom/lbe/security/service/privacy/EventFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/service/privacy/EventFilter;

    .line 97
    .local v0, _arg0:Lcom/lbe/security/service/privacy/EventFilter;
    :goto_3
    invoke-virtual {p0, v0}, Lcom/lbe/security/service/privacy/IHIPSService$Stub;->deleteLog(Lcom/lbe/security/service/privacy/EventFilter;)V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 95
    .end local v0           #_arg0:Lcom/lbe/security/service/privacy/EventFilter;
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/lbe/security/service/privacy/EventFilter;
    goto :goto_3

    .line 103
    .end local v0           #_arg0:Lcom/lbe/security/service/privacy/EventFilter;
    :sswitch_6
    const-string v10, "com.lbe.security.service.privacy.IHIPSService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_3

    .line 106
    sget-object v10, Lcom/lbe/security/service/privacy/EventFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/service/privacy/EventFilter;

    .line 112
    .restart local v0       #_arg0:Lcom/lbe/security/service/privacy/EventFilter;
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_4

    move v3, v8

    .line 115
    .restart local v3       #_arg2:Z
    :goto_5
    invoke-virtual {p0, v0, v2, v3}, Lcom/lbe/security/service/privacy/IHIPSService$Stub;->queryLog(Lcom/lbe/security/service/privacy/EventFilter;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v6

    .line 116
    .local v6, _result:Ljava/util/List;,"Ljava/util/List<Lcom/lbe/security/bean/EventLog;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 109
    .end local v0           #_arg0:Lcom/lbe/security/service/privacy/EventFilter;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Z
    .end local v6           #_result:Ljava/util/List;,"Ljava/util/List<Lcom/lbe/security/bean/EventLog;>;"
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/lbe/security/service/privacy/EventFilter;
    goto :goto_4

    .restart local v2       #_arg1:Ljava/lang/String;
    :cond_4
    move v3, v9

    .line 114
    goto :goto_5

    .line 122
    .end local v0           #_arg0:Lcom/lbe/security/service/privacy/EventFilter;
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_7
    const-string v9, "com.lbe.security.service.privacy.IHIPSService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_5

    .line 125
    sget-object v9, Lcom/lbe/security/service/privacy/EventFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/service/privacy/EventFilter;

    .line 130
    .restart local v0       #_arg0:Lcom/lbe/security/service/privacy/EventFilter;
    :goto_6
    invoke-virtual {p0, v0}, Lcom/lbe/security/service/privacy/IHIPSService$Stub;->getEventLogCount(Lcom/lbe/security/service/privacy/EventFilter;)I

    move-result v5

    .line 131
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 128
    .end local v0           #_arg0:Lcom/lbe/security/service/privacy/EventFilter;
    .end local v5           #_result:I
    :cond_5
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/lbe/security/service/privacy/EventFilter;
    goto :goto_6

    .line 137
    .end local v0           #_arg0:Lcom/lbe/security/service/privacy/EventFilter;
    :sswitch_8
    const-string v9, "com.lbe.security.service.privacy.IHIPSService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/lbe/security/service/privacy/IHIPSService$Stub;->clearRecentEvents()V

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 144
    :sswitch_9
    const-string v9, "com.lbe.security.service.privacy.IHIPSService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_6

    .line 147
    sget-object v9, Lcom/lbe/security/service/privacy/PackageFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/service/privacy/PackageFilter;

    .line 152
    .local v0, _arg0:Lcom/lbe/security/service/privacy/PackageFilter;
    :goto_7
    invoke-virtual {p0, v0}, Lcom/lbe/security/service/privacy/IHIPSService$Stub;->count(Lcom/lbe/security/service/privacy/PackageFilter;)I

    move-result v5

    .line 153
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 150
    .end local v0           #_arg0:Lcom/lbe/security/service/privacy/PackageFilter;
    .end local v5           #_result:I
    :cond_6
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/lbe/security/service/privacy/PackageFilter;
    goto :goto_7

    .line 159
    .end local v0           #_arg0:Lcom/lbe/security/service/privacy/PackageFilter;
    :sswitch_a
    const-string v9, "com.lbe.security.service.privacy.IHIPSService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_7

    .line 162
    sget-object v9, Lcom/lbe/security/service/privacy/PackageFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/service/privacy/PackageFilter;

    .line 167
    .restart local v0       #_arg0:Lcom/lbe/security/service/privacy/PackageFilter;
    :goto_8
    invoke-virtual {p0, v0}, Lcom/lbe/security/service/privacy/IHIPSService$Stub;->find(Lcom/lbe/security/service/privacy/PackageFilter;)Ljava/util/List;

    move-result-object v7

    .line 168
    .local v7, _result:Ljava/util/List;,"Ljava/util/List<Lcom/lbe/security/bean/Package;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 165
    .end local v0           #_arg0:Lcom/lbe/security/service/privacy/PackageFilter;
    .end local v7           #_result:Ljava/util/List;,"Ljava/util/List<Lcom/lbe/security/bean/Package;>;"
    :cond_7
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/lbe/security/service/privacy/PackageFilter;
    goto :goto_8

    .line 174
    .end local v0           #_arg0:Lcom/lbe/security/service/privacy/PackageFilter;
    :sswitch_b
    const-string v10, "com.lbe.security.service.privacy.IHIPSService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 177
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/lbe/security/service/privacy/IHIPSService$Stub;->findPackageByUid(I)Lcom/lbe/security/bean/Package;

    move-result-object v5

    .line 178
    .local v5, _result:Lcom/lbe/security/bean/Package;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    if-eqz v5, :cond_8

    .line 180
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    invoke-virtual {v5, p3, v8}, Lcom/lbe/security/bean/Package;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 184
    :cond_8
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 190
    .end local v0           #_arg0:I
    .end local v5           #_result:Lcom/lbe/security/bean/Package;
    :sswitch_c
    const-string v9, "com.lbe.security.service.privacy.IHIPSService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 194
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 195
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lcom/lbe/security/service/privacy/IHIPSService$Stub;->delete(ILjava/lang/String;)V

    .line 196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 201
    .end local v0           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_d
    const-string v10, "com.lbe.security.service.privacy.IHIPSService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_9

    .line 204
    sget-object v10, Lcom/lbe/security/bean/Package;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/bean/Package;

    .line 210
    .local v0, _arg0:Lcom/lbe/security/bean/Package;
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_a

    move v2, v8

    .line 211
    .local v2, _arg1:Z
    :goto_a
    invoke-virtual {p0, v0, v2}, Lcom/lbe/security/service/privacy/IHIPSService$Stub;->trust(Lcom/lbe/security/bean/Package;Z)V

    .line 212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 207
    .end local v0           #_arg0:Lcom/lbe/security/bean/Package;
    .end local v2           #_arg1:Z
    :cond_9
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/lbe/security/bean/Package;
    goto :goto_9

    :cond_a
    move v2, v9

    .line 210
    goto :goto_a

    .line 217
    .end local v0           #_arg0:Lcom/lbe/security/bean/Package;
    :sswitch_e
    const-string v10, "com.lbe.security.service.privacy.IHIPSService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lbe/security/service/privacy/IHIPSService$Stub;->insert(Ljava/lang/String;)Lcom/lbe/security/bean/Package;

    move-result-object v5

    .line 221
    .restart local v5       #_result:Lcom/lbe/security/bean/Package;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    if-eqz v5, :cond_b

    .line 223
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    invoke-virtual {v5, p3, v8}, Lcom/lbe/security/bean/Package;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 227
    :cond_b
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 233
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v5           #_result:Lcom/lbe/security/bean/Package;
    :sswitch_f
    const-string v9, "com.lbe.security.service.privacy.IHIPSService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_c

    .line 236
    sget-object v9, Lcom/lbe/security/bean/Package;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/bean/Package;

    .line 242
    .local v0, _arg0:Lcom/lbe/security/bean/Package;
    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 244
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 245
    .local v3, _arg2:I
    invoke-virtual {p0, v0, v2, v3}, Lcom/lbe/security/service/privacy/IHIPSService$Stub;->setPackagePermission(Lcom/lbe/security/bean/Package;II)V

    .line 246
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 239
    .end local v0           #_arg0:Lcom/lbe/security/bean/Package;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    :cond_c
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/lbe/security/bean/Package;
    goto :goto_b

    .line 251
    .end local v0           #_arg0:Lcom/lbe/security/bean/Package;
    :sswitch_10
    const-string v10, "com.lbe.security.service.privacy.IHIPSService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_e

    .line 254
    sget-object v10, Lcom/lbe/security/bean/Package;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/bean/Package;

    .line 260
    .restart local v0       #_arg0:Lcom/lbe/security/bean/Package;
    :goto_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_f

    .line 261
    sget-object v10, Lcom/lbe/security/bean/Package;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lbe/security/bean/Package;

    .line 266
    .local v2, _arg1:Lcom/lbe/security/bean/Package;
    :goto_d
    invoke-virtual {p0, v0, v2}, Lcom/lbe/security/service/privacy/IHIPSService$Stub;->hasNewPermission(Lcom/lbe/security/bean/Package;Lcom/lbe/security/bean/Package;)Z

    move-result v5

    .line 267
    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    if-eqz v5, :cond_d

    move v9, v8

    :cond_d
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 257
    .end local v0           #_arg0:Lcom/lbe/security/bean/Package;
    .end local v2           #_arg1:Lcom/lbe/security/bean/Package;
    .end local v5           #_result:Z
    :cond_e
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/lbe/security/bean/Package;
    goto :goto_c

    .line 264
    :cond_f
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/lbe/security/bean/Package;
    goto :goto_d

    .line 273
    .end local v0           #_arg0:Lcom/lbe/security/bean/Package;
    .end local v2           #_arg1:Lcom/lbe/security/bean/Package;
    :sswitch_11
    const-string v9, "com.lbe.security.service.privacy.IHIPSService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_10

    .line 276
    sget-object v9, Lcom/lbe/security/bean/Package;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lbe/security/bean/Package;

    .line 282
    .restart local v0       #_arg0:Lcom/lbe/security/bean/Package;
    :goto_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 283
    .local v2, _arg1:I
    invoke-virtual {p0, v0, v2}, Lcom/lbe/security/service/privacy/IHIPSService$Stub;->addPermission(Lcom/lbe/security/bean/Package;I)V

    .line 284
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 279
    .end local v0           #_arg0:Lcom/lbe/security/bean/Package;
    .end local v2           #_arg1:I
    :cond_10
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/lbe/security/bean/Package;
    goto :goto_e

    .line 289
    .end local v0           #_arg0:Lcom/lbe/security/bean/Package;
    :sswitch_12
    const-string v9, "com.lbe.security.service.privacy.IHIPSService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p0}, Lcom/lbe/security/service/privacy/IHIPSService$Stub;->getPreInstalledPackages()[Lcom/lbe/security/bean/Package;

    move-result-object v5

    .line 291
    .local v5, _result:[Lcom/lbe/security/bean/Package;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    invoke-virtual {p3, v5, v8}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 297
    .end local v5           #_result:[Lcom/lbe/security/bean/Package;
    :sswitch_13
    const-string v9, "com.lbe.security.service.privacy.IHIPSService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0}, Lcom/lbe/security/service/privacy/IHIPSService$Stub;->getPreInstalledSystemPackages()[Lcom/lbe/security/bean/Package;

    move-result-object v5

    .line 299
    .restart local v5       #_result:[Lcom/lbe/security/bean/Package;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    invoke-virtual {p3, v5, v8}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 305
    .end local v5           #_result:[Lcom/lbe/security/bean/Package;
    :sswitch_14
    const-string v9, "com.lbe.security.service.privacy.IHIPSService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 309
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 311
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 313
    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 314
    .local v4, _arg3:I
    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/lbe/security/service/privacy/IHIPSService$Stub;->setApplicationEnabledSettings(ILjava/lang/String;II)V

    .line 315
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 320
    .end local v0           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    :sswitch_15
    const-string v9, "com.lbe.security.service.privacy.IHIPSService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 324
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_11

    .line 325
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 331
    .local v2, _arg1:Landroid/content/ComponentName;
    :goto_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 333
    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 334
    .restart local v4       #_arg3:I
    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/lbe/security/service/privacy/IHIPSService$Stub;->setComponentEnabledSettings(ILandroid/content/ComponentName;II)V

    .line 335
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 328
    .end local v2           #_arg1:Landroid/content/ComponentName;
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    :cond_11
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/content/ComponentName;
    goto :goto_f

    .line 340
    .end local v0           #_arg0:I
    .end local v2           #_arg1:Landroid/content/ComponentName;
    :sswitch_16
    const-string v10, "com.lbe.security.service.privacy.IHIPSService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 345
    .local v2, _arg1:Landroid/os/IBinder;
    invoke-virtual {p0, v0, v2}, Lcom/lbe/security/service/privacy/IHIPSService$Stub;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/os/IBinder;)Z

    move-result v5

    .line 346
    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    if-eqz v5, :cond_12

    move v9, v8

    :cond_12
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 352
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Landroid/os/IBinder;
    .end local v5           #_result:Z
    :sswitch_17
    const-string v9, "com.lbe.security.service.privacy.IHIPSService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 355
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lbe/security/service/privacy/IHIPSService$Stub;->forceStopPackage(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 361
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_18
    const-string v10, "com.lbe.security.service.privacy.IHIPSService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 365
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 367
    .restart local v2       #_arg1:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 368
    .restart local v3       #_arg2:I
    invoke-virtual {p0, v0, v2, v3}, Lcom/lbe/security/service/privacy/IHIPSService$Stub;->movePackage(Ljava/lang/String;Landroid/os/IBinder;I)Z

    move-result v5

    .line 369
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    if-eqz v5, :cond_13

    move v9, v8

    :cond_13
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 375
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Landroid/os/IBinder;
    .end local v3           #_arg2:I
    .end local v5           #_result:Z
    :sswitch_19
    const-string v10, "com.lbe.security.service.privacy.IHIPSService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 379
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 381
    .restart local v2       #_arg1:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 382
    .restart local v3       #_arg2:I
    invoke-virtual {p0, v0, v2, v3}, Lcom/lbe/security/service/privacy/IHIPSService$Stub;->deletePackage(Ljava/lang/String;Landroid/os/IBinder;I)Z

    move-result v5

    .line 383
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    if-eqz v5, :cond_14

    move v9, v8

    :cond_14
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 389
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Landroid/os/IBinder;
    .end local v3           #_arg2:I
    .end local v5           #_result:Z
    :sswitch_1a
    const-string v9, "com.lbe.security.service.privacy.IHIPSService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 392
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/lbe/security/service/privacy/IHIPSService$Stub;->setFuzzleRadius(J)V

    .line 393
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 398
    .end local v0           #_arg0:J
    :sswitch_1b
    const-string v9, "com.lbe.security.service.privacy.IHIPSService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p0}, Lcom/lbe/security/service/privacy/IHIPSService$Stub;->getCallState()I

    move-result v5

    .line 400
    .local v5, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 38
    nop

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
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
