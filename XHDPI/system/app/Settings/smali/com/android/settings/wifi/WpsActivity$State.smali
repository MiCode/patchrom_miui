.class final enum Lcom/android/settings/wifi/WpsActivity$State;
.super Ljava/lang/Enum;
.source "WpsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WpsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/wifi/WpsActivity$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/wifi/WpsActivity$State;

.field public static final enum CONNECTED:Lcom/android/settings/wifi/WpsActivity$State;

.field public static final enum WPS_COMPLETE:Lcom/android/settings/wifi/WpsActivity$State;

.field public static final enum WPS_FAILED:Lcom/android/settings/wifi/WpsActivity$State;

.field public static final enum WPS_INIT:Lcom/android/settings/wifi/WpsActivity$State;

.field public static final enum WPS_START:Lcom/android/settings/wifi/WpsActivity$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    new-instance v0, Lcom/android/settings/wifi/WpsActivity$State;

    const-string v1, "WPS_INIT"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WpsActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/wifi/WpsActivity$State;->WPS_INIT:Lcom/android/settings/wifi/WpsActivity$State;

    .line 53
    new-instance v0, Lcom/android/settings/wifi/WpsActivity$State;

    const-string v1, "WPS_START"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/wifi/WpsActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/wifi/WpsActivity$State;->WPS_START:Lcom/android/settings/wifi/WpsActivity$State;

    .line 54
    new-instance v0, Lcom/android/settings/wifi/WpsActivity$State;

    const-string v1, "WPS_COMPLETE"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/wifi/WpsActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/wifi/WpsActivity$State;->WPS_COMPLETE:Lcom/android/settings/wifi/WpsActivity$State;

    .line 55
    new-instance v0, Lcom/android/settings/wifi/WpsActivity$State;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v5}, Lcom/android/settings/wifi/WpsActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/wifi/WpsActivity$State;->CONNECTED:Lcom/android/settings/wifi/WpsActivity$State;

    .line 56
    new-instance v0, Lcom/android/settings/wifi/WpsActivity$State;

    const-string v1, "WPS_FAILED"

    invoke-direct {v0, v1, v6}, Lcom/android/settings/wifi/WpsActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/wifi/WpsActivity$State;->WPS_FAILED:Lcom/android/settings/wifi/WpsActivity$State;

    .line 51
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/settings/wifi/WpsActivity$State;

    sget-object v1, Lcom/android/settings/wifi/WpsActivity$State;->WPS_INIT:Lcom/android/settings/wifi/WpsActivity$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/wifi/WpsActivity$State;->WPS_START:Lcom/android/settings/wifi/WpsActivity$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/wifi/WpsActivity$State;->WPS_COMPLETE:Lcom/android/settings/wifi/WpsActivity$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/wifi/WpsActivity$State;->CONNECTED:Lcom/android/settings/wifi/WpsActivity$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settings/wifi/WpsActivity$State;->WPS_FAILED:Lcom/android/settings/wifi/WpsActivity$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/settings/wifi/WpsActivity$State;->$VALUES:[Lcom/android/settings/wifi/WpsActivity$State;

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
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/wifi/WpsActivity$State;
    .locals 1
    .parameter

    .prologue
    .line 51
    const-class v0, Lcom/android/settings/wifi/WpsActivity$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WpsActivity$State;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/wifi/WpsActivity$State;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/settings/wifi/WpsActivity$State;->$VALUES:[Lcom/android/settings/wifi/WpsActivity$State;

    invoke-virtual {v0}, [Lcom/android/settings/wifi/WpsActivity$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/wifi/WpsActivity$State;

    return-object v0
.end method
