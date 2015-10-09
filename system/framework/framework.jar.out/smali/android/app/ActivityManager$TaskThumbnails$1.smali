.class final Landroid/app/ActivityManager$TaskThumbnails$1;
.super Ljava/lang/Object;
.source "ActivityManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager$TaskThumbnails;
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
        "Landroid/app/ActivityManager$TaskThumbnails;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 902
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/ActivityManager$TaskThumbnails;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 904
    new-instance v0, Landroid/app/ActivityManager$TaskThumbnails;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/app/ActivityManager$TaskThumbnails;-><init>(Landroid/os/Parcel;Landroid/app/ActivityManager$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 902
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$TaskThumbnails$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/ActivityManager$TaskThumbnails;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/app/ActivityManager$TaskThumbnails;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 907
    new-array v0, p1, [Landroid/app/ActivityManager$TaskThumbnails;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 902
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$TaskThumbnails$1;->newArray(I)[Landroid/app/ActivityManager$TaskThumbnails;

    move-result-object v0

    return-object v0
.end method
