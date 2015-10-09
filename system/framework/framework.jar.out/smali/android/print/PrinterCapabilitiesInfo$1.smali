.class final Landroid/print/PrinterCapabilitiesInfo$1;
.super Ljava/lang/Object;
.source "PrinterCapabilitiesInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrinterCapabilitiesInfo;
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
        "Landroid/print/PrinterCapabilitiesInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/print/PrinterCapabilitiesInfo;
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 552
    new-instance v0, Landroid/print/PrinterCapabilitiesInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/print/PrinterCapabilitiesInfo;-><init>(Landroid/os/Parcel;Landroid/print/PrinterCapabilitiesInfo$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 549
    invoke-virtual {p0, p1}, Landroid/print/PrinterCapabilitiesInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/print/PrinterCapabilitiesInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/print/PrinterCapabilitiesInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 557
    new-array v0, p1, [Landroid/print/PrinterCapabilitiesInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 549
    invoke-virtual {p0, p1}, Landroid/print/PrinterCapabilitiesInfo$1;->newArray(I)[Landroid/print/PrinterCapabilitiesInfo;

    move-result-object v0

    return-object v0
.end method
