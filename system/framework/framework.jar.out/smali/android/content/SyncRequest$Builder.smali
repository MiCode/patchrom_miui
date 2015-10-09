.class public Landroid/content/SyncRequest$Builder;
.super Ljava/lang/Object;
.source "SyncRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/SyncRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final SYNC_TARGET_ADAPTER:I = 0x2

.field private static final SYNC_TARGET_SERVICE:I = 0x1

.field private static final SYNC_TARGET_UNKNOWN:I = 0x0

.field private static final SYNC_TYPE_ONCE:I = 0x2

.field private static final SYNC_TYPE_PERIODIC:I = 0x1

.field private static final SYNC_TYPE_UNKNOWN:I


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAuthority:Ljava/lang/String;

.field private mComponentName:Landroid/content/ComponentName;

.field private mCustomExtras:Landroid/os/Bundle;

.field private mDisallowMetered:Z

.field private mExpedited:Z

.field private mIgnoreBackoff:Z

.field private mIgnoreSettings:Z

.field private mIsManual:Z

.field private mNoRetry:Z

.field private mPriority:I

.field private mRxBytes:J

.field private mSyncConfigExtras:Landroid/os/Bundle;

.field private mSyncFlexTimeSecs:J

.field private mSyncRunTimeSecs:J

.field private mSyncTarget:I

.field private mSyncType:I

.field private mTxBytes:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, -0x1

    const/4 v0, 0x0

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput-wide v1, p0, Landroid/content/SyncRequest$Builder;->mTxBytes:J

    .line 254
    iput-wide v1, p0, Landroid/content/SyncRequest$Builder;->mRxBytes:J

    .line 258
    iput v0, p0, Landroid/content/SyncRequest$Builder;->mPriority:I

    .line 262
    iput v0, p0, Landroid/content/SyncRequest$Builder;->mSyncType:I

    .line 264
    iput v0, p0, Landroid/content/SyncRequest$Builder;->mSyncTarget:I

    .line 302
    return-void
.end method

.method static synthetic access$100(Landroid/content/SyncRequest$Builder;)J
    .locals 2
    .param p0, "x0"    # Landroid/content/SyncRequest$Builder;

    .prologue
    .line 222
    iget-wide v0, p0, Landroid/content/SyncRequest$Builder;->mSyncFlexTimeSecs:J

    return-wide v0
.end method

