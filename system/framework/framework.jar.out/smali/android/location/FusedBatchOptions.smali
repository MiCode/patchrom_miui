.class public Landroid/location/FusedBatchOptions;
.super Ljava/lang/Object;
.source "FusedBatchOptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/FusedBatchOptions$BatchFlags;,
        Landroid/location/FusedBatchOptions$SourceTechnologies;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/location/FusedBatchOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile mFlags:I

.field private volatile mMaxPowerAllocationInMW:D

.field private volatile mPeriodInNS:J

.field private volatile mSourcesToUse:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    new-instance v0, Landroid/location/FusedBatchOptions$1;

    invoke-direct {v0}, Landroid/location/FusedBatchOptions$1;-><init>()V

    sput-object v0, Landroid/location/FusedBatchOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/location/FusedBatchOptions;->mPeriodInNS:J

    .line 28
    iput v2, p0, Landroid/location/FusedBatchOptions;->mSourcesToUse:I

    .line 29
    iput v2, p0, Landroid/location/FusedBatchOptions;->mFlags:I

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/location/FusedBatchOptions;->mMaxPowerAllocationInMW:D

    .line 97
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Landroid/location/FusedBatchOptions;->mFlags:I

    return v0
.end method

.method public getMaxPowerAllocationInMW()D
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Landroid/location/FusedBatchOptions;->mMaxPowerAllocationInMW:D

    return-wide v0
.end method

.method public getPeriodInNS()J
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Landroid/location/FusedBatchOptions;->mPeriodInNS:J

    return-wide v0
.end method

.method public getSourcesToUse()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Landroid/location/FusedBatchOptions;->mSourcesToUse:I

    return v0
.end method

.method public isFlagSet(I)Z
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 78
    iget v0, p0, Landroid/location/FusedBatchOptions;->mFlags:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSourceToUseSet(I)Z
    .locals 1
    .param p1, "source"    # I

    .prologue
    .line 62
    iget v0, p0, Landroid/location/FusedBatchOptions;->mSourcesToUse:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetFlag(I)V
    .locals 2
    .param p1, "flag"    # I

    .prologue
    .line 74
    iget v0, p0, Landroid/location/FusedBatchOptions;->mFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/location/FusedBatchOptions;->mFlags:I

    .line 75
    return-void
.end method

.method public resetSourceToUse(I)V
    .locals 2
    .param p1, "source"    # I

    .prologue
    .line 58
    iget v0, p0, Landroid/location/FusedBatchOptions;->mSourcesToUse:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/location/FusedBatchOptions;->mSourcesToUse:I

    .line 59
    return-void
.end method

.method public setFlag(I)V
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 70
    iget v0, p0, Landroid/location/FusedBatchOptions;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/location/FusedBatchOptions;->mFlags:I

    .line 71
    return-void
.end method

.method public setMaxPowerAllocationInMW(D)V
    .locals 0
    .param p1, "value"    # D

    .prologue
    .line 38
    iput-wide p1, p0, Landroid/location/FusedBatchOptions;->mMaxPowerAllocationInMW:D

    .line 39
    return-void
.end method

.method public setPeriodInNS(J)V
    .locals 0
    .param p1, "value"    # J

    .prologue
    .line 46
    iput-wide p1, p0, Landroid/location/FusedBatchOptions;->mPeriodInNS:J

    .line 47
    return-void
.end method

.method public setSourceToUse(I)V
    .locals 1
    .param p1, "source"    # I

    .prologue
    .line 54
    iget v0, p0, Landroid/location/FusedBatchOptions;->mSourcesToUse:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/location/FusedBatchOptions;->mSourcesToUse:I

    .line 55
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 130
    iget-wide v0, p0, Landroid/location/FusedBatchOptions;->mMaxPowerAllocationInMW:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 131
    iget-wide v0, p0, Landroid/location/FusedBatchOptions;->mPeriodInNS:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 132
    iget v0, p0, Landroid/location/FusedBatchOptions;->mSourcesToUse:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget v0, p0, Landroid/location/FusedBatchOptions;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    return-void
.end method
