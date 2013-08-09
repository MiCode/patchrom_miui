.class public Lcom/android/settings/UsageStats$LaunchCountComparator;
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
    name = "LaunchCountComparator"
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
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/android/internal/os/PkgUsageStats;Lcom/android/internal/os/PkgUsageStats;)I
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 78
    iget v0, p2, Lcom/android/internal/os/PkgUsageStats;->launchCount:I

    iget v1, p1, Lcom/android/internal/os/PkgUsageStats;->launchCount:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    check-cast p1, Lcom/android/internal/os/PkgUsageStats;

    .end local p1
    check-cast p2, Lcom/android/internal/os/PkgUsageStats;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/UsageStats$LaunchCountComparator;->compare(Lcom/android/internal/os/PkgUsageStats;Lcom/android/internal/os/PkgUsageStats;)I

    move-result v0

    return v0
.end method
