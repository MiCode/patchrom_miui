.class public Landroid/net/nsd/DnsSdTxtRecord;
.super Ljava/lang/Object;
.source "DnsSdTxtRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/nsd/DnsSdTxtRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSeperator:B = 0x3dt


# instance fields
.field private mData:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 313
    new-instance v0, Landroid/net/nsd/DnsSdTxtRecord$1;

    invoke-direct {v0}, Landroid/net/nsd/DnsSdTxtRecord$1;-><init>()V

    sput-object v0, Landroid/net/nsd/DnsSdTxtRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/net/nsd/DnsSdTxtRecord;)V
    .locals 1
    .param p1, "src"    # Landroid/net/nsd/DnsSdTxtRecord;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p1, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    iput-object v0, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    .line 62
    :cond_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    iput-object v0, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    .line 55
    return-void
.end method

.method static synthetic access$000(Landroid/net/nsd/DnsSdTxtRecord;)[B
    .locals 1
    .param p0, "x0"    # Landroid/net/nsd/DnsSdTxtRecord;

    .prologue
    .line 42
    iget-object v0, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    return-object v0
.end method

.method private getKey(I)Ljava/lang/String;
    .locals 7
    .param p1, "index"    # I

    .prologue
    .line 195
    const/4 v2, 0x0

    .line 197
    .local v2, "avStart":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p1, :cond_0

    iget-object v4, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 198
    iget-object v4, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    aget-byte v4, v4, v2

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 197
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 201
    :cond_0
    iget-object v4, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    array-length v4, v4

    if-ge v2, v4, :cond_3

    .line 202
    iget-object v4, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    aget-byte v1, v4, v2

    .line 203
    .local v1, "avLen":I
    const/4 v0, 0x0

    .line 205
    .local v0, "aLen":I
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 206
    iget-object v4, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    add-int v5, v2, v0

    add-int/lit8 v5, v5, 0x1

    aget-byte v4, v4, v5

    const/16 v5, 0x3d

    if-ne v4, v5, :cond_2

    .line 208
    :cond_1
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    add-int/lit8 v6, v2, 0x1

    invoke-direct {v4, v5, v6, v0}, Ljava/lang/String;-><init>([BII)V

    .line 210
    .end local v0    # "aLen":I
    .end local v1    # "avLen":I
    :goto_2
    return-object v4

    .line 205
    .restart local v0    # "aLen":I
    .restart local v1    # "avLen":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 210
    .end local v0    # "aLen":I
    .end local v1    # "avLen":I
    :cond_3
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private getValue(I)[B
    .locals 9
    .param p1, "index"    # I

    .prologue
    .line 219
    const/4 v2, 0x0

    .line 220
    .local v2, "avStart":I
    const/4 v4, 0x0

    .line 222
    .local v4, "value":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p1, :cond_0

    iget-object v5, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    array-length v5, v5

    if-ge v2, v5, :cond_0

    .line 223
    iget-object v5, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    aget-byte v5, v5, v2

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v2, v5

    .line 222
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 226
    :cond_0
    iget-object v5, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    array-length v5, v5

    if-ge v2, v5, :cond_1

    .line 227
    iget-object v5, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    aget-byte v1, v5, v2

    .line 228
    .local v1, "avLen":I
    const/4 v0, 0x0

    .line 230
    .local v0, "aLen":I
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 231
    iget-object v5, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    add-int v6, v2, v0

    add-int/lit8 v6, v6, 0x1

    aget-byte v5, v5, v6

    const/16 v6, 0x3d

    if-ne v5, v6, :cond_2

    .line 232
    sub-int v5, v1, v0

    add-int/lit8 v5, v5, -0x1

    new-array v4, v5, [B

    .line 233
    iget-object v5, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    add-int v6, v2, v0

    add-int/lit8 v6, v6, 0x2

    const/4 v7, 0x0

    sub-int v8, v1, v0

    add-int/lit8 v8, v8, -0x1

    invoke-static {v5, v6, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 238
    .end local v0    # "aLen":I
    .end local v1    # "avLen":I
    :cond_1
    return-object v4

    .line 230
    .restart local v0    # "aLen":I
    .restart local v1    # "avLen":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private getValue(Ljava/lang/String;)[B
    .locals 3
    .param p1, "forKey"    # Ljava/lang/String;

    .prologue
    .line 247
    const/4 v1, 0x0

    .line 250
    .local v1, "s":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-direct {p0, v0}, Landroid/net/nsd/DnsSdTxtRecord;->getKey(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 251
    invoke-virtual {p1, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 252
    invoke-direct {p0, v0}, Landroid/net/nsd/DnsSdTxtRecord;->getValue(I)[B

    move-result-object v2

    .line 256
    :goto_1
    return-object v2

    .line 250
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 256
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getValueAsString(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 242
    invoke-direct {p0, p1}, Landroid/net/nsd/DnsSdTxtRecord;->getValue(I)[B

    move-result-object v0

    .line 243
    .local v0, "value":[B
    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private insert([B[BI)V
    .locals 11
    .param p1, "keyBytes"    # [B
    .param p2, "value"    # [B
    .param p3, "index"    # I

    .prologue
    const/4 v7, 0x0

    .line 169
    iget-object v4, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    .line 170
    .local v4, "oldBytes":[B
    if-eqz p2, :cond_0

    array-length v6, p2

    .line 171
    .local v6, "valLen":I
    :goto_0
    const/4 v2, 0x0

    .line 174
    .local v2, "insertion":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p3, :cond_1

    iget-object v8, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    array-length v8, v8

    if-ge v2, v8, :cond_1

    .line 175
    iget-object v8, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    aget-byte v8, v8, v2

    add-int/lit8 v8, v8, 0x1

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v2, v8

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    .end local v2    # "insertion":I
    .end local v6    # "valLen":I
    :cond_0
    move v6, v7

    .line 170
    goto :goto_0

    .line 178
    .restart local v1    # "i":I
    .restart local v2    # "insertion":I
    .restart local v6    # "valLen":I
    :cond_1
    array-length v8, p1

    add-int v9, v8, v6

    if-eqz p2, :cond_3

    const/4 v8, 0x1

    :goto_2
    add-int v0, v9, v8

    .line 179
    .local v0, "avLen":I
    array-length v8, v4

    add-int/2addr v8, v0

    add-int/lit8 v3, v8, 0x1

    .line 181
    .local v3, "newLen":I
    new-array v8, v3, [B

    iput-object v8, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    .line 182
    iget-object v8, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    invoke-static {v4, v7, v8, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    array-length v8, v4

    sub-int v5, v8, v2

    .line 184
    .local v5, "secondHalfLen":I
    iget-object v8, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    sub-int v9, v3, v5

    invoke-static {v4, v2, v8, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    iget-object v8, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    int-to-byte v9, v0

    aput-byte v9, v8, v2

    .line 186
    iget-object v8, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    add-int/lit8 v9, v2, 0x1

    array-length v10, p1

    invoke-static {p1, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 187
    if-eqz p2, :cond_2

    .line 188
    iget-object v8, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    add-int/lit8 v9, v2, 0x1

    array-length v10, p1

    add-int/2addr v9, v10

    const/16 v10, 0x3d

    aput-byte v10, v8, v9

    .line 189
    iget-object v8, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    array-length v9, p1

    add-int/2addr v9, v2

    add-int/lit8 v9, v9, 0x2

    invoke-static {p2, v7, v8, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    :cond_2
    return-void

    .end local v0    # "avLen":I
    .end local v3    # "newLen":I
    .end local v5    # "secondHalfLen":I
    :cond_3
    move v8, v7

    .line 178
    goto :goto_2
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 151
    const/4 v1, 0x0

    .line 152
    .local v1, "s":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-direct {p0, v0}, Landroid/net/nsd/DnsSdTxtRecord;->getKey(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 153
    invoke-virtual {p1, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 155
    :goto_1
    return v2

    .line 152
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 304
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 286
    if-ne p1, p0, :cond_0

    .line 287
    const/4 v1, 0x1

    .line 294
    :goto_0
    return v1

    .line 289
    :cond_0
    instance-of v1, p1, Landroid/net/nsd/DnsSdTxtRecord;

    if-nez v1, :cond_1

    .line 290
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 293
    check-cast v0, Landroid/net/nsd/DnsSdTxtRecord;

    .line 294
    .local v0, "record":Landroid/net/nsd/DnsSdTxtRecord;
    iget-object v1, v0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    iget-object v2, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-direct {p0, p1}, Landroid/net/nsd/DnsSdTxtRecord;->getValue(Ljava/lang/String;)[B

    move-result-object v0

    .line 114
    .local v0, "val":[B
    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRawData()[B
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public keyCount()I
    .locals 3

    .prologue
    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "nextKey":I
    :goto_0
    iget-object v2, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 144
    iget-object v2, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    aget-byte v2, v2, v1

    add-int/lit8 v2, v2, 0x1

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    :cond_0
    return v0
.end method

.method public remove(Ljava/lang/String;)I
    .locals 9
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 119
    const/4 v1, 0x0

    .line 121
    .local v1, "avStart":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    array-length v5, v5

    if-ge v1, v5, :cond_2

    .line 122
    iget-object v5, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    aget-byte v0, v5, v1

    .line 123
    .local v0, "avLen":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v5, v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v5, v0, :cond_0

    iget-object v5, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v1

    add-int/lit8 v6, v6, 0x1

    aget-byte v5, v5, v6

    const/16 v6, 0x3d

    if-ne v5, v6, :cond_1

    .line 125
    :cond_0
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Ljava/lang/String;-><init>([BII)V

    .line 126
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    .line 127
    iget-object v3, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    .line 128
    .local v3, "oldBytes":[B
    array-length v5, v3

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    new-array v5, v5, [B

    iput-object v5, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    .line 129
    iget-object v5, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    invoke-static {v3, v8, v5, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    add-int v5, v1, v0

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    array-length v7, v3

    sub-int/2addr v7, v1

    sub-int/2addr v7, v0

    add-int/lit8 v7, v7, -0x1

    invoke-static {v3, v5, v6, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    .end local v0    # "avLen":I
    .end local v2    # "i":I
    .end local v3    # "oldBytes":[B
    .end local v4    # "s":Ljava/lang/String;
    :goto_1
    return v2

    .line 135
    .restart local v0    # "avLen":I
    .restart local v2    # "i":I
    :cond_1
    add-int/lit8 v5, v0, 0x1

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v1, v5

    .line 121
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 137
    .end local v0    # "avLen":I
    :cond_2
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 74
    if-eqz p2, :cond_0

    .line 75
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 76
    .local v4, "valBytes":[B
    array-length v5, v4

    .line 83
    .local v5, "valLen":I
    :goto_0
    :try_start_0
    const-string v6, "US-ASCII"

    invoke-virtual {p1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 89
    .local v3, "keyBytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v6, v3

    if-ge v2, v6, :cond_2

    .line 90
    aget-byte v6, v3, v2

    const/16 v7, 0x3d

    if-ne v6, v7, :cond_1

    .line 91
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "= is not a valid character in key"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 78
    .end local v2    # "i":I
    .end local v3    # "keyBytes":[B
    .end local v4    # "valBytes":[B
    .end local v5    # "valLen":I
    :cond_0
    const/4 v4, 0x0

    .line 79
    .restart local v4    # "valBytes":[B
    const/4 v5, 0x0

    .restart local v5    # "valLen":I
    goto :goto_0

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "key should be US-ASCII"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 89
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v2    # "i":I
    .restart local v3    # "keyBytes":[B
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 95
    :cond_2
    array-length v6, v3

    add-int/2addr v6, v5

    const/16 v7, 0xff

    if-lt v6, v7, :cond_3

    .line 96
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Key and Value length cannot exceed 255 bytes"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 99
    :cond_3
    invoke-virtual {p0, p1}, Landroid/net/nsd/DnsSdTxtRecord;->remove(Ljava/lang/String;)I

    move-result v0

    .line 100
    .local v0, "currentLoc":I
    const/4 v6, -0x1

    if-ne v0, v6, :cond_4

    .line 101
    invoke-virtual {p0}, Landroid/net/nsd/DnsSdTxtRecord;->keyCount()I

    move-result v0

    .line 103
    :cond_4
    invoke-direct {p0, v3, v4, v0}, Landroid/net/nsd/DnsSdTxtRecord;->insert([B[BI)V

    .line 104
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 267
    const/4 v3, 0x0

    .line 269
    .local v3, "result":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-direct {p0, v2}, Landroid/net/nsd/DnsSdTxtRecord;->getKey(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "a":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 270
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "{"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, "av":Ljava/lang/String;
    invoke-direct {p0, v2}, Landroid/net/nsd/DnsSdTxtRecord;->getValueAsString(I)Ljava/lang/String;

    move-result-object v4

    .line 272
    .local v4, "val":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 273
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 276
    :goto_1
    if-nez v3, :cond_1

    .line 277
    move-object v3, v1

    .line 269
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 275
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 279
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 281
    .end local v1    # "av":Ljava/lang/String;
    .end local v4    # "val":Ljava/lang/String;
    :cond_2
    if-eqz v3, :cond_3

    .end local v3    # "result":Ljava/lang/String;
    :goto_3
    return-object v3

    .restart local v3    # "result":Ljava/lang/String;
    :cond_3
    const-string v3, ""

    goto :goto_3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 309
    iget-object v0, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 310
    return-void
.end method
