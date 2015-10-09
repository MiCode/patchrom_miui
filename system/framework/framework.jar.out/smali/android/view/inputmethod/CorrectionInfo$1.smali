.class final Landroid/view/inputmethod/CorrectionInfo$1;
.super Ljava/lang/Object;
.source "CorrectionInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/CorrectionInfo;
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
        "Landroid/view/inputmethod/CorrectionInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/inputmethod/CorrectionInfo;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 94
    new-instance v0, Landroid/view/inputmethod/CorrectionInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/view/inputmethod/CorrectionInfo;-><init>(Landroid/os/Parcel;Landroid/view/inputmethod/CorrectionInfo$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/CorrectionInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/inputmethod/CorrectionInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/view/inputmethod/CorrectionInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 98
    new-array v0, p1, [Landroid/view/inputmethod/CorrectionInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/CorrectionInfo$1;->newArray(I)[Landroid/view/inputmethod/CorrectionInfo;

    move-result-object v0

    return-object v0
.end method
