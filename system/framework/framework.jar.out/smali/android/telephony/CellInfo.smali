.class public abstract Landroid/telephony/CellInfo;
.super Ljava/lang/Object;
.source "CellInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final TIMESTAMP_TYPE_ANTENNA:I = 0x1

.field public static final TIMESTAMP_TYPE_JAVA_RIL:I = 0x4

.field public static final TIMESTAMP_TYPE_MODEM:I = 0x2

.field public static final TIMESTAMP_TYPE_OEM_RIL:I = 0x3

.field public static final TIMESTAMP_TYPE_UNKNOWN:I = 0x0

.field protected static final TYPE_CDMA:I = 0x2

.field protected static final TYPE_GSM:I = 0x1

.field protected static final TYPE_LTE:I = 0x3

.field protected static final TYPE_WCDMA:I = 0x4


# instance fields
.field private mRegistered:Z

.field private mTimeStamp:J

.field private mTimeStampType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 198
    new-instance v0, Landroid/telephony/CellInfo$1;

    invoke-direct {v0}, Landroid/telephony/CellInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-boolean v0, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    .line 63
    iput v0, p0, Landroid/telephony/CellInfo;->mTimeStampType:I

    .line 64
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    .line 65
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellInfo;->mTimeStampType:I

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    .line 195
    return-void

    .line 192
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Landroid/telephony/CellInfo;)V
    .locals 2
    .param p1, "ci"    # Landroid/telephony/CellInfo;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iget-boolean v0, p1, Landroid/telephony/CellInfo;->mRegistered:Z

    iput-boolean v0, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    .line 70
    iget v0, p1, Landroid/telephony/CellInfo;->mTimeStampType:I

    iput v0, p0, Landroid/telephony/CellInfo;->mTimeStampType:I

    .line 71
    iget-wide v0, p1, Landroid/telephony/CellInfo;->mTimeStamp:J

    iput-wide v0, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    .line 72
    return-void
.end method

.method private static timeStampTypeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 135
    packed-switch p0, :pswitch_data_0

    .line 145
    const-string/jumbo v0, "unknown"

    :goto_0
    return-object v0

    .line 137
    :pswitch_0
    const-string v0, "antenna"

    goto :goto_0

    .line 139
    :pswitch_1
    const-string/jumbo v0, "modem"

    goto :goto_0

    .line 141
    :pswitch_2
    const-string/jumbo v0, "oem_ril"

    goto :goto_0

    .line 143
    :pswitch_3
    const-string v0, "java_ril"

    goto :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 119
    if-nez p1, :cond_0

    .line 130
    :goto_0
    return v4

    .line 122
    :cond_0
    if-ne p0, p1, :cond_1

    move v4, v3

    .line 123
    goto :goto_0

    .line 126
    :cond_1
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/CellInfo;

    move-object v2, v0

    .line 127
    .local v2, "o":Landroid/telephony/CellInfo;
    iget-boolean v5, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    iget-boolean v6, v2, Landroid/telephony/CellInfo;->mRegistered:Z

    if-ne v5, v6, :cond_2

    iget-wide v5, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    iget-wide v7, v2, Landroid/telephony/CellInfo;->mTimeStamp:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    iget v5, p0, Landroid/telephony/CellInfo;->mTimeStampType:I

    iget v6, v2, Landroid/telephony/CellInfo;->mTimeStampType:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v5, v6, :cond_2

    :goto_1
    move v4, v3

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1

    .line 129
    .end local v2    # "o":Landroid/telephony/CellInfo;
    :catch_0
    move-exception v1

    .line 130
    .local v1, "e":Ljava/lang/ClassCastException;
    goto :goto_0
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    return-wide v0
.end method

.method public getTimeStampType()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Landroid/telephony/CellInfo;->mTimeStampType:I

    return v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 112
    const/16 v0, 0x1f

    .line 113
    .local v0, "primeNum":I
    iget-boolean v1, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    mul-int/2addr v1, v0

    iget-wide v2, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/CellInfo;->mTimeStampType:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isRegistered()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    return v0
.end method

.method public setRegisterd(Z)V
    .locals 0
    .param p1, "registered"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    .line 81
    return-void
.end method

.method public setTimeStamp(J)V
    .locals 0
    .param p1, "timeStamp"    # J

    .prologue
    .line 89
    iput-wide p1, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    .line 90
    return-void
.end method

.method public setTimeStampType(I)V
    .locals 1
    .param p1, "timeStampType"    # I

    .prologue
    .line 103
    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-le p1, v0, :cond_1

    .line 104
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/CellInfo;->mTimeStampType:I

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_1
    iput p1, p0, Landroid/telephony/CellInfo;->mTimeStampType:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 151
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 154
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v2, "mRegistered="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-boolean v2, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    if-eqz v2, :cond_0

    const-string v2, "YES"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    iget v2, p0, Landroid/telephony/CellInfo;->mTimeStampType:I

    invoke-static {v2}, Landroid/telephony/CellInfo;->timeStampTypeToString(I)Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "timeStampType":Ljava/lang/String;
    const-string v2, " mTimeStampType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    const-string v2, " mTimeStamp="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-wide v3, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, "ns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 154
    .end local v1    # "timeStampType":Ljava/lang/String;
    :cond_0
    const-string v2, "NO"

    goto :goto_0
.end method

.method public abstract writeToParcel(Landroid/os/Parcel;I)V
.end method

.method protected writeToParcel(Landroid/os/Parcel;II)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I
    .param p3, "type"    # I

    .prologue
    .line 180
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    iget-boolean v0, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    iget v0, p0, Landroid/telephony/CellInfo;->mTimeStampType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    iget-wide v0, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 184
    return-void

    .line 181
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
