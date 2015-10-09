.class public abstract Landroid/hardware/location/IFusedLocationHardware$Stub;
.super Landroid/os/Binder;
.source "IFusedLocationHardware.java"

# interfaces
.implements Landroid/hardware/location/IFusedLocationHardware;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/IFusedLocationHardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/IFusedLocationHardware$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.location.IFusedLocationHardware"

.field static final TRANSACTION_getSupportedBatchSize:I = 0x3

.field static final TRANSACTION_injectDeviceContext:I = 0xb

.field static final TRANSACTION_injectDiagnosticData:I = 0x9

.field static final TRANSACTION_registerSink:I = 0x1

.field static final TRANSACTION_requestBatchOfLocations:I = 0x7

.field static final TRANSACTION_startBatching:I = 0x4

.field static final TRANSACTION_stopBatching:I = 0x5

.field static final TRANSACTION_supportsDeviceContextInjection:I = 0xa

.field static final TRANSACTION_supportsDiagnosticDataInjection:I = 0x8

.field static final TRANSACTION_unregisterSink:I = 0x2

.field static final TRANSACTION_updateBatchingOptions:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "android.hardware.location.IFusedLocationHardware"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/location/IFusedLocationHardware$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IFusedLocationHardware;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 37
    :goto_0
    return-object v0

    .line 33
    :cond_0
    const-string v1, "android.hardware.location.IFusedLocationHardware"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/location/IFusedLocationHardware;

    if-eqz v1, :cond_1

    .line 35
    check-cast v0, Landroid/hardware/location/IFusedLocationHardware;

    goto :goto_0

    .line 37
    :cond_1
    new-instance v0, Landroid/hardware/location/IFusedLocationHardware$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/hardware/location/IFusedLocationHardware$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
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
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 45
    sparse-switch p1, :sswitch_data_0

    .line 163
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 49
    :sswitch_0
    const-string v3, "android.hardware.location.IFusedLocationHardware"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :sswitch_1
    const-string v3, "android.hardware.location.IFusedLocationHardware"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/location/IFusedLocationHardwareSink$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IFusedLocationHardwareSink;

    move-result-object v0

    .line 57
    .local v0, "_arg0":Landroid/hardware/location/IFusedLocationHardwareSink;
    invoke-virtual {p0, v0}, Landroid/hardware/location/IFusedLocationHardware$Stub;->registerSink(Landroid/hardware/location/IFusedLocationHardwareSink;)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 63
    .end local v0    # "_arg0":Landroid/hardware/location/IFusedLocationHardwareSink;
    :sswitch_2
    const-string v3, "android.hardware.location.IFusedLocationHardware"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/location/IFusedLocationHardwareSink$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IFusedLocationHardwareSink;

    move-result-object v0

    .line 66
    .restart local v0    # "_arg0":Landroid/hardware/location/IFusedLocationHardwareSink;
    invoke-virtual {p0, v0}, Landroid/hardware/location/IFusedLocationHardware$Stub;->unregisterSink(Landroid/hardware/location/IFusedLocationHardwareSink;)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 72
    .end local v0    # "_arg0":Landroid/hardware/location/IFusedLocationHardwareSink;
    :sswitch_3
    const-string v3, "android.hardware.location.IFusedLocationHardware"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Landroid/hardware/location/IFusedLocationHardware$Stub;->getSupportedBatchSize()I

    move-result v2

    .line 74
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 80
    .end local v2    # "_result":I
    :sswitch_4
    const-string v3, "android.hardware.location.IFusedLocationHardware"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 84
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    sget-object v3, Landroid/location/FusedBatchOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/FusedBatchOptions;

    .line 90
    .local v1, "_arg1":Landroid/location/FusedBatchOptions;
    :goto_1
    invoke-virtual {p0, v0, v1}, Landroid/hardware/location/IFusedLocationHardware$Stub;->startBatching(ILandroid/location/FusedBatchOptions;)V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 88
    .end local v1    # "_arg1":Landroid/location/FusedBatchOptions;
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/location/FusedBatchOptions;
    goto :goto_1

    .line 96
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/location/FusedBatchOptions;
    :sswitch_5
    const-string v3, "android.hardware.location.IFusedLocationHardware"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 99
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/hardware/location/IFusedLocationHardware$Stub;->stopBatching(I)V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 105
    .end local v0    # "_arg0":I
    :sswitch_6
    const-string v3, "android.hardware.location.IFusedLocationHardware"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 109
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 110
    sget-object v3, Landroid/location/FusedBatchOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/FusedBatchOptions;

    .line 115
    .restart local v1    # "_arg1":Landroid/location/FusedBatchOptions;
    :goto_2
    invoke-virtual {p0, v0, v1}, Landroid/hardware/location/IFusedLocationHardware$Stub;->updateBatchingOptions(ILandroid/location/FusedBatchOptions;)V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 113
    .end local v1    # "_arg1":Landroid/location/FusedBatchOptions;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/location/FusedBatchOptions;
    goto :goto_2

    .line 121
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/location/FusedBatchOptions;
    :sswitch_7
    const-string v3, "android.hardware.location.IFusedLocationHardware"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 124
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/hardware/location/IFusedLocationHardware$Stub;->requestBatchOfLocations(I)V

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 130
    .end local v0    # "_arg0":I
    :sswitch_8
    const-string v5, "android.hardware.location.IFusedLocationHardware"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Landroid/hardware/location/IFusedLocationHardware$Stub;->supportsDiagnosticDataInjection()Z

    move-result v2

    .line 132
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    if-eqz v2, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 138
    .end local v2    # "_result":Z
    :sswitch_9
    const-string v3, "android.hardware.location.IFusedLocationHardware"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/hardware/location/IFusedLocationHardware$Stub;->injectDiagnosticData(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 147
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_a
    const-string v5, "android.hardware.location.IFusedLocationHardware"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Landroid/hardware/location/IFusedLocationHardware$Stub;->supportsDeviceContextInjection()Z

    move-result v2

    .line 149
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    if-eqz v2, :cond_3

    move v3, v4

    :cond_3
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 155
    .end local v2    # "_result":Z
    :sswitch_b
    const-string v3, "android.hardware.location.IFusedLocationHardware"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 158
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/hardware/location/IFusedLocationHardware$Stub;->injectDeviceContext(I)V

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 45
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
