.class final Landroid/content/UriPermission$1;
.super Ljava/lang/Object;
.source "UriPermission.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/UriPermission;
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
        "Landroid/content/UriPermission;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/UriPermission;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 109
    new-instance v0, Landroid/content/UriPermission;

    invoke-direct {v0, p1}, Landroid/content/UriPermission;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Landroid/content/UriPermission$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/UriPermission;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/content/UriPermission;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 114
    new-array v0, p1, [Landroid/content/UriPermission;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Landroid/content/UriPermission$1;->newArray(I)[Landroid/content/UriPermission;

    move-result-object v0

    return-object v0
.end method
