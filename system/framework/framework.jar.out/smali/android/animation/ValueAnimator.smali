.class public Landroid/animation/ValueAnimator;
.super Landroid/animation/Animator;
.source "ValueAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/ValueAnimator$1;,
        Landroid/animation/ValueAnimator$AnimatorUpdateListener;,
        Landroid/animation/ValueAnimator$AnimationHandler;
    }
.end annotation


# static fields
.field public static final INFINITE:I = -0x1

.field public static final RESTART:I = 0x1

.field public static final REVERSE:I = 0x2

.field static final RUNNING:I = 0x1

.field static final SEEKED:I = 0x2

.field static final STOPPED:I

.field protected static sAnimationHandler:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/animation/ValueAnimator$AnimationHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static final sDefaultInterpolator:Landroid/animation/TimeInterpolator;

.field private static sDurationScale:F


# instance fields
.field private mCurrentFraction:F

.field private mCurrentIteration:I

.field private mDelayStartTime:J

.field private mDuration:J

.field mInitialized:Z

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mPauseTime:J

.field private mPlayingBackwards:Z

.field mPlayingState:I

.field private mRepeatCount:I

.field private mRepeatMode:I

.field private mResumed:Z

.field private mRunning:Z

.field mSeekTime:J

.field private mStartDelay:J

.field private mStartListenersCalled:Z

.field mStartTime:J

.field private mStarted:Z

.field private mStartedDelay:Z

.field private mUnscaledDuration:J

.field private mUnscaledStartDelay:J

