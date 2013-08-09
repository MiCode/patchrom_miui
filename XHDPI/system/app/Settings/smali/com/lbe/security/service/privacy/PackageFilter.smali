.class public Lcom/lbe/security/service/privacy/PackageFilter;
.super Ljava/lang/Object;
.source "PackageFilter.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lbe/security/service/privacy/PackageFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public availability:Ljava/lang/Boolean;

.field public permIdList:[I

.field public pkgName:Ljava/lang/String;

.field public trust:Ljava/lang/Boolean;

.field public uid:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/lbe/security/service/privacy/PackageFilter$1;

    invoke-direct {v0}, Lcom/lbe/security/service/privacy/PackageFilter$1;-><init>()V

    sput-object v0, Lcom/lbe/security/service/privacy/PackageFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;[I)V
    .locals 0
    .parameter "pkgName"
    .parameter "uid"
    .parameter "trust"
    .parameter "availability"
    .parameter "permIdList"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/lbe/security/service/privacy/PackageFilter;->pkgName:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/lbe/security/service/privacy/PackageFilter;->uid:Ljava/lang/Integer;

    .line 43
    iput-object p3, p0, Lcom/lbe/security/service/privacy/PackageFilter;->trust:Ljava/lang/Boolean;

    .line 44
    iput-object p4, p0, Lcom/lbe/security/service/privacy/PackageFilter;->availability:Ljava/lang/Boolean;

    .line 45
    iput-object p5, p0, Lcom/lbe/security/service/privacy/PackageFilter;->permIdList:[I

    .line 46
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public hasRootPermission()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 116
    iget-object v3, p0, Lcom/lbe/security/service/privacy/PackageFilter;->permIdList:[I

    if-nez v3, :cond_1

    .line 124
    :cond_0
    :goto_0
    return v1

    .line 119
    :cond_1
    iget-object v4, p0, Lcom/lbe/security/service/privacy/PackageFilter;->permIdList:[I

    array-length v5, v4

    move v3, v2

    :goto_1
    if-lt v3, v5, :cond_2

    move v1, v2

    .line 124
    goto :goto_0

    .line 119
    :cond_2
    aget v0, v4, v3

    .line 120
    .local v0, perm:I
    const/16 v6, 0x200

    if-eq v0, v6, :cond_0

    .line 119
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 96
    iget-object v0, p0, Lcom/lbe/security/service/privacy/PackageFilter;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/lbe/security/service/privacy/PackageFilter;->uid:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 98
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    :goto_0
    iget-object v0, p0, Lcom/lbe/security/service/privacy/PackageFilter;->trust:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 103
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    :goto_1
    iget-object v0, p0, Lcom/lbe/security/service/privacy/PackageFilter;->availability:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    .line 108
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    :goto_2
    iget-object v0, p0, Lcom/lbe/security/service/privacy/PackageFilter;->permIdList:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 113
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/lbe/security/service/privacy/PackageFilter;->uid:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/lbe/security/service/privacy/PackageFilter;->trust:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_3

    .line 110
    :cond_3
    iget-object v0, p0, Lcom/lbe/security/service/privacy/PackageFilter;->availability:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_4
.end method
