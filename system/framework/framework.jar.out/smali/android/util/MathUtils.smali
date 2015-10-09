.class public final Landroid/util/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# static fields
.field private static final DEG_TO_RAD:F = 0.017453292f

.field private static final RAD_TO_DEG:F = 57.295784f

.field private static final sRandom:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Landroid/util/MathUtils;->sRandom:Ljava/util/Random;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static abs(F)F
    .locals 1
    .param p0, "v"    # F

    .prologue
    .line 35
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    .end local p0    # "v":F
    :goto_0
    return p0

    .restart local p0    # "v":F
    :cond_0
    neg-float p0, p0

    goto :goto_0
.end method

.method public static acos(F)F
    .locals 2
    .param p0, "value"    # F

    .prologue
    .line 128
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static asin(F)F
    .locals 2
    .param p0, "value"    # F

    .prologue
    .line 132
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static atan(F)F
    .locals 2
    .param p0, "value"    # F

    .prologue
    .line 136
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static atan2(FF)F
    .locals 4
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    .line 140
    float-to-double v0, p0

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static constrain(FFF)F
    .locals 1
    .param p0, "amount"    # F
    .param p1, "low"    # F
    .param p2, "high"    # F

    .prologue
    .line 47
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    .end local p1    # "low":F
    :goto_0
    return p1

    .restart local p1    # "low":F
    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method public static constrain(III)I
    .locals 0
    .param p0, "amount"    # I
    .param p1, "low"    # I
    .param p2, "high"    # I

    .prologue
    .line 39
    if-ge p0, p1, :cond_0

    .end local p1    # "low":I
    :goto_0
    return p1

    .restart local p1    # "low":I
    :cond_0
    if-le p0, p2, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method public static constrain(JJJ)J
    .locals 1
    .param p0, "amount"    # J
    .param p2, "low"    # J
    .param p4, "high"    # J

    .prologue
    .line 43
    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    .end local p2    # "low":J
    :goto_0
    return-wide p2

    .restart local p2    # "low":J
    :cond_0
    cmp-long v0, p0, p4

    if-lez v0, :cond_1

    move-wide p2, p4

    goto :goto_0

    :cond_1
    move-wide p2, p0

    goto :goto_0
.end method

.method public static degrees(F)F
    .locals 1
    .param p0, "radians"    # F

    .prologue
    .line 124
    const v0, 0x42652ee2

    mul-float/2addr v0, p0

    return v0
.end method

.method public static dist(FFFF)F
    .locals 4
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "x2"    # F
    .param p3, "y2"    # F

    .prologue
    .line 95
    sub-float v0, p2, p0

    .line 96
    .local v0, "x":F
    sub-float v1, p3, p1

    .line 97
    .local v1, "y":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method public static dist(FFFFFF)F
    .locals 5
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "z1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "z2"    # F

    .prologue
    .line 101
    sub-float v0, p3, p0

    .line 102
    .local v0, "x":F
    sub-float v1, p4, p1

    .line 103
    .local v1, "y":F
    sub-float v2, p5, p2

    .line 104
    .local v2, "z":F
    mul-float v3, v0, v0

    mul-float v4, v1, v1

    add-float/2addr v3, v4

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    return v3
.end method

.method public static exp(F)F
    .locals 2
    .param p0, "a"    # F

    .prologue
    .line 55
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static lerp(FFF)F
    .locals 1
    .param p0, "start"    # F
    .param p1, "stop"    # F
    .param p2, "amount"    # F

    .prologue
    .line 148
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method public static log(F)F
    .locals 2
    .param p0, "a"    # F

    .prologue
    .line 51
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static mag(FF)F
    .locals 2
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    .line 108
    mul-float v0, p0, p0

    mul-float v1, p1, p1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static mag(FFF)F
    .locals 2
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F

    .prologue
    .line 112
    mul-float v0, p0, p0

    mul-float v1, p1, p1

    add-float/2addr v0, v1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static map(FFFFF)F
    .locals 3
    .param p0, "minStart"    # F
    .param p1, "minStop"    # F
    .param p2, "maxStart"    # F
    .param p3, "maxStop"    # F
    .param p4, "value"    # F

    .prologue
    .line 156
    sub-float v0, p2, p3

    sub-float v1, p4, p0

    sub-float v2, p1, p0

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, p2

    return v0
.end method

