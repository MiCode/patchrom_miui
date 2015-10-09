.class final Landroid/content/pm/VerifierInfo$1;
.super Ljava/lang/Object;
.source "VerifierInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/VerifierInfo;
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
        "Landroid/content/pm/VerifierInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/VerifierInfo;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 76
    new-instance v0, Landroid/content/pm/VerifierInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/content/pm/VerifierInfo;-><init>(Landroid/os/Parcel;Landroid/content/pm/VerifierInfo$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Landroid/content/pm/VerifierInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/VerifierInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/content/pm/VerifierInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 80
    new-array v0, p1, [Landroid/content/pm/VerifierInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Landroid/content/pm/VerifierInfo$1;->newArray(I)[Landroid/content/pm/VerifierInfo;

    move-result-object v0

    return-object v0
.end method
