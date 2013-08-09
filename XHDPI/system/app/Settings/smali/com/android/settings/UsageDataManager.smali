.class public Lcom/android/settings/UsageDataManager;
.super Ljava/lang/Object;
.source "UsageDataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/UsageDataManager$PkgUsageStatsExtended;,
        Lcom/android/settings/UsageDataManager$UsageData;
    }
.end annotation


# instance fields
.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/UsageDataManager$UsageData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/UsageDataManager;->mData:Ljava/util/ArrayList;

    .line 105
    return-void
.end method

.method private getParcelForFile(Ljava/io/File;)Landroid/os/Parcel;
    .locals 5
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 73
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 74
    .local v2, stream:Ljava/io/FileInputStream;
    invoke-virtual {p0, v2}, Lcom/android/settings/UsageDataManager;->readFully(Ljava/io/FileInputStream;)[B

    move-result-object v1

    .line 75
    .local v1, raw:[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 76
    .local v0, in:Landroid/os/Parcel;
    array-length v3, v1

    invoke-virtual {v0, v1, v4, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 77
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 78
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 79
    return-object v0
.end method

.method private readStatsFLOCK(Ljava/io/File;)V
    .locals 13
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/settings/UsageDataManager;->getParcelForFile(Ljava/io/File;)Landroid/os/Parcel;

    move-result-object v3

    .line 84
    .local v3, in:Landroid/os/Parcel;
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 85
    .local v7, vers:I
    const/16 v8, 0x3ef

    if-eq v7, v8, :cond_1

    .line 103
    :cond_0
    return-void

    .line 88
    :cond_1
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 89
    .local v0, N:I
    :cond_2
    if-lez v0, :cond_0

    .line 90
    add-int/lit8 v0, v0, -0x1

    .line 91
    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 92
    .local v4, pkgName:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 95
    new-instance v5, Lcom/android/settings/UsageDataManager$PkgUsageStatsExtended;

    invoke-direct {v5, p0, v3}, Lcom/android/settings/UsageDataManager$PkgUsageStatsExtended;-><init>(Lcom/android/settings/UsageDataManager;Landroid/os/Parcel;)V

    .line 96
    .local v5, pus:Lcom/android/settings/UsageDataManager$PkgUsageStatsExtended;
    iget-object v8, v5, Lcom/android/settings/UsageDataManager$PkgUsageStatsExtended;->mComps:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 97
    .local v1, comp:Ljava/lang/String;
    const-string v8, "#"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 98
    const-string v8, "#"

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 99
    .local v6, str:[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/UsageDataManager;->mData:Ljava/util/ArrayList;

    new-instance v9, Lcom/android/settings/UsageDataManager$UsageData;

    const/4 v10, 0x1

    aget-object v10, v6, v10

    const/4 v11, 0x2

    aget-object v11, v6, v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-direct {v9, p0, v4, v10, v11}, Lcom/android/settings/UsageDataManager$UsageData;-><init>(Lcom/android/settings/UsageDataManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public getData()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/UsageDataManager$UsageData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v5, p0, Lcom/android/settings/UsageDataManager;->mData:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 34
    new-instance v0, Ljava/io/File;

    const-string v5, "data/system/usagestats"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 37
    .local v2, fList:[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 38
    array-length v3, v2

    .local v3, i:I
    move v4, v3

    .line 39
    .end local v3           #i:I
    .local v4, i:I
    :goto_0
    add-int/lit8 v3, v4, -0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    if-lez v4, :cond_0

    .line 40
    aget-object v5, v2, v3

    const-string v6, "usage-2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 42
    :try_start_0
    new-instance v5, Ljava/io/File;

    const-string v6, "data/system/usagestats"

    aget-object v7, v2, v3

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/android/settings/UsageDataManager;->readStatsFLOCK(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v3

    .line 45
    .end local v3           #i:I
    .restart local v4       #i:I
    goto :goto_0

    .line 43
    .end local v4           #i:I
    .restart local v3       #i:I
    :catch_0
    move-exception v1

    .line 44
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move v4, v3

    .line 45
    .end local v3           #i:I
    .restart local v4       #i:I
    goto :goto_0

    .line 50
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #i:I
    :cond_0
    iget-object v5, p0, Lcom/android/settings/UsageDataManager;->mData:Ljava/util/ArrayList;

    return-object v5

    .restart local v3       #i:I
    :cond_1
    move v4, v3

    .end local v3           #i:I
    .restart local v4       #i:I
    goto :goto_0
.end method

.method readFully(Ljava/io/FileInputStream;)[B
    .locals 7
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 54
    const/4 v4, 0x0

    .line 55
    .local v4, pos:I
    invoke-virtual {p1}, Ljava/io/FileInputStream;->available()I

    move-result v1

    .line 56
    .local v1, avail:I
    new-array v2, v1, [B

    .line 58
    .local v2, data:[B
    :cond_0
    :goto_0
    array-length v5, v2

    sub-int/2addr v5, v4

    invoke-virtual {p1, v2, v4, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0

    .line 59
    .local v0, amt:I
    if-gtz v0, :cond_1

    .line 60
    return-object v2

    .line 62
    :cond_1
    add-int/2addr v4, v0

    .line 63
    invoke-virtual {p1}, Ljava/io/FileInputStream;->available()I

    move-result v1

    .line 64
    array-length v5, v2

    sub-int/2addr v5, v4

    if-le v1, v5, :cond_0

    .line 65
    add-int v5, v4, v1

    new-array v3, v5, [B

    .line 66
    .local v3, newData:[B
    invoke-static {v2, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    move-object v2, v3

    goto :goto_0
.end method
