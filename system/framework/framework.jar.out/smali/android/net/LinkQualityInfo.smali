.class public Landroid/net/LinkQualityInfo;
.super Ljava/lang/Object;
.source "LinkQualityInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/LinkQualityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final NORMALIZED_MAX_SIGNAL_STRENGTH:I = 0x63

.field public static final NORMALIZED_MIN_SIGNAL_STRENGTH:I = 0x0

.field public static final NORMALIZED_SIGNAL_STRENGTH_RANGE:I = 0x64

.field protected static final OBJECT_TYPE_LINK_QUALITY_INFO:I = 0x1

.field protected static final OBJECT_TYPE_MOBILE_LINK_QUALITY_INFO:I = 0x3

.field protected static final OBJECT_TYPE_WIFI_LINK_QUALITY_INFO:I = 0x2

.field public static final UNKNOWN_INT:I = 0x7fffffff

.field public static final UNKNOWN_LONG:J = 0x7fffffffffffffffL


# instance fields
.field private mDataSampleDuration:I

.field private mLastDataSampleTime:J

.field private mNetworkType:I

.field private mNormalizedSignalStrength:I

.field private mPacketCount:J

.field private mPacketErrorCount:J

.field private mTheoreticalLatency:I

.field private mTheoreticalRxBandwidth:I

.field private mTheoreticalTxBandwidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 113
    new-instance v0, Landroid/net/LinkQualityInfo$1;

    invoke-direct {v0}, Landroid/net/LinkQualityInfo$1;-><init>()V

    sput-object v0, Landroid/net/LinkQualityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide v2, 0x7fffffffffffffffL

    const v1, 0x7fffffff

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/LinkQualityInfo;->mNetworkType:I

    .line 53
    iput v1, p0, Landroid/net/LinkQualityInfo;->mNormalizedSignalStrength:I

    .line 55
    iput-wide v2, p0, Landroid/net/LinkQualityInfo;->mPacketCount:J

    .line 56
    iput-wide v2, p0, Landroid/net/LinkQualityInfo;->mPacketErrorCount:J

    .line 57
    iput v1, p0, Landroid/net/LinkQualityInfo;->mTheoreticalTxBandwidth:I

    .line 58
    iput v1, p0, Landroid/net/LinkQualityInfo;->mTheoreticalRxBandwidth:I

    .line 59
    iput v1, p0, Landroid/net/LinkQualityInfo;->mTheoreticalLatency:I

    .line 62
    iput-wide v2, p0, Landroid/net/LinkQualityInfo;->mLastDataSampleTime:J

    .line 65
    iput v1, p0, Landroid/net/LinkQualityInfo;->mDataSampleDuration:I

    .line 69
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public getDataSampleDuration()I
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Landroid/net/LinkQualityInfo;->mDataSampleDuration:I

    return v0
.end method

.method public getLastDataSampleTime()J
    .locals 2

    .prologue
    .line 262
    iget-wide v0, p0, Landroid/net/LinkQualityInfo;->mLastDataSampleTime:J

    return-wide v0
.end method

.method public getNetworkType()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Landroid/net/LinkQualityInfo;->mNetworkType:I

    return v0
.end method

.method public getNormalizedSignalStrength()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Landroid/net/LinkQualityInfo;->mNormalizedSignalStrength:I

    return v0
.end method

.method public getPacketCount()J
    .locals 2

    .prologue
    .line 186
    iget-wide v0, p0, Landroid/net/LinkQualityInfo;->mPacketCount:J

    return-wide v0
.end method

.method public getPacketErrorCount()J
    .locals 2

    .prologue
    .line 201
    iget-wide v0, p0, Landroid/net/LinkQualityInfo;->mPacketErrorCount:J

    return-wide v0
.end method

.method public getTheoreticalLatency()I
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Landroid/net/LinkQualityInfo;->mTheoreticalLatency:I

    return v0
.end method

.method public getTheoreticalRxBandwidth()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Landroid/net/LinkQualityInfo;->mTheoreticalRxBandwidth:I

    return v0
.end method

.method public getTheoreticalTxBandwidth()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Landroid/net/LinkQualityInfo;->mTheoreticalTxBandwidth:I

    return v0
.end method

