.class public Lcom/android/settings/net/ChartDataLoader;
.super Landroid/content/AsyncTaskLoader;
.source "ChartDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Lcom/android/settings/net/ChartData;",
        ">;"
    }
.end annotation


# instance fields
.field private final mArgs:Landroid/os/Bundle;

.field private final mSession:Landroid/net/INetworkStatsSession;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/INetworkStatsSession;Landroid/os/Bundle;)V
    .locals 0
    .parameter "context"
    .parameter "session"
    .parameter "args"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 61
    iput-object p2, p0, Lcom/android/settings/net/ChartDataLoader;->mSession:Landroid/net/INetworkStatsSession;

    .line 62
    iput-object p3, p0, Lcom/android/settings/net/ChartDataLoader;->mArgs:Landroid/os/Bundle;

    .line 63
    return-void
.end method

.method public static buildArgs(Landroid/net/NetworkTemplate;Lcom/android/settings/DataUsageSummary$AppItem;)Landroid/os/Bundle;
    .locals 1
    .parameter "template"
    .parameter "app"

    .prologue
    .line 48
    const/16 v0, 0xa

    invoke-static {p0, p1, v0}, Lcom/android/settings/net/ChartDataLoader;->buildArgs(Landroid/net/NetworkTemplate;Lcom/android/settings/DataUsageSummary$AppItem;I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static buildArgs(Landroid/net/NetworkTemplate;Lcom/android/settings/DataUsageSummary$AppItem;I)Landroid/os/Bundle;
    .locals 2
    .parameter "template"
    .parameter "app"
    .parameter "fields"

    .prologue
    .line 52
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 53
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "template"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 54
    const-string v1, "app"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 55
    const-string v1, "fields"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 56
    return-object v0
.end method

.method private collectHistoryForUid(Landroid/net/NetworkTemplate;IILandroid/net/NetworkStatsHistory;)Landroid/net/NetworkStatsHistory;
    .locals 7
    .parameter "template"
    .parameter "uid"
    .parameter "set"
    .parameter "existing"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/settings/net/ChartDataLoader;->mSession:Landroid/net/INetworkStatsSession;

    const/4 v4, 0x0

    const/16 v5, 0xa

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsSession;->getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v6

    .line 138
    .local v6, history:Landroid/net/NetworkStatsHistory;
    if-eqz p4, :cond_0

    .line 139
    invoke-virtual {p4, v6}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    .line 142
    .end local p4
    :goto_0
    return-object p4

    .restart local p4
    :cond_0
    move-object p4, v6

    goto :goto_0
.end method

.method private loadInBackground(Landroid/net/NetworkTemplate;Lcom/android/settings/DataUsageSummary$AppItem;I)Lcom/android/settings/net/ChartData;
    .locals 8
    .parameter "template"
    .parameter "app"
    .parameter "fields"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/32 v6, 0x36ee80

    .line 88
    new-instance v0, Lcom/android/settings/net/ChartData;

    invoke-direct {v0}, Lcom/android/settings/net/ChartData;-><init>()V

    .line 89
    .local v0, data:Lcom/android/settings/net/ChartData;
    iget-object v4, p0, Lcom/android/settings/net/ChartDataLoader;->mSession:Landroid/net/INetworkStatsSession;

    invoke-interface {v4, p1, p3}, Landroid/net/INetworkStatsSession;->getHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    .line 91
    if-eqz p2, :cond_1

    .line 93
    iget-object v4, p2, Lcom/android/settings/DataUsageSummary$AppItem;->uids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    .line 94
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 95
    iget-object v4, p2, Lcom/android/settings/DataUsageSummary$AppItem;->uids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 96
    .local v3, uid:I
    const/4 v4, 0x0

    iget-object v5, v0, Lcom/android/settings/net/ChartData;->detailDefault:Landroid/net/NetworkStatsHistory;

    invoke-direct {p0, p1, v3, v4, v5}, Lcom/android/settings/net/ChartDataLoader;->collectHistoryForUid(Landroid/net/NetworkTemplate;IILandroid/net/NetworkStatsHistory;)Landroid/net/NetworkStatsHistory;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings/net/ChartData;->detailDefault:Landroid/net/NetworkStatsHistory;

    .line 98
    const/4 v4, 0x1

    iget-object v5, v0, Lcom/android/settings/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    invoke-direct {p0, p1, v3, v4, v5}, Lcom/android/settings/net/ChartDataLoader;->collectHistoryForUid(Landroid/net/NetworkTemplate;IILandroid/net/NetworkStatsHistory;)Landroid/net/NetworkStatsHistory;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    .end local v3           #uid:I
    :cond_0
    if-lez v2, :cond_2

    .line 103
    new-instance v4, Landroid/net/NetworkStatsHistory;

    iget-object v5, v0, Lcom/android/settings/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v5}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Landroid/net/NetworkStatsHistory;-><init>(J)V

    iput-object v4, v0, Lcom/android/settings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    .line 104
    iget-object v4, v0, Lcom/android/settings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    iget-object v5, v0, Lcom/android/settings/net/ChartData;->detailDefault:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v4, v5}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    .line 105
    iget-object v4, v0, Lcom/android/settings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    iget-object v5, v0, Lcom/android/settings/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v4, v5}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    .line 113
    .end local v1           #i:I
    .end local v2           #size:I
    :cond_1
    :goto_1
    return-object v0

    .line 107
    .restart local v1       #i:I
    .restart local v2       #size:I
    :cond_2
    new-instance v4, Landroid/net/NetworkStatsHistory;

    invoke-direct {v4, v6, v7}, Landroid/net/NetworkStatsHistory;-><init>(J)V

    iput-object v4, v0, Lcom/android/settings/net/ChartData;->detailDefault:Landroid/net/NetworkStatsHistory;

    .line 108
    new-instance v4, Landroid/net/NetworkStatsHistory;

    invoke-direct {v4, v6, v7}, Landroid/net/NetworkStatsHistory;-><init>(J)V

    iput-object v4, v0, Lcom/android/settings/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    .line 109
    new-instance v4, Landroid/net/NetworkStatsHistory;

    invoke-direct {v4, v6, v7}, Landroid/net/NetworkStatsHistory;-><init>(J)V

    iput-object v4, v0, Lcom/android/settings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    goto :goto_1
