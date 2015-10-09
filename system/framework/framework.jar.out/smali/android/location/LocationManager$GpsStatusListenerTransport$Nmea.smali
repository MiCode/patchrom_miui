.class Landroid/location/LocationManager$GpsStatusListenerTransport$Nmea;
.super Ljava/lang/Object;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager$GpsStatusListenerTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Nmea"
.end annotation


# instance fields
.field mNmea:Ljava/lang/String;

.field mTimestamp:J

.field final synthetic this$1:Landroid/location/LocationManager$GpsStatusListenerTransport;


# direct methods
.method constructor <init>(Landroid/location/LocationManager$GpsStatusListenerTransport;JLjava/lang/String;)V
    .locals 0
    .param p2, "timestamp"    # J
    .param p4, "nmea"    # Ljava/lang/String;

    .prologue
    .line 1377
    iput-object p1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport$Nmea;->this$1:Landroid/location/LocationManager$GpsStatusListenerTransport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1378
    iput-wide p2, p0, Landroid/location/LocationManager$GpsStatusListenerTransport$Nmea;->mTimestamp:J

    .line 1379
    iput-object p4, p0, Landroid/location/LocationManager$GpsStatusListenerTransport$Nmea;->mNmea:Ljava/lang/String;

    .line 1380
    return-void
.end method
