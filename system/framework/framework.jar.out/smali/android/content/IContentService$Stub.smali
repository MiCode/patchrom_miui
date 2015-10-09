.class public abstract Landroid/content/IContentService$Stub;
.super Landroid/os/Binder;
.source "IContentService.java"

# interfaces
.implements Landroid/content/IContentService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/IContentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/IContentService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.IContentService"

.field static final TRANSACTION_addPeriodicSync:I = 0xa

.field static final TRANSACTION_addStatusChangeListener:I = 0x15

.field static final TRANSACTION_cancelSync:I = 0x6

.field static final TRANSACTION_getCurrentSyncs:I = 0x11

.field static final TRANSACTION_getIsSyncable:I = 0xc

.field static final TRANSACTION_getMasterSyncAutomatically:I = 0xf

.field static final TRANSACTION_getPeriodicSyncs:I = 0x9

.field static final TRANSACTION_getSyncAdapterTypes:I = 0x12

.field static final TRANSACTION_getSyncAutomatically:I = 0x7

.field static final TRANSACTION_getSyncStatus:I = 0x13

.field static final TRANSACTION_isSyncActive:I = 0x10

.field static final TRANSACTION_isSyncPending:I = 0x14

.field static final TRANSACTION_notifyChange:I = 0x3

.field static final TRANSACTION_registerContentObserver:I = 0x2

.field static final TRANSACTION_removePeriodicSync:I = 0xb

.field static final TRANSACTION_removeStatusChangeListener:I = 0x16

.field static final TRANSACTION_requestSync:I = 0x4

.field static final TRANSACTION_setIsSyncable:I = 0xd

.field static final TRANSACTION_setMasterSyncAutomatically:I = 0xe

.field static final TRANSACTION_setSyncAutomatically:I = 0x8

.field static final TRANSACTION_sync:I = 0x5

