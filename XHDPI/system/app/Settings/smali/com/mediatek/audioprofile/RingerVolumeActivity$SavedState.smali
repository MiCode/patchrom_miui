.class Lcom/mediatek/audioprofile/RingerVolumeActivity$SavedState;
.super Ljava/lang/Object;
.source "RingerVolumeActivity.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/audioprofile/RingerVolumeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mediatek/audioprofile/RingerVolumeActivity$SavedState;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x25be8c40f17ab62eL


# instance fields
.field private mVolumeStore:[Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 323
    new-instance v0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SavedState$1;

    invoke-direct {v0}, Lcom/mediatek/audioprofile/RingerVolumeActivity$SavedState$1;-><init>()V

    sput-object v0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "source"

    .prologue
    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    sget-object v1, Lcom/mediatek/audioprofile/RingerVolumeActivity;->SECTION_ID:[I

    array-length v1, v1

    new-array v1, v1, [Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;

    iput-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SavedState;->mVolumeStore:[Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;

    .line 296
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/mediatek/audioprofile/RingerVolumeActivity;->SECTION_ID:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 297
    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SavedState;->mVolumeStore:[Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;

    new-instance v2, Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;

    invoke-direct {v2}, Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;-><init>()V

    aput-object v2, v1, v0

    .line 298
    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SavedState;->mVolumeStore:[Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;

    aget-object v1, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;->mVolume:I

    .line 299
    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SavedState;->mVolumeStore:[Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;

    aget-object v1, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;->mOriginalVolume:I

    .line 300
    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SavedState;->mVolumeStore:[Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;

    aget-object v1, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;->mSystemVolume:I

    .line 296
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 302
    :cond_0
    return-void
.end method

.method public constructor <init>([Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;)V
    .locals 0
    .parameter "volumeStore"

    .prologue
    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    iput-object p1, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SavedState;->mVolumeStore:[Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;

    .line 292
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 336
    const/4 v0, 0x0

    return v0
.end method

.method getVolumeStore(I)[Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;
    .locals 3
    .parameter "count"

    .prologue
    .line 314
    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SavedState;->mVolumeStore:[Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SavedState;->mVolumeStore:[Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;

    array-length v1, v1

    if-eq v1, p1, :cond_1

    .line 315
    :cond_0
    new-array v1, p1, [Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;

    iput-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SavedState;->mVolumeStore:[Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;

    .line 316
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 317
    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SavedState;->mVolumeStore:[Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;

    new-instance v2, Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;

    invoke-direct {v2}, Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;-><init>()V

    aput-object v2, v1, v0

    .line 316
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 320
    .end local v0           #i:I
    :cond_1
    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SavedState;->mVolumeStore:[Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 306
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/mediatek/audioprofile/RingerVolumeActivity;->SECTION_ID:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 307
    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SavedState;->mVolumeStore:[Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;->mVolume:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SavedState;->mVolumeStore:[Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;->mOriginalVolume:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumeActivity$SavedState;->mVolumeStore:[Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;->mSystemVolume:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 311
    :cond_0
    return-void
.end method
