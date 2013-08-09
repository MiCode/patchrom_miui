.class Lcom/lbe/security/service/sdkhelper/SDKAction$1;
.super Ljava/lang/Object;
.source "SDKAction.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lbe/security/service/sdkhelper/SDKAction;
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
        "Lcom/lbe/security/service/sdkhelper/SDKAction;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lbe/security/service/sdkhelper/SDKAction;
    .locals 2
    .parameter "source"

    .prologue
    .line 26
    new-instance v0, Lcom/lbe/security/service/sdkhelper/SDKAction;

    invoke-direct {v0}, Lcom/lbe/security/service/sdkhelper/SDKAction;-><init>()V

    .line 27
    .local v0, result:Lcom/lbe/security/service/sdkhelper/SDKAction;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/lbe/security/service/sdkhelper/SDKAction;->action:I

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/lbe/security/service/sdkhelper/SDKAction;->name:I

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/lbe/security/service/sdkhelper/SDKAction;->coloredName:I

    .line 31
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lbe/security/service/sdkhelper/SDKAction$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lbe/security/service/sdkhelper/SDKAction;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lbe/security/service/sdkhelper/SDKAction;
    .locals 1
    .parameter "size"

    .prologue
    .line 35
    new-array v0, p1, [Lcom/lbe/security/service/sdkhelper/SDKAction;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lbe/security/service/sdkhelper/SDKAction$1;->newArray(I)[Lcom/lbe/security/service/sdkhelper/SDKAction;

    move-result-object v0

    return-object v0
.end method
