.class public final enum Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;
.super Ljava/lang/Enum;
.source "WifiP2pService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "P2pStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

.field public static final enum BOTH_GO_INTENT_15:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

.field public static final enum INCOMPATIBLE_PARAMETERS:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

.field public static final enum INCOMPATIBLE_PROVISIONING_METHOD:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

.field public static final enum INFORMATION_IS_CURRENTLY_UNAVAILABLE:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

.field public static final enum INVALID_PARAMETER:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

.field public static final enum LIMIT_REACHED:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

.field public static final enum NO_COMMON_CHANNEL:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

.field public static final enum PREVIOUS_PROTOCOL_ERROR:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

.field public static final enum REJECTED_BY_USER:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

.field public static final enum SUCCESS:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

.field public static final enum UNABLE_TO_ACCOMMODATE_REQUEST:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

.field public static final enum UNKNOWN:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

.field public static final enum UNKNOWN_P2P_GROUP:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 240
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->SUCCESS:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    .line 243
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    const-string v1, "INFORMATION_IS_CURRENTLY_UNAVAILABLE"

    invoke-direct {v0, v1, v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->INFORMATION_IS_CURRENTLY_UNAVAILABLE:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    .line 246
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    const-string v1, "INCOMPATIBLE_PARAMETERS"

    invoke-direct {v0, v1, v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->INCOMPATIBLE_PARAMETERS:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    .line 250
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    const-string v1, "LIMIT_REACHED"

    invoke-direct {v0, v1, v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->LIMIT_REACHED:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    .line 253
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    const-string v1, "INVALID_PARAMETER"

    invoke-direct {v0, v1, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->INVALID_PARAMETER:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    .line 256
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    const-string v1, "UNABLE_TO_ACCOMMODATE_REQUEST"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->UNABLE_TO_ACCOMMODATE_REQUEST:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    .line 259
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    const-string v1, "PREVIOUS_PROTOCOL_ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->PREVIOUS_PROTOCOL_ERROR:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    .line 262
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    const-string v1, "NO_COMMON_CHANNEL"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->NO_COMMON_CHANNEL:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    .line 266
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    const-string v1, "UNKNOWN_P2P_GROUP"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->UNKNOWN_P2P_GROUP:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    .line 269
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    const-string v1, "BOTH_GO_INTENT_15"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->BOTH_GO_INTENT_15:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    .line 272
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    const-string v1, "INCOMPATIBLE_PROVISIONING_METHOD"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->INCOMPATIBLE_PROVISIONING_METHOD:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    .line 275
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    const-string v1, "REJECTED_BY_USER"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->REJECTED_BY_USER:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    .line 278
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    const-string v1, "UNKNOWN"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->UNKNOWN:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    .line 238
    const/16 v0, 0xd

    new-array v0, v0, [Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    sget-object v1, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->SUCCESS:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    aput-object v1, v0, v3

    sget-object v1, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->INFORMATION_IS_CURRENTLY_UNAVAILABLE:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    aput-object v1, v0, v4

    sget-object v1, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->INCOMPATIBLE_PARAMETERS:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    aput-object v1, v0, v5

    sget-object v1, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->LIMIT_REACHED:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    aput-object v1, v0, v6

    sget-object v1, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->INVALID_PARAMETER:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->UNABLE_TO_ACCOMMODATE_REQUEST:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->PREVIOUS_PROTOCOL_ERROR:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->NO_COMMON_CHANNEL:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->UNKNOWN_P2P_GROUP:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->BOTH_GO_INTENT_15:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->INCOMPATIBLE_PROVISIONING_METHOD:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->REJECTED_BY_USER:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->UNKNOWN:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->$VALUES:[Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

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
    .line 238
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(I)Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;
    .locals 1
    .param p0, "error"    # I

    .prologue
    .line 281
    packed-switch p0, :pswitch_data_0

    .line 307
    sget-object v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->UNKNOWN:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    :goto_0
    return-object v0

    .line 283
    :pswitch_0
    sget-object v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->SUCCESS:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    goto :goto_0

    .line 285
    :pswitch_1
    sget-object v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->INFORMATION_IS_CURRENTLY_UNAVAILABLE:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    goto :goto_0

    .line 287
    :pswitch_2
    sget-object v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->INCOMPATIBLE_PARAMETERS:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    goto :goto_0

    .line 289
    :pswitch_3
    sget-object v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->LIMIT_REACHED:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    goto :goto_0

    .line 291
    :pswitch_4
    sget-object v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->INVALID_PARAMETER:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    goto :goto_0

    .line 293
    :pswitch_5
    sget-object v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->UNABLE_TO_ACCOMMODATE_REQUEST:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    goto :goto_0

    .line 295
    :pswitch_6
    sget-object v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->PREVIOUS_PROTOCOL_ERROR:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    goto :goto_0

    .line 297
    :pswitch_7
    sget-object v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->NO_COMMON_CHANNEL:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    goto :goto_0

    .line 299
    :pswitch_8
    sget-object v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->UNKNOWN_P2P_GROUP:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    goto :goto_0

    .line 301
    :pswitch_9
    sget-object v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->BOTH_GO_INTENT_15:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    goto :goto_0

    .line 303
    :pswitch_a
    sget-object v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->INCOMPATIBLE_PROVISIONING_METHOD:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    goto :goto_0

    .line 305
    :pswitch_b
    sget-object v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->REJECTED_BY_USER:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    goto :goto_0

    .line 281
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 238
    const-class v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    return-object v0
.end method

.method public static values()[Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;
    .locals 1

    .prologue
    .line 238
    sget-object v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->$VALUES:[Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    invoke-virtual {v0}, [Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    return-object v0
.end method
