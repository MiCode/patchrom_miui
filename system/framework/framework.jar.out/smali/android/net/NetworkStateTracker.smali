.class public interface abstract Landroid/net/NetworkStateTracker;
.super Ljava/lang/Object;
.source "NetworkStateTracker.java"


# static fields
.field public static final EVENT_CONFIGURATION_CHANGED:I = 0x70001

.field public static final EVENT_NETWORK_CONNECTED:I = 0x70004

.field public static final EVENT_NETWORK_DISCONNECTED:I = 0x70005

.field public static final EVENT_NETWORK_SUBTYPE_CHANGED:I = 0x70003

.field public static final EVENT_RESTORE_DEFAULT_NETWORK:I = 0x70002

.field public static final EVENT_STATE_CHANGED:I = 0x70000


# virtual methods
.method public abstract addStackedLink(Landroid/net/LinkProperties;)V
.end method

.method public abstract captivePortalCheckComplete()V
.end method

.method public abstract captivePortalCheckCompleted(Z)V
.end method

.method public abstract defaultRouteSet(Z)V
.end method

.method public abstract getLinkCapabilities()Landroid/net/LinkCapabilities;
.end method

.method public abstract getLinkProperties()Landroid/net/LinkProperties;
.end method

.method public abstract getLinkQualityInfo()Landroid/net/LinkQualityInfo;
.end method

.method public abstract getNetworkInfo()Landroid/net/NetworkInfo;
.end method

.method public abstract getNetworkInterfaceName()Ljava/lang/String;
.end method

.method public abstract getTcpBufferSizesPropName()Ljava/lang/String;
.end method

.method public abstract isAvailable()Z
.end method

.method public abstract isDefaultRouteSet()Z
.end method

.method public abstract isPrivateDnsRouteSet()Z
.end method

.method public abstract isTeardownRequested()Z
.end method

.method public abstract privateDnsRouteSet(Z)V
.end method

.method public abstract reconnect()Z
.end method

.method public abstract removeStackedLink(Landroid/net/LinkProperties;)V
.end method

.method public abstract setDependencyMet(Z)V
.end method

.method public abstract setPolicyDataEnable(Z)V
.end method

.method public abstract setRadio(Z)Z
.end method

.method public abstract setTeardownRequested(Z)V
.end method

.method public abstract setUserDataEnable(Z)V
.end method

.method public abstract startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V
.end method

.method public abstract startSampling(Landroid/net/SamplingDataTracker$SamplingSnapshot;)V
.end method

.method public abstract stopSampling(Landroid/net/SamplingDataTracker$SamplingSnapshot;)V
.end method

.method public abstract supplyMessenger(Landroid/os/Messenger;)V
.end method

.method public abstract teardown()Z
.end method