.end method


# virtual methods
.method public loadInBackground()Lcom/android/settings/net/ChartData;
    .locals 6

    .prologue
    .line 73
    iget-object v4, p0, Lcom/android/settings/net/ChartDataLoader;->mArgs:Landroid/os/Bundle;

    const-string v5, "template"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkTemplate;

    .line 74
    .local v3, template:Landroid/net/NetworkTemplate;
    iget-object v4, p0, Lcom/android/settings/net/ChartDataLoader;->mArgs:Landroid/os/Bundle;

    const-string v5, "app"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DataUsageSummary$AppItem;

    .line 75
    .local v0, app:Lcom/android/settings/DataUsageSummary$AppItem;
    iget-object v4, p0, Lcom/android/settings/net/ChartDataLoader;->mArgs:Landroid/os/Bundle;

    const-string v5, "fields"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 78
    .local v2, fields:I
    :try_start_0
    invoke-direct {p0, v3, v0, v2}, Lcom/android/settings/net/ChartDataLoader;->loadInBackground(Landroid/net/NetworkTemplate;Lcom/android/settings/DataUsageSummary$AppItem;I)Lcom/android/settings/net/ChartData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 79
    :catch_0
    move-exception v1

    .line 82
    .local v1, e:Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "problem reading network stats"

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/android/settings/net/ChartDataLoader;->loadInBackground()Lcom/android/settings/net/ChartData;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 0

    .prologue
    .line 124
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/net/ChartDataLoader;->cancelLoad()Z

    .line 126
    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    .line 67
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStartLoading()V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/net/ChartDataLoader;->forceLoad()V

    .line 69
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 118
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStopLoading()V

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/net/ChartDataLoader;->cancelLoad()Z

    .line 120
    return-void
.end method
