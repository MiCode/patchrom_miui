.class Landroid/net/DnsPinger$ActivePing;
.super Ljava/lang/Object;
.source "DnsPinger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/DnsPinger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivePing"
.end annotation


# instance fields
.field internalId:I

.field packetId:S

.field result:Ljava/lang/Integer;

.field socket:Ljava/net/DatagramSocket;

.field start:J

.field final synthetic this$0:Landroid/net/DnsPinger;

.field timeout:I


# direct methods
.method private constructor <init>(Landroid/net/DnsPinger;)V
    .locals 2

    .prologue
    .line 99
    iput-object p1, p0, Landroid/net/DnsPinger$ActivePing;->this$0:Landroid/net/DnsPinger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/DnsPinger$ActivePing;->start:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/DnsPinger;Landroid/net/DnsPinger$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/net/DnsPinger;
    .param p2, "x1"    # Landroid/net/DnsPinger$1;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Landroid/net/DnsPinger$ActivePing;-><init>(Landroid/net/DnsPinger;)V

    return-void
.end method
