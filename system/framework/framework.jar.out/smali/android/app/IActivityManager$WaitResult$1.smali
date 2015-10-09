.class final Landroid/app/IActivityManager$WaitResult$1;
.super Ljava/lang/Object;
.source "IActivityManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IActivityManager$WaitResult;
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
        "Landroid/app/IActivityManager$WaitResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/IActivityManager$WaitResult;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 495
    new-instance v0, Landroid/app/IActivityManager$WaitResult;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/app/IActivityManager$WaitResult;-><init>(Landroid/os/Parcel;Landroid/app/IActivityManager$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 492
    invoke-virtual {p0, p1}, Landroid/app/IActivityManager$WaitResult$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/IActivityManager$WaitResult;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/app/IActivityManager$WaitResult;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 500
    new-array v0, p1, [Landroid/app/IActivityManager$WaitResult;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 492
    invoke-virtual {p0, p1}, Landroid/app/IActivityManager$WaitResult$1;->newArray(I)[Landroid/app/IActivityManager$WaitResult;

    move-result-object v0

    return-object v0
.end method
