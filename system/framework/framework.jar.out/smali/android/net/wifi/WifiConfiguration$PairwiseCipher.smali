.class public Landroid/net/wifi/WifiConfiguration$PairwiseCipher;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PairwiseCipher"
.end annotation


# static fields
.field public static final CCMP:I = 0x2

.field public static final NONE:I = 0x0

.field public static final TKIP:I = 0x1

.field public static final strings:[Ljava/lang/String;

.field public static final varName:Ljava/lang/String; = "pairwise"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 158
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "NONE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "TKIP"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "CCMP"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "SMS4"

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
