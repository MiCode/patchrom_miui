.class final Landroid/content/res/CompatibilityInfo$2;
.super Ljava/lang/Object;
.source "CompatibilityInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/CompatibilityInfo;
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
        "Landroid/content/res/CompatibilityInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/res/CompatibilityInfo;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 586
    new-instance v0, Landroid/content/res/CompatibilityInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/os/Parcel;Landroid/content/res/CompatibilityInfo$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 583
    invoke-virtual {p0, p1}, Landroid/content/res/CompatibilityInfo$2;->createFromParcel(Landroid/os/Parcel;)Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/content/res/CompatibilityInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 591
    new-array v0, p1, [Landroid/content/res/CompatibilityInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 583
    invoke-virtual {p0, p1}, Landroid/content/res/CompatibilityInfo$2;->newArray(I)[Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    return-object v0
.end method
