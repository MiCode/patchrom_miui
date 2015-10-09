.class Landroid/location/CountryDetector$ListenerTransport$1;
.super Ljava/lang/Object;
.source "CountryDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/location/CountryDetector$ListenerTransport;->onCountryDetected(Landroid/location/Country;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/location/CountryDetector$ListenerTransport;

.field final synthetic val$country:Landroid/location/Country;


# direct methods
.method constructor <init>(Landroid/location/CountryDetector$ListenerTransport;Landroid/location/Country;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Landroid/location/CountryDetector$ListenerTransport$1;->this$0:Landroid/location/CountryDetector$ListenerTransport;

    iput-object p2, p0, Landroid/location/CountryDetector$ListenerTransport$1;->val$country:Landroid/location/Country;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Landroid/location/CountryDetector$ListenerTransport$1;->this$0:Landroid/location/CountryDetector$ListenerTransport;

    # getter for: Landroid/location/CountryDetector$ListenerTransport;->mListener:Landroid/location/CountryListener;
    invoke-static {v0}, Landroid/location/CountryDetector$ListenerTransport;->access$000(Landroid/location/CountryDetector$ListenerTransport;)Landroid/location/CountryListener;

    move-result-object v0

    iget-object v1, p0, Landroid/location/CountryDetector$ListenerTransport$1;->val$country:Landroid/location/Country;

    invoke-interface {v0, v1}, Landroid/location/CountryListener;->onCountryDetected(Landroid/location/Country;)V

    .line 78
    return-void
.end method