.method static synthetic access$1000(Landroid/content/SyncRequest$Builder;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Landroid/content/SyncRequest$Builder;

    .prologue
    .line 222
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/content/SyncRequest$Builder;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/SyncRequest$Builder;

    .prologue
    .line 222
    iget-boolean v0, p0, Landroid/content/SyncRequest$Builder;->mDisallowMetered:Z

    return v0
.end method

.method static synthetic access$1200(Landroid/content/SyncRequest$Builder;)J
    .locals 2
    .param p0, "x0"    # Landroid/content/SyncRequest$Builder;

    .prologue
    .line 222
    iget-wide v0, p0, Landroid/content/SyncRequest$Builder;->mTxBytes:J

    return-wide v0
.end method

.method static synthetic access$1300(Landroid/content/SyncRequest$Builder;)J
    .locals 2
    .param p0, "x0"    # Landroid/content/SyncRequest$Builder;

    .prologue
    .line 222
    iget-wide v0, p0, Landroid/content/SyncRequest$Builder;->mRxBytes:J

    return-wide v0
.end method

.method static synthetic access$200(Landroid/content/SyncRequest$Builder;)J
    .locals 2
    .param p0, "x0"    # Landroid/content/SyncRequest$Builder;

    .prologue
    .line 222
    iget-wide v0, p0, Landroid/content/SyncRequest$Builder;->mSyncRunTimeSecs:J

    return-wide v0
.end method

.method static synthetic access$300(Landroid/content/SyncRequest$Builder;)Landroid/accounts/Account;
    .locals 1
    .param p0, "x0"    # Landroid/content/SyncRequest$Builder;

    .prologue
    .line 222
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$400(Landroid/content/SyncRequest$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/SyncRequest$Builder;

    .prologue
    .line 222
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mAuthority:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Landroid/content/SyncRequest$Builder;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Landroid/content/SyncRequest$Builder;

    .prologue
    .line 222
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$600(Landroid/content/SyncRequest$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroid/content/SyncRequest$Builder;

    .prologue
    .line 222
    iget v0, p0, Landroid/content/SyncRequest$Builder;->mSyncType:I

    return v0
.end method

.method static synthetic access$700(Landroid/content/SyncRequest$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroid/content/SyncRequest$Builder;

    .prologue
    .line 222
    iget v0, p0, Landroid/content/SyncRequest$Builder;->mSyncTarget:I

    return v0
.end method

.method static synthetic access$800(Landroid/content/SyncRequest$Builder;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/SyncRequest$Builder;

    .prologue
    .line 222
    iget-boolean v0, p0, Landroid/content/SyncRequest$Builder;->mExpedited:Z

    return v0
.end method

.method static synthetic access$900(Landroid/content/SyncRequest$Builder;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Landroid/content/SyncRequest$Builder;

    .prologue
    .line 222
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mCustomExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method private setupInterval(JJ)V
    .locals 2
    .param p1, "at"    # J
    .param p3, "before"    # J

    .prologue
    .line 369
    cmp-long v0, p3, p1

    if-lez v0, :cond_0

    .line 370
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Specified run time for the sync must be after the specified flex time."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 373
    :cond_0
    iput-wide p1, p0, Landroid/content/SyncRequest$Builder;->mSyncRunTimeSecs:J

    .line 374
    iput-wide p3, p0, Landroid/content/SyncRequest$Builder;->mSyncFlexTimeSecs:J

    .line 375
    return-void
.end method

.method private validatePeriodicExtras(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 614
    const-string v0, "force"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "do_not_retry"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ignore_backoff"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ignore_settings"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "initialize"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "force"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "expedited"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 621
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal extras were set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 623
    :cond_1
    return-void
.end method


# virtual methods
.method public build()Landroid/content/SyncRequest;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 555
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mCustomExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 556
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/SyncRequest$Builder;->mCustomExtras:Landroid/os/Bundle;

    .line 559
    :cond_0
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mCustomExtras:Landroid/os/Bundle;

    invoke-static {v0}, Landroid/content/ContentResolver;->validateSyncExtrasBundle(Landroid/os/Bundle;)V

    .line 561
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    .line 562
    iget-boolean v0, p0, Landroid/content/SyncRequest$Builder;->mIgnoreBackoff:Z

    if-eqz v0, :cond_1

    .line 563
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    const-string v1, "ignore_backoff"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 565
    :cond_1
    iget-boolean v0, p0, Landroid/content/SyncRequest$Builder;->mDisallowMetered:Z

    if-eqz v0, :cond_2

    .line 566
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    const-string v1, "disallow_metered"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 568
    :cond_2
    iget-boolean v0, p0, Landroid/content/SyncRequest$Builder;->mIgnoreSettings:Z

    if-eqz v0, :cond_3

    .line 569
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    const-string v1, "ignore_settings"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 571
    :cond_3
    iget-boolean v0, p0, Landroid/content/SyncRequest$Builder;->mNoRetry:Z

    if-eqz v0, :cond_4

    .line 572
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    const-string v1, "do_not_retry"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 574
    :cond_4
    iget-boolean v0, p0, Landroid/content/SyncRequest$Builder;->mExpedited:Z

    if-eqz v0, :cond_5

    .line 575
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    const-string v1, "expedited"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 577
    :cond_5
    iget-boolean v0, p0, Landroid/content/SyncRequest$Builder;->mIsManual:Z

    if-eqz v0, :cond_6

    .line 578
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    const-string v1, "force"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 580
    :cond_6
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    const-string v1, "expected_upload"

    iget-wide v2, p0, Landroid/content/SyncRequest$Builder;->mTxBytes:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 581
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    const-string v1, "expected_download"

    iget-wide v2, p0, Landroid/content/SyncRequest$Builder;->mRxBytes:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 582
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    const-string/jumbo v1, "sync_priority"

    iget v2, p0, Landroid/content/SyncRequest$Builder;->mPriority:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 583
    iget v0, p0, Landroid/content/SyncRequest$Builder;->mSyncType:I

    if-ne v0, v4, :cond_8

    .line 585
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mCustomExtras:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Landroid/content/SyncRequest$Builder;->validatePeriodicExtras(Landroid/os/Bundle;)V

    .line 586
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mSyncConfigExtras:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Landroid/content/SyncRequest$Builder;->validatePeriodicExtras(Landroid/os/Bundle;)V

    .line 588
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mAccount:Landroid/accounts/Account;

    if-nez v0, :cond_7

    .line 589
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Account must not be null for periodic sync."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 592
    :cond_7
    iget-object v0, p0, Landroid/content/SyncRequest$Builder;->mAuthority:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 593
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authority must not be null for periodic sync."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 596
    :cond_8
    iget v0, p0, Landroid/content/SyncRequest$Builder;->mSyncType:I

    if-nez v0, :cond_9

    .line 597
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must call either syncOnce() or syncPeriodic()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 600
    :cond_9
    iget v0, p0, Landroid/content/SyncRequest$Builder;->mSyncTarget:I

    if-nez v0, :cond_a

    .line 601
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify an adapter with setSyncAdapter(Account, String"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 604
    :cond_a
    new-instance v0, Landroid/content/SyncRequest;

    invoke-direct {v0, p0}, Landroid/content/SyncRequest;-><init>(Landroid/content/SyncRequest$Builder;)V

    return-object v0
.end method

.method public setDisallowMetered(Z)Landroid/content/SyncRequest$Builder;
    .locals 0
    .param p1, "disallow"    # Z

    .prologue
    .line 397
    iput-boolean p1, p0, Landroid/content/SyncRequest$Builder;->mDisallowMetered:Z

    .line 398
    return-object p0
.end method

.method public setExpedited(Z)Landroid/content/SyncRequest$Builder;
    .locals 0
    .param p1, "expedited"    # Z

    .prologue
    .line 530
    iput-boolean p1, p0, Landroid/content/SyncRequest$Builder;->mExpedited:Z

    .line 531
    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/content/SyncRequest$Builder;
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 459
    iput-object p1, p0, Landroid/content/SyncRequest$Builder;->mCustomExtras:Landroid/os/Bundle;

    .line 460
    return-object p0
.end method

.method public setIgnoreBackoff(Z)Landroid/content/SyncRequest$Builder;
    .locals 0
    .param p1, "ignoreBackoff"    # Z

    .prologue
    .line 503
    iput-boolean p1, p0, Landroid/content/SyncRequest$Builder;->mIgnoreBackoff:Z

    .line 504
    return-object p0
.end method

.method public setIgnoreSettings(Z)Landroid/content/SyncRequest$Builder;
    .locals 0
    .param p1, "ignoreSettings"    # Z

    .prologue
    .line 487
    iput-boolean p1, p0, Landroid/content/SyncRequest$Builder;->mIgnoreSettings:Z

    .line 488
    return-object p0
.end method

.method public setManual(Z)Landroid/content/SyncRequest$Builder;
    .locals 0
    .param p1, "isManual"    # Z

    .prologue
    .line 517
    iput-boolean p1, p0, Landroid/content/SyncRequest$Builder;->mIsManual:Z

    .line 518
    return-object p0
.end method

.method public setNoRetry(Z)Landroid/content/SyncRequest$Builder;
    .locals 0
    .param p1, "noRetry"    # Z

    .prologue
    .line 473
    iput-boolean p1, p0, Landroid/content/SyncRequest$Builder;->mNoRetry:Z

    .line 474
    return-object p0
.end method

.method public setPriority(I)Landroid/content/SyncRequest$Builder;
    .locals 2
    .param p1, "priority"    # I

    .prologue
    .line 540
    const/4 v0, -0x2

    if-lt p1, v0, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    .line 541
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Priority must be within range [-2, 2]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 543
    :cond_1
    iput p1, p0, Landroid/content/SyncRequest$Builder;->mPriority:I

    .line 544
    return-object p0
.end method

.method public setSyncAdapter(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncRequest$Builder;
    .locals 2
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;

    .prologue
    .line 408
    iget v0, p0, Landroid/content/SyncRequest$Builder;->mSyncTarget:I

    if-eqz v0, :cond_0

    .line 409
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Sync target has already been defined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 411
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 412
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authority must be non-empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 414
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Landroid/content/SyncRequest$Builder;->mSyncTarget:I

    .line 415
    iput-object p1, p0, Landroid/content/SyncRequest$Builder;->mAccount:Landroid/accounts/Account;

    .line 416
    iput-object p2, p0, Landroid/content/SyncRequest$Builder;->mAuthority:Ljava/lang/String;

    .line 417
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/SyncRequest$Builder;->mComponentName:Landroid/content/ComponentName;

    .line 418
    return-object p0
.end method

.method public setTransferSize(JJ)Landroid/content/SyncRequest$Builder;
    .locals 0
    .param p1, "rxBytes"    # J
    .param p3, "txBytes"    # J

    .prologue
    .line 386
    iput-wide p1, p0, Landroid/content/SyncRequest$Builder;->mRxBytes:J

    .line 387
    iput-wide p3, p0, Landroid/content/SyncRequest$Builder;->mTxBytes:J

    .line 388
    return-object p0
.end method

.method public syncOnce()Landroid/content/SyncRequest$Builder;
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 313
    iget v0, p0, Landroid/content/SyncRequest$Builder;->mSyncType:I

    if-eqz v0, :cond_0

    .line 314
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Sync type has already been defined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Landroid/content/SyncRequest$Builder;->mSyncType:I

    .line 317
    invoke-direct {p0, v1, v2, v1, v2}, Landroid/content/SyncRequest$Builder;->setupInterval(JJ)V

    .line 318
    return-object p0
.end method

.method public syncPeriodic(JJ)Landroid/content/SyncRequest$Builder;
    .locals 2
    .param p1, "pollFrequency"    # J
    .param p3, "beforeSeconds"    # J

    .prologue
    .line 359
    iget v0, p0, Landroid/content/SyncRequest$Builder;->mSyncType:I

    if-eqz v0, :cond_0

    .line 360
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Sync type has already been defined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Landroid/content/SyncRequest$Builder;->mSyncType:I

    .line 363
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/SyncRequest$Builder;->setupInterval(JJ)V

    .line 364
    return-object p0
.end method
