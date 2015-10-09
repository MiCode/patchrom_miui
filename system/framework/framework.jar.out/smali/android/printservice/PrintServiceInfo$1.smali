.class final Landroid/printservice/PrintServiceInfo$1;
.super Ljava/lang/Object;
.source "PrintServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/printservice/PrintServiceInfo;
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
        "Landroid/printservice/PrintServiceInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/printservice/PrintServiceInfo;
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 279
    new-instance v0, Landroid/printservice/PrintServiceInfo;

    invoke-direct {v0, p1}, Landroid/printservice/PrintServiceInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 277
    invoke-virtual {p0, p1}, Landroid/printservice/PrintServiceInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/printservice/PrintServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/printservice/PrintServiceInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 283
    new-array v0, p1, [Landroid/printservice/PrintServiceInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 277
    invoke-virtual {p0, p1}, Landroid/printservice/PrintServiceInfo$1;->newArray(I)[Landroid/printservice/PrintServiceInfo;

    move-result-object v0

    return-object v0
.end method
