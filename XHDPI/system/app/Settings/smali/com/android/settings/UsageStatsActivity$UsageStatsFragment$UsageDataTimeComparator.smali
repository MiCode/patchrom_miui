.class public Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageDataTimeComparator;
.super Ljava/lang/Object;
.source "UsageStatsActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UsageDataTimeComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/settings/UsageDataManager$UsageData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/android/settings/UsageDataManager$UsageData;Lcom/android/settings/UsageDataManager$UsageData;)I
    .locals 8
    .parameter "a"
    .parameter "b"

    .prologue
    const-wide/16 v6, 0x0

    .line 373
    iget-object v2, p1, Lcom/android/settings/UsageDataManager$UsageData;->mTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p2, Lcom/android/settings/UsageDataManager$UsageData;->mTime:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 374
    .local v0, ret:J
    cmp-long v2, v0, v6

    if-nez v2, :cond_0

    .line 375
    const/4 v2, 0x0

    .line 380
    :goto_0
    return v2

    .line 377
    :cond_0
    cmp-long v2, v0, v6

    if-gez v2, :cond_1

    .line 378
    const/4 v2, 0x1

    goto :goto_0

    .line 380
    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 371
    check-cast p1, Lcom/android/settings/UsageDataManager$UsageData;

    .end local p1
    check-cast p2, Lcom/android/settings/UsageDataManager$UsageData;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment$UsageDataTimeComparator;->compare(Lcom/android/settings/UsageDataManager$UsageData;Lcom/android/settings/UsageDataManager$UsageData;)I

    move-result v0

    return v0
.end method
