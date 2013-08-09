.class Lcom/mediatek/audioprofile/RingerVolumePreference$SavedState;
.super Landroid/preference/Preference$BaseSavedState;
.source "RingerVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/audioprofile/RingerVolumePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mediatek/audioprofile/RingerVolumePreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mVolumeStore:[Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 450
    new-instance v0, Lcom/mediatek/audioprofile/RingerVolumePreference$SavedState$1;

    invoke-direct {v0}, Lcom/mediatek/audioprofile/RingerVolumePreference$SavedState$1;-><init>()V

    sput-object v0, Lcom/mediatek/audioprofile/RingerVolumePreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "source"

    .prologue
    .line 415
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 416
    invoke-static {}, Lcom/mediatek/audioprofile/RingerVolumePreference;->access$100()[I

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;

    iput-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SavedState;->mVolumeStore:[Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;

    .line 417
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-static {}, Lcom/mediatek/audioprofile/RingerVolumePreference;->access$100()[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 418
    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SavedState;->mVolumeStore:[Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;

    new-instance v2, Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;

    invoke-direct {v2}, Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;-><init>()V

    aput-object v2, v1, v0

    .line 419
    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SavedState;->mVolumeStore:[Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;

    aget-object v1, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;->mVolume:I

    .line 420
    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SavedState;->mVolumeStore:[Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;

    aget-object v1, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;->mOriginalVolume:I

    .line 421
    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SavedState;->mVolumeStore:[Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;

    aget-object v1, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;->mSystemVolume:I

    .line 417
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 423
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .parameter "superState"

    .prologue
    .line 446
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 448
    return-void
.end method


# virtual methods
.method getVolumeStore(I)[Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;
    .locals 3
    .parameter "count"

    .prologue
    .line 436
    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SavedState;->mVolumeStore:[Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SavedState;->mVolumeStore:[Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;

    array-length v1, v1

    if-eq v1, p1, :cond_1

    .line 437
    :cond_0
    new-array v1, p1, [Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;

    iput-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SavedState;->mVolumeStore:[Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;

    .line 438
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 439
    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SavedState;->mVolumeStore:[Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;

    new-instance v2, Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;

    invoke-direct {v2}, Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;-><init>()V

    aput-object v2, v1, v0

    .line 438
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 442
    .end local v0           #i:I
    :cond_1
    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SavedState;->mVolumeStore:[Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 427
    invoke-super {p0, p1, p2}, Landroid/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 428
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-static {}, Lcom/mediatek/audioprofile/RingerVolumePreference;->access$100()[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 429
    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SavedState;->mVolumeStore:[Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;->mVolume:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 430
    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SavedState;->mVolumeStore:[Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;->mOriginalVolume:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 431
    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SavedState;->mVolumeStore:[Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;->mSystemVolume:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 428
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 433
    :cond_0
    return-void
.end method
