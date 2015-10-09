.class public final Landroid/os/SystemClock;
.super Ljava/lang/Object;
.source "SystemClock.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    return-void
.end method

.method public static native currentThreadTimeMicro()J
.end method

.method public static native currentThreadTimeMillis()J
.end method

.method public static native currentTimeMicro()J
.end method

.method public static native elapsedRealtime()J
.end method

.method public static native elapsedRealtimeNanos()J
.end method

.method public static native setCurrentTimeMillis(J)Z
.end method

.method public static sleep(J)V
    .locals 10
    .param p0, "ms"    # J

    .prologue
    .line 110
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 111
    .local v4, "start":J
    move-wide v0, p0

    .line 112
    .local v0, "duration":J
    const/4 v3, 0x0

    .line 115
    .local v3, "interrupted":Z
    :cond_0
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    add-long v6, v4, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long v0, v6, v8

    .line 121
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gtz v6, :cond_0

    .line 123
    if-eqz v3, :cond_1

    .line 127
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    .line 129
    :cond_1
    return-void

    .line 117
    :catch_0
    move-exception v2

    .line 118
    .local v2, "e":Ljava/lang/InterruptedException;
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static native uptimeMillis()J
.end method
