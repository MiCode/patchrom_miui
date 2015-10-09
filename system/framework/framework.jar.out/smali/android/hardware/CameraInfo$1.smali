.class final Landroid/hardware/CameraInfo$1;
.super Ljava/lang/Object;
.source "CameraInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/CameraInfo;
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
        "Landroid/hardware/CameraInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/CameraInfo;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 52
    new-instance v0, Landroid/hardware/CameraInfo;

    invoke-direct {v0}, Landroid/hardware/CameraInfo;-><init>()V

    .line 53
    .local v0, "info":Landroid/hardware/CameraInfo;
    invoke-virtual {v0, p1}, Landroid/hardware/CameraInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 55
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Landroid/hardware/CameraInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/CameraInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/hardware/CameraInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 60
    new-array v0, p1, [Landroid/hardware/CameraInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Landroid/hardware/CameraInfo$1;->newArray(I)[Landroid/hardware/CameraInfo;

    move-result-object v0

    return-object v0
.end method
