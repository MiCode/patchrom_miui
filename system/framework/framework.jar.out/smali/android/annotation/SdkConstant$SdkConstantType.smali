.class public final enum Landroid/annotation/SdkConstant$SdkConstantType;
.super Ljava/lang/Enum;
.source "SdkConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/annotation/SdkConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SdkConstantType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/annotation/SdkConstant$SdkConstantType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/annotation/SdkConstant$SdkConstantType;

.field public static final enum ACTIVITY_INTENT_ACTION:Landroid/annotation/SdkConstant$SdkConstantType;

.field public static final enum BROADCAST_INTENT_ACTION:Landroid/annotation/SdkConstant$SdkConstantType;

.field public static final enum FEATURE:Landroid/annotation/SdkConstant$SdkConstantType;

.field public static final enum INTENT_CATEGORY:Landroid/annotation/SdkConstant$SdkConstantType;

.field public static final enum SERVICE_ACTION:Landroid/annotation/SdkConstant$SdkConstantType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Landroid/annotation/SdkConstant$SdkConstantType;

    const-string v1, "ACTIVITY_INTENT_ACTION"

    invoke-direct {v0, v1, v2}, Landroid/annotation/SdkConstant$SdkConstantType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/SdkConstant$SdkConstantType;->ACTIVITY_INTENT_ACTION:Landroid/annotation/SdkConstant$SdkConstantType;

    new-instance v0, Landroid/annotation/SdkConstant$SdkConstantType;

    const-string v1, "BROADCAST_INTENT_ACTION"

    invoke-direct {v0, v1, v3}, Landroid/annotation/SdkConstant$SdkConstantType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/SdkConstant$SdkConstantType;->BROADCAST_INTENT_ACTION:Landroid/annotation/SdkConstant$SdkConstantType;

    new-instance v0, Landroid/annotation/SdkConstant$SdkConstantType;

    const-string v1, "SERVICE_ACTION"

    invoke-direct {v0, v1, v4}, Landroid/annotation/SdkConstant$SdkConstantType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/SdkConstant$SdkConstantType;->SERVICE_ACTION:Landroid/annotation/SdkConstant$SdkConstantType;

    new-instance v0, Landroid/annotation/SdkConstant$SdkConstantType;

    const-string v1, "INTENT_CATEGORY"

    invoke-direct {v0, v1, v5}, Landroid/annotation/SdkConstant$SdkConstantType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/SdkConstant$SdkConstantType;->INTENT_CATEGORY:Landroid/annotation/SdkConstant$SdkConstantType;

    new-instance v0, Landroid/annotation/SdkConstant$SdkConstantType;

    const-string v1, "FEATURE"

    invoke-direct {v0, v1, v6}, Landroid/annotation/SdkConstant$SdkConstantType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/SdkConstant$SdkConstantType;->FEATURE:Landroid/annotation/SdkConstant$SdkConstantType;

    .line 31
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/annotation/SdkConstant$SdkConstantType;

    sget-object v1, Landroid/annotation/SdkConstant$SdkConstantType;->ACTIVITY_INTENT_ACTION:Landroid/annotation/SdkConstant$SdkConstantType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/annotation/SdkConstant$SdkConstantType;->BROADCAST_INTENT_ACTION:Landroid/annotation/SdkConstant$SdkConstantType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/annotation/SdkConstant$SdkConstantType;->SERVICE_ACTION:Landroid/annotation/SdkConstant$SdkConstantType;

    aput-object v1, v0, v4

    sget-object v1, Landroid/annotation/SdkConstant$SdkConstantType;->INTENT_CATEGORY:Landroid/annotation/SdkConstant$SdkConstantType;

    aput-object v1, v0, v5

    sget-object v1, Landroid/annotation/SdkConstant$SdkConstantType;->FEATURE:Landroid/annotation/SdkConstant$SdkConstantType;

    aput-object v1, v0, v6

    sput-object v0, Landroid/annotation/SdkConstant$SdkConstantType;->$VALUES:[Landroid/annotation/SdkConstant$SdkConstantType;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/annotation/SdkConstant$SdkConstantType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    const-class v0, Landroid/annotation/SdkConstant$SdkConstantType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/annotation/SdkConstant$SdkConstantType;

    return-object v0
.end method

.method public static values()[Landroid/annotation/SdkConstant$SdkConstantType;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Landroid/annotation/SdkConstant$SdkConstantType;->$VALUES:[Landroid/annotation/SdkConstant$SdkConstantType;

    invoke-virtual {v0}, [Landroid/annotation/SdkConstant$SdkConstantType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/annotation/SdkConstant$SdkConstantType;

    return-object v0
.end method
