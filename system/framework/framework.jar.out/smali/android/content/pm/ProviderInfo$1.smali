.class final Landroid/content/pm/ProviderInfo$1;
.super Ljava/lang/Object;
.source "ProviderInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/ProviderInfo;
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
        "Landroid/content/pm/ProviderInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/ProviderInfo;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 144
    new-instance v0, Landroid/content/pm/ProviderInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/content/pm/ProviderInfo;-><init>(Landroid/os/Parcel;Landroid/content/pm/ProviderInfo$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/content/pm/ProviderInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/content/pm/ProviderInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 148
    new-array v0, p1, [Landroid/content/pm/ProviderInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/content/pm/ProviderInfo$1;->newArray(I)[Landroid/content/pm/ProviderInfo;

    move-result-object v0

    return-object v0
.end method