.method public static max(FF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    .line 63
    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    .end local p0    # "a":F
    :goto_0
    return p0

    .restart local p0    # "a":F
    :cond_0
    move p0, p1

    goto :goto_0
.end method

.method public static max(FFF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F

    .prologue
    .line 71
    cmpl-float v0, p0, p1

    if-lez v0, :cond_1

    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    move p2, p0

    .end local p2    # "c":F
    :cond_0
    :goto_0
    return p2

    .restart local p2    # "c":F
    :cond_1
    cmpl-float v0, p1, p2

    if-lez v0, :cond_0

    move p2, p1

    goto :goto_0
.end method

.method public static max(II)F
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 67
    if-le p0, p1, :cond_0

    int-to-float v0, p0

    :goto_0
    return v0

    :cond_0
    int-to-float v0, p1

    goto :goto_0
.end method

.method public static max(III)F
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "c"    # I

    .prologue
    .line 75
    if-le p0, p1, :cond_1

    if-le p0, p2, :cond_0

    .end local p0    # "a":I
    :goto_0
    int-to-float v0, p0

    .end local p1    # "b":I
    :goto_1
    return v0

    .restart local p0    # "a":I
    .restart local p1    # "b":I
    :cond_0
    move p0, p2

    goto :goto_0

    :cond_1
    if-le p1, p2, :cond_2

    .end local p1    # "b":I
    :goto_2
    int-to-float v0, p1

    goto :goto_1

    .restart local p1    # "b":I
    :cond_2
    move p1, p2

    goto :goto_2
.end method

.method public static min(FF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    .line 79
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    .end local p0    # "a":F
    :goto_0
    return p0

    .restart local p0    # "a":F
    :cond_0
    move p0, p1

    goto :goto_0
.end method

.method public static min(FFF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F

    .prologue
    .line 87
    cmpg-float v0, p0, p1

    if-gez v0, :cond_1

    cmpg-float v0, p0, p2

    if-gez v0, :cond_0

    move p2, p0

    .end local p2    # "c":F
    :cond_0
    :goto_0
    return p2

    .restart local p2    # "c":F
    :cond_1
    cmpg-float v0, p1, p2

    if-gez v0, :cond_0

    move p2, p1

    goto :goto_0
.end method

.method public static min(II)F
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 83
    if-ge p0, p1, :cond_0

    int-to-float v0, p0

    :goto_0
    return v0

    :cond_0
    int-to-float v0, p1

    goto :goto_0
.end method

.method public static min(III)F
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "c"    # I

    .prologue
    .line 91
    if-ge p0, p1, :cond_1

    if-ge p0, p2, :cond_0

    .end local p0    # "a":I
    :goto_0
    int-to-float v0, p0

    .end local p1    # "b":I
    :goto_1
    return v0

    .restart local p0    # "a":I
    .restart local p1    # "b":I
    :cond_0
    move p0, p2

    goto :goto_0

    :cond_1
    if-ge p1, p2, :cond_2

    .end local p1    # "b":I
    :goto_2
    int-to-float v0, p1

    goto :goto_1

    .restart local p1    # "b":I
    :cond_2
    move p1, p2

    goto :goto_2
.end method

.method public static norm(FFF)F
    .locals 2
    .param p0, "start"    # F
    .param p1, "stop"    # F
    .param p2, "value"    # F

    .prologue
    .line 152
    sub-float v0, p2, p0

    sub-float v1, p1, p0

    div-float/2addr v0, v1

    return v0
.end method

.method public static pow(FF)F
    .locals 4
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    .line 59
    float-to-double v0, p0

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static radians(F)F
    .locals 1
    .param p0, "degrees"    # F

    .prologue
    .line 120
    const v0, 0x3c8efa35

    mul-float/2addr v0, p0

    return v0
.end method

.method public static random(F)F
    .locals 1
    .param p0, "howbig"    # F

    .prologue
    .line 169
    sget-object v0, Landroid/util/MathUtils;->sRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    mul-float/2addr v0, p0

    return v0
.end method

.method public static random(FF)F
    .locals 2
    .param p0, "howsmall"    # F
    .param p1, "howbig"    # F

    .prologue
    .line 173
    cmpl-float v0, p0, p1

    if-ltz v0, :cond_0

    .line 174
    .end local p0    # "howsmall":F
    :goto_0
    return p0

    .restart local p0    # "howsmall":F
    :cond_0
    sget-object v0, Landroid/util/MathUtils;->sRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    sub-float v1, p1, p0

    mul-float/2addr v0, v1

    add-float/2addr p0, v0

    goto :goto_0
.end method

.method public static random(I)I
    .locals 2
    .param p0, "howbig"    # I

    .prologue
    .line 160
    sget-object v0, Landroid/util/MathUtils;->sRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    int-to-float v1, p0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static random(II)I
    .locals 2
    .param p0, "howsmall"    # I
    .param p1, "howbig"    # I

    .prologue
    .line 164
    if-lt p0, p1, :cond_0

    .line 165
    .end local p0    # "howsmall":I
    :goto_0
    return p0

    .restart local p0    # "howsmall":I
    :cond_0
    sget-object v0, Landroid/util/MathUtils;->sRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    sub-int v1, p1, p0

    int-to-float v1, v1

    mul-float/2addr v0, v1

    int-to-float v1, p0

    add-float/2addr v0, v1

    float-to-int p0, v0

    goto :goto_0
.end method

.method public static randomSeed(J)V
    .locals 1
    .param p0, "seed"    # J

    .prologue
    .line 178
    sget-object v0, Landroid/util/MathUtils;->sRandom:Ljava/util/Random;

    invoke-virtual {v0, p0, p1}, Ljava/util/Random;->setSeed(J)V

    .line 179
    return-void
.end method

.method public static sq(F)F
    .locals 1
    .param p0, "v"    # F

    .prologue
    .line 116
    mul-float v0, p0, p0

    return v0
.end method

.method public static tan(F)F
    .locals 2
    .param p0, "angle"    # F

    .prologue
    .line 144
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method
