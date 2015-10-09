.class public Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
.super Ljava/lang/Object;
.source "WifiP2pServiceRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLength:I

.field private mProtocolType:I

.field private mQuery:Ljava/lang/String;

.field private mTransId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 265
    new-instance v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest$1;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IIILjava/lang/String;)V
    .locals 0
    .param p1, "serviceType"    # I
    .param p2, "length"    # I
    .param p3, "transId"    # I
    .param p4, "query"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput p1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mProtocolType:I

    .line 98
    iput p2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mLength:I

    .line 99
    iput p3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mTransId:I

    .line 100
    iput-object p4, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mQuery:Ljava/lang/String;

    .line 101
    return-void
.end method

.method synthetic constructor <init>(IIILjava/lang/String;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest$1;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;-><init>(IIILjava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "protocolType"    # I
    .param p2, "query"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-direct {p0, p2}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->validateQuery(Ljava/lang/String;)V

    .line 78
    iput p1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mProtocolType:I

    .line 79
    iput-object p2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mQuery:Ljava/lang/String;

    .line 80
    if-eqz p2, :cond_0

    .line 81
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mLength:I

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mLength:I

    goto :goto_0
.end method

.method public static newInstance(I)Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
    .locals 2
    .param p0, "protocolType"    # I

    .prologue
    .line 211
    new-instance v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static newInstance(ILjava/lang/String;)Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
    .locals 1
    .param p0, "protocolType"    # I
    .param p1, "queryData"    # Ljava/lang/String;

    .prologue
    .line 196
    new-instance v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    invoke-direct {v0, p0, p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method private validateQuery(Ljava/lang/String;)V
    .locals 9
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 157
    if-nez p1, :cond_1

    .line 181
    :cond_0
    return-void

    .line 161
    :cond_1
    const v0, 0xffff

    .line 162
    .local v0, "UNSIGNED_SHORT_MAX":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    rem-int/lit8 v6, v6, 0x2

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 163
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "query size is invalid. query="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 166
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    if-le v6, v0, :cond_3

    .line 167
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "query size is too large. len="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 172
    :cond_3
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 173
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 174
    .local v3, "chars":[C
    move-object v1, v3

    .local v1, "arr$":[C
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-char v2, v1, v4

    .line 175
    .local v2, "c":C
    const/16 v6, 0x30

    if-lt v2, v6, :cond_4

    const/16 v6, 0x39

    if-le v2, v6, :cond_6

    :cond_4
    const/16 v6, 0x61

    if-lt v2, v6, :cond_5

    const/16 v6, 0x66

    if-le v2, v6, :cond_6

    .line 177
    :cond_5
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "query should be hex string. query="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 174
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 216
    if-ne p1, p0, :cond_1

    .line 239
    :cond_0
    :goto_0
    return v1

    .line 219
    :cond_1
    instance-of v3, p1, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    if-nez v3, :cond_2

    move v1, v2

    .line 220
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 223
    check-cast v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    .line 229
    .local v0, "req":Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
    iget v3, v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mProtocolType:I

    iget v4, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mProtocolType:I

    if-ne v3, v4, :cond_3

    iget v3, v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mLength:I

    iget v4, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mLength:I

    if-eq v3, v4, :cond_4

    :cond_3
    move v1, v2

    .line 231
    goto :goto_0

    .line 234
    :cond_4
    iget-object v3, v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mQuery:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mQuery:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 236
    :cond_5
    iget-object v1, v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mQuery:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 237
    iget-object v1, v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mQuery:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mQuery:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_6
    move v1, v2

    .line 239
    goto :goto_0
.end method

.method public getSupplicantQuery()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 137
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 139
    .local v0, "sb":Ljava/lang/StringBuffer;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%02x"

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mLength:I

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%02x"

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mLength:I

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%02x"

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mProtocolType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%02x"

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mTransId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    iget-object v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mQuery:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTransactionId()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mTransId:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 244
    const/16 v0, 0x11

    .line 245
    .local v0, "result":I
    iget v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mProtocolType:I

    add-int/lit16 v0, v1, 0x20f

    .line 246
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mLength:I

    add-int v0, v1, v2

    .line 247
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mQuery:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int v0, v2, v1

    .line 248
    return v0

    .line 247
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mQuery:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public setTransactionId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 120
    iput p1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mTransId:I

    .line 121
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 258
    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mProtocolType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mTransId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mQuery:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 262
    return-void
.end method
