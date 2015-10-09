.class final Landroid/view/KeyCharacterMap$1;
.super Ljava/lang/Object;
.source "KeyCharacterMap.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/KeyCharacterMap;
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
        "Landroid/view/KeyCharacterMap;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/KeyCharacterMap;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 278
    new-instance v0, Landroid/view/KeyCharacterMap;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/view/KeyCharacterMap;-><init>(Landroid/os/Parcel;Landroid/view/KeyCharacterMap$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 276
    invoke-virtual {p0, p1}, Landroid/view/KeyCharacterMap$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/KeyCharacterMap;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/view/KeyCharacterMap;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 281
    new-array v0, p1, [Landroid/view/KeyCharacterMap;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 276
    invoke-virtual {p0, p1}, Landroid/view/KeyCharacterMap$1;->newArray(I)[Landroid/view/KeyCharacterMap;

    move-result-object v0

    return-object v0
.end method
