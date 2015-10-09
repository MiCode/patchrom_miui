.class public Landroid/net/SamplingDataTracker;
.super Ljava/lang/Object;
.source "SamplingDataTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/SamplingDataTracker$SamplingSnapshot;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "SamplingDataTracker"


# instance fields
.field private final MINIMUM_SAMPLED_PACKETS:I

.field private final MINIMUM_SAMPLING_INTERVAL:I

.field private mBeginningSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

.field private mEndingSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

.field private mLastSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

.field public final mSamplingDataLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/SamplingDataTracker;->mSamplingDataLock:Ljava/lang/Object;

    .line 148
    const/16 v0, 0x3a98

    iput v0, p0, Landroid/net/SamplingDataTracker;->MINIMUM_SAMPLING_INTERVAL:I

    .line 151
    const/16 v0, 0x1e

    iput v0, p0, Landroid/net/SamplingDataTracker;->MINIMUM_SAMPLED_PACKETS:I

    return-void
.end method

.method public static getSamplingSnapshots(Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/SamplingDataTracker$SamplingSnapshot;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "mapIfaceToSample":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/SamplingDataTracker$SamplingSnapshot;>;"
    const/4 v3, 0x0

    .line 53
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    const-string v8, "/proc/net/dev"

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 58
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 60
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 63
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 65
    const-string v7, "[ ]+"

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 66
    .local v6, "tokens":[Ljava/lang/String;
    array-length v7, v6

    const/16 v8, 0x11

    if-lt v7, v8, :cond_0

    .line 75
    const/4 v7, 0x0

    aget-object v7, v6, v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v0, v7, v8

    .line 77
    .local v0, "currentIface":Ljava/lang/String;
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v7

    if-eqz v7, :cond_0

    .line 80
    :try_start_2
    new-instance v5, Landroid/net/SamplingDataTracker$SamplingSnapshot;

    invoke-direct {v5}, Landroid/net/SamplingDataTracker$SamplingSnapshot;-><init>()V

    .line 82
    .local v5, "ss":Landroid/net/SamplingDataTracker$SamplingSnapshot;
    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v5, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mTxByteCount:J

    .line 83
    const/4 v7, 0x2

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v5, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mTxPacketCount:J

    .line 84
    const/4 v7, 0x3

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v5, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mTxPacketErrorCount:J

    .line 85
    const/16 v7, 0x9

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v5, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mRxByteCount:J

    .line 86
    const/16 v7, 0xa

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v5, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mRxPacketCount:J

    .line 87
    const/16 v7, 0xb

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v5, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mRxPacketErrorCount:J

    .line 89
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, v5, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mTimestamp:J

    .line 105
    invoke-interface {p0, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 107
    .end local v5    # "ss":Landroid/net/SamplingDataTracker$SamplingSnapshot;
    :catch_0
    move-exception v7

    goto :goto_0

    .line 128
    .end local v0    # "currentIface":Ljava/lang/String;
    .end local v6    # "tokens":[Ljava/lang/String;
    :cond_1
    if-eqz v4, :cond_2

    .line 129
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    move-object v3, v4

    .line 135
    .end local v2    # "line":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :cond_3
    :goto_1
    return-void

    .line 131
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    .line 132
    .local v1, "e":Ljava/io/IOException;
    const-string v7, "SamplingDataTracker"

    const-string v8, "could not close /proc/net/dev"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 134
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_1

    .line 122
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "line":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 123
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    const-string v7, "SamplingDataTracker"

    const-string v8, "could not find /proc/net/dev"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 128
    if-eqz v3, :cond_3

    .line 129
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 131
    :catch_3
    move-exception v1

    .line 132
    .local v1, "e":Ljava/io/IOException;
    const-string v7, "SamplingDataTracker"

    const-string v8, "could not close /proc/net/dev"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 124
    .end local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 125
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_6
    const-string v7, "SamplingDataTracker"

    const-string v8, "could not read /proc/net/dev"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 128
    if-eqz v3, :cond_3

    .line 129
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_1

    .line 131
    :catch_5
    move-exception v1

    .line 132
    const-string v7, "SamplingDataTracker"

    const-string v8, "could not close /proc/net/dev"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 127
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 128
    :goto_4
    if-eqz v3, :cond_4

    .line 129
    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 133
    :cond_4
    :goto_5
    throw v7

    .line 131
    :catch_6
    move-exception v1

    .line 132
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v8, "SamplingDataTracker"

    const-string v9, "could not close /proc/net/dev"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 127
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 124
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_7
    move-exception v1

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 122
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_8
    move-exception v1

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_2
.end method


# virtual methods
.method public getSampleDuration()I
    .locals 6

    .prologue
    .line 282
    iget-object v1, p0, Landroid/net/SamplingDataTracker;->mSamplingDataLock:Ljava/lang/Object;

    monitor-enter v1

    .line 283
    :try_start_0
    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mBeginningSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mEndingSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mEndingSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    iget-wide v2, v0, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mTimestamp:J

    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mBeginningSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    iget-wide v4, v0, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mTimestamp:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    monitor-exit v1

    .line 286
    :goto_0
    return v0

    :cond_0
    const v0, 0x7fffffff

    monitor-exit v1

    goto :goto_0

    .line 288
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSampleTimestamp()J
    .locals 3

    .prologue
    .line 272
    iget-object v2, p0, Landroid/net/SamplingDataTracker;->mSamplingDataLock:Ljava/lang/Object;

    monitor-enter v2

    .line 273
    :try_start_0
    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mEndingSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mEndingSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    iget-wide v0, v0, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mTimestamp:J

    monitor-exit v2

    .line 276
    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    monitor-exit v2

    goto :goto_0

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSampledPacketCount()J
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mBeginningSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    iget-object v1, p0, Landroid/net/SamplingDataTracker;->mEndingSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    invoke-virtual {p0, v0, v1}, Landroid/net/SamplingDataTracker;->getSampledPacketCount(Landroid/net/SamplingDataTracker$SamplingSnapshot;Landroid/net/SamplingDataTracker$SamplingSnapshot;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSampledPacketCount(Landroid/net/SamplingDataTracker$SamplingSnapshot;Landroid/net/SamplingDataTracker$SamplingSnapshot;)J
    .locals 8
    .param p1, "begin"    # Landroid/net/SamplingDataTracker$SamplingSnapshot;
    .param p2, "end"    # Landroid/net/SamplingDataTracker$SamplingSnapshot;

    .prologue
    .line 242
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 243
    iget-wide v4, p2, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mRxPacketCount:J

    iget-wide v6, p1, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mRxPacketCount:J

    sub-long v0, v4, v6

    .line 244
    .local v0, "rxPacketCount":J
    iget-wide v4, p2, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mTxPacketCount:J

    iget-wide v6, p1, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mTxPacketCount:J

    sub-long v2, v4, v6

    .line 245
    .local v2, "txPacketCount":J
    add-long v4, v0, v2

    .line 247
    .end local v0    # "rxPacketCount":J
    .end local v2    # "txPacketCount":J
    :goto_0
    return-wide v4

    :cond_0
    const-wide v4, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method public getSampledPacketErrorCount()J
    .locals 6

    .prologue
    .line 252
    iget-object v4, p0, Landroid/net/SamplingDataTracker;->mBeginningSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/net/SamplingDataTracker;->mEndingSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    if-eqz v4, :cond_0

    .line 253
    invoke-virtual {p0}, Landroid/net/SamplingDataTracker;->getSampledRxPacketErrorCount()J

    move-result-wide v0

    .line 254
    .local v0, "rxPacketErrorCount":J
    invoke-virtual {p0}, Landroid/net/SamplingDataTracker;->getSampledTxPacketErrorCount()J

    move-result-wide v2

    .line 255
    .local v2, "txPacketErrorCount":J
    add-long v4, v0, v2

    .line 257
    .end local v0    # "rxPacketErrorCount":J
    .end local v2    # "txPacketErrorCount":J
    :goto_0
    return-wide v4

    :cond_0
    const-wide v4, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method public getSampledRxByteCount()J
    .locals 5

    .prologue
    .line 218
    iget-object v2, p0, Landroid/net/SamplingDataTracker;->mSamplingDataLock:Ljava/lang/Object;

    monitor-enter v2

    .line 219
    :try_start_0
    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mBeginningSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mEndingSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mEndingSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    iget-wide v0, v0, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mRxByteCount:J

    iget-object v3, p0, Landroid/net/SamplingDataTracker;->mBeginningSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    iget-wide v3, v3, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mRxByteCount:J

    sub-long/2addr v0, v3

    monitor-exit v2

    .line 222
    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    monitor-exit v2

    goto :goto_0

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSampledRxPacketCount()J
    .locals 5

    .prologue
    .line 228
    iget-object v2, p0, Landroid/net/SamplingDataTracker;->mSamplingDataLock:Ljava/lang/Object;

    monitor-enter v2

    .line 229
    :try_start_0
    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mBeginningSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mEndingSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mEndingSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    iget-wide v0, v0, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mRxPacketCount:J

    iget-object v3, p0, Landroid/net/SamplingDataTracker;->mBeginningSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    iget-wide v3, v3, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mRxPacketCount:J

    sub-long/2addr v0, v3

    monitor-exit v2

    .line 232
    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    monitor-exit v2

    goto :goto_0

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSampledRxPacketErrorCount()J
    .locals 5

    .prologue
    .line 262
    iget-object v2, p0, Landroid/net/SamplingDataTracker;->mSamplingDataLock:Ljava/lang/Object;

    monitor-enter v2

    .line 263
    :try_start_0
    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mBeginningSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mEndingSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mEndingSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    iget-wide v0, v0, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mRxPacketErrorCount:J

    iget-object v3, p0, Landroid/net/SamplingDataTracker;->mBeginningSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    iget-wide v3, v3, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mRxPacketErrorCount:J

    sub-long/2addr v0, v3

    monitor-exit v2

    .line 266
    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    monitor-exit v2

    goto :goto_0

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSampledTxByteCount()J
    .locals 5

    .prologue
    .line 188
    iget-object v2, p0, Landroid/net/SamplingDataTracker;->mSamplingDataLock:Ljava/lang/Object;

    monitor-enter v2

    .line 189
    :try_start_0
    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mBeginningSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mEndingSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mEndingSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    iget-wide v0, v0, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mTxByteCount:J

    iget-object v3, p0, Landroid/net/SamplingDataTracker;->mBeginningSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    iget-wide v3, v3, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mTxByteCount:J

    sub-long/2addr v0, v3

    monitor-exit v2

    .line 192
    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    monitor-exit v2

    goto :goto_0

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSampledTxPacketCount()J
    .locals 5

    .prologue
    .line 198
    iget-object v2, p0, Landroid/net/SamplingDataTracker;->mSamplingDataLock:Ljava/lang/Object;

    monitor-enter v2

    .line 199
    :try_start_0
    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mBeginningSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mEndingSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mEndingSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    iget-wide v0, v0, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mTxPacketCount:J

    iget-object v3, p0, Landroid/net/SamplingDataTracker;->mBeginningSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    iget-wide v3, v3, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mTxPacketCount:J

    sub-long/2addr v0, v3

    monitor-exit v2

    .line 202
    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    monitor-exit v2

    goto :goto_0

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSampledTxPacketErrorCount()J
    .locals 5

    .prologue
    .line 208
    iget-object v2, p0, Landroid/net/SamplingDataTracker;->mSamplingDataLock:Ljava/lang/Object;

    monitor-enter v2

    .line 209
    :try_start_0
    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mBeginningSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mEndingSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mEndingSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    iget-wide v0, v0, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mTxPacketErrorCount:J

    iget-object v3, p0, Landroid/net/SamplingDataTracker;->mBeginningSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    iget-wide v3, v3, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mTxPacketErrorCount:J

    sub-long/2addr v0, v3

    monitor-exit v2

    .line 212
    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    monitor-exit v2

    goto :goto_0

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resetSamplingData()V
    .locals 2

    .prologue
    .line 176
    iget-object v1, p0, Landroid/net/SamplingDataTracker;->mSamplingDataLock:Ljava/lang/Object;

    monitor-enter v1

    .line 183
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/net/SamplingDataTracker;->mLastSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    .line 184
    monitor-exit v1

    .line 185
    return-void

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCommonLinkQualityInfoFields(Landroid/net/LinkQualityInfo;)V
    .locals 4
    .param p1, "li"    # Landroid/net/LinkQualityInfo;

    .prologue
    .line 292
    iget-object v1, p0, Landroid/net/SamplingDataTracker;->mSamplingDataLock:Ljava/lang/Object;

    monitor-enter v1

    .line 293
    :try_start_0
    invoke-virtual {p0}, Landroid/net/SamplingDataTracker;->getSampleTimestamp()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/net/LinkQualityInfo;->setLastDataSampleTime(J)V

    .line 294
    invoke-virtual {p0}, Landroid/net/SamplingDataTracker;->getSampleDuration()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/net/LinkQualityInfo;->setDataSampleDuration(I)V

    .line 295
    invoke-virtual {p0}, Landroid/net/SamplingDataTracker;->getSampledPacketCount()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/net/LinkQualityInfo;->setPacketCount(J)V

    .line 296
    invoke-virtual {p0}, Landroid/net/SamplingDataTracker;->getSampledPacketErrorCount()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/net/LinkQualityInfo;->setPacketErrorCount(J)V

    .line 297
    monitor-exit v1

    .line 298
    return-void

    .line 297
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startSampling(Landroid/net/SamplingDataTracker$SamplingSnapshot;)V
    .locals 2
    .param p1, "s"    # Landroid/net/SamplingDataTracker$SamplingSnapshot;

    .prologue
    .line 154
    iget-object v1, p0, Landroid/net/SamplingDataTracker;->mSamplingDataLock:Ljava/lang/Object;

    monitor-enter v1

    .line 155
    :try_start_0
    iput-object p1, p0, Landroid/net/SamplingDataTracker;->mLastSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    .line 156
    monitor-exit v1

    .line 157
    return-void

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopSampling(Landroid/net/SamplingDataTracker$SamplingSnapshot;)V
    .locals 6
    .param p1, "s"    # Landroid/net/SamplingDataTracker$SamplingSnapshot;

    .prologue
    .line 160
    iget-object v1, p0, Landroid/net/SamplingDataTracker;->mSamplingDataLock:Ljava/lang/Object;

    monitor-enter v1

    .line 161
    :try_start_0
    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mLastSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    if-eqz v0, :cond_0

    .line 162
    iget-wide v2, p1, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mTimestamp:J

    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mLastSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    iget-wide v4, v0, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mTimestamp:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3a98

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mLastSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    invoke-virtual {p0, v0, p1}, Landroid/net/SamplingDataTracker;->getSampledPacketCount(Landroid/net/SamplingDataTracker$SamplingSnapshot;Landroid/net/SamplingDataTracker$SamplingSnapshot;)J

    move-result-wide v2

    const-wide/16 v4, 0x1e

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 164
    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mLastSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    iput-object v0, p0, Landroid/net/SamplingDataTracker;->mBeginningSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    .line 165
    iput-object p1, p0, Landroid/net/SamplingDataTracker;->mEndingSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/SamplingDataTracker;->mLastSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    .line 171
    :cond_0
    monitor-exit v1

    .line 172
    return-void

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
