.class public Lcom/android/settings/UsageStats$UsageTimeComparator;
.super Ljava/lang/Object;
.source "UsageStats.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UsageStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UsageTimeComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/internal/os/PkgUsageStats;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/android/internal/os/PkgUsageStats;Lcom/android/internal/os/PkgUsageStats;)I
    .locals 8
    .parameter "a"
    .parameter "b"

    .prologue
    const-wide/16 v6, 0x0

    .line 84
    iget-wide v2, p1, Lcom/android/internal/os/PkgUsageStats;->usageTime:J

    iget-wide v4, p2, Lcom/android/internal/os/PkgUsageStats;->usageTime:J

    sub-long v0, v2, v4

    .line 85
    .local v0, ret:J
    cmp-long v2, v0, v6

    if-nez v2, :cond_0

    .line 86
    const/4 v2, 0x0

    .line 91
    :goto_0
    return v2

    .line 88
    :cond_0
    cmp-long v2, v0, v6

    if-gez v2, :cond_1

    .line 89
    const/4 v2, 0x1

    goto :goto_0

    .line 91
    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    check-cast p1, Lcom/android/internal/os/PkgUsageStats;

    .end local p1
    check-cast p2, Lcom/android/internal/os/PkgUsageStats;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/UsageStats$UsageTimeComparator;->compare(Lcom/android/internal/os/PkgUsageStats;Lcom/android/internal/os/PkgUsageStats;)I

    move-result v0

    return v0
.end method
