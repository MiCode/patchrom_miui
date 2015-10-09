.class public Landroid/net/wifi/WifiConfiguration$GroupCipher;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupCipher"
.end annotation


# static fields
.field public static final CCMP:I = 0x3

.field public static final TKIP:I = 0x2

.field public static final WEP104:I = 0x1

.field public static final WEP40:I = 0x0

.field public static final strings:[Ljava/lang/String;

.field public static final varName:Ljava/lang/String; = "group"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 185
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "WEP40"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "WEP104"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "TKIP"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "CCMP"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "SMS4"

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
