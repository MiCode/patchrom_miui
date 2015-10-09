.class final Landroid/graphics/Region$1;
.super Ljava/lang/Object;
.source "Region.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Region;
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
        "Landroid/graphics/Region;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/graphics/Region;
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 345
    # invokes: Landroid/graphics/Region;->nativeCreateFromParcel(Landroid/os/Parcel;)I
    invoke-static {p1}, Landroid/graphics/Region;->access$000(Landroid/os/Parcel;)I

    move-result v0

    .line 346
    .local v0, "ni":I
    if-nez v0, :cond_0

    .line 347
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1

    .line 349
    :cond_0
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1, v0}, Landroid/graphics/Region;-><init>(I)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 338
    invoke-virtual {p0, p1}, Landroid/graphics/Region$1;->createFromParcel(Landroid/os/Parcel;)Landroid/graphics/Region;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/graphics/Region;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 352
    new-array v0, p1, [Landroid/graphics/Region;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 338
    invoke-virtual {p0, p1}, Landroid/graphics/Region$1;->newArray(I)[Landroid/graphics/Region;

    move-result-object v0

    return-object v0
.end method
