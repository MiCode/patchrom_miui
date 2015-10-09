.class public final enum Landroid/net/wifi/SupplicantState;
.super Ljava/lang/Enum;
.source "SupplicantState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/SupplicantState$2;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/net/wifi/SupplicantState;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/wifi/SupplicantState;

.field public static final enum ASSOCIATED:Landroid/net/wifi/SupplicantState;

.field public static final enum ASSOCIATING:Landroid/net/wifi/SupplicantState;

.field public static final enum AUTHENTICATING:Landroid/net/wifi/SupplicantState;

.field public static final enum COMPLETED:Landroid/net/wifi/SupplicantState;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/SupplicantState;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum DISCONNECTED:Landroid/net/wifi/SupplicantState;

.field public static final enum DORMANT:Landroid/net/wifi/SupplicantState;

.field public static final enum FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

.field public static final enum GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

.field public static final enum INACTIVE:Landroid/net/wifi/SupplicantState;

.field public static final enum INTERFACE_DISABLED:Landroid/net/wifi/SupplicantState;

.field public static final enum INVALID:Landroid/net/wifi/SupplicantState;

.field public static final enum SCANNING:Landroid/net/wifi/SupplicantState;

.field public static final enum UNINITIALIZED:Landroid/net/wifi/SupplicantState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 39
    new-instance v0, Landroid/net/wifi/SupplicantState;

    const-string v1, "DISCONNECTED"

    invoke-direct {v0, v1, v3}, Landroid/net/wifi/SupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    .line 48
    new-instance v0, Landroid/net/wifi/SupplicantState;

    const-string v1, "INTERFACE_DISABLED"

    invoke-direct {v0, v1, v4}, Landroid/net/wifi/SupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/SupplicantState;->INTERFACE_DISABLED:Landroid/net/wifi/SupplicantState;

    .line 58
    new-instance v0, Landroid/net/wifi/SupplicantState;

    const-string v1, "INACTIVE"

    invoke-direct {v0, v1, v5}, Landroid/net/wifi/SupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    .line 66
    new-instance v0, Landroid/net/wifi/SupplicantState;

    const-string v1, "SCANNING"

    invoke-direct {v0, v1, v6}, Landroid/net/wifi/SupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    .line 75
    new-instance v0, Landroid/net/wifi/SupplicantState;

    const-string v1, "AUTHENTICATING"

    invoke-direct {v0, v1, v7}, Landroid/net/wifi/SupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/SupplicantState;->AUTHENTICATING:Landroid/net/wifi/SupplicantState;

    .line 86
    new-instance v0, Landroid/net/wifi/SupplicantState;

    const-string v1, "ASSOCIATING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/SupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    .line 96
    new-instance v0, Landroid/net/wifi/SupplicantState;

    const-string v1, "ASSOCIATED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/SupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    .line 106
    new-instance v0, Landroid/net/wifi/SupplicantState;

    const-string v1, "FOUR_WAY_HANDSHAKE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/SupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    .line 116
    new-instance v0, Landroid/net/wifi/SupplicantState;

    const-string v1, "GROUP_HANDSHAKE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/SupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    .line 136
    new-instance v0, Landroid/net/wifi/SupplicantState;

    const-string v1, "COMPLETED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/SupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    .line 146
    new-instance v0, Landroid/net/wifi/SupplicantState;

    const-string v1, "DORMANT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/SupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/SupplicantState;->DORMANT:Landroid/net/wifi/SupplicantState;

    .line 155
    new-instance v0, Landroid/net/wifi/SupplicantState;

    const-string v1, "UNINITIALIZED"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/SupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    .line 160
    new-instance v0, Landroid/net/wifi/SupplicantState;

    const-string v1, "INVALID"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/SupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    .line 33
    const/16 v0, 0xd

    new-array v0, v0, [Landroid/net/wifi/SupplicantState;

    sget-object v1, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    aput-object v1, v0, v3

    sget-object v1, Landroid/net/wifi/SupplicantState;->INTERFACE_DISABLED:Landroid/net/wifi/SupplicantState;

    aput-object v1, v0, v4

    sget-object v1, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    aput-object v1, v0, v5

    sget-object v1, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    aput-object v1, v0, v6

    sget-object v1, Landroid/net/wifi/SupplicantState;->AUTHENTICATING:Landroid/net/wifi/SupplicantState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Landroid/net/wifi/SupplicantState;->DORMANT:Landroid/net/wifi/SupplicantState;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/wifi/SupplicantState;->$VALUES:[Landroid/net/wifi/SupplicantState;

    .line 252
    new-instance v0, Landroid/net/wifi/SupplicantState$1;

    invoke-direct {v0}, Landroid/net/wifi/SupplicantState$1;-><init>()V

    sput-object v0, Landroid/net/wifi/SupplicantState;->CREATOR:Landroid/os/Parcelable$Creator;

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
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 193
    return-void
.end method

.method static isConnecting(Landroid/net/wifi/SupplicantState;)Z
    .locals 2
    .param p0, "state"    # Landroid/net/wifi/SupplicantState;

    .prologue
    .line 198
    sget-object v0, Landroid/net/wifi/SupplicantState$2;->$SwitchMap$android$net$wifi$SupplicantState:[I

    invoke-virtual {p0}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 215
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown supplicant state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :pswitch_0
    const/4 v0, 0x1

    .line 213
    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 198
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static isDriverActive(Landroid/net/wifi/SupplicantState;)Z
    .locals 2
    .param p0, "state"    # Landroid/net/wifi/SupplicantState;

    .prologue
    .line 220
    sget-object v0, Landroid/net/wifi/SupplicantState$2;->$SwitchMap$android$net$wifi$SupplicantState:[I

    invoke-virtual {p0}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 237
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown supplicant state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :pswitch_0
    const/4 v0, 0x1

    .line 235
    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 220
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static isHandshakeState(Landroid/net/wifi/SupplicantState;)Z
    .locals 2
    .param p0, "state"    # Landroid/net/wifi/SupplicantState;

    .prologue
    .line 176
    sget-object v0, Landroid/net/wifi/SupplicantState$2;->$SwitchMap$android$net$wifi$SupplicantState:[I

    invoke-virtual {p0}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 193
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown supplicant state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :pswitch_0
    const/4 v0, 0x1

    .line 191
    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static isValidState(Landroid/net/wifi/SupplicantState;)Z
    .locals 1
    .param p0, "state"    # Landroid/net/wifi/SupplicantState;

    .prologue
    .line 170
    sget-object v0, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    if-eq p0, v0, :cond_0

    sget-object v0, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/net/wifi/SupplicantState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    const-class v0, Landroid/net/wifi/SupplicantState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/SupplicantState;

    return-object v0
.end method

.method public static values()[Landroid/net/wifi/SupplicantState;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Landroid/net/wifi/SupplicantState;->$VALUES:[Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0}, [Landroid/net/wifi/SupplicantState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/wifi/SupplicantState;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 248
    invoke-virtual {p0}, Landroid/net/wifi/SupplicantState;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 249
    return-void
.end method
