.class public final enum Landroid/net/wifi/WifiConfiguration$ProxySettings;
.super Ljava/lang/Enum;
.source "WifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProxySettings"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/net/wifi/WifiConfiguration$ProxySettings;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/wifi/WifiConfiguration$ProxySettings;

.field public static final enum NONE:Landroid/net/wifi/WifiConfiguration$ProxySettings;

.field public static final enum PAC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

.field public static final enum STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

.field public static final enum UNASSIGNED:Landroid/net/wifi/WifiConfiguration$ProxySettings;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 370
    new-instance v0, Landroid/net/wifi/WifiConfiguration$ProxySettings;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiConfiguration$ProxySettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/WifiConfiguration$ProxySettings;->NONE:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 373
    new-instance v0, Landroid/net/wifi/WifiConfiguration$ProxySettings;

    const-string v1, "STATIC"

    invoke-direct {v0, v1, v3}, Landroid/net/wifi/WifiConfiguration$ProxySettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 376
    new-instance v0, Landroid/net/wifi/WifiConfiguration$ProxySettings;

    const-string v1, "UNASSIGNED"

    invoke-direct {v0, v1, v4}, Landroid/net/wifi/WifiConfiguration$ProxySettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/WifiConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 379
    new-instance v0, Landroid/net/wifi/WifiConfiguration$ProxySettings;

    const-string v1, "PAC"

    invoke-direct {v0, v1, v5}, Landroid/net/wifi/WifiConfiguration$ProxySettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/WifiConfiguration$ProxySettings;->PAC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 367
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/net/wifi/WifiConfiguration$ProxySettings;

    sget-object v1, Landroid/net/wifi/WifiConfiguration$ProxySettings;->NONE:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    aput-object v1, v0, v3

    sget-object v1, Landroid/net/wifi/WifiConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    aput-object v1, v0, v4

    sget-object v1, Landroid/net/wifi/WifiConfiguration$ProxySettings;->PAC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    aput-object v1, v0, v5

    sput-object v0, Landroid/net/wifi/WifiConfiguration$ProxySettings;->$VALUES:[Landroid/net/wifi/WifiConfiguration$ProxySettings;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 367
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration$ProxySettings;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 367
    const-class v0, Landroid/net/wifi/WifiConfiguration$ProxySettings;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration$ProxySettings;

    return-object v0
.end method

.method public static values()[Landroid/net/wifi/WifiConfiguration$ProxySettings;
    .locals 1

    .prologue
    .line 367
    sget-object v0, Landroid/net/wifi/WifiConfiguration$ProxySettings;->$VALUES:[Landroid/net/wifi/WifiConfiguration$ProxySettings;

    invoke-virtual {v0}, [Landroid/net/wifi/WifiConfiguration$ProxySettings;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/wifi/WifiConfiguration$ProxySettings;

    return-object v0
.end method
