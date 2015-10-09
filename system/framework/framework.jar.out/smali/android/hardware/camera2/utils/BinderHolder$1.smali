.class final Landroid/hardware/camera2/utils/BinderHolder$1;
.super Ljava/lang/Object;
.source "BinderHolder.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/utils/BinderHolder;
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
        "Landroid/hardware/camera2/utils/BinderHolder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/camera2/utils/BinderHolder;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 47
    new-instance v0, Landroid/hardware/camera2/utils/BinderHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/hardware/camera2/utils/BinderHolder;-><init>(Landroid/os/Parcel;Landroid/hardware/camera2/utils/BinderHolder$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/utils/BinderHolder$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/camera2/utils/BinderHolder;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/hardware/camera2/utils/BinderHolder;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 52
    new-array v0, p1, [Landroid/hardware/camera2/utils/BinderHolder;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/utils/BinderHolder$1;->newArray(I)[Landroid/hardware/camera2/utils/BinderHolder;

    move-result-object v0

    return-object v0
.end method
