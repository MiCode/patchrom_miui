.class final Landroid/net/wifi/BatchedScanResult$1;
.super Ljava/lang/Object;
.source "BatchedScanResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/BatchedScanResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/wifi/BatchedScanResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/BatchedScanResult;
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x1

    .line 81
    new-instance v2, Landroid/net/wifi/BatchedScanResult;

    invoke-direct {v2}, Landroid/net/wifi/BatchedScanResult;-><init>()V

    .line 82
    .local v2, "result":Landroid/net/wifi/BatchedScanResult;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v3, :cond_0

    :goto_0
    iput-boolean v3, v2, Landroid/net/wifi/BatchedScanResult;->truncated:Z

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "count":I
    move v1, v0

    .line 84
    .end local v0    # "count":I
    .local v1, "count":I
    :goto_1
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    if-lez v1, :cond_1

    .line 85
    iget-object v3, v2, Landroid/net/wifi/BatchedScanResult;->scanResults:Ljava/util/List;

    sget-object v4, Landroid/net/wifi/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v0

    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_1

    .line 82
    .end local v1    # "count":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 87
    .restart local v0    # "count":I
    :cond_1
    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Landroid/net/wifi/BatchedScanResult$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/BatchedScanResult;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/BatchedScanResult;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 91
    new-array v0, p1, [Landroid/net/wifi/BatchedScanResult;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Landroid/net/wifi/BatchedScanResult$1;->newArray(I)[Landroid/net/wifi/BatchedScanResult;

    move-result-object v0

    return-object v0
.end method
