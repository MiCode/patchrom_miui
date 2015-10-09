.class public abstract Landroid/media/IRemoteControlClient$Stub;
.super Landroid/os/Binder;
.source "IRemoteControlClient.java"

# interfaces
.implements Landroid/media/IRemoteControlClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IRemoteControlClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IRemoteControlClient$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.IRemoteControlClient"

.field static final TRANSACTION_enableRemoteControlDisplay:I = 0x8

.field static final TRANSACTION_informationRequestForDisplay:I = 0x2

.field static final TRANSACTION_onInformationRequested:I = 0x1

.field static final TRANSACTION_plugRemoteControlDisplay:I = 0x4

.field static final TRANSACTION_seekTo:I = 0x9

.field static final TRANSACTION_setBitmapSizeForDisplay:I = 0x6

.field static final TRANSACTION_setCurrentClientGenerationId:I = 0x3

.field static final TRANSACTION_setWantsSyncForDisplay:I = 0x7

.field static final TRANSACTION_unplugRemoteControlDisplay:I = 0x5

.field static final TRANSACTION_updateMetadata:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "android.media.IRemoteControlClient"

    invoke-virtual {p0, p0, v0}, Landroid/media/IRemoteControlClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlClient;
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
    const-string v1, "android.media.IRemoteControlClient"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/IRemoteControlClient;

    if-eqz v1, :cond_1

    .line 35
    check-cast v0, Landroid/media/IRemoteControlClient;

    goto :goto_0

    .line 37
    :cond_1
    new-instance v0, Landroid/media/IRemoteControlClient$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/media/IRemoteControlClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 45
    sparse-switch p1, :sswitch_data_0

    .line 162
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 49
    :sswitch_0
    const-string v5, "android.media.IRemoteControlClient"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :sswitch_1
    const-string v5, "android.media.IRemoteControlClient"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 58
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 59
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/media/IRemoteControlClient$Stub;->onInformationRequested(II)V

    goto :goto_0

    .line 64
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_2
    const-string v5, "android.media.IRemoteControlClient"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/media/IRemoteControlDisplay$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlDisplay;

    move-result-object v0

    .line 68
    .local v0, "_arg0":Landroid/media/IRemoteControlDisplay;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 70
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 71
    .local v3, "_arg2":I
    invoke-virtual {p0, v0, v1, v3}, Landroid/media/IRemoteControlClient$Stub;->informationRequestForDisplay(Landroid/media/IRemoteControlDisplay;II)V

    goto :goto_0

    .line 76
    .end local v0    # "_arg0":Landroid/media/IRemoteControlDisplay;
    .end local v1    # "_arg1":I
    .end local v3    # "_arg2":I
    :sswitch_3
    const-string v5, "android.media.IRemoteControlClient"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 79
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/media/IRemoteControlClient$Stub;->setCurrentClientGenerationId(I)V

    goto :goto_0

    .line 84
    .end local v0    # "_arg0":I
    :sswitch_4
    const-string v5, "android.media.IRemoteControlClient"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/media/IRemoteControlDisplay$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlDisplay;

    move-result-object v0

    .line 88
    .local v0, "_arg0":Landroid/media/IRemoteControlDisplay;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 90
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 91
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v0, v1, v3}, Landroid/media/IRemoteControlClient$Stub;->plugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)V

    goto :goto_0

    .line 96
    .end local v0    # "_arg0":Landroid/media/IRemoteControlDisplay;
    .end local v1    # "_arg1":I
    .end local v3    # "_arg2":I
    :sswitch_5
    const-string v5, "android.media.IRemoteControlClient"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/media/IRemoteControlDisplay$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlDisplay;

    move-result-object v0

    .line 99
    .restart local v0    # "_arg0":Landroid/media/IRemoteControlDisplay;
    invoke-virtual {p0, v0}, Landroid/media/IRemoteControlClient$Stub;->unplugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V

    goto :goto_0

    .line 104
    .end local v0    # "_arg0":Landroid/media/IRemoteControlDisplay;
    :sswitch_6
    const-string v5, "android.media.IRemoteControlClient"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/media/IRemoteControlDisplay$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlDisplay;

    move-result-object v0

    .line 108
    .restart local v0    # "_arg0":Landroid/media/IRemoteControlDisplay;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 110
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 111
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v0, v1, v3}, Landroid/media/IRemoteControlClient$Stub;->setBitmapSizeForDisplay(Landroid/media/IRemoteControlDisplay;II)V

    goto :goto_0

    .line 116
    .end local v0    # "_arg0":Landroid/media/IRemoteControlDisplay;
    .end local v1    # "_arg1":I
    .end local v3    # "_arg2":I
    :sswitch_7
    const-string v5, "android.media.IRemoteControlClient"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/media/IRemoteControlDisplay$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlDisplay;

    move-result-object v0

    .line 120
    .restart local v0    # "_arg0":Landroid/media/IRemoteControlDisplay;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    move v1, v4

    .line 121
    .local v1, "_arg1":Z
    :cond_0
    invoke-virtual {p0, v0, v1}, Landroid/media/IRemoteControlClient$Stub;->setWantsSyncForDisplay(Landroid/media/IRemoteControlDisplay;Z)V

    goto/16 :goto_0

    .line 126
    .end local v0    # "_arg0":Landroid/media/IRemoteControlDisplay;
    .end local v1    # "_arg1":Z
    :sswitch_8
    const-string v5, "android.media.IRemoteControlClient"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/media/IRemoteControlDisplay$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlDisplay;

    move-result-object v0

    .line 130
    .restart local v0    # "_arg0":Landroid/media/IRemoteControlDisplay;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    move v1, v4

    .line 131
    .restart local v1    # "_arg1":Z
    :cond_1
    invoke-virtual {p0, v0, v1}, Landroid/media/IRemoteControlClient$Stub;->enableRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;Z)V

    goto/16 :goto_0

    .line 136
    .end local v0    # "_arg0":Landroid/media/IRemoteControlDisplay;
    .end local v1    # "_arg1":Z
    :sswitch_9
    const-string v5, "android.media.IRemoteControlClient"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 140
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 141
    .local v1, "_arg1":J
    invoke-virtual {p0, v0, v1, v2}, Landroid/media/IRemoteControlClient$Stub;->seekTo(IJ)V

    goto/16 :goto_0

    .line 146
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":J
    :sswitch_a
    const-string v5, "android.media.IRemoteControlClient"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 150
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 152
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    .line 153
    sget-object v5, Landroid/media/Rating;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/Rating;

    .line 158
    .local v3, "_arg2":Landroid/media/Rating;
    :goto_1
    invoke-virtual {p0, v0, v1, v3}, Landroid/media/IRemoteControlClient$Stub;->updateMetadata(IILandroid/media/Rating;)V

    goto/16 :goto_0

    .line 156
    .end local v3    # "_arg2":Landroid/media/Rating;
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/media/Rating;
    goto :goto_1

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
