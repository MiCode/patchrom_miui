.class public Lcom/lbe/security/bean/Package;
.super Ljava/lang/Object;
.source "Package.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lbe/security/bean/Package;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected accept:J

.field protected mask:J

.field protected packageName:Ljava/lang/String;

.field protected prompt:J

.field protected reject:J

.field protected trust:Z

.field protected uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/lbe/security/bean/Package$1;

    invoke-direct {v0}, Lcom/lbe/security/bean/Package$1;-><init>()V

    sput-object v0, Lcom/lbe/security/bean/Package;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 12
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method synthetic constructor <init>(Lcom/lbe/security/bean/Package;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/lbe/security/bean/Package;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public getAcceptPermissions()J
    .locals 2

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/lbe/security/bean/Package;->accept:J

    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lbe/security/bean/Package;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissionBitmap()J
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/lbe/security/bean/Package;->mask:J

    return-wide v0
.end method

.method public getPromptPermissions()J
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/lbe/security/bean/Package;->prompt:J

    return-wide v0
.end method

.method public getRejectPermissions()J
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/lbe/security/bean/Package;->reject:J

    return-wide v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/lbe/security/bean/Package;->uid:I

    return v0
.end method

.method public isTrust()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/lbe/security/bean/Package;->trust:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lbe/security/bean/Package;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-wide v0, p0, Lcom/lbe/security/bean/Package;->accept:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 73
    iget-wide v0, p0, Lcom/lbe/security/bean/Package;->prompt:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 74
    iget-wide v0, p0, Lcom/lbe/security/bean/Package;->reject:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 75
    iget-wide v0, p0, Lcom/lbe/security/bean/Package;->mask:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 76
    iget-boolean v0, p0, Lcom/lbe/security/bean/Package;->trust:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget v0, p0, Lcom/lbe/security/bean/Package;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    return-void

    .line 76
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
