.class public abstract Landroid/hardware/location/IGeofenceHardware$Stub;
.super Landroid/os/Binder;
.source "IGeofenceHardware.java"

# interfaces
.implements Landroid/hardware/location/IGeofenceHardware;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/IGeofenceHardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/IGeofenceHardware$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.location.IGeofenceHardware"

.field static final TRANSACTION_addCircularFence:I = 0x5

.field static final TRANSACTION_getMonitoringTypes:I = 0x3

.field static final TRANSACTION_getStatusOfMonitoringType:I = 0x4

.field static final TRANSACTION_pauseGeofence:I = 0x7

.field static final TRANSACTION_registerForMonitorStateChangeCallback:I = 0x9

.field static final TRANSACTION_removeGeofence:I = 0x6

.field static final TRANSACTION_resumeGeofence:I = 0x8

.field static final TRANSACTION_setFusedGeofenceHardware:I = 0x2

.field static final TRANSACTION_setGpsGeofenceHardware:I = 0x1

.field static final TRANSACTION_unregisterForMonitorStateChangeCallback:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.hardware.location.IGeofenceHardware"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/location/IGeofenceHardware$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IGeofenceHardware;
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
    const-string v1, "android.hardware.location.IGeofenceHardware"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/location/IGeofenceHardware;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/hardware/location/IGeofenceHardware;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Landroid/hardware/location/IGeofenceHardware$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/hardware/location/IGeofenceHardware$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 173
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 43
    :sswitch_0
    const-string v1, "android.hardware.location.IGeofenceHardware"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/4 v1, 0x1

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v1, "android.hardware.location.IGeofenceHardware"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/location/IGpsGeofenceHardware$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGpsGeofenceHardware;

    move-result-object v2

    .line 51
    .local v2, "_arg0":Landroid/location/IGpsGeofenceHardware;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/hardware/location/IGeofenceHardware$Stub;->setGpsGeofenceHardware(Landroid/location/IGpsGeofenceHardware;)V

    .line 52
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    const/4 v1, 0x1

    goto :goto_0

    .line 57
    .end local v2    # "_arg0":Landroid/location/IGpsGeofenceHardware;
    :sswitch_2
    const-string v1, "android.hardware.location.IGeofenceHardware"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/location/IFusedGeofenceHardware$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IFusedGeofenceHardware;

    move-result-object v2

    .line 60
    .local v2, "_arg0":Landroid/location/IFusedGeofenceHardware;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/hardware/location/IGeofenceHardware$Stub;->setFusedGeofenceHardware(Landroid/location/IFusedGeofenceHardware;)V

    .line 61
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    const/4 v1, 0x1

    goto :goto_0

    .line 66
    .end local v2    # "_arg0":Landroid/location/IFusedGeofenceHardware;
    :sswitch_3
    const-string v1, "android.hardware.location.IGeofenceHardware"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/location/IGeofenceHardware$Stub;->getMonitoringTypes()[I

    move-result-object v15

    .line 68
    .local v15, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 70
    const/4 v1, 0x1

    goto :goto_0

    .line 74
    .end local v15    # "_result":[I
    :sswitch_4
    const-string v1, "android.hardware.location.IGeofenceHardware"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 77
    .local v2, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/hardware/location/IGeofenceHardware$Stub;->getStatusOfMonitoringType(I)I

    move-result v15

    .line 78
    .local v15, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    const/4 v1, 0x1

    goto :goto_0

    .line 84
    .end local v2    # "_arg0":I
    .end local v15    # "_result":I
    :sswitch_5
    const-string v1, "android.hardware.location.IGeofenceHardware"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 88
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 90
    .local v3, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    .line 92
    .local v4, "_arg2":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    .line 94
    .local v6, "_arg3":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v8

    .line 96
    .local v8, "_arg4":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 98
    .local v10, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 100
    .local v11, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 102
    .local v12, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 104
    .local v13, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/location/IGeofenceHardwareCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IGeofenceHardwareCallback;

    move-result-object v14

    .local v14, "_arg9":Landroid/hardware/location/IGeofenceHardwareCallback;
    move-object/from16 v1, p0

    .line 105
    invoke-virtual/range {v1 .. v14}, Landroid/hardware/location/IGeofenceHardware$Stub;->addCircularFence(IIDDDIIIILandroid/hardware/location/IGeofenceHardwareCallback;)Z

    move-result v15

    .line 106
    .local v15, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    if-eqz v15, :cond_0

    const/4 v1, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 107
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 112
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":D
    .end local v6    # "_arg3":D
    .end local v8    # "_arg4":D
    .end local v10    # "_arg5":I
    .end local v11    # "_arg6":I
    .end local v12    # "_arg7":I
    .end local v13    # "_arg8":I
    .end local v14    # "_arg9":Landroid/hardware/location/IGeofenceHardwareCallback;
    .end local v15    # "_result":Z
    :sswitch_6
    const-string v1, "android.hardware.location.IGeofenceHardware"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 116
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 117
    .restart local v3    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/hardware/location/IGeofenceHardware$Stub;->removeGeofence(II)Z

    move-result v15

    .line 118
    .restart local v15    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    if-eqz v15, :cond_1

    const/4 v1, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 119
    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    .line 124
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v15    # "_result":Z
    :sswitch_7
    const-string v1, "android.hardware.location.IGeofenceHardware"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 128
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 129
    .restart local v3    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/hardware/location/IGeofenceHardware$Stub;->pauseGeofence(II)Z

    move-result v15

    .line 130
    .restart local v15    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    if-eqz v15, :cond_2

    const/4 v1, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 131
    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    .line 136
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v15    # "_result":Z
    :sswitch_8
    const-string v1, "android.hardware.location.IGeofenceHardware"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 140
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 142
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 143
    .local v4, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/hardware/location/IGeofenceHardware$Stub;->resumeGeofence(III)Z

    move-result v15

    .line 144
    .restart local v15    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    if-eqz v15, :cond_3

    const/4 v1, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 145
    :cond_3
    const/4 v1, 0x0

    goto :goto_4

    .line 150
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v15    # "_result":Z
    :sswitch_9
    const-string v1, "android.hardware.location.IGeofenceHardware"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 154
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/location/IGeofenceHardwareMonitorCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    move-result-object v3

    .line 155
    .local v3, "_arg1":Landroid/hardware/location/IGeofenceHardwareMonitorCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/hardware/location/IGeofenceHardware$Stub;->registerForMonitorStateChangeCallback(ILandroid/hardware/location/IGeofenceHardwareMonitorCallback;)Z

    move-result v15

    .line 156
    .restart local v15    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    if-eqz v15, :cond_4

    const/4 v1, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 157
    :cond_4
    const/4 v1, 0x0

    goto :goto_5

    .line 162
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/location/IGeofenceHardwareMonitorCallback;
    .end local v15    # "_result":Z
    :sswitch_a
    const-string v1, "android.hardware.location.IGeofenceHardware"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 166
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/location/IGeofenceHardwareMonitorCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    move-result-object v3

    .line 167
    .restart local v3    # "_arg1":Landroid/hardware/location/IGeofenceHardwareMonitorCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/hardware/location/IGeofenceHardware$Stub;->unregisterForMonitorStateChangeCallback(ILandroid/hardware/location/IGeofenceHardwareMonitorCallback;)Z

    move-result v15

    .line 168
    .restart local v15    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    if-eqz v15, :cond_5

    const/4 v1, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 169
    :cond_5
    const/4 v1, 0x0

    goto :goto_6

    .line 39
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
