.class public Landroid/net/NetworkState;
.super Ljava/lang/Object;
.source "NetworkState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/NetworkState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final linkCapabilities:Landroid/net/LinkCapabilities;

.field public final linkProperties:Landroid/net/LinkProperties;

.field public final networkId:Ljava/lang/String;

.field public final networkInfo:Landroid/net/NetworkInfo;

.field public final subscriberId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Landroid/net/NetworkState$1;

    invoke-direct {v0}, Landroid/net/NetworkState$1;-><init>()V

    sput-object v0, Landroid/net/NetworkState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;)V
    .locals 6
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;
    .param p2, "linkProperties"    # Landroid/net/LinkProperties;
    .param p3, "linkCapabilities"    # Landroid/net/LinkCapabilities;

    .prologue
    const/4 v4, 0x0

    .line 38
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;
    .param p2, "linkProperties"    # Landroid/net/LinkProperties;
    .param p3, "linkCapabilities"    # Landroid/net/LinkCapabilities;
    .param p4, "subscriberId"    # Ljava/lang/String;
    .param p5, "networkId"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    .line 44
    iput-object p2, p0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    .line 45
    iput-object p3, p0, Landroid/net/NetworkState;->linkCapabilities:Landroid/net/LinkCapabilities;

    .line 46
    iput-object p4, p0, Landroid/net/NetworkState;->subscriberId:Ljava/lang/String;

    .line 47
    iput-object p5, p0, Landroid/net/NetworkState;->networkId:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    iput-object v0, p0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    .line 52
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/LinkProperties;

    iput-object v0, p0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    .line 53
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/LinkCapabilities;

    iput-object v0, p0, Landroid/net/NetworkState;->linkCapabilities:Landroid/net/LinkCapabilities;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkState;->subscriberId:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkState;->networkId:Ljava/lang/String;

    .line 56
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 65
    iget-object v0, p0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 66
    iget-object v0, p0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 67
    iget-object v0, p0, Landroid/net/NetworkState;->linkCapabilities:Landroid/net/LinkCapabilities;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 68
    iget-object v0, p0, Landroid/net/NetworkState;->subscriberId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Landroid/net/NetworkState;->networkId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    return-void
.end method
