.class public final enum Landroid/net/wifi/WpsResult$Status;
.super Ljava/lang/Enum;
.source "WpsResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WpsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/net/wifi/WpsResult$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/wifi/WpsResult$Status;

.field public static final enum FAILURE:Landroid/net/wifi/WpsResult$Status;

.field public static final enum IN_PROGRESS:Landroid/net/wifi/WpsResult$Status;

.field public static final enum SUCCESS:Landroid/net/wifi/WpsResult$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Landroid/net/wifi/WpsResult$Status;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WpsResult$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    .line 30
    new-instance v0, Landroid/net/wifi/WpsResult$Status;

    const-string v1, "FAILURE"

    invoke-direct {v0, v1, v3}, Landroid/net/wifi/WpsResult$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    .line 31
    new-instance v0, Landroid/net/wifi/WpsResult$Status;

    const-string v1, "IN_PROGRESS"

    invoke-direct {v0, v1, v4}, Landroid/net/wifi/WpsResult$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/WpsResult$Status;->IN_PROGRESS:Landroid/net/wifi/WpsResult$Status;

    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/net/wifi/WpsResult$Status;

    sget-object v1, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    aput-object v1, v0, v3

    sget-object v1, Landroid/net/wifi/WpsResult$Status;->IN_PROGRESS:Landroid/net/wifi/WpsResult$Status;

    aput-object v1, v0, v4

    sput-object v0, Landroid/net/wifi/WpsResult$Status;->$VALUES:[Landroid/net/wifi/WpsResult$Status;

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
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/net/wifi/WpsResult$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    const-class v0, Landroid/net/wifi/WpsResult$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WpsResult$Status;

    return-object v0
.end method

.method public static values()[Landroid/net/wifi/WpsResult$Status;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Landroid/net/wifi/WpsResult$Status;->$VALUES:[Landroid/net/wifi/WpsResult$Status;

    invoke-virtual {v0}, [Landroid/net/wifi/WpsResult$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/wifi/WpsResult$Status;

    return-object v0
.end method
