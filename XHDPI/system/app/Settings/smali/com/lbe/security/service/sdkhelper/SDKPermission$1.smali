.class Lcom/lbe/security/service/sdkhelper/SDKPermission$1;
.super Ljava/lang/Object;
.source "SDKPermission.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lbe/security/service/sdkhelper/SDKPermission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/lbe/security/service/sdkhelper/SDKPermission;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lbe/security/service/sdkhelper/SDKPermission;
    .locals 2
    .parameter "source"

    .prologue
    .line 36
    new-instance v0, Lcom/lbe/security/service/sdkhelper/SDKPermission;

    invoke-direct {v0}, Lcom/lbe/security/service/sdkhelper/SDKPermission;-><init>()V

    .line 37
    .local v0, result:Lcom/lbe/security/service/sdkhelper/SDKPermission;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/lbe/security/service/sdkhelper/SDKPermission;->permId:I

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/lbe/security/service/sdkhelper/SDKPermission;->defaultAction:I

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/lbe/security/service/sdkhelper/SDKPermission;->name:I

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/lbe/security/service/sdkhelper/SDKPermission;->description:I

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/lbe/security/service/sdkhelper/SDKPermission;->hint:I

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/lbe/security/service/sdkhelper/SDKPermission;->actions:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/lbe/security/service/sdkhelper/SDKPermission;->risk:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/lbe/security/service/sdkhelper/SDKPermission;->group:I

    .line 46
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lbe/security/service/sdkhelper/SDKPermission$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lbe/security/service/sdkhelper/SDKPermission;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lbe/security/service/sdkhelper/SDKPermission;
    .locals 1
    .parameter "size"

    .prologue
    .line 50
    new-array v0, p1, [Lcom/lbe/security/service/sdkhelper/SDKPermission;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lbe/security/service/sdkhelper/SDKPermission$1;->newArray(I)[Lcom/lbe/security/service/sdkhelper/SDKPermission;

    move-result-object v0

    return-object v0
.end method
