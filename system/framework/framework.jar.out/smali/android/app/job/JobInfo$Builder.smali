.class public final Landroid/app/job/JobInfo$Builder;
.super Ljava/lang/Object;
.source "JobInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/job/JobInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBackoffPolicy:I

.field private mBackoffPolicySet:Z

.field private mExtras:Landroid/os/PersistableBundle;

.field private mHasEarlyConstraint:Z

.field private mHasLateConstraint:Z

.field private mInitialBackoffMillis:J

.field private mIntervalMillis:J

.field private mIsPeriodic:Z

.field private mIsPersisted:Z

.field private mJobId:I

.field private mJobService:Landroid/content/ComponentName;

.field private mMaxExecutionDelayMillis:J

.field private mMinLatencyMillis:J

.field private mNetworkType:I

.field private mRequiresCharging:Z

.field private mRequiresDeviceIdle:Z


# direct methods
.method public constructor <init>(ILandroid/content/ComponentName;)V
    .locals 2
    .param p1, "jobId"    # I
    .param p2, "jobService"    # Landroid/content/ComponentName;

    .prologue
    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    sget-object v0, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    iput-object v0, p0, Landroid/app/job/JobInfo$Builder;->mExtras:Landroid/os/PersistableBundle;

    .line 304
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mInitialBackoffMillis:J

    .line 305
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicy:I

    .line 307
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicySet:Z

    .line 317
    iput-object p2, p0, Landroid/app/job/JobInfo$Builder;->mJobService:Landroid/content/ComponentName;

    .line 318
    iput p1, p0, Landroid/app/job/JobInfo$Builder;->mJobId:I

    .line 319
    return-void
.end method

.method static synthetic access$000(Landroid/app/job/JobInfo$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroid/app/job/JobInfo$Builder;

    .prologue
    .line 286
    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mJobId:I

    return v0
.end method

.method static synthetic access$100(Landroid/app/job/JobInfo$Builder;)Landroid/os/PersistableBundle;
    .locals 1
    .param p0, "x0"    # Landroid/app/job/JobInfo$Builder;

    .prologue
    .line 286
    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mExtras:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/app/job/JobInfo$Builder;)J
    .locals 2
    .param p0, "x0"    # Landroid/app/job/JobInfo$Builder;

    .prologue
    .line 286
    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mIntervalMillis:J

    return-wide v0
.end method

.method static synthetic access$1100(Landroid/app/job/JobInfo$Builder;)J
    .locals 2
    .param p0, "x0"    # Landroid/app/job/JobInfo$Builder;

    .prologue
    .line 286
    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mInitialBackoffMillis:J

    return-wide v0
.end method

