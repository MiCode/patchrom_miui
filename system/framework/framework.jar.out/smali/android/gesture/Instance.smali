.class Landroid/gesture/Instance;
.super Ljava/lang/Object;
.source "Instance.java"


# static fields
.field private static final ORIENTATIONS:[F

.field private static final PATCH_SAMPLE_SIZE:I = 0x10

.field private static final SEQUENCE_SAMPLE_SIZE:I = 0x10


# instance fields
.field final id:J

.field final label:Ljava/lang/String;

.field final vector:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/16 v0, 0xa

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Landroid/gesture/Instance;->ORIENTATIONS:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f490fdb
        0x3fc90fdb
        0x4016cbe4
        0x40490fdb    # (float)Math.PI
        0x0
        -0x40b6f025
        -0x4036f025
        -0x3fe9341c
        -0x3fb6f025
    .end array-data
.end method

.method private constructor <init>(J[FLjava/lang/String;)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "sample"    # [F
    .param p4, "sampleName"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-wide p1, p0, Landroid/gesture/Instance;->id:J

    .line 46
    iput-object p3, p0, Landroid/gesture/Instance;->vector:[F

    .line 47
    iput-object p4, p0, Landroid/gesture/Instance;->label:Ljava/lang/String;

    .line 48
    return-void
.end method

.method static createInstance(IILandroid/gesture/Gesture;Ljava/lang/String;)Landroid/gesture/Instance;
    .locals 4
    .param p0, "sequenceType"    # I
    .param p1, "orientationType"    # I
    .param p2, "gesture"    # Landroid/gesture/Gesture;
    .param p3, "label"    # Ljava/lang/String;

    .prologue
    .line 75
    const/4 v2, 0x2

    if-ne p0, v2, :cond_0

    .line 76
    invoke-static {p1, p2}, Landroid/gesture/Instance;->temporalSampler(ILandroid/gesture/Gesture;)[F

    move-result-object v1

    .line 77
    .local v1, "pts":[F
    new-instance v0, Landroid/gesture/Instance;

    invoke-virtual {p2}, Landroid/gesture/Gesture;->getID()J

    move-result-wide v2

    invoke-direct {v0, v2, v3, v1, p3}, Landroid/gesture/Instance;-><init>(J[FLjava/lang/String;)V

    .line 78
    .local v0, "instance":Landroid/gesture/Instance;
    invoke-direct {v0}, Landroid/gesture/Instance;->normalize()V

    .line 83
    :goto_0
    return-object v0

    .line 80
    .end local v0    # "instance":Landroid/gesture/Instance;
    .end local v1    # "pts":[F
    :cond_0
    invoke-static {p2}, Landroid/gesture/Instance;->spatialSampler(Landroid/gesture/Gesture;)[F

    move-result-object v1

    .line 81
    .restart local v1    # "pts":[F
    new-instance v0, Landroid/gesture/Instance;

    invoke-virtual {p2}, Landroid/gesture/Gesture;->getID()J

    move-result-wide v2

    invoke-direct {v0, v2, v3, v1, p3}, Landroid/gesture/Instance;-><init>(J[FLjava/lang/String;)V

    .restart local v0    # "instance":Landroid/gesture/Instance;
    goto :goto_0
.end method

.method private normalize()V
    .locals 7

    .prologue
    .line 51
    iget-object v2, p0, Landroid/gesture/Instance;->vector:[F

    .line 52
    .local v2, "sample":[F
    const/4 v4, 0x0

    .line 54
    .local v4, "sum":F
    array-length v3, v2

    .line 55
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 56
    aget v5, v2, v0

    aget v6, v2, v0

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_0
    float-to-double v5, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v1, v5

    .line 60
    .local v1, "magnitude":F
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    .line 61
    aget v5, v2, v0

    div-float/2addr v5, v1

    aput v5, v2, v0

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 63
    :cond_1
    return-void
.end method

.method private static spatialSampler(Landroid/gesture/Gesture;)[F
    .locals 2
    .param p0, "gesture"    # Landroid/gesture/Gesture;

    .prologue
    .line 87
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/gesture/GestureUtils;->spatialSampling(Landroid/gesture/Gesture;IZ)[F

    move-result-object v0

    return-object v0
.end method

.method private static temporalSampler(ILandroid/gesture/Gesture;)[F
    .locals 13
    .param p0, "orientationType"    # I
    .param p1, "gesture"    # Landroid/gesture/Gesture;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 91
    invoke-virtual {p1}, Landroid/gesture/Gesture;->getStrokes()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/gesture/GestureStroke;

    const/16 v8, 0x10

    invoke-static {v7, v8}, Landroid/gesture/GestureUtils;->temporalSampling(Landroid/gesture/GestureStroke;I)[F

    move-result-object v6

    .line 93
    .local v6, "pts":[F
    invoke-static {v6}, Landroid/gesture/GestureUtils;->computeCentroid([F)[F

    move-result-object v1

    .line 94
    .local v1, "center":[F
    aget v7, v6, v12

    aget v8, v1, v12

    sub-float/2addr v7, v8

    float-to-double v7, v7

    aget v9, v6, v11

    aget v10, v1, v11

    sub-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v7

    double-to-float v5, v7

    .line 96
    .local v5, "orientation":F
    neg-float v0, v5

    .line 97
    .local v0, "adjustment":F
    if-eq p0, v12, :cond_1

    .line 98
    sget-object v7, Landroid/gesture/Instance;->ORIENTATIONS:[F

    array-length v2, v7

    .line 99
    .local v2, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 100
    sget-object v7, Landroid/gesture/Instance;->ORIENTATIONS:[F

    aget v7, v7, v4

    sub-float v3, v7, v5

    .line 101
    .local v3, "delta":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_0

    .line 102
    move v0, v3

    .line 99
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 107
    .end local v2    # "count":I
    .end local v3    # "delta":F
    .end local v4    # "i":I
    :cond_1
    aget v7, v1, v11

    neg-float v7, v7

    aget v8, v1, v12

    neg-float v8, v8

    invoke-static {v6, v7, v8}, Landroid/gesture/GestureUtils;->translate([FFF)[F

    .line 108
    invoke-static {v6, v0}, Landroid/gesture/GestureUtils;->rotate([FF)[F

    .line 110
    return-object v6
.end method
