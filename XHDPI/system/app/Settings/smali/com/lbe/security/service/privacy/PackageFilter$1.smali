.class Lcom/lbe/security/service/privacy/PackageFilter$1;
.super Ljava/lang/Object;
.source "PackageFilter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lbe/security/service/privacy/PackageFilter;
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
        "Lcom/lbe/security/service/privacy/PackageFilter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lbe/security/service/privacy/PackageFilter;
    .locals 6
    .parameter "source"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 50
    new-instance v0, Lcom/lbe/security/service/privacy/PackageFilter;

    invoke-direct {v0}, Lcom/lbe/security/service/privacy/PackageFilter;-><init>()V

    .line 51
    .local v0, filter:Lcom/lbe/security/service/privacy/PackageFilter;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lbe/security/service/privacy/PackageFilter;->pkgName:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/lbe/security/service/privacy/PackageFilter;->uid:Ljava/lang/Integer;

    .line 53
    iget-object v1, v0, Lcom/lbe/security/service/privacy/PackageFilter;->uid:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 54
    iput-object v3, v0, Lcom/lbe/security/service/privacy/PackageFilter;->uid:Ljava/lang/Integer;

    .line 56
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 66
    iput-object v3, v0, Lcom/lbe/security/service/privacy/PackageFilter;->trust:Ljava/lang/Boolean;

    .line 68
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 78
    iput-object v3, v0, Lcom/lbe/security/service/privacy/PackageFilter;->availability:Ljava/lang/Boolean;

    .line 80
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    iput-object v1, v0, Lcom/lbe/security/service/privacy/PackageFilter;->permIdList:[I

    .line 81
    return-object v0

    .line 58
    :pswitch_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/lbe/security/service/privacy/PackageFilter;->trust:Ljava/lang/Boolean;

    goto :goto_0

    .line 62
    :pswitch_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/lbe/security/service/privacy/PackageFilter;->trust:Ljava/lang/Boolean;

    goto :goto_0

    .line 70
    :pswitch_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/lbe/security/service/privacy/PackageFilter;->availability:Ljava/lang/Boolean;

    goto :goto_1

    .line 74
    :pswitch_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/lbe/security/service/privacy/PackageFilter;->availability:Ljava/lang/Boolean;

    goto :goto_1

    .line 56
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 68
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lbe/security/service/privacy/PackageFilter$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lbe/security/service/privacy/PackageFilter;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lbe/security/service/privacy/PackageFilter;
    .locals 1
    .parameter "size"

    .prologue
    .line 85
    new-array v0, p1, [Lcom/lbe/security/service/privacy/PackageFilter;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lbe/security/service/privacy/PackageFilter$1;->newArray(I)[Lcom/lbe/security/service/privacy/PackageFilter;

    move-result-object v0

    return-object v0
.end method
