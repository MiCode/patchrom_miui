.class final Landroid/net/LinkQualityInfo$1;
.super Ljava/lang/Object;
.source "LinkQualityInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/LinkQualityInfo;
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
        "Landroid/net/LinkQualityInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/LinkQualityInfo;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 117
    .local v1, "objectType":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 118
    new-instance v0, Landroid/net/LinkQualityInfo;

    invoke-direct {v0}, Landroid/net/LinkQualityInfo;-><init>()V

    .line 119
    .local v0, "li":Landroid/net/LinkQualityInfo;
    invoke-virtual {v0, p1}, Landroid/net/LinkQualityInfo;->initializeFromParcel(Landroid/os/Parcel;)V

    .line 126
    .end local v0    # "li":Landroid/net/LinkQualityInfo;
    :goto_0
    return-object v0

    .line 121
    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 122
    invoke-static {p1}, Landroid/net/WifiLinkQualityInfo;->createFromParcelBody(Landroid/os/Parcel;)Landroid/net/WifiLinkQualityInfo;

    move-result-object v0

    goto :goto_0

    .line 123
    :cond_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 124
    invoke-static {p1}, Landroid/net/MobileLinkQualityInfo;->createFromParcelBody(Landroid/os/Parcel;)Landroid/net/MobileLinkQualityInfo;

    move-result-object v0

    goto :goto_0

    .line 126
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 114
    invoke-virtual {p0, p1}, Landroid/net/LinkQualityInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/LinkQualityInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/LinkQualityInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 131
    new-array v0, p1, [Landroid/net/LinkQualityInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 114
    invoke-virtual {p0, p1}, Landroid/net/LinkQualityInfo$1;->newArray(I)[Landroid/net/LinkQualityInfo;

    move-result-object v0

    return-object v0
.end method
