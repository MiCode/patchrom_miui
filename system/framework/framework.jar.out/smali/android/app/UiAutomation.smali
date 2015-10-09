.class public final Landroid/app/UiAutomation;
.super Ljava/lang/Object;
.source "UiAutomation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/UiAutomation$IAccessibilityServiceClientImpl;,
        Landroid/app/UiAutomation$AccessibilityEventFilter;,
        Landroid/app/UiAutomation$OnAccessibilityEventListener;
    }
.end annotation


# static fields
.field private static final CONNECTION_ID_UNDEFINED:I = -0x1

.field private static final CONNECT_TIMEOUT_MILLIS:J = 0x1388L

.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final ROTATION_FREEZE_0:I = 0x0

.field public static final ROTATION_FREEZE_180:I = 0x2

.field public static final ROTATION_FREEZE_270:I = 0x3

.field public static final ROTATION_FREEZE_90:I = 0x1

.field public static final ROTATION_FREEZE_CURRENT:I = -0x1

.field public static final ROTATION_UNFREEZE:I = -0x2


# instance fields
.field private final mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

.field private mConnectionId:I

.field private final mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mIsConnecting:Z

.field private mLastEventTimeMillis:J

.field private final mLock:Ljava/lang/Object;

.field private mOnAccessibilityEventListener:Landroid/app/UiAutomation$OnAccessibilityEventListener;

.field private final mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

