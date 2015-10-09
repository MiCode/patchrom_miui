.class final Landroid/print/PrinterInfo$1;
.super Ljava/lang/Object;
.source "PrinterInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrinterInfo;
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
        "Landroid/print/PrinterInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/print/PrinterInfo;
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 327
    new-instance v0, Landroid/print/PrinterInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/print/PrinterInfo;-><init>(Landroid/os/Parcel;Landroid/print/PrinterInfo$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 324
    invoke-virtual {p0, p1}, Landroid/print/PrinterInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/print/PrinterInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/print/PrinterInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 332
    new-array v0, p1, [Landroid/print/PrinterInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 324
    invoke-virtual {p0, p1}, Landroid/print/PrinterInfo$1;->newArray(I)[Landroid/print/PrinterInfo;

    move-result-object v0

    return-object v0
.end method
