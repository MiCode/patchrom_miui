.class final Landroid/preference/VolumePreference$SavedState$1;
.super Ljava/lang/Object;
.source "VolumePreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/VolumePreference$SavedState;
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
        "Landroid/preference/VolumePreference$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/preference/VolumePreference$SavedState;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 214
    new-instance v0, Landroid/preference/VolumePreference$SavedState;

    invoke-direct {v0, p1}, Landroid/preference/VolumePreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 212
    invoke-virtual {p0, p1}, Landroid/preference/VolumePreference$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/preference/VolumePreference$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/preference/VolumePreference$SavedState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 218
    new-array v0, p1, [Landroid/preference/VolumePreference$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 212
    invoke-virtual {p0, p1}, Landroid/preference/VolumePreference$SavedState$1;->newArray(I)[Landroid/preference/VolumePreference$SavedState;

    move-result-object v0

    return-object v0
.end method
