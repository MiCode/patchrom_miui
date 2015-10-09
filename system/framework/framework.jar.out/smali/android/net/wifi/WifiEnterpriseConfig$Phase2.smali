.class public final Landroid/net/wifi/WifiEnterpriseConfig$Phase2;
.super Ljava/lang/Object;
.source "WifiEnterpriseConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiEnterpriseConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Phase2"
.end annotation


# static fields
.field public static final GTC:I = 0x4

.field public static final MSCHAP:I = 0x2

.field public static final MSCHAPV2:I = 0x3

.field public static final NONE:I = 0x0

.field public static final PAP:I = 0x1

.field private static final PREFIX:Ljava/lang/String; = "auth="

.field public static final strings:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 259
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "NULL"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "PAP"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "MSCHAP"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "MSCHAPV2"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "GTC"

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/wifi/WifiEnterpriseConfig$Phase2;->strings:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
