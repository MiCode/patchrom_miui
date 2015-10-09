.class final Landroid/view/PointerIcon$1;
.super Ljava/lang/Object;
.source "PointerIcon.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/PointerIcon;
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
        "Landroid/view/PointerIcon;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/PointerIcon;
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 312
    .local v4, "style":I
    if-nez v4, :cond_0

    .line 313
    invoke-static {}, Landroid/view/PointerIcon;->getNullIcon()Landroid/view/PointerIcon;

    move-result-object v3

    .line 326
    :goto_0
    return-object v3

    .line 316
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 317
    .local v5, "systemIconResourceId":I
    if-eqz v5, :cond_1

    .line 318
    new-instance v3, Landroid/view/PointerIcon;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v6}, Landroid/view/PointerIcon;-><init>(ILandroid/view/PointerIcon$1;)V

    .line 319
    .local v3, "icon":Landroid/view/PointerIcon;
    # setter for: Landroid/view/PointerIcon;->mSystemIconResourceId:I
    invoke-static {v3, v5}, Landroid/view/PointerIcon;->access$102(Landroid/view/PointerIcon;I)I

    goto :goto_0

    .line 323
    .end local v3    # "icon":Landroid/view/PointerIcon;
    :cond_1
    sget-object v6, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 324
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 325
    .local v1, "hotSpotX":F
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 326
    .local v2, "hotSpotY":F
    invoke-static {v0, v1, v2}, Landroid/view/PointerIcon;->createCustomIcon(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    move-result-object v3

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 309
    invoke-virtual {p0, p1}, Landroid/view/PointerIcon$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/view/PointerIcon;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 330
    new-array v0, p1, [Landroid/view/PointerIcon;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 309
    invoke-virtual {p0, p1}, Landroid/view/PointerIcon$1;->newArray(I)[Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method
