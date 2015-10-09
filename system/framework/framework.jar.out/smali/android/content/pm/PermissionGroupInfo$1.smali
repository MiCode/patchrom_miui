.class final Landroid/content/pm/PermissionGroupInfo$1;
.super Ljava/lang/Object;
.source "PermissionGroupInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PermissionGroupInfo;
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
        "Landroid/content/pm/PermissionGroupInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/PermissionGroupInfo;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 117
    new-instance v0, Landroid/content/pm/PermissionGroupInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/content/pm/PermissionGroupInfo;-><init>(Landroid/os/Parcel;Landroid/content/pm/PermissionGroupInfo$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Landroid/content/pm/PermissionGroupInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/content/pm/PermissionGroupInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 120
    new-array v0, p1, [Landroid/content/pm/PermissionGroupInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Landroid/content/pm/PermissionGroupInfo$1;->newArray(I)[Landroid/content/pm/PermissionGroupInfo;

    move-result-object v0

    return-object v0
.end method
