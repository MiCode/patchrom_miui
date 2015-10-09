.class final Landroid/nfc/NdefRecord$1;
.super Ljava/lang/Object;
.source "NdefRecord.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/NdefRecord;
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
        "Landroid/nfc/NdefRecord;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 950
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/nfc/NdefRecord;
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 953
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    int-to-short v4, v7

    .line 954
    .local v4, "tnf":S
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 955
    .local v6, "typeLength":I
    new-array v5, v6, [B

    .line 956
    .local v5, "type":[B
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readByteArray([B)V

    .line 957
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 958
    .local v1, "idLength":I
    new-array v0, v1, [B

    .line 959
    .local v0, "id":[B
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 960
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 961
    .local v3, "payloadLength":I
    new-array v2, v3, [B

    .line 962
    .local v2, "payload":[B
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 964
    new-instance v7, Landroid/nfc/NdefRecord;

    invoke-direct {v7, v4, v5, v0, v2}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v7
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 950
    invoke-virtual {p0, p1}, Landroid/nfc/NdefRecord$1;->createFromParcel(Landroid/os/Parcel;)Landroid/nfc/NdefRecord;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/nfc/NdefRecord;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 968
    new-array v0, p1, [Landroid/nfc/NdefRecord;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 950
    invoke-virtual {p0, p1}, Landroid/nfc/NdefRecord$1;->newArray(I)[Landroid/nfc/NdefRecord;

    move-result-object v0

    return-object v0
.end method
