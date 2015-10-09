.class public Landroid/net/MobileLinkQualityInfo;
.super Landroid/net/LinkQualityInfo;
.source "MobileLinkQualityInfo.java"


# instance fields
.field private mCdmaDbm:I

.field private mCdmaEcio:I

.field private mEvdoDbm:I

.field private mEvdoEcio:I

.field private mEvdoSnr:I

.field private mGsmErrorRate:I

.field private mLteCqi:I

.field private mLteRsrp:I

.field private mLteRsrq:I

.field private mLteRssnr:I

.field private mLteSignalStrength:I

.field private mMobileNetworkType:I

.field private mRssi:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const v0, 0x7fffffff

    .line 26
    invoke-direct {p0}, Landroid/net/LinkQualityInfo;-><init>()V

    .line 28
    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mMobileNetworkType:I

    .line 29
    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mRssi:I

    .line 30
    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mGsmErrorRate:I

    .line 31
    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mCdmaDbm:I

    .line 32
    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mCdmaEcio:I

    .line 33
    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoDbm:I

    .line 34
    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoEcio:I

    .line 35
    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoSnr:I

    .line 36
    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteSignalStrength:I

    .line 37
    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteRsrp:I

    .line 38
    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteRsrq:I

    .line 39
    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteRssnr:I

    .line 40
    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteCqi:I

    return-void
.end method

.method public static createFromParcelBody(Landroid/os/Parcel;)Landroid/net/MobileLinkQualityInfo;
    .locals 2
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    .line 71
    new-instance v0, Landroid/net/MobileLinkQualityInfo;

    invoke-direct {v0}, Landroid/net/MobileLinkQualityInfo;-><init>()V

    .line 73
    .local v0, "li":Landroid/net/MobileLinkQualityInfo;
    invoke-virtual {v0, p0}, Landroid/net/MobileLinkQualityInfo;->initializeFromParcel(Landroid/os/Parcel;)V

    .line 75
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mMobileNetworkType:I

    .line 76
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mRssi:I

    .line 77
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mGsmErrorRate:I

    .line 78
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mCdmaDbm:I

    .line 79
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mCdmaEcio:I

    .line 80
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mEvdoDbm:I

    .line 81
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mEvdoEcio:I

    .line 82
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mEvdoSnr:I

    .line 83
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mLteSignalStrength:I

    .line 84
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mLteRsrp:I

    .line 85
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mLteRsrq:I

    .line 86
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mLteRssnr:I

    .line 87
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mLteCqi:I

    .line 89
    return-object v0
.end method


# virtual methods
.method public getCdmaDbm()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mCdmaDbm:I

    return v0
.end method

.method public getCdmaEcio()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mCdmaEcio:I

    return v0
.end method

.method public getEvdoDbm()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoDbm:I

    return v0
.end method

.method public getEvdoEcio()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoEcio:I

    return v0
.end method

.method public getEvdoSnr()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoSnr:I

    return v0
.end method

.method public getGsmErrorRate()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mGsmErrorRate:I

    return v0
.end method

.method public getLteCqi()I
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteCqi:I

    return v0
.end method

.method public getLteRsrp()I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteRsrp:I

    return v0
.end method

.method public getLteRsrq()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteRsrq:I

    return v0
.end method

.method public getLteRssnr()I
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteRssnr:I

    return v0
.end method

.method public getLteSignalStrength()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteSignalStrength:I

    return v0
.end method

.method public getMobileNetworkType()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mMobileNetworkType:I

    return v0
.end method

.method public getRssi()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mRssi:I

    return v0
.end method

.method public setCdmaDbm(I)V
    .locals 0
    .param p1, "cdmaDbm"    # I

    .prologue
    .line 149
    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mCdmaDbm:I

    .line 150
    return-void
.end method

.method public setCdmaEcio(I)V
    .locals 0
    .param p1, "cdmaEcio"    # I

    .prologue
    .line 164
    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mCdmaEcio:I

    .line 165
    return-void
.end method

.method public setEvdoDbm(I)V
    .locals 0
    .param p1, "evdoDbm"    # I

    .prologue
    .line 179
    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoDbm:I

    .line 180
    return-void
.end method

.method public setEvdoEcio(I)V
    .locals 0
    .param p1, "evdoEcio"    # I

    .prologue
    .line 194
    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoEcio:I

    .line 195
    return-void
.end method

.method public setEvdoSnr(I)V
    .locals 0
    .param p1, "evdoSnr"    # I

    .prologue
    .line 209
    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoSnr:I

    .line 210
    return-void
.end method

.method public setGsmErrorRate(I)V
    .locals 0
    .param p1, "gsmErrorRate"    # I

    .prologue
    .line 134
    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mGsmErrorRate:I

    .line 135
    return-void
.end method

.method public setLteCqi(I)V
    .locals 0
    .param p1, "lteCqi"    # I

    .prologue
    .line 284
    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mLteCqi:I

    .line 285
    return-void
.end method

.method public setLteRsrp(I)V
    .locals 0
    .param p1, "lteRsrp"    # I

    .prologue
    .line 239
    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mLteRsrp:I

    .line 240
    return-void
.end method

.method public setLteRsrq(I)V
    .locals 0
    .param p1, "lteRsrq"    # I

    .prologue
    .line 254
    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mLteRsrq:I

    .line 255
    return-void
.end method

.method public setLteRssnr(I)V
    .locals 0
    .param p1, "lteRssnr"    # I

    .prologue
    .line 269
    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mLteRssnr:I

    .line 270
    return-void
.end method

.method public setLteSignalStrength(I)V
    .locals 0
    .param p1, "lteSignalStrength"    # I

    .prologue
    .line 224
    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mLteSignalStrength:I

    .line 225
    return-void
.end method

.method public setMobileNetworkType(I)V
    .locals 0
    .param p1, "mobileNetworkType"    # I

    .prologue
    .line 104
    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mMobileNetworkType:I

    .line 105
    return-void
.end method

.method public setRssi(I)V
    .locals 0
    .param p1, "Rssi"    # I

    .prologue
    .line 119
    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mRssi:I

    .line 120
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 48
    const/4 v0, 0x3

    invoke-super {p0, p1, p2, v0}, Landroid/net/LinkQualityInfo;->writeToParcel(Landroid/os/Parcel;II)V

    .line 50
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mMobileNetworkType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mGsmErrorRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mCdmaDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mCdmaEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoSnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteRsrp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteRsrq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteRssnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteCqi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    return-void
.end method
