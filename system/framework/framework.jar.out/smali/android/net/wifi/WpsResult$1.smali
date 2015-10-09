.class final Landroid/net/wifi/WpsResult$1;
.super Ljava/lang/Object;
.source "WpsResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WpsResult;
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
        "Landroid/net/wifi/WpsResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WpsResult;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 80
    new-instance v0, Landroid/net/wifi/WpsResult;

    invoke-direct {v0}, Landroid/net/wifi/WpsResult;-><init>()V

    .line 81
    .local v0, "result":Landroid/net/wifi/WpsResult;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/WpsResult$Status;->valueOf(Ljava/lang/String;)Landroid/net/wifi/WpsResult$Status;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->pin:Ljava/lang/String;

    .line 83
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Landroid/net/wifi/WpsResult$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WpsResult;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/WpsResult;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 87
    new-array v0, p1, [Landroid/net/wifi/WpsResult;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Landroid/net/wifi/WpsResult$1;->newArray(I)[Landroid/net/wifi/WpsResult;

    move-result-object v0

    return-object v0
.end method
