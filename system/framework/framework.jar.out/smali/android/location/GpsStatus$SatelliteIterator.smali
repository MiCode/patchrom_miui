.class final Landroid/location/GpsStatus$SatelliteIterator;
.super Ljava/lang/Object;
.source "GpsStatus.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GpsStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SatelliteIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Landroid/location/GpsSatellite;",
        ">;"
    }
.end annotation


# instance fields
.field mIndex:I

.field private mSatellites:[Landroid/location/GpsSatellite;

.field final synthetic this$0:Landroid/location/GpsStatus;


# direct methods
.method constructor <init>(Landroid/location/GpsStatus;[Landroid/location/GpsSatellite;)V
    .locals 1
    .param p2, "satellites"    # [Landroid/location/GpsSatellite;

    .prologue
    .line 39
    iput-object p1, p0, Landroid/location/GpsStatus$SatelliteIterator;->this$0:Landroid/location/GpsStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    .line 40
    iput-object p2, p0, Landroid/location/GpsStatus$SatelliteIterator;->mSatellites:[Landroid/location/GpsSatellite;

    .line 41
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 44
    iget v0, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/location/GpsStatus$SatelliteIterator;->mSatellites:[Landroid/location/GpsSatellite;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 45
    iget-object v1, p0, Landroid/location/GpsStatus$SatelliteIterator;->mSatellites:[Landroid/location/GpsSatellite;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Landroid/location/GpsSatellite;->mValid:Z

    if-eqz v1, :cond_0

    .line 46
    const/4 v1, 0x1

    .line 49
    :goto_1
    return v1

    .line 44
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public next()Landroid/location/GpsSatellite;
    .locals 4

    .prologue
    .line 53
    :cond_0
    iget v1, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    iget-object v2, p0, Landroid/location/GpsStatus$SatelliteIterator;->mSatellites:[Landroid/location/GpsSatellite;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 54
    iget-object v1, p0, Landroid/location/GpsStatus$SatelliteIterator;->mSatellites:[Landroid/location/GpsSatellite;

    iget v2, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    aget-object v0, v1, v2

    .line 55
    .local v0, "satellite":Landroid/location/GpsSatellite;
    iget-boolean v1, v0, Landroid/location/GpsSatellite;->mValid:Z

    if-eqz v1, :cond_0

    .line 56
    return-object v0

    .line 59
    .end local v0    # "satellite":Landroid/location/GpsSatellite;
    :cond_1
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Landroid/location/GpsStatus$SatelliteIterator;->next()Landroid/location/GpsSatellite;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
