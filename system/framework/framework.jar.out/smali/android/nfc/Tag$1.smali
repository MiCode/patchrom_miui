.class final Landroid/nfc/Tag$1;
.super Ljava/lang/Object;
.source "Tag.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/Tag;
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
        "Landroid/nfc/Tag;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/nfc/Tag;
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 383
    invoke-static {p1}, Landroid/nfc/Tag;->readBytesWithNull(Landroid/os/Parcel;)[B

    move-result-object v1

    .line 384
    .local v1, "id":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v2, v0, [I

    .line 385
    .local v2, "techList":[I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readIntArray([I)V

    .line 386
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/os/Bundle;

    .line 387
    .local v3, "techExtras":[Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 388
    .local v4, "serviceHandle":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 389
    .local v6, "isMock":I
    if-nez v6, :cond_0

    .line 390
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/INfcTag$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcTag;

    move-result-object v5

    .line 396
    .local v5, "tagService":Landroid/nfc/INfcTag;
    :goto_0
    new-instance v0, Landroid/nfc/Tag;

    invoke-direct/range {v0 .. v5}, Landroid/nfc/Tag;-><init>([B[I[Landroid/os/Bundle;ILandroid/nfc/INfcTag;)V

    return-object v0

    .line 393
    .end local v5    # "tagService":Landroid/nfc/INfcTag;
    :cond_0
    const/4 v5, 0x0

    .restart local v5    # "tagService":Landroid/nfc/INfcTag;
    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 377
    invoke-virtual {p0, p1}, Landroid/nfc/Tag$1;->createFromParcel(Landroid/os/Parcel;)Landroid/nfc/Tag;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/nfc/Tag;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 401
    new-array v0, p1, [Landroid/nfc/Tag;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 377
    invoke-virtual {p0, p1}, Landroid/nfc/Tag$1;->newArray(I)[Landroid/nfc/Tag;

    move-result-object v0

    return-object v0
.end method
