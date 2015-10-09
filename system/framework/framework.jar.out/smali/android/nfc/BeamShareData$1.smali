.class final Landroid/nfc/BeamShareData$1;
.super Ljava/lang/Object;
.source "BeamShareData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/BeamShareData;
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
        "Landroid/nfc/BeamShareData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/nfc/BeamShareData;
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 45
    const/4 v3, 0x0

    .line 46
    .local v3, "uris":[Landroid/net/Uri;
    const-class v4, Landroid/nfc/NdefMessage;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/nfc/NdefMessage;

    .line 47
    .local v1, "msg":Landroid/nfc/NdefMessage;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 48
    .local v2, "numUris":I
    if-lez v2, :cond_0

    .line 49
    new-array v3, v2, [Landroid/net/Uri;

    .line 50
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    .line 52
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 54
    .local v0, "flags":I
    new-instance v4, Landroid/nfc/BeamShareData;

    invoke-direct {v4, v1, v3, v0}, Landroid/nfc/BeamShareData;-><init>(Landroid/nfc/NdefMessage;[Landroid/net/Uri;I)V

    return-object v4
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Landroid/nfc/BeamShareData$1;->createFromParcel(Landroid/os/Parcel;)Landroid/nfc/BeamShareData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/nfc/BeamShareData;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 59
    new-array v0, p1, [Landroid/nfc/BeamShareData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Landroid/nfc/BeamShareData$1;->newArray(I)[Landroid/nfc/BeamShareData;

    move-result-object v0

    return-object v0
.end method
