.class Lcom/lbe/security/bean/Package$1;
.super Ljava/lang/Object;
.source "Package.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lbe/security/bean/Package;
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
        "Lcom/lbe/security/bean/Package;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lbe/security/bean/Package;
    .locals 4
    .parameter "source"

    .prologue
    const/4 v1, 0x1

    .line 82
    new-instance v0, Lcom/lbe/security/bean/Package;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/lbe/security/bean/Package;-><init>(Lcom/lbe/security/bean/Package;)V

    .line 83
    .local v0, pkg:Lcom/lbe/security/bean/Package;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/lbe/security/bean/Package;->packageName:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/lbe/security/bean/Package;->accept:J

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/lbe/security/bean/Package;->prompt:J

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/lbe/security/bean/Package;->reject:J

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/lbe/security/bean/Package;->mask:J

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    iput-boolean v1, v0, Lcom/lbe/security/bean/Package;->trust:Z

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/lbe/security/bean/Package;->uid:I

    .line 90
    return-object v0

    .line 88
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lbe/security/bean/Package$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lbe/security/bean/Package;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lbe/security/bean/Package;
    .locals 1
    .parameter "size"

    .prologue
    .line 94
    new-array v0, p1, [Lcom/lbe/security/bean/Package;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lbe/security/bean/Package$1;->newArray(I)[Lcom/lbe/security/bean/Package;

    move-result-object v0

    return-object v0
.end method
