.class public abstract Landroid/net/INetworkStatsSession$Stub;
.super Landroid/os/Binder;
.source "INetworkStatsSession.java"

# interfaces
.implements Landroid/net/INetworkStatsSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkStatsSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkStatsSession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.INetworkStatsSession"

.field static final TRANSACTION_close:I = 0x5

.field static final TRANSACTION_getHistoryForNetwork:I = 0x2

.field static final TRANSACTION_getHistoryForUid:I = 0x4

.field static final TRANSACTION_getSummaryForAllUid:I = 0x3

.field static final TRANSACTION_getSummaryForNetwork:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.net.INetworkStatsSession"

    invoke-virtual {p0, p0, v0}, Landroid/net/INetworkStatsSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsSession;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "android.net.INetworkStatsSession"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/INetworkStatsSession;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/net/INetworkStatsSession;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Landroid/net/INetworkStatsSession$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/net/INetworkStatsSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15
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
    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 158
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 43
    :sswitch_0
    const-string v1, "android.net.INetworkStatsSession"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/4 v1, 0x1

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v1, "android.net.INetworkStatsSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    sget-object v1, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkTemplate;

    .line 57
    .local v2, "_arg0":Landroid/net/NetworkTemplate;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 59
    .local v3, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .local v5, "_arg2":J
    move-object v1, p0

    .line 60
    invoke-virtual/range {v1 .. v6}, Landroid/net/INetworkStatsSession$Stub;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v14

    .line 61
    .local v14, "_result":Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    if-eqz v14, :cond_1

    .line 63
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v14, v0, v1}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 69
    :goto_2
    const/4 v1, 0x1

    goto :goto_0

    .line 54
    .end local v2    # "_arg0":Landroid/net/NetworkTemplate;
    .end local v3    # "_arg1":J
    .end local v5    # "_arg2":J
    .end local v14    # "_result":Landroid/net/NetworkStats;
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/net/NetworkTemplate;
    goto :goto_1

    .line 67
    .restart local v3    # "_arg1":J
    .restart local v5    # "_arg2":J
    .restart local v14    # "_result":Landroid/net/NetworkStats;
    :cond_1
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 73
    .end local v2    # "_arg0":Landroid/net/NetworkTemplate;
    .end local v3    # "_arg1":J
    .end local v5    # "_arg2":J
    .end local v14    # "_result":Landroid/net/NetworkStats;
    :sswitch_2
    const-string v1, "android.net.INetworkStatsSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 76
    sget-object v1, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkTemplate;

    .line 82
    .restart local v2    # "_arg0":Landroid/net/NetworkTemplate;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 83
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/net/INetworkStatsSession$Stub;->getHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;

    move-result-object v14

    .line 84
    .local v14, "_result":Landroid/net/NetworkStatsHistory;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v14, :cond_3

    .line 86
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v14, v0, v1}, Landroid/net/NetworkStatsHistory;->writeToParcel(Landroid/os/Parcel;I)V

    .line 92
    :goto_4
    const/4 v1, 0x1

    goto :goto_0

    .line 79
    .end local v2    # "_arg0":Landroid/net/NetworkTemplate;
    .end local v3    # "_arg1":I
    .end local v14    # "_result":Landroid/net/NetworkStatsHistory;
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/net/NetworkTemplate;
    goto :goto_3

    .line 90
    .restart local v3    # "_arg1":I
    .restart local v14    # "_result":Landroid/net/NetworkStatsHistory;
    :cond_3
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 96
    .end local v2    # "_arg0":Landroid/net/NetworkTemplate;
    .end local v3    # "_arg1":I
    .end local v14    # "_result":Landroid/net/NetworkStatsHistory;
    :sswitch_3
    const-string v1, "android.net.INetworkStatsSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    .line 99
    sget-object v1, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkTemplate;

    .line 105
    .restart local v2    # "_arg0":Landroid/net/NetworkTemplate;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 107
    .local v3, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 109
    .restart local v5    # "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v7, 0x1

    .local v7, "_arg3":Z
    :goto_6
    move-object v1, p0

    .line 110
    invoke-virtual/range {v1 .. v7}, Landroid/net/INetworkStatsSession$Stub;->getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;

    move-result-object v14

    .line 111
    .local v14, "_result":Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    if-eqz v14, :cond_6

    .line 113
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v14, v0, v1}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 119
    :goto_7
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 102
    .end local v2    # "_arg0":Landroid/net/NetworkTemplate;
    .end local v3    # "_arg1":J
    .end local v5    # "_arg2":J
    .end local v7    # "_arg3":Z
    .end local v14    # "_result":Landroid/net/NetworkStats;
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/net/NetworkTemplate;
    goto :goto_5

    .line 109
    .restart local v3    # "_arg1":J
    .restart local v5    # "_arg2":J
    :cond_5
    const/4 v7, 0x0

    goto :goto_6

    .line 117
    .restart local v7    # "_arg3":Z
    .restart local v14    # "_result":Landroid/net/NetworkStats;
    :cond_6
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 123
    .end local v2    # "_arg0":Landroid/net/NetworkTemplate;
    .end local v3    # "_arg1":J
    .end local v5    # "_arg2":J
    .end local v7    # "_arg3":Z
    .end local v14    # "_result":Landroid/net/NetworkStats;
    :sswitch_4
    const-string v1, "android.net.INetworkStatsSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    .line 126
    sget-object v1, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkTemplate;

    .line 132
    .restart local v2    # "_arg0":Landroid/net/NetworkTemplate;
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 134
    .local v3, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 136
    .local v5, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 138
    .local v7, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .local v13, "_arg4":I
    move-object v8, p0

    move-object v9, v2

    move v10, v3

    move v11, v5

    move v12, v7

    .line 139
    invoke-virtual/range {v8 .. v13}, Landroid/net/INetworkStatsSession$Stub;->getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v14

    .line 140
    .local v14, "_result":Landroid/net/NetworkStatsHistory;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    if-eqz v14, :cond_8

    .line 142
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v14, v0, v1}, Landroid/net/NetworkStatsHistory;->writeToParcel(Landroid/os/Parcel;I)V

    .line 148
    :goto_9
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 129
    .end local v2    # "_arg0":Landroid/net/NetworkTemplate;
    .end local v3    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v7    # "_arg3":I
    .end local v13    # "_arg4":I
    .end local v14    # "_result":Landroid/net/NetworkStatsHistory;
    :cond_7
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/net/NetworkTemplate;
    goto :goto_8

    .line 146
    .restart local v3    # "_arg1":I
    .restart local v5    # "_arg2":I
    .restart local v7    # "_arg3":I
    .restart local v13    # "_arg4":I
    .restart local v14    # "_result":Landroid/net/NetworkStatsHistory;
    :cond_8
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 152
    .end local v2    # "_arg0":Landroid/net/NetworkTemplate;
    .end local v3    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v7    # "_arg3":I
    .end local v13    # "_arg4":I
    .end local v14    # "_result":Landroid/net/NetworkStatsHistory;
    :sswitch_5
    const-string v1, "android.net.INetworkStatsSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Landroid/net/INetworkStatsSession$Stub;->close()V

    .line 154
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 39
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
