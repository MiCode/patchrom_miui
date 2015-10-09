.class final Landroid/accounts/AccountAuthenticatorResponse$1;
.super Ljava/lang/Object;
.source "AccountAuthenticatorResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/AccountAuthenticatorResponse;
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
        "Landroid/accounts/AccountAuthenticatorResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/accounts/AccountAuthenticatorResponse;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 91
    new-instance v0, Landroid/accounts/AccountAuthenticatorResponse;

    invoke-direct {v0, p1}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Landroid/accounts/AccountAuthenticatorResponse$1;->createFromParcel(Landroid/os/Parcel;)Landroid/accounts/AccountAuthenticatorResponse;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/accounts/AccountAuthenticatorResponse;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 95
    new-array v0, p1, [Landroid/accounts/AccountAuthenticatorResponse;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Landroid/accounts/AccountAuthenticatorResponse$1;->newArray(I)[Landroid/accounts/AccountAuthenticatorResponse;

    move-result-object v0

    return-object v0
.end method
