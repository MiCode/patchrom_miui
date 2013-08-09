.class public Lcom/android/settings/applications/ApplicationsState$SizeInfo;
.super Ljava/lang/Object;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SizeInfo"
.end annotation


# instance fields
.field cacheSize:J

.field codeSize:J

.field dataSize:J

.field externalCacheSize:J

.field externalCodeSize:J

.field externalDataSize:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
