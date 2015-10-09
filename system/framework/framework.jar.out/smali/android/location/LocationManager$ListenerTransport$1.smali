.class Landroid/location/LocationManager$ListenerTransport$1;
.super Landroid/os/Handler;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/location/LocationManager$ListenerTransport;-><init>(Landroid/location/LocationManager;Landroid/location/LocationListener;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/location/LocationManager$ListenerTransport;

.field final synthetic val$this$0:Landroid/location/LocationManager;


# direct methods
.method constructor <init>(Landroid/location/LocationManager$ListenerTransport;Landroid/location/LocationManager;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Landroid/location/LocationManager$ListenerTransport$1;->this$1:Landroid/location/LocationManager$ListenerTransport;

    iput-object p2, p0, Landroid/location/LocationManager$ListenerTransport$1;->val$this$0:Landroid/location/LocationManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 224
    iget-object v0, p0, Landroid/location/LocationManager$ListenerTransport$1;->this$1:Landroid/location/LocationManager$ListenerTransport;

    # invokes: Landroid/location/LocationManager$ListenerTransport;->_handleMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Landroid/location/LocationManager$ListenerTransport;->access$000(Landroid/location/LocationManager$ListenerTransport;Landroid/os/Message;)V

    .line 225
    return-void
.end method
