.class Landroid/location/GpsStatus$1;
.super Ljava/lang/Object;
.source "GpsStatus.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GpsStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Landroid/location/GpsSatellite;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/location/GpsStatus;


# direct methods
.method constructor <init>(Landroid/location/GpsStatus;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Landroid/location/GpsStatus$1;->this$0:Landroid/location/GpsStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    new-instance v0, Landroid/location/GpsStatus$SatelliteIterator;

    iget-object v1, p0, Landroid/location/GpsStatus$1;->this$0:Landroid/location/GpsStatus;

    iget-object v2, p0, Landroid/location/GpsStatus$1;->this$0:Landroid/location/GpsStatus;

    # getter for: Landroid/location/GpsStatus;->mSatellites:[Landroid/location/GpsSatellite;
    invoke-static {v2}, Landroid/location/GpsStatus;->access$000(Landroid/location/GpsStatus;)[Landroid/location/GpsSatellite;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/location/GpsStatus$SatelliteIterator;-><init>(Landroid/location/GpsStatus;[Landroid/location/GpsSatellite;)V

    return-object v0
.end method