.field static final TRANSACTION_unregisterContentObserver:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.content.IContentService"

    invoke-virtual {p0, p0, v0}, Landroid/content/IContentService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/IContentService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "android.content.IContentService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/content/IContentService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/content/IContentService;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Landroid/content/IContentService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/content/IContentService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 398
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 45
    :sswitch_0
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v1, 0x1

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/database/IContentObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/database/IContentObserver;

    move-result-object v2

    .line 53
    .local v2, "_arg0":Landroid/database/IContentObserver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/IContentService$Stub;->unregisterContentObserver(Landroid/database/IContentObserver;)V

    .line 54
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    const/4 v1, 0x1

    goto :goto_0

    .line 59
    .end local v2    # "_arg0":Landroid/database/IContentObserver;
    :sswitch_2
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 68
    .local v2, "_arg0":Landroid/net/Uri;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    .line 70
    .local v3, "_arg1":Z
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/database/IContentObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/database/IContentObserver;

    move-result-object v4

    .line 72
    .local v4, "_arg2":Landroid/database/IContentObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 73
    .local v5, "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/content/IContentService$Stub;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;I)V

    .line 74
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    const/4 v1, 0x1

    goto :goto_0

    .line 65
    .end local v2    # "_arg0":Landroid/net/Uri;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Landroid/database/IContentObserver;
    .end local v5    # "_arg3":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/net/Uri;
    goto :goto_1

    .line 68
    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    .line 79
    .end local v2    # "_arg0":Landroid/net/Uri;
    :sswitch_3
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 82
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 88
    .restart local v2    # "_arg0":Landroid/net/Uri;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/database/IContentObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/database/IContentObserver;

    move-result-object v3

    .line 90
    .local v3, "_arg1":Landroid/database/IContentObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v4, 0x1

    .line 92
    .local v4, "_arg2":Z
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v5, 0x1

    .line 94
    .local v5, "_arg3":Z
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg4":I
    move-object/from16 v1, p0

    .line 95
    invoke-virtual/range {v1 .. v6}, Landroid/content/IContentService$Stub;->notifyChange(Landroid/net/Uri;Landroid/database/IContentObserver;ZZI)V

    .line 96
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 85
    .end local v2    # "_arg0":Landroid/net/Uri;
    .end local v3    # "_arg1":Landroid/database/IContentObserver;
    .end local v4    # "_arg2":Z
    .end local v5    # "_arg3":Z
    .end local v6    # "_arg4":I
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/net/Uri;
    goto :goto_3

    .line 90
    .restart local v3    # "_arg1":Landroid/database/IContentObserver;
    :cond_3
    const/4 v4, 0x0

    goto :goto_4

    .line 92
    .restart local v4    # "_arg2":Z
    :cond_4
    const/4 v5, 0x0

    goto :goto_5

    .line 101
    .end local v2    # "_arg0":Landroid/net/Uri;
    .end local v3    # "_arg1":Landroid/database/IContentObserver;
    .end local v4    # "_arg2":Z
    :sswitch_4
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    .line 104
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 110
    .local v2, "_arg0":Landroid/accounts/Account;
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    .line 113
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 118
    .local v4, "_arg2":Landroid/os/Bundle;
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/IContentService$Stub;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 119
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 107
    .end local v2    # "_arg0":Landroid/accounts/Account;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/Bundle;
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/accounts/Account;
    goto :goto_6

    .line 116
    .restart local v3    # "_arg1":Ljava/lang/String;
    :cond_6
    const/4 v4, 0x0

    .restart local v4    # "_arg2":Landroid/os/Bundle;
    goto :goto_7

    .line 124
    .end local v2    # "_arg0":Landroid/accounts/Account;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/Bundle;
    :sswitch_5
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    .line 127
    sget-object v1, Landroid/content/SyncRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SyncRequest;

    .line 132
    .local v2, "_arg0":Landroid/content/SyncRequest;
    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/IContentService$Stub;->sync(Landroid/content/SyncRequest;)V

    .line 133
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 130
    .end local v2    # "_arg0":Landroid/content/SyncRequest;
    :cond_7
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/content/SyncRequest;
    goto :goto_8

    .line 138
    .end local v2    # "_arg0":Landroid/content/SyncRequest;
    :sswitch_6
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    .line 141
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 147
    .local v2, "_arg0":Landroid/accounts/Account;
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 148
    .restart local v3    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/content/IContentService$Stub;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 149
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 144
    .end local v2    # "_arg0":Landroid/accounts/Account;
    .end local v3    # "_arg1":Ljava/lang/String;
    :cond_8
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/accounts/Account;
    goto :goto_9

    .line 154
    .end local v2    # "_arg0":Landroid/accounts/Account;
    :sswitch_7
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    .line 157
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 163
    .restart local v2    # "_arg0":Landroid/accounts/Account;
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 164
    .restart local v3    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/content/IContentService$Stub;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v13

    .line 165
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    if-eqz v13, :cond_a

    const/4 v1, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 160
    .end local v2    # "_arg0":Landroid/accounts/Account;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v13    # "_result":Z
    :cond_9
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/accounts/Account;
    goto :goto_a

    .line 166
    .restart local v3    # "_arg1":Ljava/lang/String;
    .restart local v13    # "_result":Z
    :cond_a
    const/4 v1, 0x0

    goto :goto_b

    .line 171
    .end local v2    # "_arg0":Landroid/accounts/Account;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v13    # "_result":Z
    :sswitch_8
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b

    .line 174
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 180
    .restart local v2    # "_arg0":Landroid/accounts/Account;
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 182
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c

    const/4 v4, 0x1

    .line 183
    .local v4, "_arg2":Z
    :goto_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/IContentService$Stub;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 184
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 177
    .end local v2    # "_arg0":Landroid/accounts/Account;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Z
    :cond_b
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/accounts/Account;
    goto :goto_c

    .line 182
    .restart local v3    # "_arg1":Ljava/lang/String;
    :cond_c
    const/4 v4, 0x0

    goto :goto_d

    .line 189
    .end local v2    # "_arg0":Landroid/accounts/Account;
    .end local v3    # "_arg1":Ljava/lang/String;
    :sswitch_9
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d

    .line 192
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 198
    .restart local v2    # "_arg0":Landroid/accounts/Account;
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 199
    .restart local v3    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/content/IContentService$Stub;->getPeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    .line 200
    .local v14, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/PeriodicSync;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 202
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 195
    .end local v2    # "_arg0":Landroid/accounts/Account;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v14    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/PeriodicSync;>;"
    :cond_d
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/accounts/Account;
    goto :goto_e

    .line 206
    .end local v2    # "_arg0":Landroid/accounts/Account;
    :sswitch_a
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e

    .line 209
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 215
    .restart local v2    # "_arg0":Landroid/accounts/Account;
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 217
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_f

    .line 218
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 224
    .local v4, "_arg2":Landroid/os/Bundle;
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .local v11, "_arg3":J
    move-object/from16 v7, p0

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    .line 225
    invoke-virtual/range {v7 .. v12}, Landroid/content/IContentService$Stub;->addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V

    .line 226
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 212
    .end local v2    # "_arg0":Landroid/accounts/Account;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/Bundle;
    .end local v11    # "_arg3":J
    :cond_e
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/accounts/Account;
    goto :goto_f

    .line 221
    .restart local v3    # "_arg1":Ljava/lang/String;
    :cond_f
    const/4 v4, 0x0

    .restart local v4    # "_arg2":Landroid/os/Bundle;
    goto :goto_10

    .line 231
    .end local v2    # "_arg0":Landroid/accounts/Account;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/Bundle;
    :sswitch_b
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_10

    .line 234
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 240
    .restart local v2    # "_arg0":Landroid/accounts/Account;
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 242
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_11

    .line 243
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 248
    .restart local v4    # "_arg2":Landroid/os/Bundle;
    :goto_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/IContentService$Stub;->removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 249
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 237
    .end local v2    # "_arg0":Landroid/accounts/Account;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/Bundle;
    :cond_10
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/accounts/Account;
    goto :goto_11

    .line 246
    .restart local v3    # "_arg1":Ljava/lang/String;
    :cond_11
    const/4 v4, 0x0

    .restart local v4    # "_arg2":Landroid/os/Bundle;
    goto :goto_12

    .line 254
    .end local v2    # "_arg0":Landroid/accounts/Account;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/Bundle;
    :sswitch_c
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_12

    .line 257
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 263
    .restart local v2    # "_arg0":Landroid/accounts/Account;
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 264
    .restart local v3    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/content/IContentService$Stub;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v13

    .line 265
    .local v13, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 260
    .end local v2    # "_arg0":Landroid/accounts/Account;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v13    # "_result":I
    :cond_12
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/accounts/Account;
    goto :goto_13

    .line 271
    .end local v2    # "_arg0":Landroid/accounts/Account;
    :sswitch_d
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_13

    .line 274
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 280
    .restart local v2    # "_arg0":Landroid/accounts/Account;
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 282
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 283
    .local v4, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/IContentService$Stub;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 284
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 277
    .end local v2    # "_arg0":Landroid/accounts/Account;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    :cond_13
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/accounts/Account;
    goto :goto_14

    .line 289
    .end local v2    # "_arg0":Landroid/accounts/Account;
    :sswitch_e
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_14

    const/4 v2, 0x1

    .line 292
    .local v2, "_arg0":Z
    :goto_15
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/IContentService$Stub;->setMasterSyncAutomatically(Z)V

    .line 293
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 291
    .end local v2    # "_arg0":Z
    :cond_14
    const/4 v2, 0x0

    goto :goto_15

    .line 298
    :sswitch_f
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual/range {p0 .. p0}, Landroid/content/IContentService$Stub;->getMasterSyncAutomatically()Z

    move-result v13

    .line 300
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    if-eqz v13, :cond_15

    const/4 v1, 0x1

    :goto_16
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 301
    :cond_15
    const/4 v1, 0x0

    goto :goto_16

    .line 306
    .end local v13    # "_result":Z
    :sswitch_10
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_16

    .line 309
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 315
    .local v2, "_arg0":Landroid/accounts/Account;
    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 316
    .restart local v3    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/content/IContentService$Stub;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v13

    .line 317
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    if-eqz v13, :cond_17

    const/4 v1, 0x1

    :goto_18
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 312
    .end local v2    # "_arg0":Landroid/accounts/Account;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v13    # "_result":Z
    :cond_16
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/accounts/Account;
    goto :goto_17

    .line 318
    .restart local v3    # "_arg1":Ljava/lang/String;
    .restart local v13    # "_result":Z
    :cond_17
    const/4 v1, 0x0

    goto :goto_18

    .line 323
    .end local v2    # "_arg0":Landroid/accounts/Account;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v13    # "_result":Z
    :sswitch_11
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual/range {p0 .. p0}, Landroid/content/IContentService$Stub;->getCurrentSyncs()Ljava/util/List;

    move-result-object v15

    .line 325
    .local v15, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 327
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 331
    .end local v15    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    :sswitch_12
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual/range {p0 .. p0}, Landroid/content/IContentService$Stub;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v13

    .line 333
    .local v13, "_result":[Landroid/content/SyncAdapterType;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 335
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 339
    .end local v13    # "_result":[Landroid/content/SyncAdapterType;
    :sswitch_13
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_18

    .line 342
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 348
    .restart local v2    # "_arg0":Landroid/accounts/Account;
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 349
    .restart local v3    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/content/IContentService$Stub;->getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStatusInfo;

    move-result-object v13

    .line 350
    .local v13, "_result":Landroid/content/SyncStatusInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    if-eqz v13, :cond_19

    .line 352
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 353
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Landroid/content/SyncStatusInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 358
    :goto_1a
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 345
    .end local v2    # "_arg0":Landroid/accounts/Account;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v13    # "_result":Landroid/content/SyncStatusInfo;
    :cond_18
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/accounts/Account;
    goto :goto_19

    .line 356
    .restart local v3    # "_arg1":Ljava/lang/String;
    .restart local v13    # "_result":Landroid/content/SyncStatusInfo;
    :cond_19
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1a

    .line 362
    .end local v2    # "_arg0":Landroid/accounts/Account;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v13    # "_result":Landroid/content/SyncStatusInfo;
    :sswitch_14
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1a

    .line 365
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 371
    .restart local v2    # "_arg0":Landroid/accounts/Account;
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 372
    .restart local v3    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/content/IContentService$Stub;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v13

    .line 373
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    if-eqz v13, :cond_1b

    const/4 v1, 0x1

    :goto_1c
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 368
    .end local v2    # "_arg0":Landroid/accounts/Account;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v13    # "_result":Z
    :cond_1a
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/accounts/Account;
    goto :goto_1b

    .line 374
    .restart local v3    # "_arg1":Ljava/lang/String;
    .restart local v13    # "_result":Z
    :cond_1b
    const/4 v1, 0x0

    goto :goto_1c

    .line 379
    .end local v2    # "_arg0":Landroid/accounts/Account;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v13    # "_result":Z
    :sswitch_15
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 383
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ISyncStatusObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISyncStatusObserver;

    move-result-object v3

    .line 384
    .local v3, "_arg1":Landroid/content/ISyncStatusObserver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/content/IContentService$Stub;->addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V

    .line 385
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 390
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/ISyncStatusObserver;
    :sswitch_16
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 392
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ISyncStatusObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISyncStatusObserver;

    move-result-object v2

    .line 393
    .local v2, "_arg0":Landroid/content/ISyncStatusObserver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/IContentService$Stub;->removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V

    .line 394
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 395
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 41
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
