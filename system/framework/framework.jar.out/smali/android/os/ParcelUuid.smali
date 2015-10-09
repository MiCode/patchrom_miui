.class public final Landroid/os/ParcelUuid;
.super Ljava/lang/Object;
.source "ParcelUuid.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mUuid:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    new-instance v0, Landroid/os/ParcelUuid$1;

    invoke-direct {v0}, Landroid/os/ParcelUuid$1;-><init>()V

    sput-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;)V
    .locals 0
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Landroid/os/ParcelUuid;->mUuid:Ljava/util/UUID;

    .line 38
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;
    .locals 2
    .param p0, "uuid"    # Ljava/lang/String;

    .prologue
    .line 52
    new-instance v0, Landroid/os/ParcelUuid;

    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 93
    if-nez p1, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v1

    .line 97
    :cond_1
    if-ne p0, p1, :cond_2

    .line 98
    const/4 v1, 0x1

    goto :goto_0

    .line 101
    :cond_2
    instance-of v2, p1, Landroid/os/ParcelUuid;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 105
    check-cast v0, Landroid/os/ParcelUuid;

    .line 107
    .local v0, "that":Landroid/os/ParcelUuid;
    iget-object v1, p0, Landroid/os/ParcelUuid;->mUuid:Ljava/util/UUID;

    iget-object v2, v0, Landroid/os/ParcelUuid;->mUuid:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Landroid/os/ParcelUuid;->mUuid:Ljava/util/UUID;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Landroid/os/ParcelUuid;->mUuid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Landroid/os/ParcelUuid;->mUuid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 129
    iget-object v0, p0, Landroid/os/ParcelUuid;->mUuid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 130
    iget-object v0, p0, Landroid/os/ParcelUuid;->mUuid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 131
    return-void
.end method
