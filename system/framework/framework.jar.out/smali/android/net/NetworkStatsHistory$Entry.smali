.class public Landroid/net/NetworkStatsHistory$Entry;
.super Ljava/lang/Object;
.source "NetworkStatsHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkStatsHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# static fields
.field public static final UNKNOWN:J = -0x1L


# instance fields
.field public activeTime:J

.field public bucketDuration:J

.field public bucketStart:J

.field public operations:J

.field public rxBytes:J

.field public rxPackets:J

.field public txBytes:J

.field public txPackets:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