.field private mUpdateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/ValueAnimator$AnimatorUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field mValues:[Landroid/animation/PropertyValuesHolder;

.field mValuesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/animation/PropertyValuesHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Landroid/animation/ValueAnimator;->sDurationScale:F

    .line 102
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/animation/ValueAnimator;->sAnimationHandler:Ljava/lang/ThreadLocal;

    .line 106
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/animation/ValueAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 262
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    .line 81
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mSeekTime:J

    .line 94
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    .line 113
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 119
    iput v2, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    .line 124
    const/4 v0, 0x0

    iput v0, p0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    .line 129
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mStartedDelay:Z

    .line 145
    iput v2, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    .line 155
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 161
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    .line 168
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    .line 174
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 181
    const/high16 v0, 0x43960000    # 300.0f

    sget v1, Landroid/animation/ValueAnimator;->sDurationScale:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mDuration:J

    .line 182
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mUnscaledDuration:J

    .line 185
    iput-wide v3, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    .line 186
    iput-wide v3, p0, Landroid/animation/ValueAnimator;->mUnscaledStartDelay:J

    .line 190
    iput v2, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    .line 197
    const/4 v0, 0x1

    iput v0, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    .line 204
    sget-object v0, Landroid/animation/ValueAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 263
    return-void
.end method

.method static synthetic access$000(Landroid/animation/ValueAnimator;)J
    .locals 2
    .param p0, "x0"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 50
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    return-wide v0
.end method

.method static synthetic access$100(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimationHandler;)V
    .locals 0
    .param p0, "x0"    # Landroid/animation/ValueAnimator;
    .param p1, "x1"    # Landroid/animation/ValueAnimator$AnimationHandler;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/animation/ValueAnimator;->startAnimation(Landroid/animation/ValueAnimator$AnimationHandler;)V

    return-void
.end method

.method static synthetic access$200(Landroid/animation/ValueAnimator;J)Z
    .locals 1
    .param p0, "x0"    # Landroid/animation/ValueAnimator;
    .param p1, "x1"    # J

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/animation/ValueAnimator;->delayedAnimationFrame(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$302(Landroid/animation/ValueAnimator;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/animation/ValueAnimator;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    return p1
.end method

.method static synthetic access$400(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimationHandler;)V
    .locals 0
    .param p0, "x0"    # Landroid/animation/ValueAnimator;
    .param p1, "x1"    # Landroid/animation/ValueAnimator$AnimationHandler;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/animation/ValueAnimator;->endAnimation(Landroid/animation/ValueAnimator$AnimationHandler;)V

    return-void
.end method

.method public static clearAllAnimations()V
    .locals 2

    .prologue
    .line 1323
    sget-object v1, Landroid/animation/ValueAnimator;->sAnimationHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator$AnimationHandler;

    .line 1324
    .local v0, "handler":Landroid/animation/ValueAnimator$AnimationHandler;
    if-eqz v0, :cond_0

    .line 1325
    iget-object v1, v0, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1326
    iget-object v1, v0, Landroid/animation/ValueAnimator$AnimationHandler;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1327
    iget-object v1, v0, Landroid/animation/ValueAnimator$AnimationHandler;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1329
    :cond_0
    return-void
.end method

.method private delayedAnimationFrame(J)Z
    .locals 8
    .param p1, "currentTime"    # J

    .prologue
    const-wide/16 v6, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1106
    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mStartedDelay:Z

    if-nez v4, :cond_1

    .line 1107
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mStartedDelay:Z

    .line 1108
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mDelayStartTime:J

    .line 1131
    :cond_0
    :goto_0
    return v2

    .line 1110
    :cond_1
    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    if-eqz v4, :cond_2

    .line 1111
    iget-wide v3, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    cmp-long v3, v3, v6

    if-gez v3, :cond_0

    .line 1112
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    goto :goto_0

    .line 1115
    :cond_2
    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    if-eqz v4, :cond_3

    .line 1116
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    .line 1117
    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 1119
    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mDelayStartTime:J

    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    sub-long v6, p1, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/animation/ValueAnimator;->mDelayStartTime:J

    .line 1122
    :cond_3
    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mDelayStartTime:J

    sub-long v0, p1, v4

    .line 1123
    .local v0, "deltaTime":J
    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    .line 1126
    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    sub-long v4, v0, v4

    sub-long v4, p1, v4

    iput-wide v4, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1127
    iput v3, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    move v2, v3

    .line 1128
    goto :goto_0
.end method

.method private endAnimation(Landroid/animation/ValueAnimator$AnimationHandler;)V
    .locals 7
    .param p1, "handler"    # Landroid/animation/ValueAnimator$AnimationHandler;

    .prologue
    const-wide/16 v5, 0x8

    const/4 v4, 0x0

    .line 1042
    iget-object v3, p1, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1043
    iget-object v3, p1, Landroid/animation/ValueAnimator$AnimationHandler;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1044
    iget-object v3, p1, Landroid/animation/ValueAnimator$AnimationHandler;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1045
    iput v4, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    .line 1046
    iput-boolean v4, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    .line 1047
    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-eqz v3, :cond_2

    :cond_0
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 1048
    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-nez v3, :cond_1

    .line 1050
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->notifyStartListeners()V

    .line 1052
    :cond_1
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1054
    .local v2, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1055
    .local v1, "numListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 1056
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v3, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1055
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1059
    .end local v0    # "i":I
    .end local v1    # "numListeners":I
    .end local v2    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_2
    iput-boolean v4, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 1060
    iput-boolean v4, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    .line 1061
    iput-boolean v4, p0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    .line 1062
    iput-boolean v4, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 1063
    invoke-static {v5, v6}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1064
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getNameForTrace()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v5, v6, v3, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1067
    :cond_3
    return-void
.end method

.method public static getCurrentAnimationsCount()I
    .locals 2

    .prologue
    .line 1312
    sget-object v1, Landroid/animation/ValueAnimator;->sAnimationHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator$AnimationHandler;

    .line 1313
    .local v0, "handler":Landroid/animation/ValueAnimator$AnimationHandler;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getDurationScale()F
    .locals 1

    .prologue
    .line 254
    sget v0, Landroid/animation/ValueAnimator;->sDurationScale:F

    return v0
.end method

.method public static getFrameDelay()J
    .locals 2

    .prologue
    .line 705
    invoke-static {}, Landroid/view/Choreographer;->getFrameDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method private static getOrCreateAnimationHandler()Landroid/animation/ValueAnimator$AnimationHandler;
    .locals 2

    .prologue
    .line 1332
    sget-object v1, Landroid/animation/ValueAnimator;->sAnimationHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator$AnimationHandler;

    .line 1333
    .local v0, "handler":Landroid/animation/ValueAnimator$AnimationHandler;
    if-nez v0, :cond_0

    .line 1334
    new-instance v0, Landroid/animation/ValueAnimator$AnimationHandler;

    .end local v0    # "handler":Landroid/animation/ValueAnimator$AnimationHandler;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/animation/ValueAnimator$AnimationHandler;-><init>(Landroid/animation/ValueAnimator$1;)V

    .line 1335
    .restart local v0    # "handler":Landroid/animation/ValueAnimator$AnimationHandler;
    sget-object v1, Landroid/animation/ValueAnimator;->sAnimationHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1337
    :cond_0
    return-object v0
.end method

.method private notifyStartListeners()V
    .locals 4

    .prologue
    .line 898
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    if-nez v3, :cond_0

    .line 899
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 901
    .local v2, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 902
    .local v1, "numListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 903
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v3, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 902
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 906
    .end local v0    # "i":I
    .end local v1    # "numListeners":I
    .end local v2    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    .line 907
    return-void
.end method

.method public static varargs ofFloat([F)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "values"    # [F

    .prologue
    .line 294
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 295
    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 296
    return-object v0
.end method

.method public static varargs ofInt([I)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "values"    # [I

    .prologue
    .line 277
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 278
    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 279
    return-object v0
.end method

.method public static varargs ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "evaluator"    # Landroid/animation/TypeEvaluator;
    .param p1, "values"    # [Ljava/lang/Object;

    .prologue
    .line 331
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 332
    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 333
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 334
    return-object v0
.end method

.method public static varargs ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "values"    # [Landroid/animation/PropertyValuesHolder;

    .prologue
    .line 308
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 309
    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 310
    return-object v0
.end method

.method public static setDurationScale(F)V
    .locals 0
    .param p0, "durationScale"    # F

    .prologue
    .line 247
    sput p0, Landroid/animation/ValueAnimator;->sDurationScale:F

    .line 248
    return-void
.end method

.method public static setFrameDelay(J)V
    .locals 0
    .param p0, "frameDelay"    # J

    .prologue
    .line 721
    invoke-static {p0, p1}, Landroid/view/Choreographer;->setFrameDelay(J)V

    .line 722
    return-void
.end method

.method private start(Z)V
    .locals 7
    .param p1, "playBackwards"    # Z

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 923
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_0

    .line 924
    new-instance v1, Landroid/util/AndroidRuntimeException;

    const-string v2, "Animators may only be run on Looper threads"

    invoke-direct {v1, v2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 926
    :cond_0
    iput-boolean p1, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 927
    iput v3, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    .line 928
    iput v3, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    .line 929
    iput-boolean v4, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    .line 930
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mStartedDelay:Z

    .line 931
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    .line 932
    invoke-static {}, Landroid/animation/ValueAnimator;->getOrCreateAnimationHandler()Landroid/animation/ValueAnimator$AnimationHandler;

    move-result-object v0

    .line 933
    .local v0, "animationHandler":Landroid/animation/ValueAnimator$AnimationHandler;
    iget-object v1, v0, Landroid/animation/ValueAnimator$AnimationHandler;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 934
    iget-wide v1, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    cmp-long v1, v1, v5

    if-nez v1, :cond_1

    .line 936
    invoke-virtual {p0, v5, v6}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 937
    iput v3, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    .line 938
    iput-boolean v4, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 939
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->notifyStartListeners()V

    .line 941
    :cond_1
    invoke-virtual {v0}, Landroid/animation/ValueAnimator$AnimationHandler;->start()V

    .line 942
    return-void
.end method

.method private startAnimation(Landroid/animation/ValueAnimator$AnimationHandler;)V
    .locals 4
    .param p1, "handler"    # Landroid/animation/ValueAnimator$AnimationHandler;

    .prologue
    const-wide/16 v2, 0x8

    .line 1074
    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1075
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getNameForTrace()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1078
    :cond_0
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    .line 1079
    iget-object v0, p1, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1080
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1083
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->notifyStartListeners()V

    .line 1085
    :cond_1
    return-void
.end method


# virtual methods
.method public addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .prologue
    .line 813
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 814
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 816
    :cond_0
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 817
    return-void
.end method

.method animateValue(F)V
    .locals 4
    .param p1, "fraction"    # F

    .prologue
    .line 1242
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v3, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    .line 1243
    iput p1, p0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    .line 1244
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v2, v3

    .line 1245
    .local v2, "numValues":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1246
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Landroid/animation/PropertyValuesHolder;->calculateValue(F)V

    .line 1245
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1248
    :cond_0
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 1249
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1250
    .local v1, "numListeners":I
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 1251
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-interface {v3, p0}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    .line 1250
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1254
    .end local v1    # "numListeners":I
    :cond_1
    return-void
.end method

.method animationFrame(J)Z
    .locals 10
    .param p1, "currentTime"    # J

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 1147
    const/4 v0, 0x0

    .line 1148
    .local v0, "done":Z
    iget v4, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    packed-switch v4, :pswitch_data_0

    .line 1179
    :goto_0
    return v0

    .line 1151
    :pswitch_0
    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mDuration:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-lez v4, :cond_1

    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    sub-long v6, p1, v6

    long-to-float v4, v6

    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mDuration:J

    long-to-float v6, v6

    div-float v1, v4, v6

    .line 1152
    .local v1, "fraction":F
    :goto_1
    cmpl-float v4, v1, v5

    if-ltz v4, :cond_4

    .line 1153
    iget v4, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    iget v6, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    if-lt v4, v6, :cond_0

    iget v4, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_7

    .line 1155
    :cond_0
    iget-object v4, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    .line 1156
    iget-object v4, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1157
    .local v3, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v3, :cond_2

    .line 1158
    iget-object v4, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v4, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 1157
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v1    # "fraction":F
    .end local v2    # "i":I
    .end local v3    # "numListeners":I
    :cond_1
    move v1, v5

    .line 1151
    goto :goto_1

    .line 1161
    .restart local v1    # "fraction":F
    :cond_2
    iget v4, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_3

    .line 1162
    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    if-nez v4, :cond_6

    const/4 v4, 0x1

    :goto_3
    iput-boolean v4, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 1164
    :cond_3
    iget v4, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    float-to-int v6, v1

    add-int/2addr v4, v6

    iput v4, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    .line 1165
    rem-float/2addr v1, v5

    .line 1166
    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    iget-wide v8, p0, Landroid/animation/ValueAnimator;->mDuration:J

    add-long/2addr v6, v8

    iput-wide v6, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1172
    :cond_4
    :goto_4
    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    if-eqz v4, :cond_5

    .line 1173
    sub-float v1, v5, v1

    .line 1175
    :cond_5
    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->animateValue(F)V

    goto :goto_0

    .line 1162
    :cond_6
    const/4 v4, 0x0

    goto :goto_3

    .line 1168
    :cond_7
    const/4 v0, 0x1

    .line 1169
    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_4

    .line 1148
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public cancel()V
    .locals 5

    .prologue
    .line 953
    invoke-static {}, Landroid/animation/ValueAnimator;->getOrCreateAnimationHandler()Landroid/animation/ValueAnimator$AnimationHandler;

    move-result-object v0

    .line 954
    .local v0, "handler":Landroid/animation/ValueAnimator$AnimationHandler;
    iget v4, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    if-nez v4, :cond_0

    iget-object v4, v0, Landroid/animation/ValueAnimator$AnimationHandler;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v0, Landroid/animation/ValueAnimator$AnimationHandler;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 958
    :cond_0
    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-eqz v4, :cond_3

    :cond_1
    iget-object v4, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    .line 959
    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-nez v4, :cond_2

    .line 961
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->notifyStartListeners()V

    .line 963
    :cond_2
    iget-object v4, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 965
    .local v3, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    .line 966
    .local v2, "listener":Landroid/animation/Animator$AnimatorListener;
    invoke-interface {v2, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    goto :goto_0

    .line 969
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Landroid/animation/Animator$AnimatorListener;
    .end local v3    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_3
    invoke-direct {p0, v0}, Landroid/animation/ValueAnimator;->endAnimation(Landroid/animation/ValueAnimator$AnimationHandler;)V

    .line 971
    :cond_4
    return-void
.end method

.method public bridge synthetic clone()Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public clone()Landroid/animation/ValueAnimator;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1258
    invoke-super {p0}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 1259
    .local v0, "anim":Landroid/animation/ValueAnimator;
    iget-object v7, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    .line 1260
    iget-object v5, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 1261
    .local v5, "oldListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/ValueAnimator$AnimatorUpdateListener;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 1262
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1263
    .local v3, "numListeners":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 1264
    iget-object v7, v0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1263
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1267
    .end local v1    # "i":I
    .end local v3    # "numListeners":I
    .end local v5    # "oldListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/ValueAnimator$AnimatorUpdateListener;>;"
    :cond_0
    const-wide/16 v7, -0x1

    iput-wide v7, v0, Landroid/animation/ValueAnimator;->mSeekTime:J

    .line 1268
    iput-boolean v9, v0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 1269
    iput v9, v0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    .line 1270
    iput-boolean v9, v0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 1271
    iput v9, v0, Landroid/animation/ValueAnimator;->mPlayingState:I

    .line 1272
    iput-boolean v9, v0, Landroid/animation/ValueAnimator;->mStartedDelay:Z

    .line 1273
    iget-object v6, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    .line 1274
    .local v6, "oldValues":[Landroid/animation/PropertyValuesHolder;
    if-eqz v6, :cond_1

    .line 1275
    array-length v4, v6

    .line 1276
    .local v4, "numValues":I
    new-array v7, v4, [Landroid/animation/PropertyValuesHolder;

    iput-object v7, v0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    .line 1277
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v7, v0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    .line 1278
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v4, :cond_1

    .line 1279
    aget-object v7, v6, v1

    invoke-virtual {v7}, Landroid/animation/PropertyValuesHolder;->clone()Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 1280
    .local v2, "newValuesHolder":Landroid/animation/PropertyValuesHolder;
    iget-object v7, v0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aput-object v2, v7, v1

    .line 1281
    iget-object v7, v0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1278
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1284
    .end local v1    # "i":I
    .end local v2    # "newValuesHolder":Landroid/animation/PropertyValuesHolder;
    .end local v4    # "numValues":I
    :cond_1
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method final doAnimationFrame(J)Z
    .locals 7
    .param p1, "frameTime"    # J

    .prologue
    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    .line 1189
    iget v3, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    if-nez v3, :cond_0

    .line 1190
    const/4 v3, 0x1

    iput v3, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    .line 1191
    iget-wide v3, p0, Landroid/animation/ValueAnimator;->mSeekTime:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_2

    .line 1192
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1199
    :cond_0
    :goto_0
    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    if-eqz v3, :cond_3

    .line 1200
    iget-wide v3, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    .line 1201
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    .line 1216
    :cond_1
    :goto_1
    return v2

    .line 1194
    :cond_2
    iget-wide v3, p0, Landroid/animation/ValueAnimator;->mSeekTime:J

    sub-long v3, p1, v3

    iput-wide v3, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1196
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/animation/ValueAnimator;->mSeekTime:J

    goto :goto_0

    .line 1204
    :cond_3
    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    if-eqz v3, :cond_4

    .line 1205
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    .line 1206
    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    cmp-long v2, v2, v5

    if-lez v2, :cond_4

    .line 1208
    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    sub-long v4, p1, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1215
    :cond_4
    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 1216
    .local v0, "currentTime":J
    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->animationFrame(J)Z

    move-result v2

    goto :goto_1
.end method

.method public end()V
    .locals 2

    .prologue
    .line 975
    invoke-static {}, Landroid/animation/ValueAnimator;->getOrCreateAnimationHandler()Landroid/animation/ValueAnimator$AnimationHandler;

    move-result-object v0

    .line 976
    .local v0, "handler":Landroid/animation/ValueAnimator$AnimationHandler;
    iget-object v1, v0, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Landroid/animation/ValueAnimator$AnimationHandler;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 978
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mStartedDelay:Z

    .line 979
    invoke-direct {p0, v0}, Landroid/animation/ValueAnimator;->startAnimation(Landroid/animation/ValueAnimator$AnimationHandler;)V

    .line 980
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    .line 984
    :cond_0
    :goto_0
    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->animateValue(F)V

    .line 985
    invoke-direct {p0, v0}, Landroid/animation/ValueAnimator;->endAnimation(Landroid/animation/ValueAnimator$AnimationHandler;)V

    .line 986
    return-void

    .line 981
    :cond_1
    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    if-nez v1, :cond_0

    .line 982
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    goto :goto_0

    .line 984
    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1
.end method

.method public getAnimatedFraction()F
    .locals 1

    .prologue
    .line 1226
    iget v0, p0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    return v0
.end method

.method public getAnimatedValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 737
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 738
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    .line 741
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 755
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/PropertyValuesHolder;

    .line 756
    .local v0, "valuesHolder":Landroid/animation/PropertyValuesHolder;
    if-eqz v0, :cond_0

    .line 757
    invoke-virtual {v0}, Landroid/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    .line 760
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentPlayTime()J
    .locals 4

    .prologue
    .line 535
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    if-nez v0, :cond_1

    .line 536
    :cond_0
    const-wide/16 v0, 0x0

    .line 538
    :goto_0
    return-wide v0

    :cond_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 503
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mUnscaledDuration:J

    return-wide v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    .prologue
    .line 872
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method getNameForTrace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1091
    const-string v0, "animator"

    return-object v0
.end method

.method public getRepeatCount()I
    .locals 1

    .prologue
    .line 782
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .prologue
    .line 802
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    return v0
.end method

.method public getStartDelay()J
    .locals 2

    .prologue
    .line 678
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mUnscaledStartDelay:J

    return-wide v0
.end method

.method public getValues()[Landroid/animation/PropertyValuesHolder;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    return-object v0
.end method

.method initAnimation()V
    .locals 3

    .prologue
    .line 468
    iget-boolean v2, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    if-nez v2, :cond_1

    .line 469
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v1, v2

    .line 470
    .local v1, "numValues":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 471
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/animation/PropertyValuesHolder;->init()V

    .line 470
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 473
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 475
    .end local v0    # "i":I
    .end local v1    # "numValues":I
    :cond_1
    return-void
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1008
    iget v1, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    if-eq v1, v0, :cond_0

    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 1013
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    return v0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 998
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    .line 999
    .local v0, "previouslyPaused":Z
    invoke-super {p0}, Landroid/animation/Animator;->pause()V

    .line 1000
    if-nez v0, :cond_0

    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    if-eqz v1, :cond_0

    .line 1001
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    .line 1002
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    .line 1004
    :cond_0
    return-void
.end method

.method public removeAllUpdateListeners()V
    .locals 1

    .prologue
    .line 823
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 828
    :goto_0
    return-void

    .line 826
    :cond_0
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 827
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .prologue
    .line 837
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 844
    :cond_0
    :goto_0
    return-void

    .line 840
    :cond_1
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 841
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 842
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 990
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    if-eqz v0, :cond_0

    .line 991
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    .line 993
    :cond_0
    invoke-super {p0}, Landroid/animation/Animator;->resume()V

    .line 994
    return-void
.end method

.method public reverse()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1024
    iget-boolean v6, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    if-nez v6, :cond_0

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 1025
    iget v6, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    if-ne v6, v7, :cond_1

    .line 1026
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 1027
    .local v2, "currentTime":J
    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    sub-long v0, v2, v6

    .line 1028
    .local v0, "currentPlayTime":J
    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mDuration:J

    sub-long v4, v6, v0

    .line 1029
    .local v4, "timeLeft":J
    sub-long v6, v2, v4

    iput-wide v6, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1035
    .end local v0    # "currentPlayTime":J
    .end local v2    # "currentTime":J
    .end local v4    # "timeLeft":J
    :goto_1
    return-void

    .line 1024
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 1030
    :cond_1
    iget-boolean v6, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    if-eqz v6, :cond_2

    .line 1031
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    goto :goto_1

    .line 1033
    :cond_2
    invoke-direct {p0, v7}, Landroid/animation/ValueAnimator;->start(Z)V

    goto :goto_1
.end method

.method public setCurrentPlayTime(J)V
    .locals 4
    .param p1, "playTime"    # J

    .prologue
    .line 517
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    .line 518
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 519
    .local v0, "currentTime":J
    iget v2, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 520
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mSeekTime:J

    .line 521
    const/4 v2, 0x2

    iput v2, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    .line 523
    :cond_0
    sub-long v2, v0, p1

    iput-wide v2, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 524
    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->doAnimationFrame(J)Z

    .line 525
    return-void
.end method

.method public bridge synthetic setDuration(J)Landroid/animation/Animator;
    .locals 1
    .param p1, "x0"    # J

    .prologue
    .line 49
    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public setDuration(J)Landroid/animation/ValueAnimator;
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 488
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 489
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animators cannot have negative duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 492
    :cond_0
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mUnscaledDuration:J

    .line 493
    long-to-float v0, p1

    sget v1, Landroid/animation/ValueAnimator;->sDurationScale:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mDuration:J

    .line 494
    return-object p0
.end method

.method public setEvaluator(Landroid/animation/TypeEvaluator;)V
    .locals 2
    .param p1, "value"    # Landroid/animation/TypeEvaluator;

    .prologue
    .line 892
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 893
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 895
    :cond_0
    return-void
.end method

.method public varargs setFloatValues([F)V
    .locals 4
    .param p1, "values"    # [F

    .prologue
    const/4 v3, 0x0

    .line 380
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v1, v1

    if-nez v1, :cond_3

    .line 384
    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const-string v2, ""

    invoke-static {v2, p1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 390
    :goto_1
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    goto :goto_0

    .line 386
    :cond_3
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v0, v1, v3

    .line 387
    .local v0, "valuesHolder":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    goto :goto_1
.end method

.method public varargs setIntValues([I)V
    .locals 4
    .param p1, "values"    # [I

    .prologue
    const/4 v3, 0x0

    .line 352
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v1, v1

    if-nez v1, :cond_3

    .line 356
    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const-string v2, ""

    invoke-static {v2, p1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 362
    :goto_1
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    goto :goto_0

    .line 358
    :cond_3
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v0, v1, v3

    .line 359
    .local v0, "valuesHolder":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    goto :goto_1
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 1
    .param p1, "value"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 858
    if-eqz p1, :cond_0

    .line 859
    iput-object p1, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 863
    :goto_0
    return-void

    .line 861
    :cond_0
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_0
.end method

.method public varargs setObjectValues([Ljava/lang/Object;)V
    .locals 5
    .param p1, "values"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 412
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 415
    :cond_1
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v1, v1

    if-nez v1, :cond_3

    .line 416
    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v2, v3, p1}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 422
    :goto_1
    iput-boolean v4, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    goto :goto_0

    .line 418
    :cond_3
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v0, v1, v4

    .line 419
    .local v0, "valuesHolder":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setObjectValues([Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public setRepeatCount(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 773
    iput p1, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    .line 774
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 793
    iput p1, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    .line 794
    return-void
.end method

.method public setStartDelay(J)V
    .locals 2
    .param p1, "startDelay"    # J

    .prologue
    .line 688
    long-to-float v0, p1

    sget v1, Landroid/animation/ValueAnimator;->sDurationScale:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    .line 689
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mUnscaledStartDelay:J

    .line 690
    return-void
.end method

.method public varargs setValues([Landroid/animation/PropertyValuesHolder;)V
    .locals 5
    .param p1, "values"    # [Landroid/animation/PropertyValuesHolder;

    .prologue
    .line 434
    array-length v1, p1

    .line 435
    .local v1, "numValues":I
    iput-object p1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    .line 436
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, p0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    .line 437
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 438
    aget-object v2, p1, v0

    .line 439
    .local v2, "valuesHolder":Landroid/animation/PropertyValuesHolder;
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 442
    .end local v2    # "valuesHolder":Landroid/animation/PropertyValuesHolder;
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 443
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 946
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/animation/ValueAnimator;->start(Z)V

    .line 947
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1342
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ValueAnimator@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1343
    .local v1, "returnVal":Ljava/lang/String;
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v2, :cond_0

    .line 1344
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1345
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/animation/PropertyValuesHolder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1344
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1348
    .end local v0    # "i":I
    :cond_0
    return-object v1
.end method
