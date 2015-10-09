.class public Landroid/media/AudioRoutesInfo;
.super Ljava/lang/Object;
.source "AudioRoutesInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/AudioRoutesInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final MAIN_DOCK_SPEAKERS:I = 0x4

.field static final MAIN_HDMI:I = 0x8

.field static final MAIN_HEADPHONES:I = 0x2

.field static final MAIN_HEADSET:I = 0x1

.field static final MAIN_SPEAKER:I


# instance fields
.field mBluetoothName:Ljava/lang/CharSequence;

.field mMainType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Landroid/media/AudioRoutesInfo$1;

    invoke-direct {v0}, Landroid/media/AudioRoutesInfo$1;-><init>()V

    sput-object v0, Landroid/media/AudioRoutesInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioRoutesInfo;->mMainType:I

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/media/AudioRoutesInfo;)V
    .locals 1
    .param p1, "o"    # Landroid/media/AudioRoutesInfo;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioRoutesInfo;->mMainType:I

    .line 41
    iget-object v0, p1, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    .line 42
    iget v0, p1, Landroid/media/AudioRoutesInfo;->mMainType:I

    iput v0, p0, Landroid/media/AudioRoutesInfo;->mMainType:I

    .line 43
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioRoutesInfo;->mMainType:I

    .line 46
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioRoutesInfo;->mMainType:I

    .line 48
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 57
    iget-object v0, p0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 58
    iget v0, p0, Landroid/media/AudioRoutesInfo;->mMainType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    return-void
.end method
