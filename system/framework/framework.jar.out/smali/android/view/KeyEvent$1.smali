.class final Landroid/view/KeyEvent$1;
.super Ljava/lang/Object;
.source "KeyEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/KeyEvent;
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
        "Landroid/view/KeyEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2900
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/KeyEvent;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 2902
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 2903
    invoke-static {p1}, Landroid/view/KeyEvent;->createFromParcelBody(Landroid/os/Parcel;)Landroid/view/KeyEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 2900
    invoke-virtual {p0, p1}, Landroid/view/KeyEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/KeyEvent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/view/KeyEvent;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 2907
    new-array v0, p1, [Landroid/view/KeyEvent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 2900
    invoke-virtual {p0, p1}, Landroid/view/KeyEvent$1;->newArray(I)[Landroid/view/KeyEvent;

    move-result-object v0

    return-object v0
.end method
