.class final enum Landroid/net/DhcpStateMachine$DhcpAction;
.super Ljava/lang/Enum;
.source "DhcpStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/DhcpStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DhcpAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/net/DhcpStateMachine$DhcpAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/DhcpStateMachine$DhcpAction;

.field public static final enum RENEW:Landroid/net/DhcpStateMachine$DhcpAction;

.field public static final enum START:Landroid/net/DhcpStateMachine$DhcpAction;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 76
    new-instance v0, Landroid/net/DhcpStateMachine$DhcpAction;

    const-string v1, "START"

    invoke-direct {v0, v1, v2}, Landroid/net/DhcpStateMachine$DhcpAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/DhcpStateMachine$DhcpAction;->START:Landroid/net/DhcpStateMachine$DhcpAction;

    .line 77
    new-instance v0, Landroid/net/DhcpStateMachine$DhcpAction;

    const-string v1, "RENEW"

    invoke-direct {v0, v1, v3}, Landroid/net/DhcpStateMachine$DhcpAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/DhcpStateMachine$DhcpAction;->RENEW:Landroid/net/DhcpStateMachine$DhcpAction;

    .line 75
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/net/DhcpStateMachine$DhcpAction;

    sget-object v1, Landroid/net/DhcpStateMachine$DhcpAction;->START:Landroid/net/DhcpStateMachine$DhcpAction;

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/DhcpStateMachine$DhcpAction;->RENEW:Landroid/net/DhcpStateMachine$DhcpAction;

    aput-object v1, v0, v3

    sput-object v0, Landroid/net/DhcpStateMachine$DhcpAction;->$VALUES:[Landroid/net/DhcpStateMachine$DhcpAction;

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
    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/net/DhcpStateMachine$DhcpAction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 75
    const-class v0, Landroid/net/DhcpStateMachine$DhcpAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/net/DhcpStateMachine$DhcpAction;

    return-object v0
.end method

.method public static values()[Landroid/net/DhcpStateMachine$DhcpAction;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Landroid/net/DhcpStateMachine$DhcpAction;->$VALUES:[Landroid/net/DhcpStateMachine$DhcpAction;

    invoke-virtual {v0}, [Landroid/net/DhcpStateMachine$DhcpAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/DhcpStateMachine$DhcpAction;

    return-object v0
.end method
