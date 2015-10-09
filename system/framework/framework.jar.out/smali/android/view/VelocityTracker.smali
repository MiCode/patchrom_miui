.class public final Landroid/view/VelocityTracker;
.super Ljava/lang/Object;
.source "VelocityTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/VelocityTracker$Estimator;
    }
.end annotation


# static fields
.field private static final ACTIVE_POINTER_ID:I = -0x1

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Landroid/view/VelocityTracker;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mPtr:I

.field private final mStrategy:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/view/VelocityTracker;->sPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "strategy"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-static {p1}, Landroid/view/VelocityTracker;->nativeInitialize(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/view/VelocityTracker;->mPtr:I

    .line 91
    iput-object p1, p0, Landroid/view/VelocityTracker;->mStrategy:Ljava/lang/String;

    .line 92
    return-void
.end method

.method private static native nativeAddMovement(ILandroid/view/MotionEvent;)V
.end method

.method private static native nativeClear(I)V
.end method

.method private static native nativeComputeCurrentVelocity(IIF)V
.end method

.method private static native nativeDispose(I)V
.end method

.method private static native nativeGetEstimator(IILandroid/view/VelocityTracker$Estimator;)Z
.end method

.method private static native nativeGetXVelocity(II)F
.end method

.method private static native nativeGetYVelocity(II)F
.end method

.method private static native nativeInitialize(Ljava/lang/String;)I
.end method

.method public static obtain()Landroid/view/VelocityTracker;
    .locals 2

    .prologue
    .line 58
    sget-object v1, Landroid/view/VelocityTracker;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v1}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/VelocityTracker;

    .line 59
    .local v0, "instance":Landroid/view/VelocityTracker;
    if-eqz v0, :cond_0

    .end local v0    # "instance":Landroid/view/VelocityTracker;
    :goto_0
    return-object v0

    .restart local v0    # "instance":Landroid/view/VelocityTracker;
    :cond_0
    new-instance v0, Landroid/view/VelocityTracker;

    .end local v0    # "instance":Landroid/view/VelocityTracker;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/VelocityTracker;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static obtain(Ljava/lang/String;)Landroid/view/VelocityTracker;
    .locals 1
    .param p0, "strategy"    # Ljava/lang/String;

    .prologue
    .line 72
    if-nez p0, :cond_0

    .line 73
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    .line 75
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/view/VelocityTracker;

    invoke-direct {v0, p0}, Landroid/view/VelocityTracker;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addMovement(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 123
    if-nez p1, :cond_0

    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    iget v0, p0, Landroid/view/VelocityTracker;->mPtr:I

    invoke-static {v0, p1}, Landroid/view/VelocityTracker;->nativeAddMovement(ILandroid/view/MotionEvent;)V

    .line 127
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Landroid/view/VelocityTracker;->mPtr:I

    invoke-static {v0}, Landroid/view/VelocityTracker;->nativeClear(I)V

    .line 111
    return-void
.end method

.method public computeCurrentVelocity(I)V
    .locals 2
    .param p1, "units"    # I

    .prologue
    .line 136
    iget v0, p0, Landroid/view/VelocityTracker;->mPtr:I

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v0, p1, v1}, Landroid/view/VelocityTracker;->nativeComputeCurrentVelocity(IIF)V

    .line 137
    return-void
.end method

.method public computeCurrentVelocity(IF)V
    .locals 1
    .param p1, "units"    # I
    .param p2, "maxVelocity"    # F

    .prologue
    .line 153
    iget v0, p0, Landroid/view/VelocityTracker;->mPtr:I

    invoke-static {v0, p1, p2}, Landroid/view/VelocityTracker;->nativeComputeCurrentVelocity(IIF)V

    .line 154
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 97
    :try_start_0
    iget v0, p0, Landroid/view/VelocityTracker;->mPtr:I

    if-eqz v0, :cond_0

    .line 98
    iget v0, p0, Landroid/view/VelocityTracker;->mPtr:I

    invoke-static {v0}, Landroid/view/VelocityTracker;->nativeDispose(I)V

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/VelocityTracker;->mPtr:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 104
    return-void

    .line 102
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getEstimator(ILandroid/view/VelocityTracker$Estimator;)Z
    .locals 2
    .param p1, "id"    # I
    .param p2, "outEstimator"    # Landroid/view/VelocityTracker$Estimator;

    .prologue
    .line 213
    if-nez p2, :cond_0

    .line 214
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "outEstimator must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_0
    iget v0, p0, Landroid/view/VelocityTracker;->mPtr:I

    invoke-static {v0, p1, p2}, Landroid/view/VelocityTracker;->nativeGetEstimator(IILandroid/view/VelocityTracker$Estimator;)Z

    move-result v0

    return v0
.end method

.method public getXVelocity()F
    .locals 2

    .prologue
    .line 163
    iget v0, p0, Landroid/view/VelocityTracker;->mPtr:I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/view/VelocityTracker;->nativeGetXVelocity(II)F

    move-result v0

    return v0
.end method

.method public getXVelocity(I)F
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 184
    iget v0, p0, Landroid/view/VelocityTracker;->mPtr:I

    invoke-static {v0, p1}, Landroid/view/VelocityTracker;->nativeGetXVelocity(II)F

    move-result v0

    return v0
.end method

.method public getYVelocity()F
    .locals 2

    .prologue
    .line 173
    iget v0, p0, Landroid/view/VelocityTracker;->mPtr:I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/view/VelocityTracker;->nativeGetYVelocity(II)F

    move-result v0

    return v0
.end method

.method public getYVelocity(I)F
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 195
    iget v0, p0, Landroid/view/VelocityTracker;->mPtr:I

    invoke-static {v0, p1}, Landroid/view/VelocityTracker;->nativeGetYVelocity(II)F

    move-result v0

    return v0
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Landroid/view/VelocityTracker;->mStrategy:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 84
    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    .line 85
    sget-object v0, Landroid/view/VelocityTracker;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 87
    :cond_0
    return-void
.end method
