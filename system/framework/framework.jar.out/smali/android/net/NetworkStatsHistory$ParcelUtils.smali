.class public Landroid/net/NetworkStatsHistory$ParcelUtils;
.super Ljava/lang/Object;
.source "NetworkStatsHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkStatsHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParcelUtils"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 712
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readLongArray(Landroid/os/Parcel;)[J
    .locals 5
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    .line 714
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 715
    .local v1, "size":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    const/4 v2, 0x0

    .line 720
    :cond_0
    return-object v2

    .line 716
    :cond_1
    new-array v2, v1, [J

    .line 717
    .local v2, "values":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 718
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    aput-wide v3, v2, v0

    .line 717
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static writeLongArray(Landroid/os/Parcel;[JI)V
    .locals 3
    .param p0, "out"    # Landroid/os/Parcel;
    .param p1, "values"    # [J
    .param p2, "size"    # I

    .prologue
    .line 724
    if-nez p1, :cond_1

    .line 725
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 735
    :cond_0
    return-void

    .line 728
    :cond_1
    array-length v1, p1

    if-le p2, v1, :cond_2

    .line 729
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "size larger than length"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 731
    :cond_2
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 732
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 733
    aget-wide v1, p1, v0

    invoke-virtual {p0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 732
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
