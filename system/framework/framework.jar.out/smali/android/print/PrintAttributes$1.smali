.class final Landroid/print/PrintAttributes$1;
.super Ljava/lang/Object;
.source "PrintAttributes.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintAttributes;
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
        "Landroid/print/PrintAttributes;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/print/PrintAttributes;
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 1254
    new-instance v0, Landroid/print/PrintAttributes;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/print/PrintAttributes;-><init>(Landroid/os/Parcel;Landroid/print/PrintAttributes$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 1251
    invoke-virtual {p0, p1}, Landroid/print/PrintAttributes$1;->createFromParcel(Landroid/os/Parcel;)Landroid/print/PrintAttributes;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/print/PrintAttributes;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1259
    new-array v0, p1, [Landroid/print/PrintAttributes;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 1251
    invoke-virtual {p0, p1}, Landroid/print/PrintAttributes$1;->newArray(I)[Landroid/print/PrintAttributes;

    move-result-object v0

    return-object v0
.end method