.method protected initializeFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/LinkQualityInfo;->mNetworkType:I

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/LinkQualityInfo;->mNormalizedSignalStrength:I

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/LinkQualityInfo;->mPacketCount:J

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/LinkQualityInfo;->mPacketErrorCount:J

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/LinkQualityInfo;->mTheoreticalTxBandwidth:I

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/LinkQualityInfo;->mTheoreticalRxBandwidth:I

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/LinkQualityInfo;->mTheoreticalLatency:I

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/LinkQualityInfo;->mLastDataSampleTime:J

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/LinkQualityInfo;->mDataSampleDuration:I

    .line 148
    return-void
.end method

.method public setDataSampleDuration(I)V
    .locals 0
    .param p1, "dataSampleDuration"    # I

    .prologue
    .line 284
    iput p1, p0, Landroid/net/LinkQualityInfo;->mDataSampleDuration:I

    .line 285
    return-void
.end method

.method public setLastDataSampleTime(J)V
    .locals 0
    .param p1, "lastDataSampleTime"    # J

    .prologue
    .line 269
    iput-wide p1, p0, Landroid/net/LinkQualityInfo;->mLastDataSampleTime:J

    .line 270
    return-void
.end method

.method public setNetworkType(I)V
    .locals 0
    .param p1, "networkType"    # I

    .prologue
    .line 163
    iput p1, p0, Landroid/net/LinkQualityInfo;->mNetworkType:I

    .line 164
    return-void
.end method

.method public setNormalizedSignalStrength(I)V
    .locals 0
    .param p1, "normalizedSignalStrength"    # I

    .prologue
    .line 178
    iput p1, p0, Landroid/net/LinkQualityInfo;->mNormalizedSignalStrength:I

    .line 179
    return-void
.end method

.method public setPacketCount(J)V
    .locals 0
    .param p1, "packetCount"    # J

    .prologue
    .line 193
    iput-wide p1, p0, Landroid/net/LinkQualityInfo;->mPacketCount:J

    .line 194
    return-void
.end method

.method public setPacketErrorCount(J)V
    .locals 0
    .param p1, "packetErrorCount"    # J

    .prologue
    .line 208
    iput-wide p1, p0, Landroid/net/LinkQualityInfo;->mPacketErrorCount:J

    .line 209
    return-void
.end method

.method public setTheoreticalLatency(I)V
    .locals 0
    .param p1, "theoreticalLatency"    # I

    .prologue
    .line 253
    iput p1, p0, Landroid/net/LinkQualityInfo;->mTheoreticalLatency:I

    .line 254
    return-void
.end method

.method public setTheoreticalRxBandwidth(I)V
    .locals 0
    .param p1, "theoreticalRxBandwidth"    # I

    .prologue
    .line 238
    iput p1, p0, Landroid/net/LinkQualityInfo;->mTheoreticalRxBandwidth:I

    .line 239
    return-void
.end method

.method public setTheoreticalTxBandwidth(I)V
    .locals 0
    .param p1, "theoreticalTxBandwidth"    # I

    .prologue
    .line 223
    iput p1, p0, Landroid/net/LinkQualityInfo;->mTheoreticalTxBandwidth:I

    .line 224
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 91
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/net/LinkQualityInfo;->writeToParcel(Landroid/os/Parcel;II)V

    .line 92
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;II)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I
    .param p3, "objectType"    # I

    .prologue
    .line 98
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget v0, p0, Landroid/net/LinkQualityInfo;->mNetworkType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget v0, p0, Landroid/net/LinkQualityInfo;->mNormalizedSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget-wide v0, p0, Landroid/net/LinkQualityInfo;->mPacketCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 102
    iget-wide v0, p0, Landroid/net/LinkQualityInfo;->mPacketErrorCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 103
    iget v0, p0, Landroid/net/LinkQualityInfo;->mTheoreticalTxBandwidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget v0, p0, Landroid/net/LinkQualityInfo;->mTheoreticalRxBandwidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget v0, p0, Landroid/net/LinkQualityInfo;->mTheoreticalLatency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget-wide v0, p0, Landroid/net/LinkQualityInfo;->mLastDataSampleTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 107
    iget v0, p0, Landroid/net/LinkQualityInfo;->mDataSampleDuration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    return-void
.end method
