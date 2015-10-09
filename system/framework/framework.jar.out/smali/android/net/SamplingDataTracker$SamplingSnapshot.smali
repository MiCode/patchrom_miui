.class public Landroid/net/SamplingDataTracker$SamplingSnapshot;
.super Ljava/lang/Object;
.source "SamplingDataTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/SamplingDataTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SamplingSnapshot"
.end annotation


# instance fields
.field public mRxByteCount:J

.field public mRxPacketCount:J

.field public mRxPacketErrorCount:J

.field public mTimestamp:J

.field public mTxByteCount:J

.field public mTxPacketCount:J

.field public mTxPacketErrorCount:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
