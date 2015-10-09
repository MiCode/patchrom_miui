.class final Landroid/print/PrintJobInfo$1;
.super Ljava/lang/Object;
.source "PrintJobInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintJobInfo;
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
        "Landroid/print/PrintJobInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 750
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/print/PrintJobInfo;
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 753
    new-instance v0, Landroid/print/PrintJobInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/print/PrintJobInfo;-><init>(Landroid/os/Parcel;Landroid/print/PrintJobInfo$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 750
    invoke-virtual {p0, p1}, Landroid/print/PrintJobInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/print/PrintJobInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/print/PrintJobInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 758
    new-array v0, p1, [Landroid/print/PrintJobInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 750
    invoke-virtual {p0, p1}, Landroid/print/PrintJobInfo$1;->newArray(I)[Landroid/print/PrintJobInfo;

    move-result-object v0

    return-object v0
.end method
