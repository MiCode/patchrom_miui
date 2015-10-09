.class public final enum Landroid/net/wifi/WifiConfiguration$IpAssignment;
.super Ljava/lang/Enum;
.source "WifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IpAssignment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/net/wifi/WifiConfiguration$IpAssignment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/wifi/WifiConfiguration$IpAssignment;

.field public static final enum DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

.field public static final enum STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

.field public static final enum UNASSIGNED:Landroid/net/wifi/WifiConfiguration$IpAssignment;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 352
    new-instance v0, Landroid/net/wifi/WifiConfiguration$IpAssignment;

    const-string v1, "STATIC"

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiConfiguration$IpAssignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 354
    new-instance v0, Landroid/net/wifi/WifiConfiguration$IpAssignment;

    const-string v1, "DHCP"

    invoke-direct {v0, v1, v3}, Landroid/net/wifi/WifiConfiguration$IpAssignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/WifiConfiguration$IpAssignment;->DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 357
    new-instance v0, Landroid/net/wifi/WifiConfiguration$IpAssignment;

    const-string v1, "UNASSIGNED"

    invoke-direct {v0, v1, v4}, Landroid/net/wifi/WifiConfiguration$IpAssignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/WifiConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 349
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v1, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/wifi/WifiConfiguration$IpAssignment;->DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    aput-object v1, v0, v3

    sget-object v1, Landroid/net/wifi/WifiConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    aput-object v1, v0, v4

    sput-object v0, Landroid/net/wifi/WifiConfiguration$IpAssignment;->$VALUES:[Landroid/net/wifi/WifiConfiguration$IpAssignment;

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
    .line 349
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 349
    const-class v0, Landroid/net/wifi/WifiConfiguration$IpAssignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration$IpAssignment;

    return-object v0
.end method

.method public static values()[Landroid/net/wifi/WifiConfiguration$IpAssignment;
    .locals 1

    .prologue
    .line 349
    sget-object v0, Landroid/net/wifi/WifiConfiguration$IpAssignment;->$VALUES:[Landroid/net/wifi/WifiConfiguration$IpAssignment;

    invoke-virtual {v0}, [Landroid/net/wifi/WifiConfiguration$IpAssignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/wifi/WifiConfiguration$IpAssignment;

    return-object v0
.end method
