.class public final Landroid/net/wifi/WifiEnterpriseConfig$Eap;
.super Ljava/lang/Object;
.source "WifiEnterpriseConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiEnterpriseConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Eap"
.end annotation


# static fields
.field public static final AKA:I = 0x5

.field public static final NONE:I = -0x1

.field public static final PEAP:I = 0x0

.field public static final PWD:I = 0x3

.field public static final SIM:I = 0x4

.field public static final TLS:I = 0x1

.field public static final TTLS:I = 0x2

.field public static final strings:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 238
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "PEAP"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "TLS"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "TTLS"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "PWD"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "SIM"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "AKA"

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
