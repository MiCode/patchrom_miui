.class public abstract Landroid/app/ApplicationThreadNative;
.super Landroid/os/Binder;
.source "ApplicationThreadNative.java"

# interfaces
.implements Landroid/app/IApplicationThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 64
    const-string v0, "android.app.IApplicationThread"

    invoke-virtual {p0, p0, v0}, Landroid/app/ApplicationThreadNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 51
    if-nez p0, :cond_1

    .line 52
    const/4 v0, 0x0

    .line 60
    :cond_0
    :goto_0
    return-object v0

    .line 54
    :cond_1
    const-string v1, "android.app.IApplicationThread"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IApplicationThread;

    .line 56
    .local v0, "in":Landroid/app/IApplicationThread;
    if-nez v0, :cond_0

    .line 60
    new-instance v0, Landroid/app/ApplicationThreadProxy;

    .end local v0    # "in":Landroid/app/IApplicationThread;
    invoke-direct {v0, p0}, Landroid/app/ApplicationThreadProxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 637
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 112
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
    .line 70
    packed-switch p1, :pswitch_data_0

    .line 632
    :pswitch_0
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 73
    :pswitch_1
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 75
    .local v7, "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    const/16 v87, 0x1

    .line 76
    .local v87, "finished":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    const/16 v111, 0x1

    .line 77
    .local v111, "userLeaving":Z
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 78
    .local v25, "configChanges":I
    move-object/from16 v0, p0

    move/from16 v1, v87

    move/from16 v2, v111

    move/from16 v3, v25

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->schedulePauseActivity(Landroid/os/IBinder;ZZI)V

    .line 79
    const/4 v5, 0x1

    goto :goto_0

    .line 75
    .end local v25    # "configChanges":I
    .end local v87    # "finished":Z
    .end local v111    # "userLeaving":Z
    :cond_0
    const/16 v87, 0x0

    goto :goto_1

    .line 76
    .restart local v87    # "finished":Z
    :cond_1
    const/16 v111, 0x0

    goto :goto_2

    .line 84
    .end local v7    # "b":Landroid/os/IBinder;
    .end local v87    # "finished":Z
    :pswitch_2
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 86
    .restart local v7    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    const/16 v107, 0x1

    .line 87
    .local v107, "show":Z
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 88
    .restart local v25    # "configChanges":I
    move-object/from16 v0, p0

    move/from16 v1, v107

    move/from16 v2, v25

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleStopActivity(Landroid/os/IBinder;ZI)V

    .line 89
    const/4 v5, 0x1

    goto :goto_0

    .line 86
    .end local v25    # "configChanges":I
    .end local v107    # "show":Z
    :cond_2
    const/16 v107, 0x0

    goto :goto_3

    .line 94
    .end local v7    # "b":Landroid/os/IBinder;
    :pswitch_3
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 96
    .restart local v7    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    const/16 v107, 0x1

    .line 97
    .restart local v107    # "show":Z
    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v107

    invoke-virtual {v0, v7, v1}, Landroid/app/ApplicationThreadNative;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V

    .line 98
    const/4 v5, 0x1

    goto :goto_0

    .line 96
    .end local v107    # "show":Z
    :cond_3
    const/16 v107, 0x0

    goto :goto_4

    .line 103
    .end local v7    # "b":Landroid/os/IBinder;
    :pswitch_4
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 105
    .restart local v7    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    const/16 v108, 0x1

    .line 106
    .local v108, "sleeping":Z
    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v108

    invoke-virtual {v0, v7, v1}, Landroid/app/ApplicationThreadNative;->scheduleSleeping(Landroid/os/IBinder;Z)V

    .line 107
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 105
    .end local v108    # "sleeping":Z
    :cond_4
    const/16 v108, 0x0

    goto :goto_5

    .line 112
    .end local v7    # "b":Landroid/os/IBinder;
    :pswitch_5
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 114
    .restart local v7    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 115
    .local v12, "procState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    const/16 v17, 0x1

    .line 116
    .local v17, "isForward":Z
    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v7, v12, v1}, Landroid/app/ApplicationThreadNative;->scheduleResumeActivity(Landroid/os/IBinder;IZ)V

    .line 117
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 115
    .end local v17    # "isForward":Z
    :cond_5
    const/16 v17, 0x0

    goto :goto_6

    .line 122
    .end local v7    # "b":Landroid/os/IBinder;
    .end local v12    # "procState":I
    :pswitch_6
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 124
    .restart local v7    # "b":Landroid/os/IBinder;
    sget-object v5, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v14

    .line 125
    .local v14, "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v14}, Landroid/app/ApplicationThreadNative;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V

    .line 126
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 131
    .end local v7    # "b":Landroid/os/IBinder;
    .end local v14    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    :pswitch_7
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 133
    .local v6, "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 134
    .restart local v7    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 135
    .local v8, "ident":I
    sget-object v5, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ActivityInfo;

    .line 136
    .local v9, "info":Landroid/content/pm/ActivityInfo;
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/res/Configuration;

    .line 137
    .local v10, "curConfig":Landroid/content/res/Configuration;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/res/CompatibilityInfo;

    .line 138
    .local v11, "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 139
    .restart local v12    # "procState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v13

    .line 140
    .local v13, "state":Landroid/os/Bundle;
    sget-object v5, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v14

    .line 141
    .restart local v14    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v15

    .line 142
    .local v15, "pi":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    const/16 v16, 0x1

    .line 143
    .local v16, "notResumed":Z
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    const/16 v17, 0x1

    .line 144
    .restart local v17    # "isForward":Z
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 145
    .local v18, "profileName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    move-object/from16 v19, v5

    .line 147
    .local v19, "profileFd":Landroid/os/ParcelFileDescriptor;
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    const/16 v20, 0x1

    .local v20, "autoStopProfiler":Z
    :goto_a
    move-object/from16 v5, p0

    .line 148
    invoke-virtual/range {v5 .. v20}, Landroid/app/ApplicationThreadNative;->scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;ILandroid/os/Bundle;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;Z)V

    .line 150
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 142
    .end local v16    # "notResumed":Z
    .end local v17    # "isForward":Z
    .end local v18    # "profileName":Ljava/lang/String;
    .end local v19    # "profileFd":Landroid/os/ParcelFileDescriptor;
    .end local v20    # "autoStopProfiler":Z
    :cond_6
    const/16 v16, 0x0

    goto :goto_7

    .line 143
    .restart local v16    # "notResumed":Z
    :cond_7
    const/16 v17, 0x0

    goto :goto_8

    .line 145
    .restart local v17    # "isForward":Z
    .restart local v18    # "profileName":Ljava/lang/String;
    :cond_8
    const/16 v19, 0x0

    goto :goto_9

    .line 147
    .restart local v19    # "profileFd":Landroid/os/ParcelFileDescriptor;
    :cond_9
    const/16 v20, 0x0

    goto :goto_a

    .line 155
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "b":Landroid/os/IBinder;
    .end local v8    # "ident":I
    .end local v9    # "info":Landroid/content/pm/ActivityInfo;
    .end local v10    # "curConfig":Landroid/content/res/Configuration;
    .end local v11    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v12    # "procState":I
    .end local v13    # "state":Landroid/os/Bundle;
    .end local v14    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v15    # "pi":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .end local v16    # "notResumed":Z
    .end local v17    # "isForward":Z
    .end local v18    # "profileName":Ljava/lang/String;
    .end local v19    # "profileFd":Landroid/os/ParcelFileDescriptor;
    :pswitch_8
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 157
    .restart local v7    # "b":Landroid/os/IBinder;
    sget-object v5, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v14

    .line 158
    .restart local v14    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v15

    .line 159
    .restart local v15    # "pi":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 160
    .restart local v25    # "configChanges":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b

    const/16 v16, 0x1

    .line 161
    .restart local v16    # "notResumed":Z
    :goto_b
    const/16 v27, 0x0

    .line 162
    .local v27, "config":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    .line 163
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    .end local v27    # "config":Landroid/content/res/Configuration;
    check-cast v27, Landroid/content/res/Configuration;

    .restart local v27    # "config":Landroid/content/res/Configuration;
    :cond_a
    move-object/from16 v21, p0

    move-object/from16 v22, v7

    move-object/from16 v23, v14

    move-object/from16 v24, v15

    move/from16 v26, v16

    .line 165
    invoke-virtual/range {v21 .. v27}, Landroid/app/ApplicationThreadNative;->scheduleRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;)V

    .line 166
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 160
    .end local v16    # "notResumed":Z
    .end local v27    # "config":Landroid/content/res/Configuration;
    :cond_b
    const/16 v16, 0x0

    goto :goto_b

    .line 171
    .end local v7    # "b":Landroid/os/IBinder;
    .end local v14    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v15    # "pi":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .end local v25    # "configChanges":I
    :pswitch_9
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v15

    .line 173
    .restart local v15    # "pi":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 174
    .restart local v7    # "b":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v7}, Landroid/app/ApplicationThreadNative;->scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;)V

    .line 175
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 180
    .end local v7    # "b":Landroid/os/IBinder;
    .end local v15    # "pi":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    :pswitch_a
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 182
    .restart local v7    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c

    const/16 v88, 0x1

    .line 183
    .local v88, "finishing":Z
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 184
    .restart local v25    # "configChanges":I
    move-object/from16 v0, p0

    move/from16 v1, v88

    move/from16 v2, v25

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleDestroyActivity(Landroid/os/IBinder;ZI)V

    .line 185
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 182
    .end local v25    # "configChanges":I
    .end local v88    # "finishing":Z
    :cond_c
    const/16 v88, 0x0

    goto :goto_c

    .line 190
    .end local v7    # "b":Landroid/os/IBinder;
    :pswitch_b
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 192
    .restart local v6    # "intent":Landroid/content/Intent;
    sget-object v5, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ActivityInfo;

    .line 193
    .restart local v9    # "info":Landroid/content/pm/ActivityInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/res/CompatibilityInfo;

    .line 194
    .restart local v11    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v32

    .line 195
    .local v32, "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    .line 196
    .local v33, "resultData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v34

    .line 197
    .local v34, "resultExtras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_d

    const/16 v35, 0x1

    .line 198
    .local v35, "sync":Z
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 199
    .local v36, "sendingUser":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .local v37, "processState":I
    move-object/from16 v28, p0

    move-object/from16 v29, v6

    move-object/from16 v30, v9

    move-object/from16 v31, v11

    .line 200
    invoke-virtual/range {v28 .. v37}, Landroid/app/ApplicationThreadNative;->scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZII)V

    .line 202
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 197
    .end local v35    # "sync":Z
    .end local v36    # "sendingUser":I
    .end local v37    # "processState":I
    :cond_d
    const/16 v35, 0x0

    goto :goto_d

    .line 206
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v9    # "info":Landroid/content/pm/ActivityInfo;
    .end local v11    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v32    # "resultCode":I
    .end local v33    # "resultData":Ljava/lang/String;
    .end local v34    # "resultExtras":Landroid/os/Bundle;
    :pswitch_c
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 208
    .local v39, "token":Landroid/os/IBinder;
    sget-object v5, Landroid/content/pm/ServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ServiceInfo;

    .line 209
    .local v9, "info":Landroid/content/pm/ServiceInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/res/CompatibilityInfo;

    .line 210
    .restart local v11    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .line 211
    .restart local v37    # "processState":I
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v37

    invoke-virtual {v0, v1, v9, v11, v2}, Landroid/app/ApplicationThreadNative;->scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V

    .line 212
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 216
    .end local v9    # "info":Landroid/content/pm/ServiceInfo;
    .end local v11    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v37    # "processState":I
    .end local v39    # "token":Landroid/os/IBinder;
    :pswitch_d
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 218
    .restart local v39    # "token":Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 219
    .restart local v6    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_e

    const/16 v102, 0x1

    .line 220
    .local v102, "rebind":Z
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .line 221
    .restart local v37    # "processState":I
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v102

    move/from16 v3, v37

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/app/ApplicationThreadNative;->scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;ZI)V

    .line 222
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 219
    .end local v37    # "processState":I
    .end local v102    # "rebind":Z
    :cond_e
    const/16 v102, 0x0

    goto :goto_e

    .line 226
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v39    # "token":Landroid/os/IBinder;
    :pswitch_e
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 228
    .restart local v39    # "token":Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 229
    .restart local v6    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1, v6}, Landroid/app/ApplicationThreadNative;->scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V

    .line 230
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 235
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v39    # "token":Landroid/os/IBinder;
    :pswitch_f
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 237
    .restart local v39    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_f

    const/16 v40, 0x1

    .line 238
    .local v40, "taskRemoved":Z
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 239
    .local v41, "startId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .line 241
    .local v42, "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_10

    .line 242
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Landroid/content/Intent;

    .local v43, "args":Landroid/content/Intent;
    :goto_10
    move-object/from16 v38, p0

    .line 246
    invoke-virtual/range {v38 .. v43}, Landroid/app/ApplicationThreadNative;->scheduleServiceArgs(Landroid/os/IBinder;ZIILandroid/content/Intent;)V

    .line 247
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 237
    .end local v40    # "taskRemoved":Z
    .end local v41    # "startId":I
    .end local v42    # "fl":I
    .end local v43    # "args":Landroid/content/Intent;
    :cond_f
    const/16 v40, 0x0

    goto :goto_f

    .line 244
    .restart local v40    # "taskRemoved":Z
    .restart local v41    # "startId":I
    .restart local v42    # "fl":I
    :cond_10
    const/16 v43, 0x0

    .restart local v43    # "args":Landroid/content/Intent;
    goto :goto_10

    .line 252
    .end local v39    # "token":Landroid/os/IBinder;
    .end local v40    # "taskRemoved":Z
    .end local v41    # "startId":I
    .end local v42    # "fl":I
    .end local v43    # "args":Landroid/content/Intent;
    :pswitch_10
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 254
    .restart local v39    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleStopService(Landroid/os/IBinder;)V

    .line 255
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 260
    .end local v39    # "token":Landroid/os/IBinder;
    :pswitch_11
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v45

    .line 262
    .local v45, "packageName":Ljava/lang/String;
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ApplicationInfo;

    .line 264
    .local v9, "info":Landroid/content/pm/ApplicationInfo;
    sget-object v5, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v47

    .line 266
    .local v47, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_11

    new-instance v48, Landroid/content/ComponentName;

    move-object/from16 v0, v48

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ComponentName;-><init>(Landroid/os/Parcel;)V

    .line 268
    .local v48, "testName":Landroid/content/ComponentName;
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 269
    .restart local v18    # "profileName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_12

    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    move-object/from16 v19, v5

    .line 271
    .restart local v19    # "profileFd":Landroid/os/ParcelFileDescriptor;
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_13

    const/16 v20, 0x1

    .line 272
    .restart local v20    # "autoStopProfiler":Z
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v52

    .line 273
    .local v52, "testArgs":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v82

    .line 274
    .local v82, "binder":Landroid/os/IBinder;
    invoke-static/range {v82 .. v82}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v53

    .line 275
    .local v53, "testWatcher":Landroid/app/IInstrumentationWatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v82

    .line 276
    invoke-static/range {v82 .. v82}, Landroid/app/IUiAutomationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;

    move-result-object v54

    .line 278
    .local v54, "uiAutomationConnection":Landroid/app/IUiAutomationConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v55

    .line 279
    .local v55, "testMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_14

    const/16 v56, 0x1

    .line 280
    .local v56, "openGlTrace":Z
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_15

    const/16 v57, 0x1

    .line 281
    .local v57, "restrictedBackupMode":Z
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_16

    const/16 v58, 0x1

    .line 282
    .local v58, "persistent":Z
    :goto_16
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/res/Configuration;

    .line 283
    .restart local v27    # "config":Landroid/content/res/Configuration;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/res/CompatibilityInfo;

    .line 284
    .restart local v11    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v61

    .line 285
    .local v61, "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/IBinder;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v62

    .local v62, "coreSettings":Landroid/os/Bundle;
    move-object/from16 v44, p0

    move-object/from16 v46, v9

    move-object/from16 v49, v18

    move-object/from16 v50, v19

    move/from16 v51, v20

    move-object/from16 v59, v27

    move-object/from16 v60, v11

    .line 286
    invoke-virtual/range {v44 .. v62}, Landroid/app/ApplicationThreadNative;->bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/util/List;Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;ZLandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;IZZZLandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/Map;Landroid/os/Bundle;)V

    .line 291
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 266
    .end local v11    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v18    # "profileName":Ljava/lang/String;
    .end local v19    # "profileFd":Landroid/os/ParcelFileDescriptor;
    .end local v20    # "autoStopProfiler":Z
    .end local v27    # "config":Landroid/content/res/Configuration;
    .end local v48    # "testName":Landroid/content/ComponentName;
    .end local v52    # "testArgs":Landroid/os/Bundle;
    .end local v53    # "testWatcher":Landroid/app/IInstrumentationWatcher;
    .end local v54    # "uiAutomationConnection":Landroid/app/IUiAutomationConnection;
    .end local v55    # "testMode":I
    .end local v56    # "openGlTrace":Z
    .end local v57    # "restrictedBackupMode":Z
    .end local v58    # "persistent":Z
    .end local v61    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/IBinder;>;"
    .end local v62    # "coreSettings":Landroid/os/Bundle;
    .end local v82    # "binder":Landroid/os/IBinder;
    :cond_11
    const/16 v48, 0x0

    goto/16 :goto_11

    .line 269
    .restart local v18    # "profileName":Ljava/lang/String;
    .restart local v48    # "testName":Landroid/content/ComponentName;
    :cond_12
    const/16 v19, 0x0

    goto :goto_12

    .line 271
    .restart local v19    # "profileFd":Landroid/os/ParcelFileDescriptor;
    :cond_13
    const/16 v20, 0x0

    goto :goto_13

    .line 279
    .restart local v20    # "autoStopProfiler":Z
    .restart local v52    # "testArgs":Landroid/os/Bundle;
    .restart local v53    # "testWatcher":Landroid/app/IInstrumentationWatcher;
    .restart local v54    # "uiAutomationConnection":Landroid/app/IUiAutomationConnection;
    .restart local v55    # "testMode":I
    .restart local v82    # "binder":Landroid/os/IBinder;
    :cond_14
    const/16 v56, 0x0

    goto :goto_14

    .line 280
    .restart local v56    # "openGlTrace":Z
    :cond_15
    const/16 v57, 0x0

    goto :goto_15

    .line 281
    .restart local v57    # "restrictedBackupMode":Z
    :cond_16
    const/16 v58, 0x0

    goto :goto_16

    .line 296
    .end local v9    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v18    # "profileName":Ljava/lang/String;
    .end local v19    # "profileFd":Landroid/os/ParcelFileDescriptor;
    .end local v20    # "autoStopProfiler":Z
    .end local v45    # "packageName":Ljava/lang/String;
    .end local v47    # "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    .end local v48    # "testName":Landroid/content/ComponentName;
    .end local v52    # "testArgs":Landroid/os/Bundle;
    .end local v53    # "testWatcher":Landroid/app/IInstrumentationWatcher;
    .end local v54    # "uiAutomationConnection":Landroid/app/IUiAutomationConnection;
    .end local v55    # "testMode":I
    .end local v56    # "openGlTrace":Z
    .end local v57    # "restrictedBackupMode":Z
    .end local v82    # "binder":Landroid/os/IBinder;
    :pswitch_12
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleExit()V

    .line 298
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 303
    :pswitch_13
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleSuicide()V

    .line 305
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 310
    :pswitch_14
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 312
    .restart local v7    # "b":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/ApplicationThreadNative;->requestThumbnail(Landroid/os/IBinder;)V

    .line 313
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 318
    .end local v7    # "b":Landroid/os/IBinder;
    :pswitch_15
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 319
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/res/Configuration;

    .line 320
    .restart local v27    # "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 321
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 325
    .end local v27    # "config":Landroid/content/res/Configuration;
    :pswitch_16
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->updateTimeZone()V

    .line 327
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 331
    :pswitch_17
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->clearDnsCache()V

    .line 333
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 337
    :pswitch_18
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v101

    .line 339
    .local v101, "proxy":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v97

    .line 340
    .local v97, "port":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v85

    .line 341
    .local v85, "exclList":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v93

    .line 342
    .local v93, "pacFileUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    move-object/from16 v2, v97

    move-object/from16 v3, v85

    move-object/from16 v4, v93

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ApplicationThreadNative;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 347
    .end local v85    # "exclList":Ljava/lang/String;
    .end local v93    # "pacFileUrl":Ljava/lang/String;
    .end local v97    # "port":Ljava/lang/String;
    .end local v101    # "proxy":Ljava/lang/String;
    :pswitch_19
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->processInBackground()V

    .line 349
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 353
    :pswitch_1a
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v86

    .line 355
    .local v86, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v105

    .line 356
    .local v105, "service":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v43

    .line 357
    .local v43, "args":[Ljava/lang/String;
    if-eqz v86, :cond_17

    .line 358
    invoke-virtual/range {v86 .. v86}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    move-object/from16 v2, v43

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/ApplicationThreadNative;->dumpService(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 360
    :try_start_0
    invoke-virtual/range {v86 .. v86}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    :cond_17
    :goto_17
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 368
    .end local v43    # "args":[Ljava/lang/String;
    .end local v86    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v105    # "service":Landroid/os/IBinder;
    :pswitch_1b
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v86

    .line 370
    .restart local v86    # "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v105

    .line 371
    .restart local v105    # "service":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v43

    .line 372
    .restart local v43    # "args":[Ljava/lang/String;
    if-eqz v86, :cond_18

    .line 373
    invoke-virtual/range {v86 .. v86}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    move-object/from16 v2, v43

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/ApplicationThreadNative;->dumpProvider(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 375
    :try_start_1
    invoke-virtual/range {v86 .. v86}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 379
    :cond_18
    :goto_18
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 383
    .end local v43    # "args":[Ljava/lang/String;
    .end local v86    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v105    # "service":Landroid/os/IBinder;
    :pswitch_1c
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v64

    .line 386
    .local v64, "receiver":Landroid/content/IIntentReceiver;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 387
    .restart local v6    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v32

    .line 388
    .restart local v32    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v67

    .line 389
    .local v67, "dataStr":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v68

    .line 390
    .local v68, "extras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_19

    const/16 v69, 0x1

    .line 391
    .local v69, "ordered":Z
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1a

    const/16 v70, 0x1

    .line 392
    .local v70, "sticky":Z
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 393
    .restart local v36    # "sendingUser":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .restart local v37    # "processState":I
    move-object/from16 v63, p0

    move-object/from16 v65, v6

    move/from16 v66, v32

    move/from16 v71, v36

    move/from16 v72, v37

    .line 394
    invoke-virtual/range {v63 .. v72}, Landroid/app/ApplicationThreadNative;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZII)V

    .line 396
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 390
    .end local v36    # "sendingUser":I
    .end local v37    # "processState":I
    .end local v69    # "ordered":Z
    .end local v70    # "sticky":Z
    :cond_19
    const/16 v69, 0x0

    goto :goto_19

    .line 391
    .restart local v69    # "ordered":Z
    :cond_1a
    const/16 v70, 0x0

    goto :goto_1a

    .line 401
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v32    # "resultCode":I
    .end local v64    # "receiver":Landroid/content/IIntentReceiver;
    .end local v67    # "dataStr":Ljava/lang/String;
    .end local v68    # "extras":Landroid/os/Bundle;
    .end local v69    # "ordered":Z
    :pswitch_1d
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 402
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleLowMemory()V

    .line 403
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 408
    :pswitch_1e
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 409
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 410
    .restart local v7    # "b":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/ApplicationThreadNative;->scheduleActivityConfigurationChanged(Landroid/os/IBinder;)V

    .line 411
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 416
    .end local v7    # "b":Landroid/os/IBinder;
    :pswitch_1f
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1b

    const/16 v109, 0x1

    .line 418
    .local v109, "start":Z
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v99

    .line 419
    .local v99, "profileType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v95

    .line 420
    .local v95, "path":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1c

    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    move-object/from16 v86, v5

    .line 422
    .restart local v86    # "fd":Landroid/os/ParcelFileDescriptor;
    :goto_1c
    move-object/from16 v0, p0

    move/from16 v1, v109

    move-object/from16 v2, v95

    move-object/from16 v3, v86

    move/from16 v4, v99

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ApplicationThreadNative;->profilerControl(ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;I)V

    .line 423
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 417
    .end local v86    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v95    # "path":Ljava/lang/String;
    .end local v99    # "profileType":I
    .end local v109    # "start":Z
    :cond_1b
    const/16 v109, 0x0

    goto :goto_1b

    .line 420
    .restart local v95    # "path":Ljava/lang/String;
    .restart local v99    # "profileType":I
    .restart local v109    # "start":Z
    :cond_1c
    const/16 v86, 0x0

    goto :goto_1c

    .line 428
    .end local v95    # "path":Ljava/lang/String;
    .end local v99    # "profileType":I
    .end local v109    # "start":Z
    :pswitch_20
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 429
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v89

    .line 430
    .local v89, "group":I
    move-object/from16 v0, p0

    move/from16 v1, v89

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->setSchedulingGroup(I)V

    .line 431
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 436
    .end local v89    # "group":I
    :pswitch_21
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 437
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v80

    check-cast v80, Landroid/content/pm/ApplicationInfo;

    .line 438
    .local v80, "appInfo":Landroid/content/pm/ApplicationInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/res/CompatibilityInfo;

    .line 439
    .restart local v11    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v81

    .line 440
    .local v81, "backupMode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v80

    move/from16 v2, v81

    invoke-virtual {v0, v1, v11, v2}, Landroid/app/ApplicationThreadNative;->scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)V

    .line 441
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 446
    .end local v11    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v80    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v81    # "backupMode":I
    :pswitch_22
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 447
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v80

    check-cast v80, Landroid/content/pm/ApplicationInfo;

    .line 448
    .restart local v80    # "appInfo":Landroid/content/pm/ApplicationInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/res/CompatibilityInfo;

    .line 449
    .restart local v11    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v1, v11}, Landroid/app/ApplicationThreadNative;->scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)V

    .line 450
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 455
    .end local v11    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v80    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :pswitch_23
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 456
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v83

    .line 457
    .local v83, "cmd":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v94

    .line 458
    .local v94, "packages":[Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v83

    move-object/from16 v2, v94

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->dispatchPackageBroadcast(I[Ljava/lang/String;)V

    .line 459
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 464
    .end local v83    # "cmd":I
    .end local v94    # "packages":[Ljava/lang/String;
    :pswitch_24
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 465
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v92

    .line 466
    .local v92, "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleCrash(Ljava/lang/String;)V

    .line 467
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 472
    .end local v92    # "msg":Ljava/lang/String;
    :pswitch_25
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 473
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1d

    const/16 v91, 0x1

    .line 474
    .local v91, "managed":Z
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v95

    .line 475
    .restart local v95    # "path":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1e

    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    move-object/from16 v86, v5

    .line 477
    .restart local v86    # "fd":Landroid/os/ParcelFileDescriptor;
    :goto_1e
    move-object/from16 v0, p0

    move/from16 v1, v91

    move-object/from16 v2, v95

    move-object/from16 v3, v86

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->dumpHeap(ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 478
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 473
    .end local v86    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v91    # "managed":Z
    .end local v95    # "path":Ljava/lang/String;
    :cond_1d
    const/16 v91, 0x0

    goto :goto_1d

    .line 475
    .restart local v91    # "managed":Z
    .restart local v95    # "path":Ljava/lang/String;
    :cond_1e
    const/16 v86, 0x0

    goto :goto_1e

    .line 482
    .end local v91    # "managed":Z
    .end local v95    # "path":Ljava/lang/String;
    :pswitch_26
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 483
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v86

    .line 484
    .restart local v86    # "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v78

    .line 485
    .local v78, "activity":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v98

    .line 486
    .local v98, "prefix":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v43

    .line 487
    .restart local v43    # "args":[Ljava/lang/String;
    if-eqz v86, :cond_1f

    .line 488
    invoke-virtual/range {v86 .. v86}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    move-object/from16 v2, v98

    move-object/from16 v3, v43

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->dumpActivity(Ljava/io/FileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V

    .line 490
    :try_start_2
    invoke-virtual/range {v86 .. v86}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 494
    :cond_1f
    :goto_1f
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 498
    .end local v43    # "args":[Ljava/lang/String;
    .end local v78    # "activity":Landroid/os/IBinder;
    .end local v86    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v98    # "prefix":Ljava/lang/String;
    :pswitch_27
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 499
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v106

    .line 500
    .local v106, "settings":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->setCoreSettings(Landroid/os/Bundle;)V

    .line 501
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 505
    .end local v106    # "settings":Landroid/os/Bundle;
    :pswitch_28
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 506
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v96

    .line 507
    .local v96, "pkg":Ljava/lang/String;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v84

    check-cast v84, Landroid/content/res/CompatibilityInfo;

    .line 508
    .local v84, "compat":Landroid/content/res/CompatibilityInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    move-object/from16 v2, v84

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V

    .line 509
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 513
    .end local v84    # "compat":Landroid/content/res/CompatibilityInfo;
    .end local v96    # "pkg":Ljava/lang/String;
    :pswitch_29
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 514
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v90

    .line 515
    .local v90, "level":I
    move-object/from16 v0, p0

    move/from16 v1, v90

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleTrimMemory(I)V

    .line 516
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 521
    .end local v90    # "level":I
    :pswitch_2a
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 522
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v86

    .line 523
    .restart local v86    # "fd":Landroid/os/ParcelFileDescriptor;
    sget-object v5, Landroid/os/Debug$MemoryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Landroid/os/Debug$MemoryInfo;

    .line 524
    .local v73, "mi":Landroid/os/Debug$MemoryInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_21

    const/16 v74, 0x1

    .line 525
    .local v74, "checkin":Z
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_22

    const/16 v75, 0x1

    .line 526
    .local v75, "dumpInfo":Z
    :goto_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_23

    const/16 v76, 0x1

    .line 527
    .local v76, "dumpDalvik":Z
    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v43

    .line 528
    .restart local v43    # "args":[Ljava/lang/String;
    if-eqz v86, :cond_20

    .line 530
    :try_start_3
    invoke-virtual/range {v86 .. v86}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v72

    move-object/from16 v71, p0

    move-object/from16 v77, v43

    invoke-virtual/range {v71 .. v77}, Landroid/app/ApplicationThreadNative;->dumpMemInfo(Ljava/io/FileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZ[Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 533
    :try_start_4
    invoke-virtual/range {v86 .. v86}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 539
    :cond_20
    :goto_23
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 540
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 524
    .end local v43    # "args":[Ljava/lang/String;
    .end local v74    # "checkin":Z
    .end local v75    # "dumpInfo":Z
    .end local v76    # "dumpDalvik":Z
    :cond_21
    const/16 v74, 0x0

    goto :goto_20

    .line 525
    .restart local v74    # "checkin":Z
    :cond_22
    const/16 v75, 0x0

    goto :goto_21

    .line 526
    .restart local v75    # "dumpInfo":Z
    :cond_23
    const/16 v76, 0x0

    goto :goto_22

    .line 532
    .restart local v43    # "args":[Ljava/lang/String;
    .restart local v76    # "dumpDalvik":Z
    :catchall_0
    move-exception v5

    .line 533
    :try_start_5
    invoke-virtual/range {v86 .. v86}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 536
    :goto_24
    throw v5

    .line 545
    .end local v43    # "args":[Ljava/lang/String;
    .end local v73    # "mi":Landroid/os/Debug$MemoryInfo;
    .end local v74    # "checkin":Z
    .end local v75    # "dumpInfo":Z
    .end local v76    # "dumpDalvik":Z
    .end local v86    # "fd":Landroid/os/ParcelFileDescriptor;
    :pswitch_2b
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 546
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v86

    .line 547
    .restart local v86    # "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v43

    .line 548
    .restart local v43    # "args":[Ljava/lang/String;
    if-eqz v86, :cond_24

    .line 550
    :try_start_6
    invoke-virtual/range {v86 .. v86}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v5, v1}, Landroid/app/ApplicationThreadNative;->dumpGfxInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 553
    :try_start_7
    invoke-virtual/range {v86 .. v86}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 559
    :cond_24
    :goto_25
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 560
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 552
    :catchall_1
    move-exception v5

    .line 553
    :try_start_8
    invoke-virtual/range {v86 .. v86}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 556
    :goto_26
    throw v5

    .line 565
    .end local v43    # "args":[Ljava/lang/String;
    .end local v86    # "fd":Landroid/os/ParcelFileDescriptor;
    :pswitch_2c
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 566
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v86

    .line 567
    .restart local v86    # "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v43

    .line 568
    .restart local v43    # "args":[Ljava/lang/String;
    if-eqz v86, :cond_25

    .line 570
    :try_start_9
    invoke-virtual/range {v86 .. v86}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v5, v1}, Landroid/app/ApplicationThreadNative;->dumpDbInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 573
    :try_start_a
    invoke-virtual/range {v86 .. v86}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 579
    :cond_25
    :goto_27
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 580
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 572
    :catchall_2
    move-exception v5

    .line 573
    :try_start_b
    invoke-virtual/range {v86 .. v86}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 576
    :goto_28
    throw v5

    .line 585
    .end local v43    # "args":[Ljava/lang/String;
    .end local v86    # "fd":Landroid/os/ParcelFileDescriptor;
    :pswitch_2d
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 586
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v100

    .line 587
    .local v100, "provider":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->unstableProviderDied(Landroid/os/IBinder;)V

    .line 588
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 589
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 594
    .end local v100    # "provider":Landroid/os/IBinder;
    :pswitch_2e
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 595
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v79

    .line 596
    .local v79, "activityToken":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v103

    .line 597
    .local v103, "requestToken":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v104

    .line 598
    .local v104, "requestType":I
    move-object/from16 v0, p0

    move-object/from16 v1, v79

    move-object/from16 v2, v103

    move/from16 v3, v104

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->requestAssistContextExtras(Landroid/os/IBinder;Landroid/os/IBinder;I)V

    .line 599
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 600
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 605
    .end local v79    # "activityToken":Landroid/os/IBinder;
    .end local v103    # "requestToken":Landroid/os/IBinder;
    .end local v104    # "requestType":I
    :pswitch_2f
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 606
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 607
    .restart local v39    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v5, v0, :cond_26

    const/16 v110, 0x1

    .line 608
    .local v110, "timeout":Z
    :goto_29
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v110

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V

    .line 609
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 610
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 607
    .end local v110    # "timeout":Z
    :cond_26
    const/16 v110, 0x0

    goto :goto_29

    .line 615
    .end local v39    # "token":Landroid/os/IBinder;
    :pswitch_30
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 616
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 617
    .local v13, "state":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/app/ApplicationThreadNative;->setProcessState(I)V

    .line 618
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 624
    .end local v13    # "state":I
    :pswitch_31
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 625
    sget-object v5, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v100

    check-cast v100, Landroid/content/pm/ProviderInfo;

    .line 626
    .local v100, "provider":Landroid/content/pm/ProviderInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V

    .line 627
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 628
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 361
    .end local v100    # "provider":Landroid/content/pm/ProviderInfo;
    .restart local v43    # "args":[Ljava/lang/String;
    .restart local v86    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v105    # "service":Landroid/os/IBinder;
    :catch_0
    move-exception v5

    goto/16 :goto_17

    .line 376
    :catch_1
    move-exception v5

    goto/16 :goto_18

    .line 491
    .end local v105    # "service":Landroid/os/IBinder;
    .restart local v78    # "activity":Landroid/os/IBinder;
    .restart local v98    # "prefix":Ljava/lang/String;
    :catch_2
    move-exception v5

    goto/16 :goto_1f

    .line 534
    .end local v78    # "activity":Landroid/os/IBinder;
    .end local v98    # "prefix":Ljava/lang/String;
    .restart local v73    # "mi":Landroid/os/Debug$MemoryInfo;
    .restart local v74    # "checkin":Z
    .restart local v75    # "dumpInfo":Z
    .restart local v76    # "dumpDalvik":Z
    :catch_3
    move-exception v5

    goto/16 :goto_23

    :catch_4
    move-exception v21

    goto/16 :goto_24

    .line 554
    .end local v73    # "mi":Landroid/os/Debug$MemoryInfo;
    .end local v74    # "checkin":Z
    .end local v75    # "dumpInfo":Z
    .end local v76    # "dumpDalvik":Z
    :catch_5
    move-exception v5

    goto/16 :goto_25

    :catch_6
    move-exception v21

    goto/16 :goto_26

    .line 574
    :catch_7
    move-exception v5

    goto/16 :goto_27

    :catch_8
    move-exception v21

    goto/16 :goto_28

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_14
        :pswitch_15
        :pswitch_f
        :pswitch_16
        :pswitch_19
        :pswitch_d
        :pswitch_e
        :pswitch_1a
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_8
        :pswitch_4
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_0
        :pswitch_13
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_17
        :pswitch_18
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_1b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
    .end packed-switch
.end method
