.class public abstract Landroid/nfc/INfcTag$Stub;
.super Landroid/os/Binder;
.source "INfcTag.java"

# interfaces
.implements Landroid/nfc/INfcTag;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/INfcTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INfcTag$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.nfc.INfcTag"

.field static final TRANSACTION_canMakeReadOnly:I = 0x11

.field static final TRANSACTION_close:I = 0x1

.field static final TRANSACTION_connect:I = 0x2

.field static final TRANSACTION_formatNdef:I = 0xc

.field static final TRANSACTION_getExtendedLengthApdusSupported:I = 0x13

.field static final TRANSACTION_getMaxTransceiveLength:I = 0x12

.field static final TRANSACTION_getTechList:I = 0x4

.field static final TRANSACTION_getTimeout:I = 0xf

.field static final TRANSACTION_isNdef:I = 0x5

.field static final TRANSACTION_isPresent:I = 0x6

.field static final TRANSACTION_ndefIsWritable:I = 0xb

.field static final TRANSACTION_ndefMakeReadOnly:I = 0xa

.field static final TRANSACTION_ndefRead:I = 0x8

.field static final TRANSACTION_ndefWrite:I = 0x9

.field static final TRANSACTION_reconnect:I = 0x3

.field static final TRANSACTION_rediscover:I = 0xd

.field static final TRANSACTION_resetTimeouts:I = 0x10

.field static final TRANSACTION_setTimeout:I = 0xe

.field static final TRANSACTION_transceive:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.nfc.INfcTag"

    invoke-virtual {p0, p0, v0}, Landroid/nfc/INfcTag$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcTag;
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
    const-string v1, "android.nfc.INfcTag"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/nfc/INfcTag;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/nfc/INfcTag;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Landroid/nfc/INfcTag$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/nfc/INfcTag$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 7
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
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 269
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 45
    :sswitch_0
    const-string v4, "android.nfc.INfcTag"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v4, "android.nfc.INfcTag"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 53
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->close(I)I

    move-result v3

    .line 54
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 60
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_2
    const-string v4, "android.nfc.INfcTag"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 64
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 65
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/nfc/INfcTag$Stub;->connect(II)I

    move-result v3

    .line 66
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 72
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v3    # "_result":I
    :sswitch_3
    const-string v4, "android.nfc.INfcTag"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 75
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->reconnect(I)I

    move-result v3

    .line 76
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 82
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_4
    const-string v4, "android.nfc.INfcTag"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 85
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->getTechList(I)[I

    move-result-object v3

    .line 86
    .local v3, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    .line 92
    .end local v0    # "_arg0":I
    .end local v3    # "_result":[I
    :sswitch_5
    const-string v6, "android.nfc.INfcTag"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 95
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->isNdef(I)Z

    move-result v3

    .line 96
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    if-eqz v3, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 102
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_6
    const-string v6, "android.nfc.INfcTag"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 105
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->isPresent(I)Z

    move-result v3

    .line 106
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    if-eqz v3, :cond_1

    move v4, v5

    :cond_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 112
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_7
    const-string v6, "android.nfc.INfcTag"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 116
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 118
    .local v1, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    move v2, v5

    .line 119
    .local v2, "_arg2":Z
    :goto_1
    invoke-virtual {p0, v0, v1, v2}, Landroid/nfc/INfcTag$Stub;->transceive(I[BZ)Landroid/nfc/TransceiveResult;

    move-result-object v3

    .line 120
    .local v3, "_result":Landroid/nfc/TransceiveResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    if-eqz v3, :cond_3

    .line 122
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    invoke-virtual {v3, p3, v5}, Landroid/nfc/TransceiveResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .end local v2    # "_arg2":Z
    .end local v3    # "_result":Landroid/nfc/TransceiveResult;
    :cond_2
    move v2, v4

    .line 118
    goto :goto_1

    .line 126
    .restart local v2    # "_arg2":Z
    .restart local v3    # "_result":Landroid/nfc/TransceiveResult;
    :cond_3
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 132
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":Z
    .end local v3    # "_result":Landroid/nfc/TransceiveResult;
    :sswitch_8
    const-string v6, "android.nfc.INfcTag"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 135
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->ndefRead(I)Landroid/nfc/NdefMessage;

    move-result-object v3

    .line 136
    .local v3, "_result":Landroid/nfc/NdefMessage;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    if-eqz v3, :cond_4

    .line 138
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    invoke-virtual {v3, p3, v5}, Landroid/nfc/NdefMessage;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 142
    :cond_4
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 148
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Landroid/nfc/NdefMessage;
    :sswitch_9
    const-string v4, "android.nfc.INfcTag"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 152
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    .line 153
    sget-object v4, Landroid/nfc/NdefMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/NdefMessage;

    .line 158
    .local v1, "_arg1":Landroid/nfc/NdefMessage;
    :goto_2
    invoke-virtual {p0, v0, v1}, Landroid/nfc/INfcTag$Stub;->ndefWrite(ILandroid/nfc/NdefMessage;)I

    move-result v3

    .line 159
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 156
    .end local v1    # "_arg1":Landroid/nfc/NdefMessage;
    .end local v3    # "_result":I
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/nfc/NdefMessage;
    goto :goto_2

    .line 165
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/nfc/NdefMessage;
    :sswitch_a
    const-string v4, "android.nfc.INfcTag"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 168
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->ndefMakeReadOnly(I)I

    move-result v3

    .line 169
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 175
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_b
    const-string v6, "android.nfc.INfcTag"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 178
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->ndefIsWritable(I)Z

    move-result v3

    .line 179
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    if-eqz v3, :cond_6

    move v4, v5

    :cond_6
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 185
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_c
    const-string v4, "android.nfc.INfcTag"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 189
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 190
    .local v1, "_arg1":[B
    invoke-virtual {p0, v0, v1}, Landroid/nfc/INfcTag$Stub;->formatNdef(I[B)I

    move-result v3

    .line 191
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 197
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[B
    .end local v3    # "_result":I
    :sswitch_d
    const-string v6, "android.nfc.INfcTag"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 200
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->rediscover(I)Landroid/nfc/Tag;

    move-result-object v3

    .line 201
    .local v3, "_result":Landroid/nfc/Tag;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    if-eqz v3, :cond_7

    .line 203
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    invoke-virtual {v3, p3, v5}, Landroid/nfc/Tag;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 207
    :cond_7
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 213
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Landroid/nfc/Tag;
    :sswitch_e
    const-string v4, "android.nfc.INfcTag"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 217
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 218
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/nfc/INfcTag$Stub;->setTimeout(II)I

    move-result v3

    .line 219
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 225
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v3    # "_result":I
    :sswitch_f
    const-string v4, "android.nfc.INfcTag"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 228
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->getTimeout(I)I

    move-result v3

    .line 229
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 235
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_10
    const-string v4, "android.nfc.INfcTag"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0}, Landroid/nfc/INfcTag$Stub;->resetTimeouts()V

    .line 237
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 242
    :sswitch_11
    const-string v6, "android.nfc.INfcTag"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 245
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->canMakeReadOnly(I)Z

    move-result v3

    .line 246
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    if-eqz v3, :cond_8

    move v4, v5

    :cond_8
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 252
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_12
    const-string v4, "android.nfc.INfcTag"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 255
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->getMaxTransceiveLength(I)I

    move-result v3

    .line 256
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 262
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_13
    const-string v6, "android.nfc.INfcTag"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0}, Landroid/nfc/INfcTag$Stub;->getExtendedLengthApdusSupported()Z

    move-result v3

    .line 264
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    if-eqz v3, :cond_9

    move v4, v5

    :cond_9
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
