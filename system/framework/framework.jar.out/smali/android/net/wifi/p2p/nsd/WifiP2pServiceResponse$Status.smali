.class public Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse$Status;
.super Ljava/lang/Object;
.source "WifiP2pServiceResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Status"
.end annotation


# static fields
.field public static final BAD_REQUEST:I = 0x3

.field public static final REQUESTED_INFORMATION_NOT_AVAILABLE:I = 0x2

.field public static final SERVICE_PROTOCOL_NOT_AVAILABLE:I = 0x1

.field public static final SUCCESS:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1
    .param p0, "status"    # I

    .prologue
    .line 91
    packed-switch p0, :pswitch_data_0

    .line 101
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 93
    :pswitch_0
    const-string v0, "SUCCESS"

    goto :goto_0

    .line 95
    :pswitch_1
    const-string v0, "SERVICE_PROTOCOL_NOT_AVAILABLE"

    goto :goto_0

    .line 97
    :pswitch_2
    const-string v0, "REQUESTED_INFORMATION_NOT_AVAILABLE"

    goto :goto_0

    .line 99
    :pswitch_3
    const-string v0, "BAD_REQUEST"

    goto :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
