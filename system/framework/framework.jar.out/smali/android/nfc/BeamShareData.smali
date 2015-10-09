.class public final Landroid/nfc/BeamShareData;
.super Ljava/lang/Object;
.source "BeamShareData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/nfc/BeamShareData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final flags:I

.field public final ndefMessage:Landroid/nfc/NdefMessage;

.field public final uris:[Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Landroid/nfc/BeamShareData$1;

    invoke-direct {v0}, Landroid/nfc/BeamShareData$1;-><init>()V

    sput-object v0, Landroid/nfc/BeamShareData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/nfc/NdefMessage;[Landroid/net/Uri;I)V
    .locals 0
    .param p1, "msg"    # Landroid/nfc/NdefMessage;
    .param p2, "uris"    # [Landroid/net/Uri;
    .param p3, "flags"    # I

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Landroid/nfc/BeamShareData;->ndefMessage:Landroid/nfc/NdefMessage;

    .line 21
    iput-object p2, p0, Landroid/nfc/BeamShareData;->uris:[Landroid/net/Uri;

    .line 22
    iput p3, p0, Landroid/nfc/BeamShareData;->flags:I

    .line 23
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 32
    iget-object v2, p0, Landroid/nfc/BeamShareData;->uris:[Landroid/net/Uri;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/nfc/BeamShareData;->uris:[Landroid/net/Uri;

    array-length v0, v2

    .line 33
    .local v0, "urisLength":I
    :goto_0
    iget-object v2, p0, Landroid/nfc/BeamShareData;->ndefMessage:Landroid/nfc/NdefMessage;

    invoke-virtual {p1, v2, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 34
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    if-lez v0, :cond_0

    .line 36
    iget-object v2, p0, Landroid/nfc/BeamShareData;->uris:[Landroid/net/Uri;

    invoke-virtual {p1, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 38
    :cond_0
    iget v1, p0, Landroid/nfc/BeamShareData;->flags:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    return-void

    .end local v0    # "urisLength":I
    :cond_1
    move v0, v1

    .line 32
    goto :goto_0
.end method
