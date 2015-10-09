.class public final Landroid/telephony/CellIdentityCdma;
.super Ljava/lang/Object;
.source "CellIdentityCdma.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/CellIdentityCdma;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CellSignalStrengthCdma"


# instance fields
.field private final mBasestationId:I

.field private final mLatitude:I

.field private final mLongitude:I

.field private final mNetworkId:I

.field private final mSystemId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 205
    new-instance v0, Landroid/telephony/CellIdentityCdma$1;

    invoke-direct {v0}, Landroid/telephony/CellIdentityCdma$1;-><init>()V

    sput-object v0, Landroid/telephony/CellIdentityCdma;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const v0, 0x7fffffff

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    .line 57
    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    .line 58
    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    .line 59
    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    .line 60
    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    .line 61
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0
    .param p1, "nid"    # I
    .param p2, "sid"    # I
    .param p3, "bid"    # I
    .param p4, "lon"    # I
    .param p5, "lat"    # I

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput p1, p0, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    .line 77
    iput p2, p0, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    .line 78
    iput p3, p0, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    .line 79
    iput p4, p0, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    .line 80
    iput p5, p0, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    .line 81
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    .line 201
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/CellIdentityCdma$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/telephony/CellIdentityCdma$1;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/telephony/CellIdentityCdma;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/telephony/CellIdentityCdma;)V
    .locals 1
    .param p1, "cid"    # Landroid/telephony/CellIdentityCdma;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iget v0, p1, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    .line 85
    iget v0, p1, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    .line 86
    iget v0, p1, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    .line 87
    iget v0, p1, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    .line 88
    iget v0, p1, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    .line 89
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 222
    const-string v0, "CellSignalStrengthCdma"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return-void
.end method


# virtual methods
.method copy()Landroid/telephony/CellIdentityCdma;
    .locals 1

    .prologue
    .line 92
    new-instance v0, Landroid/telephony/CellIdentityCdma;

    invoke-direct {v0, p0}, Landroid/telephony/CellIdentityCdma;-><init>(Landroid/telephony/CellIdentityCdma;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 147
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 149
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/CellIdentityCdma;

    move-object v2, v0

    .line 150
    .local v2, "o":Landroid/telephony/CellIdentityCdma;
    iget v4, p0, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    iget v5, v2, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    iget v5, v2, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    iget v5, v2, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    iget v5, v2, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    iget v5, v2, Landroid/telephony/CellIdentityCdma;->mLongitude:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    .line 159
    .end local v2    # "o":Landroid/telephony/CellIdentityCdma;
    :cond_0
    :goto_0
    return v3

    .line 155
    :catch_0
    move-exception v1

    .line 156
    .local v1, "e":Ljava/lang/ClassCastException;
    goto :goto_0
.end method

.method public getBasestationId()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    return v0
.end method

.method public getLatitude()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    return v0
.end method

.method public getLongitude()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    return v0
.end method

.method public getNetworkId()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    return v0
.end method

.method public getSystemId()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 140
    const/16 v0, 0x1f

    .line 141
    .local v0, "primeNum":I
    iget v1, p0, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    mul-int/2addr v1, v0

    iget v2, p0, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CellIdentityCdma:{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, " mNetworkId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 167
    const-string v1, " mSystemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    const-string v1, " mBasestationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    const-string v1, " mLongitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    const-string v1, " mLatitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 186
    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    return-void
.end method