.field private mWaitingForEventDelivery:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-class v0, Landroid/app/UiAutomation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/app/IUiAutomationConnection;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "connection"    # Landroid/app/IUiAutomationConnection;

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    .line 104
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/UiAutomation;->mConnectionId:I

    .line 162
    if-nez p1, :cond_0

    .line 163
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Looper cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_0
    if-nez p2, :cond_1

    .line 166
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_1
    iput-object p2, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    .line 169
    new-instance v0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl;

    invoke-direct {v0, p0, p1}, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl;-><init>(Landroid/app/UiAutomation;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/app/UiAutomation;->mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 170
    return-void
.end method

.method static synthetic access$000(Landroid/app/UiAutomation;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/app/UiAutomation;

    .prologue
    .line 68
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Landroid/app/UiAutomation;I)I
    .locals 0
    .param p0, "x0"    # Landroid/app/UiAutomation;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Landroid/app/UiAutomation;->mConnectionId:I

    return p1
.end method

.method static synthetic access$202(Landroid/app/UiAutomation;J)J
    .locals 0
    .param p0, "x0"    # Landroid/app/UiAutomation;
    .param p1, "x1"    # J

    .prologue
    .line 68
    iput-wide p1, p0, Landroid/app/UiAutomation;->mLastEventTimeMillis:J

    return-wide p1
.end method

.method static synthetic access$300(Landroid/app/UiAutomation;)Z
    .locals 1
    .param p0, "x0"    # Landroid/app/UiAutomation;

    .prologue
    .line 68
    iget-boolean v0, p0, Landroid/app/UiAutomation;->mWaitingForEventDelivery:Z

    return v0
.end method

.method static synthetic access$400(Landroid/app/UiAutomation;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/app/UiAutomation;

    .prologue
    .line 68
    iget-object v0, p0, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Landroid/app/UiAutomation;)Landroid/app/UiAutomation$OnAccessibilityEventListener;
    .locals 1
    .param p0, "x0"    # Landroid/app/UiAutomation;

    .prologue
    .line 68
    iget-object v0, p0, Landroid/app/UiAutomation;->mOnAccessibilityEventListener:Landroid/app/UiAutomation$OnAccessibilityEventListener;

    return-object v0
.end method

.method private static getDegreesForRotation(I)F
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 649
    packed-switch p0, :pswitch_data_0

    .line 659
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 651
    :pswitch_0
    const/high16 v0, 0x43870000    # 270.0f

    goto :goto_0

    .line 654
    :pswitch_1
    const/high16 v0, 0x43340000    # 180.0f

    goto :goto_0

    .line 657
    :pswitch_2
    const/high16 v0, 0x42b40000    # 90.0f

    goto :goto_0

    .line 649
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isConnectedLocked()Z
    .locals 2

    .prologue
    .line 665
    iget v0, p0, Landroid/app/UiAutomation;->mConnectionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private throwIfConnectedLocked()V
    .locals 2

    .prologue
    .line 669
    iget v0, p0, Landroid/app/UiAutomation;->mConnectionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 670
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UiAutomation not connected!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 672
    :cond_0
    return-void
.end method

.method private throwIfNotConnectedLocked()V
    .locals 2

    .prologue
    .line 675
    invoke-direct {p0}, Landroid/app/UiAutomation;->isConnectedLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 676
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UiAutomation not connected!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 678
    :cond_0
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 11

    .prologue
    .line 178
    iget-object v8, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 179
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfConnectedLocked()V

    .line 180
    iget-boolean v7, p0, Landroid/app/UiAutomation;->mIsConnecting:Z

    if-eqz v7, :cond_0

    .line 181
    monitor-exit v8

    .line 215
    :goto_0
    return-void

    .line 183
    :cond_0
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/app/UiAutomation;->mIsConnecting:Z

    .line 184
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 188
    :try_start_1
    iget-object v7, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    iget-object v8, p0, Landroid/app/UiAutomation;->mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-interface {v7, v8}, Landroid/app/IUiAutomationConnection;->connect(Landroid/accessibilityservice/IAccessibilityServiceClient;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 193
    iget-object v8, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 194
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v5

    .line 197
    .local v5, "startTimeMillis":J
    :goto_1
    :try_start_3
    invoke-direct {p0}, Landroid/app/UiAutomation;->isConnectedLocked()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v7

    if-eqz v7, :cond_1

    .line 212
    const/4 v7, 0x0

    :try_start_4
    iput-boolean v7, p0, Landroid/app/UiAutomation;->mIsConnecting:Z

    .line 214
    monitor-exit v8

    goto :goto_0

    .end local v5    # "startTimeMillis":J
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v7

    .line 184
    :catchall_1
    move-exception v7

    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v7

    .line 189
    :catch_0
    move-exception v2

    .line 190
    .local v2, "re":Landroid/os/RemoteException;
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Error while connecting UiAutomation"

    invoke-direct {v7, v8, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 200
    .end local v2    # "re":Landroid/os/RemoteException;
    .restart local v5    # "startTimeMillis":J
    :cond_1
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    sub-long v0, v9, v5

    .line 201
    .local v0, "elapsedTimeMillis":J
    const-wide/16 v9, 0x1388

    sub-long v3, v9, v0

    .line 202
    .local v3, "remainingTimeMillis":J
    const-wide/16 v9, 0x0

    cmp-long v7, v3, v9

    if-gtz v7, :cond_2

    .line 203
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v9, "Error while connecting UiAutomation"

    invoke-direct {v7, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 212
    .end local v0    # "elapsedTimeMillis":J
    .end local v3    # "remainingTimeMillis":J
    :catchall_2
    move-exception v7

    const/4 v9, 0x0

    :try_start_7
    iput-boolean v9, p0, Landroid/app/UiAutomation;->mIsConnecting:Z

    throw v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 206
    .restart local v0    # "elapsedTimeMillis":J
    .restart local v3    # "remainingTimeMillis":J
    :cond_2
    :try_start_8
    iget-object v7, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    invoke-virtual {v7, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_1

    .line 207
    :catch_1
    move-exception v7

    goto :goto_1
.end method

.method public disconnect()V
    .locals 4

    .prologue
    .line 223
    iget-object v2, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 224
    :try_start_0
    iget-boolean v1, p0, Landroid/app/UiAutomation;->mIsConnecting:Z

    if-eqz v1, :cond_0

    .line 225
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot call disconnect() while connecting!"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 230
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 228
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 229
    const/4 v1, -0x1

    iput v1, p0, Landroid/app/UiAutomation;->mConnectionId:I

    .line 230
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    :try_start_2
    iget-object v1, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v1}, Landroid/app/IUiAutomationConnection;->disconnect()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 237
    return-void

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error while disconnecting UiAutomation"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public executeAndWaitForEvent(Ljava/lang/Runnable;Landroid/app/UiAutomation$AccessibilityEventFilter;J)Landroid/view/accessibility/AccessibilityEvent;
    .locals 15
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "filter"    # Landroid/app/UiAutomation$AccessibilityEventFilter;
    .param p3, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 447
    iget-object v12, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 448
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 449
    iget-object v11, p0, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 451
    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/app/UiAutomation;->mWaitingForEventDelivery:Z

    .line 452
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 461
    .local v5, "executionStartTimeMillis":J
    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V

    .line 464
    iget-object v12, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 467
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 470
    .local v9, "startTimeMillis":J
    :cond_0
    :goto_0
    iget-object v11, p0, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2

    .line 471
    iget-object v11, p0, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityEvent;

    .line 473
    .local v4, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityEvent;->getEventTime()J

    move-result-wide v13

    cmp-long v11, v13, v5

    if-ltz v11, :cond_0

    .line 476
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/app/UiAutomation$AccessibilityEventFilter;->accept(Landroid/view/accessibility/AccessibilityEvent;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v11

    if-eqz v11, :cond_1

    .line 495
    const/4 v11, 0x0

    :try_start_2
    iput-boolean v11, p0, Landroid/app/UiAutomation;->mWaitingForEventDelivery:Z

    .line 496
    iget-object v11, p0, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 497
    iget-object v11, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-object v4

    .line 452
    .end local v4    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .end local v5    # "executionStartTimeMillis":J
    .end local v9    # "startTimeMillis":J
    :catchall_0
    move-exception v11

    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v11

    .line 479
    .restart local v4    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .restart local v5    # "executionStartTimeMillis":J
    .restart local v9    # "startTimeMillis":J
    :cond_1
    :try_start_4
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 495
    .end local v4    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .end local v9    # "startTimeMillis":J
    :catchall_1
    move-exception v11

    const/4 v13, 0x0

    :try_start_5
    iput-boolean v13, p0, Landroid/app/UiAutomation;->mWaitingForEventDelivery:Z

    .line 496
    iget-object v13, p0, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 497
    iget-object v13, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    throw v11

    .line 499
    :catchall_2
    move-exception v11

    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v11

    .line 482
    .restart local v9    # "startTimeMillis":J
    :cond_2
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    sub-long v2, v13, v9

    .line 483
    .local v2, "elapsedTimeMillis":J
    sub-long v7, p3, v2

    .line 484
    .local v7, "remainingTimeMillis":J
    const-wide/16 v13, 0x0

    cmp-long v11, v7, v13

    if-gtz v11, :cond_3

    .line 485
    new-instance v11, Ljava/util/concurrent/TimeoutException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Expected event not received within: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ms."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 489
    :cond_3
    :try_start_7
    iget-object v11, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    invoke-virtual {v11, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0

    .line 490
    :catch_0
    move-exception v11

    goto :goto_0
.end method

.method public getConnectionId()I
    .locals 2

    .prologue
    .line 247
    iget-object v1, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 248
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 249
    iget v0, p0, Landroid/app/UiAutomation;->mConnectionId:I

    monitor-exit v1

    return v0

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 3

    .prologue
    .line 355
    iget-object v2, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 356
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 357
    iget v0, p0, Landroid/app/UiAutomation;->mConnectionId:I

    .line 358
    .local v0, "connectionId":I
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getRootInActiveWindow(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    return-object v1

    .line 358
    .end local v0    # "connectionId":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 5

    .prologue
    .line 306
    iget-object v3, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 307
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 308
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    iget v4, p0, Landroid/app/UiAutomation;->mConnectionId:I

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 310
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    if-eqz v0, :cond_0

    .line 314
    :try_start_1
    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 319
    :goto_0
    return-object v2

    .line 310
    .end local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 315
    .restart local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :catch_0
    move-exception v1

    .line 316
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Error while getting AccessibilityServiceInfo"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 319
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public injectInputEvent(Landroid/view/InputEvent;Z)Z
    .locals 3
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "sync"    # Z

    .prologue
    .line 374
    iget-object v2, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 375
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 376
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    :try_start_1
    iget-object v1, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v1, p1, p2}, Landroid/app/IUiAutomationConnection;->injectInputEvent(Landroid/view/InputEvent;Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 386
    :goto_0
    return v1

    .line 376
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 383
    :catch_0
    move-exception v0

    .line 384
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error while injecting input event!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 386
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final performGlobalAction(I)Z
    .locals 5
    .param p1, "action"    # I

    .prologue
    .line 279
    iget-object v3, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 280
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 281
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    iget v4, p0, Landroid/app/UiAutomation;->mConnectionId:I

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 283
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    if-eqz v0, :cond_0

    .line 287
    :try_start_1
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->performGlobalAction(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    .line 292
    :goto_0
    return v2

    .line 283
    .end local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 288
    .restart local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :catch_0
    move-exception v1

    .line 289
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Error while calling performGlobalAction"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 292
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setOnAccessibilityEventListener(Landroid/app/UiAutomation$OnAccessibilityEventListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/app/UiAutomation$OnAccessibilityEventListener;

    .prologue
    .line 259
    iget-object v1, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 260
    :try_start_0
    iput-object p1, p0, Landroid/app/UiAutomation;->mOnAccessibilityEventListener:Landroid/app/UiAutomation$OnAccessibilityEventListener;

    .line 261
    monitor-exit v1

    .line 262
    return-void

    .line 261
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRotation(I)Z
    .locals 3
    .param p1, "rotation"    # I

    .prologue
    .line 406
    iget-object v2, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 407
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 408
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    packed-switch p1, :pswitch_data_0

    .line 425
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid rotation."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 408
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 418
    :pswitch_0
    :try_start_2
    iget-object v1, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v1, p1}, Landroid/app/IUiAutomationConnection;->setRotation(I)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 419
    const/4 v1, 0x1

    .line 423
    :goto_0
    return v1

    .line 420
    :catch_0
    move-exception v0

    .line 421
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error while setting rotation!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 423
    const/4 v1, 0x0

    goto :goto_0

    .line 409
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setRunAsMonkey(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 638
    iget-object v2, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 639
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 640
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 642
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->setUserIsMonkey(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 646
    :goto_0
    return-void

    .line 640
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 643
    :catch_0
    move-exception v0

    .line 644
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error while setting run as monkey!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .prologue
    .line 332
    iget-object v3, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 333
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 334
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->clearCache()V

    .line 335
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    iget v4, p0, Landroid/app/UiAutomation;->mConnectionId:I

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 337
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    if-eqz v0, :cond_0

    .line 341
    :try_start_1
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 337
    .end local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 342
    .restart local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :catch_0
    move-exception v1

    .line 343
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Error while setting AccessibilityServiceInfo"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public takeScreenshot()Landroid/graphics/Bitmap;
    .locals 14

    .prologue
    .line 558
    iget-object v12, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 559
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 560
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 561
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v1

    .line 563
    .local v1, "display":Landroid/view/Display;
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 564
    .local v3, "displaySize":Landroid/graphics/Point;
    invoke-virtual {v1, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 565
    iget v4, v3, Landroid/graphics/Point;->x:I

    .line 566
    .local v4, "displayWidth":I
    iget v2, v3, Landroid/graphics/Point;->y:I

    .line 571
    .local v2, "displayHeight":I
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v6

    .line 572
    .local v6, "rotation":I
    packed-switch v6, :pswitch_data_0

    .line 590
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid rotation: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 560
    .end local v1    # "display":Landroid/view/Display;
    .end local v2    # "displayHeight":I
    .end local v3    # "displaySize":Landroid/graphics/Point;
    .end local v4    # "displayWidth":I
    .end local v6    # "rotation":I
    :catchall_0
    move-exception v11

    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v11

    .line 574
    .restart local v1    # "display":Landroid/view/Display;
    .restart local v2    # "displayHeight":I
    .restart local v3    # "displaySize":Landroid/graphics/Point;
    .restart local v4    # "displayWidth":I
    .restart local v6    # "rotation":I
    :pswitch_0
    int-to-float v9, v4

    .line 575
    .local v9, "screenshotWidth":F
    int-to-float v8, v2

    .line 596
    .local v8, "screenshotHeight":F
    :goto_0
    const/4 v7, 0x0

    .line 599
    .local v7, "screenShot":Landroid/graphics/Bitmap;
    :try_start_2
    iget-object v11, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    float-to-int v12, v9

    float-to-int v13, v8

    invoke-interface {v11, v12, v13}, Landroid/app/IUiAutomationConnection;->takeScreenshot(II)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v7

    .line 601
    if-nez v7, :cond_0

    .line 602
    const/4 v11, 0x0

    .line 626
    :goto_1
    return-object v11

    .line 578
    .end local v7    # "screenShot":Landroid/graphics/Bitmap;
    .end local v8    # "screenshotHeight":F
    .end local v9    # "screenshotWidth":F
    :pswitch_1
    int-to-float v9, v2

    .line 579
    .restart local v9    # "screenshotWidth":F
    int-to-float v8, v4

    .line 580
    .restart local v8    # "screenshotHeight":F
    goto :goto_0

    .line 582
    .end local v8    # "screenshotHeight":F
    .end local v9    # "screenshotWidth":F
    :pswitch_2
    int-to-float v9, v4

    .line 583
    .restart local v9    # "screenshotWidth":F
    int-to-float v8, v2

    .line 584
    .restart local v8    # "screenshotHeight":F
    goto :goto_0

    .line 586
    .end local v8    # "screenshotHeight":F
    .end local v9    # "screenshotWidth":F
    :pswitch_3
    int-to-float v9, v2

    .line 587
    .restart local v9    # "screenshotWidth":F
    int-to-float v8, v4

    .line 588
    .restart local v8    # "screenshotHeight":F
    goto :goto_0

    .line 604
    .restart local v7    # "screenShot":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v5

    .line 605
    .local v5, "re":Landroid/os/RemoteException;
    sget-object v11, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string v12, "Error while taking screnshot!"

    invoke-static {v11, v12, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 606
    const/4 v11, 0x0

    goto :goto_1

    .line 610
    .end local v5    # "re":Landroid/os/RemoteException;
    :cond_0
    if-eqz v6, :cond_1

    .line 611
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v2, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 613
    .local v10, "unrotatedScreenShot":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 614
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    invoke-virtual {v0, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 616
    invoke-static {v6}, Landroid/app/UiAutomation;->getDegreesForRotation(I)F

    move-result v11

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->rotate(F)V

    .line 617
    neg-float v11, v9

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    neg-float v12, v8

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    invoke-virtual {v0, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 618
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v0, v7, v11, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 619
    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 620
    move-object v7, v10

    .line 624
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v10    # "unrotatedScreenShot":Landroid/graphics/Bitmap;
    :cond_1
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    move-object v11, v7

    .line 626
    goto :goto_1

    .line 572
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public waitForIdle(JJ)V
    .locals 21
    .param p1, "idleTimeoutMillis"    # J
    .param p3, "globalTimeoutMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 519
    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 521
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    .line 522
    .local v13, "startTimeMillis":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/app/UiAutomation;->mLastEventTimeMillis:J

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x0

    cmp-long v15, v17, v19

    if-gtz v15, :cond_0

    .line 523
    move-object/from16 v0, p0

    iput-wide v13, v0, Landroid/app/UiAutomation;->mLastEventTimeMillis:J

    .line 527
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 529
    .local v3, "currentTimeMillis":J
    sub-long v5, v3, v13

    .line 530
    .local v5, "elapsedGlobalTimeMillis":J
    sub-long v9, p3, v5

    .line 532
    .local v9, "remainingGlobalTimeMillis":J
    const-wide/16 v17, 0x0

    cmp-long v15, v9, v17

    if-gtz v15, :cond_1

    .line 533
    new-instance v15, Ljava/util/concurrent/TimeoutException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "No idle state with idle timeout: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " within global timeout: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 549
    .end local v3    # "currentTimeMillis":J
    .end local v5    # "elapsedGlobalTimeMillis":J
    .end local v9    # "remainingGlobalTimeMillis":J
    .end local v13    # "startTimeMillis":J
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15

    .line 538
    .restart local v3    # "currentTimeMillis":J
    .restart local v5    # "elapsedGlobalTimeMillis":J
    .restart local v9    # "remainingGlobalTimeMillis":J
    .restart local v13    # "startTimeMillis":J
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/app/UiAutomation;->mLastEventTimeMillis:J

    move-wide/from16 v17, v0

    sub-long v7, v3, v17

    .line 539
    .local v7, "elapsedIdleTimeMillis":J
    sub-long v11, p1, v7

    .line 540
    .local v11, "remainingIdleTimeMillis":J
    const-wide/16 v17, 0x0

    cmp-long v15, v11, v17

    if-gtz v15, :cond_2

    .line 541
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 544
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    invoke-virtual {v15, v11, v12}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 545
    :catch_0
    move-exception v15

    goto :goto_0
.end method
