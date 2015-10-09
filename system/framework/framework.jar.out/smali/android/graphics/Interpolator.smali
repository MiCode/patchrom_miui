.class public Landroid/graphics/Interpolator;
.super Ljava/lang/Object;
.source "Interpolator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Interpolator$Result;
    }
.end annotation


# instance fields
.field private mFrameCount:I

.field private mValueCount:I

.field private final native_instance:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "valueCount"    # I

    .prologue
    const/4 v0, 0x2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Landroid/graphics/Interpolator;->mValueCount:I

    .line 25
    iput v0, p0, Landroid/graphics/Interpolator;->mFrameCount:I

    .line 26
    invoke-static {p1, v0}, Landroid/graphics/Interpolator;->nativeConstructor(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Interpolator;->native_instance:I

    .line 27
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "valueCount"    # I
    .param p2, "frameCount"    # I

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Landroid/graphics/Interpolator;->mValueCount:I

    .line 31
    iput p2, p0, Landroid/graphics/Interpolator;->mFrameCount:I

    .line 32
    invoke-static {p1, p2}, Landroid/graphics/Interpolator;->nativeConstructor(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Interpolator;->native_instance:I

    .line 33
    return-void
.end method

.method private static native nativeConstructor(II)I
.end method

.method private static native nativeDestructor(I)V
.end method

.method private static native nativeReset(III)V
.end method

.method private static native nativeSetKeyFrame(III[F[F)V
.end method

.method private static native nativeSetRepeatMirror(IFZ)V
.end method

.method private static native nativeTimeToValues(II[F)I
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 149
    iget v0, p0, Landroid/graphics/Interpolator;->native_instance:I

    invoke-static {v0}, Landroid/graphics/Interpolator;->nativeDestructor(I)V

    .line 150
    return-void
.end method

.method public final getKeyFrameCount()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Landroid/graphics/Interpolator;->mFrameCount:I

    return v0
.end method

.method public final getValueCount()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Landroid/graphics/Interpolator;->mValueCount:I

    return v0
.end method

.method public reset(I)V
    .locals 1
    .param p1, "valueCount"    # I

    .prologue
    .line 41
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Interpolator;->reset(II)V

    .line 42
    return-void
.end method

.method public reset(II)V
    .locals 1
    .param p1, "valueCount"    # I
    .param p2, "frameCount"    # I

    .prologue
    .line 50
    iput p1, p0, Landroid/graphics/Interpolator;->mValueCount:I

    .line 51
    iput p2, p0, Landroid/graphics/Interpolator;->mFrameCount:I

    .line 52
    iget v0, p0, Landroid/graphics/Interpolator;->native_instance:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Interpolator;->nativeReset(III)V

    .line 53
    return-void
.end method

.method public setKeyFrame(II[F)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "msec"    # I
    .param p3, "values"    # [F

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/graphics/Interpolator;->setKeyFrame(II[F[F)V

    .line 75
    return-void
.end method

.method public setKeyFrame(II[F[F)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "msec"    # I
    .param p3, "values"    # [F
    .param p4, "blend"    # [F

    .prologue
    .line 88
    if-ltz p1, :cond_0

    iget v0, p0, Landroid/graphics/Interpolator;->mFrameCount:I

    if-lt p1, v0, :cond_1

    .line 89
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 91
    :cond_1
    array-length v0, p3

    iget v1, p0, Landroid/graphics/Interpolator;->mValueCount:I

    if-ge v0, v1, :cond_2

    .line 92
    new-instance v0, Ljava/lang/ArrayStoreException;

    invoke-direct {v0}, Ljava/lang/ArrayStoreException;-><init>()V

    throw v0

    .line 94
    :cond_2
    if-eqz p4, :cond_3

    array-length v0, p4

    const/4 v1, 0x4

    if-ge v0, v1, :cond_3

    .line 95
    new-instance v0, Ljava/lang/ArrayStoreException;

    invoke-direct {v0}, Ljava/lang/ArrayStoreException;-><init>()V

    throw v0

    .line 97
    :cond_3
    iget v0, p0, Landroid/graphics/Interpolator;->native_instance:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/graphics/Interpolator;->nativeSetKeyFrame(III[F[F)V

    .line 98
    return-void
.end method

.method public setRepeatMirror(FZ)V
    .locals 1
    .param p1, "repeatCount"    # F
    .param p2, "mirror"    # Z

    .prologue
    .line 106
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 107
    iget v0, p0, Landroid/graphics/Interpolator;->native_instance:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Interpolator;->nativeSetRepeatMirror(IFZ)V

    .line 109
    :cond_0
    return-void
.end method

.method public timeToValues(I[F)Landroid/graphics/Interpolator$Result;
    .locals 2
    .param p1, "msec"    # I
    .param p2, "values"    # [F

    .prologue
    .line 137
    if-eqz p2, :cond_0

    array-length v0, p2

    iget v1, p0, Landroid/graphics/Interpolator;->mValueCount:I

    if-ge v0, v1, :cond_0

    .line 138
    new-instance v0, Ljava/lang/ArrayStoreException;

    invoke-direct {v0}, Ljava/lang/ArrayStoreException;-><init>()V

    throw v0

    .line 140
    :cond_0
    iget v0, p0, Landroid/graphics/Interpolator;->native_instance:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Interpolator;->nativeTimeToValues(II[F)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 143
    sget-object v0, Landroid/graphics/Interpolator$Result;->FREEZE_END:Landroid/graphics/Interpolator$Result;

    :goto_0
    return-object v0

    .line 141
    :pswitch_0
    sget-object v0, Landroid/graphics/Interpolator$Result;->NORMAL:Landroid/graphics/Interpolator$Result;

    goto :goto_0

    .line 142
    :pswitch_1
    sget-object v0, Landroid/graphics/Interpolator$Result;->FREEZE_START:Landroid/graphics/Interpolator$Result;

    goto :goto_0

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public timeToValues([F)Landroid/graphics/Interpolator$Result;
    .locals 2
    .param p1, "values"    # [F

    .prologue
    .line 122
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Interpolator;->timeToValues(I[F)Landroid/graphics/Interpolator$Result;

    move-result-object v0

    return-object v0
.end method
