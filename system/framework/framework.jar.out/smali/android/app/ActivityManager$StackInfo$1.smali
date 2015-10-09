.class final Landroid/app/ActivityManager$StackInfo$1;
.super Ljava/lang/Object;
.source "ActivityManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager$StackInfo;
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
        "Landroid/app/ActivityManager$StackInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/ActivityManager$StackInfo;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 1420
    new-instance v0, Landroid/app/ActivityManager$StackInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/app/ActivityManager$StackInfo;-><init>(Landroid/os/Parcel;Landroid/app/ActivityManager$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 1417
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$StackInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/app/ActivityManager$StackInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1424
    new-array v0, p1, [Landroid/app/ActivityManager$StackInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 1417
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$StackInfo$1;->newArray(I)[Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    return-object v0
.end method
