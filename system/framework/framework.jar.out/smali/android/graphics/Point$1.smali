.class final Landroid/graphics/Point$1;
.super Ljava/lang/Object;
.source "Point.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Point;
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
        "Landroid/graphics/Point;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/graphics/Point;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 122
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 123
    .local v0, "r":Landroid/graphics/Point;
    invoke-virtual {v0, p1}, Landroid/graphics/Point;->readFromParcel(Landroid/os/Parcel;)V

    .line 124
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Landroid/graphics/Point$1;->createFromParcel(Landroid/os/Parcel;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/graphics/Point;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 131
    new-array v0, p1, [Landroid/graphics/Point;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Landroid/graphics/Point$1;->newArray(I)[Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method
