.class public Lcom/lbe/security/service/sdkhelper/SDKAction;
.super Ljava/lang/Object;
.source "SDKAction.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lbe/security/service/sdkhelper/SDKAction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field action:I

.field coloredName:I

.field name:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/lbe/security/service/sdkhelper/SDKAction$1;

    invoke-direct {v0}, Lcom/lbe/security/service/sdkhelper/SDKAction$1;-><init>()V

    sput-object v0, Lcom/lbe/security/service/sdkhelper/SDKAction;->CREATOR:Landroid/os/Parcelable$Creator;

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
    .line 14
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 19
    iget v0, p0, Lcom/lbe/security/service/sdkhelper/SDKAction;->action:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 20
    iget v0, p0, Lcom/lbe/security/service/sdkhelper/SDKAction;->name:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    iget v0, p0, Lcom/lbe/security/service/sdkhelper/SDKAction;->coloredName:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    return-void
.end method
