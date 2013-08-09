.class public Lcom/lbe/security/service/sdkhelper/SDKPermission;
.super Ljava/lang/Object;
.source "SDKPermission.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lbe/security/service/sdkhelper/SDKPermission;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field actions:I

.field defaultAction:I

.field description:I

.field group:I

.field hint:I

.field name:I

.field permId:I

.field risk:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/lbe/security/service/sdkhelper/SDKPermission$1;

    invoke-direct {v0}, Lcom/lbe/security/service/sdkhelper/SDKPermission$1;-><init>()V

    sput-object v0, Lcom/lbe/security/service/sdkhelper/SDKPermission;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 24
    iget v0, p0, Lcom/lbe/security/service/sdkhelper/SDKPermission;->permId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    iget v0, p0, Lcom/lbe/security/service/sdkhelper/SDKPermission;->defaultAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 26
    iget v0, p0, Lcom/lbe/security/service/sdkhelper/SDKPermission;->name:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    iget v0, p0, Lcom/lbe/security/service/sdkhelper/SDKPermission;->description:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    iget v0, p0, Lcom/lbe/security/service/sdkhelper/SDKPermission;->hint:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    iget v0, p0, Lcom/lbe/security/service/sdkhelper/SDKPermission;->actions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    iget v0, p0, Lcom/lbe/security/service/sdkhelper/SDKPermission;->risk:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    iget v0, p0, Lcom/lbe/security/service/sdkhelper/SDKPermission;->group:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    return-void
.end method