.method static synthetic access$1200(Landroid/app/job/JobInfo$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroid/app/job/JobInfo$Builder;

    .prologue
    .line 286
    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicy:I

    return v0
.end method

.method static synthetic access$1300(Landroid/app/job/JobInfo$Builder;)Z
    .locals 1
    .param p0, "x0"    # Landroid/app/job/JobInfo$Builder;

    .prologue
    .line 286
    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mHasEarlyConstraint:Z

    return v0
.end method

.method static synthetic access$1400(Landroid/app/job/JobInfo$Builder;)Z
    .locals 1
    .param p0, "x0"    # Landroid/app/job/JobInfo$Builder;

    .prologue
    .line 286
    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mHasLateConstraint:Z

    return v0
.end method

.method static synthetic access$200(Landroid/app/job/JobInfo$Builder;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Landroid/app/job/JobInfo$Builder;

    .prologue
    .line 286
    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mJobService:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$300(Landroid/app/job/JobInfo$Builder;)Z
    .locals 1
    .param p0, "x0"    # Landroid/app/job/JobInfo$Builder;

    .prologue
    .line 286
    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mRequiresCharging:Z

    return v0
.end method

.method static synthetic access$400(Landroid/app/job/JobInfo$Builder;)Z
    .locals 1
    .param p0, "x0"    # Landroid/app/job/JobInfo$Builder;

    .prologue
    .line 286
    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mRequiresDeviceIdle:Z

    return v0
.end method

.method static synthetic access$500(Landroid/app/job/JobInfo$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroid/app/job/JobInfo$Builder;

    .prologue
    .line 286
    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mNetworkType:I

    return v0
.end method

.method static synthetic access$600(Landroid/app/job/JobInfo$Builder;)J
    .locals 2
    .param p0, "x0"    # Landroid/app/job/JobInfo$Builder;

    .prologue
    .line 286
    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mMinLatencyMillis:J

    return-wide v0
.end method

.method static synthetic access$700(Landroid/app/job/JobInfo$Builder;)J
    .locals 2
    .param p0, "x0"    # Landroid/app/job/JobInfo$Builder;

    .prologue
    .line 286
    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mMaxExecutionDelayMillis:J

    return-wide v0
.end method

.method static synthetic access$800(Landroid/app/job/JobInfo$Builder;)Z
    .locals 1
    .param p0, "x0"    # Landroid/app/job/JobInfo$Builder;

    .prologue
    .line 286
    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mIsPeriodic:Z

    return v0
.end method

.method static synthetic access$900(Landroid/app/job/JobInfo$Builder;)Z
    .locals 1
    .param p0, "x0"    # Landroid/app/job/JobInfo$Builder;

    .prologue
    .line 286
    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mIsPersisted:Z

    return v0
.end method


# virtual methods
.method public build()Landroid/app/job/JobInfo;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 450
    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mHasEarlyConstraint:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mHasLateConstraint:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mRequiresCharging:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mRequiresDeviceIdle:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mNetworkType:I

    if-nez v0, :cond_0

    .line 452
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You\'re trying to build a job with no constraints, this is not allowed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 455
    :cond_0
    new-instance v0, Landroid/os/PersistableBundle;

    iget-object v1, p0, Landroid/app/job/JobInfo$Builder;->mExtras:Landroid/os/PersistableBundle;

    invoke-direct {v0, v1}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    iput-object v0, p0, Landroid/app/job/JobInfo$Builder;->mExtras:Landroid/os/PersistableBundle;

    .line 457
    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mIsPeriodic:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mMaxExecutionDelayMillis:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 458
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t call setOverrideDeadline() on a periodic job."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 461
    :cond_1
    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mIsPeriodic:Z

    if-eqz v0, :cond_2

    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mMinLatencyMillis:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 462
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t call setMinimumLatency() on a periodic job"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    :cond_2
    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicySet:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mRequiresDeviceIdle:Z

    if-eqz v0, :cond_3

    .line 466
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "An idle mode job will not respect any back-off policy, so calling setBackoffCriteria with setRequiresDeviceIdle is an error."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 470
    :cond_3
    new-instance v0, Landroid/app/job/JobInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/job/JobInfo;-><init>(Landroid/app/job/JobInfo$Builder;Landroid/app/job/JobInfo$1;)V

    return-object v0
.end method

.method public setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;
    .locals 1
    .param p1, "initialBackoffMillis"    # J
    .param p3, "backoffPolicy"    # I

    .prologue
    .line 426
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicySet:Z

    .line 427
    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mInitialBackoffMillis:J

    .line 428
    iput p3, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicy:I

    .line 429
    return-object p0
.end method

.method public setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;
    .locals 0
    .param p1, "extras"    # Landroid/os/PersistableBundle;

    .prologue
    .line 326
    iput-object p1, p0, Landroid/app/job/JobInfo$Builder;->mExtras:Landroid/os/PersistableBundle;

    .line 327
    return-object p0
.end method

.method public setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;
    .locals 1
    .param p1, "minLatencyMillis"    # J

    .prologue
    .line 392
    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mMinLatencyMillis:J

    .line 393
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mHasEarlyConstraint:Z

    .line 394
    return-object p0
.end method

.method public setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;
    .locals 1
    .param p1, "maxExecutionDelayMillis"    # J

    .prologue
    .line 405
    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mMaxExecutionDelayMillis:J

    .line 406
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mHasLateConstraint:Z

    .line 407
    return-object p0
.end method

.method public setPeriodic(J)Landroid/app/job/JobInfo$Builder;
    .locals 1
    .param p1, "intervalMillis"    # J

    .prologue
    const/4 v0, 0x1

    .line 377
    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mIsPeriodic:Z

    .line 378
    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mIntervalMillis:J

    .line 379
    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mHasLateConstraint:Z

    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mHasEarlyConstraint:Z

    .line 380
    return-object p0
.end method

.method public setPersisted(Z)Landroid/app/job/JobInfo$Builder;
    .locals 0
    .param p1, "isPersisted"    # Z

    .prologue
    .line 441
    iput-boolean p1, p0, Landroid/app/job/JobInfo$Builder;->mIsPersisted:Z

    .line 442
    return-object p0
.end method

.method public setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;
    .locals 0
    .param p1, "networkType"    # I

    .prologue
    .line 339
    iput p1, p0, Landroid/app/job/JobInfo$Builder;->mNetworkType:I

    .line 340
    return-object p0
.end method

.method public setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;
    .locals 0
    .param p1, "requiresCharging"    # Z

    .prologue
    .line 349
    iput-boolean p1, p0, Landroid/app/job/JobInfo$Builder;->mRequiresCharging:Z

    .line 350
    return-object p0
.end method

.method public setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;
    .locals 0
    .param p1, "requiresDeviceIdle"    # Z

    .prologue
    .line 364
    iput-boolean p1, p0, Landroid/app/job/JobInfo$Builder;->mRequiresDeviceIdle:Z

    .line 365
    return-object p0
.end method
