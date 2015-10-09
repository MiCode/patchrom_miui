.class public final Landroid/print/PrintJob;
.super Ljava/lang/Object;
.source "PrintJob.java"


# instance fields
.field private mCachedInfo:Landroid/print/PrintJobInfo;

.field private final mPrintManager:Landroid/print/PrintManager;


# direct methods
.method constructor <init>(Landroid/print/PrintJobInfo;Landroid/print/PrintManager;)V
    .locals 0
    .param p1, "info"    # Landroid/print/PrintJobInfo;
    .param p2, "printManager"    # Landroid/print/PrintManager;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Landroid/print/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    .line 36
    iput-object p2, p0, Landroid/print/PrintJob;->mPrintManager:Landroid/print/PrintManager;

    .line 37
    return-void
.end method

.method private isInImmutableState()Z
    .locals 2

    .prologue
    .line 176
    iget-object v1, p0, Landroid/print/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    .line 177
    .local v0, "state":I
    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 79
    invoke-virtual {p0}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    .line 80
    .local v0, "state":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 84
    :cond_0
    iget-object v1, p0, Landroid/print/PrintJob;->mPrintManager:Landroid/print/PrintManager;

    iget-object v2, p0, Landroid/print/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v2}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/print/PrintManager;->cancelPrintJob(Landroid/print/PrintJobId;)V

    .line 86
    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 183
    if-ne p0, p1, :cond_1

    .line 184
    const/4 v1, 0x1

    .line 193
    :cond_0
    :goto_0
    return v1

    .line 186
    :cond_1
    if-eqz p1, :cond_0

    .line 189
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    move-object v0, p1

    .line 192
    check-cast v0, Landroid/print/PrintJob;

    .line 193
    .local v0, "other":Landroid/print/PrintJob;
    iget-object v1, p0, Landroid/print/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v1

    iget-object v2, v0, Landroid/print/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v2}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/print/PrintJobId;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getId()Landroid/print/PrintJobId;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Landroid/print/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v0

    return-object v0
.end method

.method public getInfo()Landroid/print/PrintJobInfo;
    .locals 3

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/print/PrintJob;->isInImmutableState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Landroid/print/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    .line 66
    :goto_0
    return-object v1

    .line 62
    :cond_0
    iget-object v1, p0, Landroid/print/PrintJob;->mPrintManager:Landroid/print/PrintManager;

    iget-object v2, p0, Landroid/print/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v2}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/print/PrintManager;->getPrintJobInfo(Landroid/print/PrintJobId;)Landroid/print/PrintJobInfo;

    move-result-object v0

    .line 63
    .local v0, "info":Landroid/print/PrintJobInfo;
    if-eqz v0, :cond_1

    .line 64
    iput-object v0, p0, Landroid/print/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    .line 66
    :cond_1
    iget-object v1, p0, Landroid/print/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Landroid/print/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintJobId;->hashCode()I

    move-result v0

    return v0
.end method

.method public isBlocked()Z
    .locals 2

    .prologue
    .line 136
    invoke-virtual {p0}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCancelled()Z
    .locals 2

    .prologue
    .line 172
    invoke-virtual {p0}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCompleted()Z
    .locals 2

    .prologue
    .line 147
    invoke-virtual {p0}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFailed()Z
    .locals 2

    .prologue
    .line 161
    invoke-virtual {p0}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQueued()Z
    .locals 2

    .prologue
    .line 110
    invoke-virtual {p0}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStarted()Z
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p0}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restart()V
    .locals 2

    .prologue
    .line 95
    invoke-virtual {p0}, Landroid/print/PrintJob;->isFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Landroid/print/PrintJob;->mPrintManager:Landroid/print/PrintManager;

    iget-object v1, p0, Landroid/print/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->restartPrintJob(Landroid/print/PrintJobId;)V

    .line 98
    :cond_0
    return-void
.end method
