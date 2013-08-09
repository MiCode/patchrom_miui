.class final enum Lcom/android/settings/ScanState;
.super Ljava/lang/Enum;
.source "VirusScanService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/ScanState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/ScanState;

.field public static final enum ESS_PASSED:Lcom/android/settings/ScanState;

.field public static final enum ESS_RISK:Lcom/android/settings/ScanState;

.field public static final enum ESS_SCANNING:Lcom/android/settings/ScanState;

.field public static final enum ESS_UNINSTALLED:Lcom/android/settings/ScanState;

.field public static final enum ESS_WAITING:Lcom/android/settings/ScanState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/android/settings/ScanState;

    const-string v1, "ESS_WAITING"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/ScanState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/ScanState;->ESS_WAITING:Lcom/android/settings/ScanState;

    .line 25
    new-instance v0, Lcom/android/settings/ScanState;

    const-string v1, "ESS_SCANNING"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/ScanState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/ScanState;->ESS_SCANNING:Lcom/android/settings/ScanState;

    .line 26
    new-instance v0, Lcom/android/settings/ScanState;

    const-string v1, "ESS_PASSED"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/ScanState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/ScanState;->ESS_PASSED:Lcom/android/settings/ScanState;

    .line 27
    new-instance v0, Lcom/android/settings/ScanState;

    const-string v1, "ESS_RISK"

    invoke-direct {v0, v1, v5}, Lcom/android/settings/ScanState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/ScanState;->ESS_RISK:Lcom/android/settings/ScanState;

    .line 28
    new-instance v0, Lcom/android/settings/ScanState;

    const-string v1, "ESS_UNINSTALLED"

    invoke-direct {v0, v1, v6}, Lcom/android/settings/ScanState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/ScanState;->ESS_UNINSTALLED:Lcom/android/settings/ScanState;

    .line 23
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/settings/ScanState;

    sget-object v1, Lcom/android/settings/ScanState;->ESS_WAITING:Lcom/android/settings/ScanState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/ScanState;->ESS_SCANNING:Lcom/android/settings/ScanState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/ScanState;->ESS_PASSED:Lcom/android/settings/ScanState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/ScanState;->ESS_RISK:Lcom/android/settings/ScanState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settings/ScanState;->ESS_UNINSTALLED:Lcom/android/settings/ScanState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/settings/ScanState;->$VALUES:[Lcom/android/settings/ScanState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/ScanState;
    .locals 1
    .parameter

    .prologue
    .line 23
    const-class v0, Lcom/android/settings/ScanState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ScanState;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/ScanState;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/android/settings/ScanState;->$VALUES:[Lcom/android/settings/ScanState;

    invoke-virtual {v0}, [Lcom/android/settings/ScanState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/ScanState;

    return-object v0
.end method
