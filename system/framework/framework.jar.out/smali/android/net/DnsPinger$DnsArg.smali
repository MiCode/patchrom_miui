.class Landroid/net/DnsPinger$DnsArg;
.super Ljava/lang/Object;
.source "DnsPinger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/DnsPinger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DnsArg"
.end annotation


# instance fields
.field dns:Ljava/net/InetAddress;

.field seq:I

.field final synthetic this$0:Landroid/net/DnsPinger;


# direct methods
.method constructor <init>(Landroid/net/DnsPinger;Ljava/net/InetAddress;I)V
    .locals 0
    .param p2, "d"    # Ljava/net/InetAddress;
    .param p3, "s"    # I

    .prologue
    .line 113
    iput-object p1, p0, Landroid/net/DnsPinger$DnsArg;->this$0:Landroid/net/DnsPinger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p2, p0, Landroid/net/DnsPinger$DnsArg;->dns:Ljava/net/InetAddress;

    .line 115
    iput p3, p0, Landroid/net/DnsPinger$DnsArg;->seq:I

    .line 116
    return-void
.end method
