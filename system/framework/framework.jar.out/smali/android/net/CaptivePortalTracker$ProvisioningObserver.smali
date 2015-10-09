.class Landroid/net/CaptivePortalTracker$ProvisioningObserver;
.super Landroid/database/ContentObserver;
.source "CaptivePortalTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/CaptivePortalTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProvisioningObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/CaptivePortalTracker;


# direct methods
.method constructor <init>(Landroid/net/CaptivePortalTracker;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 139
    iput-object p1, p0, Landroid/net/CaptivePortalTracker$ProvisioningObserver;->this$0:Landroid/net/CaptivePortalTracker;

    .line 140
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 141
    # getter for: Landroid/net/CaptivePortalTracker;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/net/CaptivePortalTracker;->access$400(Landroid/net/CaptivePortalTracker;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 143
    invoke-virtual {p0, v2}, Landroid/net/CaptivePortalTracker$ProvisioningObserver;->onChange(Z)V

    .line 144
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x0

    .line 148
    iget-object v1, p0, Landroid/net/CaptivePortalTracker$ProvisioningObserver;->this$0:Landroid/net/CaptivePortalTracker;

    iget-object v2, p0, Landroid/net/CaptivePortalTracker$ProvisioningObserver;->this$0:Landroid/net/CaptivePortalTracker;

    # getter for: Landroid/net/CaptivePortalTracker;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/net/CaptivePortalTracker;->access$400(Landroid/net/CaptivePortalTracker;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "device_provisioned"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    # setter for: Landroid/net/CaptivePortalTracker;->mDeviceProvisioned:Z
    invoke-static {v1, v0}, Landroid/net/CaptivePortalTracker;->access$502(Landroid/net/CaptivePortalTracker;Z)Z

    .line 150
    return-void
.end method
