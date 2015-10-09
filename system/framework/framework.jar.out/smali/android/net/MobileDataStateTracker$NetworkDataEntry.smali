.class Landroid/net/MobileDataStateTracker$NetworkDataEntry;
.super Ljava/lang/Object;
.source "MobileDataStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/MobileDataStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NetworkDataEntry"
.end annotation


# instance fields
.field public downloadBandwidth:I

.field public latency:I

.field public networkType:I

.field public uploadBandwidth:I


# direct methods
.method constructor <init>(IIII)V
    .locals 0
    .param p1, "i1"    # I
    .param p2, "i2"    # I
    .param p3, "i3"    # I
    .param p4, "i4"    # I

    .prologue
    .line 964
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 965
    iput p1, p0, Landroid/net/MobileDataStateTracker$NetworkDataEntry;->networkType:I

    .line 966
    iput p2, p0, Landroid/net/MobileDataStateTracker$NetworkDataEntry;->downloadBandwidth:I

    .line 967
    iput p3, p0, Landroid/net/MobileDataStateTracker$NetworkDataEntry;->uploadBandwidth:I

    .line 968
    iput p4, p0, Landroid/net/MobileDataStateTracker$NetworkDataEntry;->latency:I

    .line 969
    return-void
.end method
