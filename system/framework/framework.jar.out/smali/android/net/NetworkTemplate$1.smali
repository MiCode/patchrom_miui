.class final Landroid/net/NetworkTemplate$1;
.super Ljava/lang/Object;
.source "NetworkTemplate.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkTemplate;
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
        "Landroid/net/NetworkTemplate;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/NetworkTemplate;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 349
    new-instance v0, Landroid/net/NetworkTemplate;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/net/NetworkTemplate;-><init>(Landroid/os/Parcel;Landroid/net/NetworkTemplate$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 346
    invoke-virtual {p0, p1}, Landroid/net/NetworkTemplate$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/NetworkTemplate;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/NetworkTemplate;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 354
    new-array v0, p1, [Landroid/net/NetworkTemplate;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 346
    invoke-virtual {p0, p1}, Landroid/net/NetworkTemplate$1;->newArray(I)[Landroid/net/NetworkTemplate;

    move-result-object v0

    return-object v0
.end method
