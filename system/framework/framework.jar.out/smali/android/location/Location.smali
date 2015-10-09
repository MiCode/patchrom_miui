.class public Landroid/location/Location;
.super Ljava/lang/Object;
.source "Location.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_COARSE_LOCATION:Ljava/lang/String; = "coarseLocation"

.field public static final EXTRA_NO_GPS_LOCATION:Ljava/lang/String; = "noGPSLocation"

.field public static final FORMAT_DEGREES:I = 0x0

.field public static final FORMAT_MINUTES:I = 0x1

.field public static final FORMAT_SECONDS:I = 0x2


# instance fields
.field private mAccuracy:F

.field private mAltitude:D

.field private mBearing:F

.field private mDistance:F

.field private mElapsedRealtimeNanos:J

.field private mExtras:Landroid/os/Bundle;

.field private mHasAccuracy:Z

.field private mHasAltitude:Z

.field private mHasBearing:Z

.field private mHasSpeed:Z

.field private mInitialBearing:F

.field private mIsFromMockProvider:Z

.field private mLat1:D

.field private mLat2:D

.field private mLatitude:D

.field private mLon1:D

.field private mLon2:D

.field private mLongitude:D

.field private mProvider:Ljava/lang/String;

.field private final mResults:[F

.field private mSpeed:F

.field private mTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 859
    new-instance v0, Landroid/location/Location$1;

    invoke-direct {v0}, Landroid/location/Location$1;-><init>()V

    sput-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/location/Location;)V
    .locals 7
    .param p1, "l"    # Landroid/location/Location;

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-wide v5, p0, Landroid/location/Location;->mTime:J

    .line 82
    iput-wide v5, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    .line 83
    iput-wide v1, p0, Landroid/location/Location;->mLatitude:D

    .line 84
    iput-wide v1, p0, Landroid/location/Location;->mLongitude:D

    .line 85
    iput-boolean v4, p0, Landroid/location/Location;->mHasAltitude:Z

    .line 86
    iput-wide v1, p0, Landroid/location/Location;->mAltitude:D

    .line 87
    iput-boolean v4, p0, Landroid/location/Location;->mHasSpeed:Z

    .line 88
    iput v3, p0, Landroid/location/Location;->mSpeed:F

    .line 89
    iput-boolean v4, p0, Landroid/location/Location;->mHasBearing:Z

    .line 90
    iput v3, p0, Landroid/location/Location;->mBearing:F

    .line 91
    iput-boolean v4, p0, Landroid/location/Location;->mHasAccuracy:Z

    .line 92
    iput v3, p0, Landroid/location/Location;->mAccuracy:F

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 94
    iput-boolean v4, p0, Landroid/location/Location;->mIsFromMockProvider:Z

    .line 98
    iput-wide v1, p0, Landroid/location/Location;->mLat1:D

    .line 99
    iput-wide v1, p0, Landroid/location/Location;->mLon1:D

    .line 100
    iput-wide v1, p0, Landroid/location/Location;->mLat2:D

    .line 101
    iput-wide v1, p0, Landroid/location/Location;->mLon2:D

    .line 102
    iput v3, p0, Landroid/location/Location;->mDistance:F

    .line 103
    iput v3, p0, Landroid/location/Location;->mInitialBearing:F

    .line 105
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/location/Location;->mResults:[F

    .line 123
    invoke-virtual {p0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 124
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-wide v5, p0, Landroid/location/Location;->mTime:J

    .line 82
    iput-wide v5, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    .line 83
    iput-wide v1, p0, Landroid/location/Location;->mLatitude:D

    .line 84
    iput-wide v1, p0, Landroid/location/Location;->mLongitude:D

    .line 85
    iput-boolean v4, p0, Landroid/location/Location;->mHasAltitude:Z

    .line 86
    iput-wide v1, p0, Landroid/location/Location;->mAltitude:D

    .line 87
    iput-boolean v4, p0, Landroid/location/Location;->mHasSpeed:Z

    .line 88
    iput v3, p0, Landroid/location/Location;->mSpeed:F

    .line 89
    iput-boolean v4, p0, Landroid/location/Location;->mHasBearing:Z

    .line 90
    iput v3, p0, Landroid/location/Location;->mBearing:F

    .line 91
    iput-boolean v4, p0, Landroid/location/Location;->mHasAccuracy:Z

    .line 92
    iput v3, p0, Landroid/location/Location;->mAccuracy:F

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 94
    iput-boolean v4, p0, Landroid/location/Location;->mIsFromMockProvider:Z

    .line 98
    iput-wide v1, p0, Landroid/location/Location;->mLat1:D

    .line 99
    iput-wide v1, p0, Landroid/location/Location;->mLon1:D

    .line 100
    iput-wide v1, p0, Landroid/location/Location;->mLat2:D

    .line 101
    iput-wide v1, p0, Landroid/location/Location;->mLon2:D

    .line 102
    iput v3, p0, Landroid/location/Location;->mDistance:F

    .line 103
    iput v3, p0, Landroid/location/Location;->mInitialBearing:F

    .line 105
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/location/Location;->mResults:[F

    .line 116
    iput-object p1, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    .line 117
    return-void
.end method

.method static synthetic access$002(Landroid/location/Location;J)J
    .locals 0
    .param p0, "x0"    # Landroid/location/Location;
    .param p1, "x1"    # J

    .prologue
    .line 40
    iput-wide p1, p0, Landroid/location/Location;->mTime:J

    return-wide p1
.end method

.method static synthetic access$1002(Landroid/location/Location;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/location/Location;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Landroid/location/Location;->mHasAccuracy:Z

    return p1
.end method

.method static synthetic access$102(Landroid/location/Location;J)J
    .locals 0
    .param p0, "x0"    # Landroid/location/Location;
    .param p1, "x1"    # J

    .prologue
    .line 40
    iput-wide p1, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    return-wide p1
.end method

.method static synthetic access$1102(Landroid/location/Location;F)F
    .locals 0
    .param p0, "x0"    # Landroid/location/Location;
    .param p1, "x1"    # F

    .prologue
    .line 40
    iput p1, p0, Landroid/location/Location;->mAccuracy:F

    return p1
.end method

.method static synthetic access$1202(Landroid/location/Location;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .param p0, "x0"    # Landroid/location/Location;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 40
    iput-object p1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$1302(Landroid/location/Location;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/location/Location;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Landroid/location/Location;->mIsFromMockProvider:Z

    return p1
.end method

.method static synthetic access$202(Landroid/location/Location;D)D
    .locals 0
    .param p0, "x0"    # Landroid/location/Location;
    .param p1, "x1"    # D

    .prologue
    .line 40
    iput-wide p1, p0, Landroid/location/Location;->mLatitude:D

    return-wide p1
.end method

.method static synthetic access$302(Landroid/location/Location;D)D
    .locals 0
    .param p0, "x0"    # Landroid/location/Location;
    .param p1, "x1"    # D

    .prologue
    .line 40
    iput-wide p1, p0, Landroid/location/Location;->mLongitude:D

    return-wide p1
.end method

.method static synthetic access$402(Landroid/location/Location;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/location/Location;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Landroid/location/Location;->mHasAltitude:Z

    return p1
.end method

.method static synthetic access$502(Landroid/location/Location;D)D
    .locals 0
    .param p0, "x0"    # Landroid/location/Location;
    .param p1, "x1"    # D

    .prologue
    .line 40
    iput-wide p1, p0, Landroid/location/Location;->mAltitude:D

    return-wide p1
.end method

.method static synthetic access$602(Landroid/location/Location;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/location/Location;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Landroid/location/Location;->mHasSpeed:Z

    return p1
.end method

.method static synthetic access$702(Landroid/location/Location;F)F
    .locals 0
    .param p0, "x0"    # Landroid/location/Location;
    .param p1, "x1"    # F

    .prologue
    .line 40
    iput p1, p0, Landroid/location/Location;->mSpeed:F

    return p1
.end method

.method static synthetic access$802(Landroid/location/Location;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/location/Location;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Landroid/location/Location;->mHasBearing:Z

    return p1
.end method

.method static synthetic access$902(Landroid/location/Location;F)F
    .locals 0
    .param p0, "x0"    # Landroid/location/Location;
    .param p1, "x1"    # F

    .prologue
    .line 40
    iput p1, p0, Landroid/location/Location;->mBearing:F

    return p1
.end method

.method private static computeDistanceAndBearing(DDDD[F)V
    .locals 87
    .param p0, "lat1"    # D
    .param p2, "lon1"    # D
    .param p4, "lat2"    # D
    .param p6, "lon2"    # D
    .param p8, "results"    # [F

    .prologue
    .line 292
    const/16 v12, 0x14

    .line 294
    .local v12, "MAXITERS":I
    const-wide v75, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double p0, p0, v75

    .line 295
    const-wide v75, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double p4, p4, v75

    .line 296
    const-wide v75, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double p2, p2, v75

    .line 297
    const-wide v75, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double p6, p6, v75

    .line 299
    const-wide v17, 0x415854a640000000L    # 6378137.0

    .line 300
    .local v17, "a":D
    const-wide v21, 0x41583fc4141bda51L    # 6356752.3142

    .line 301
    .local v21, "b":D
    sub-double v75, v17, v21

    div-double v44, v75, v17

    .line 302
    .local v44, "f":D
    mul-double v75, v17, v17

    mul-double v77, v21, v21

    sub-double v75, v75, v77

    mul-double v77, v21, v21

    div-double v19, v75, v77

    .line 304
    .local v19, "aSqMinusBSqOverBSq":D
    sub-double v10, p6, p2

    .line 305
    .local v10, "L":D
    const-wide/16 v4, 0x0

    .line 306
    .local v4, "A":D
    const-wide/high16 v75, 0x3ff0000000000000L    # 1.0

    sub-double v75, v75, v44

    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v77

    mul-double v75, v75, v77

    invoke-static/range {v75 .. v76}, Ljava/lang/Math;->atan(D)D

    move-result-wide v13

    .line 307
    .local v13, "U1":D
    const-wide/high16 v75, 0x3ff0000000000000L    # 1.0

    sub-double v75, v75, v44

    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v77

    mul-double v75, v75, v77

    invoke-static/range {v75 .. v76}, Ljava/lang/Math;->atan(D)D

    move-result-wide v15

    .line 309
    .local v15, "U2":D
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v33

    .line 310
    .local v33, "cosU1":D
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->cos(D)D

    move-result-wide v37

    .line 311
    .local v37, "cosU2":D
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v63

    .line 312
    .local v63, "sinU1":D
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sin(D)D

    move-result-wide v67

    .line 313
    .local v67, "sinU2":D
    mul-double v35, v33, v37

    .line 314
    .local v35, "cosU1cosU2":D
    mul-double v65, v63, v67

    .line 316
    .local v65, "sinU1sinU2":D
    const-wide/16 v53, 0x0

    .line 317
    .local v53, "sigma":D
    const-wide/16 v41, 0x0

    .line 318
    .local v41, "deltaSigma":D
    const-wide/16 v31, 0x0

    .line 319
    .local v31, "cosSqAlpha":D
    const-wide/16 v23, 0x0

    .line 320
    .local v23, "cos2SM":D
    const-wide/16 v29, 0x0

    .line 321
    .local v29, "cosSigma":D
    const-wide/16 v59, 0x0

    .line 322
    .local v59, "sinSigma":D
    const-wide/16 v27, 0x0

    .line 323
    .local v27, "cosLambda":D
    const-wide/16 v57, 0x0

    .line 325
    .local v57, "sinLambda":D
    move-wide/from16 v49, v10

    .line 326
    .local v49, "lambda":D
    const/16 v48, 0x0

    .local v48, "iter":I
    :goto_0
    move/from16 v0, v48

    if-ge v0, v12, :cond_0

    .line 327
    move-wide/from16 v51, v49

    .line 328
    .local v51, "lambdaOrig":D
    invoke-static/range {v49 .. v50}, Ljava/lang/Math;->cos(D)D

    move-result-wide v27

    .line 329
    invoke-static/range {v49 .. v50}, Ljava/lang/Math;->sin(D)D

    move-result-wide v57

    .line 330
    mul-double v69, v37, v57

    .line 331
    .local v69, "t1":D
    mul-double v75, v33, v67

    mul-double v77, v63, v37

    mul-double v77, v77, v27

    sub-double v71, v75, v77

    .line 332
    .local v71, "t2":D
    mul-double v75, v69, v69

    mul-double v77, v71, v71

    add-double v61, v75, v77

    .line 333
    .local v61, "sinSqSigma":D
    invoke-static/range {v61 .. v62}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v59

    .line 334
    mul-double v75, v35, v27

    add-double v29, v65, v75

    .line 335
    move-wide/from16 v0, v59

    move-wide/from16 v2, v29

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v53

    .line 336
    const-wide/16 v75, 0x0

    cmpl-double v75, v59, v75

    if-nez v75, :cond_2

    const-wide/16 v55, 0x0

    .line 338
    .local v55, "sinAlpha":D
    :goto_1
    const-wide/high16 v75, 0x3ff0000000000000L    # 1.0

    mul-double v77, v55, v55

    sub-double v31, v75, v77

    .line 339
    const-wide/16 v75, 0x0

    cmpl-double v75, v31, v75

    if-nez v75, :cond_3

    const-wide/16 v23, 0x0

    .line 342
    :goto_2
    mul-double v73, v31, v19

    .line 343
    .local v73, "uSquared":D
    const-wide/high16 v75, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v77, 0x40d0000000000000L    # 16384.0

    div-double v77, v73, v77

    const-wide/high16 v79, 0x40b0000000000000L    # 4096.0

    const-wide/high16 v81, -0x3f78000000000000L    # -768.0

    const-wide/high16 v83, 0x4074000000000000L    # 320.0

    const-wide v85, 0x4065e00000000000L    # 175.0

    mul-double v85, v85, v73

    sub-double v83, v83, v85

    mul-double v83, v83, v73

    add-double v81, v81, v83

    mul-double v81, v81, v73

    add-double v79, v79, v81

    mul-double v77, v77, v79

    add-double v4, v75, v77

    .line 346
    const-wide/high16 v75, 0x4090000000000000L    # 1024.0

    div-double v75, v73, v75

    const-wide/high16 v77, 0x4070000000000000L    # 256.0

    const-wide/high16 v79, -0x3fa0000000000000L    # -128.0

    const-wide v81, 0x4052800000000000L    # 74.0

    const-wide v83, 0x4047800000000000L    # 47.0

    mul-double v83, v83, v73

    sub-double v81, v81, v83

    mul-double v81, v81, v73

    add-double v79, v79, v81

    mul-double v79, v79, v73

    add-double v77, v77, v79

    mul-double v6, v75, v77

    .line 349
    .local v6, "B":D
    const-wide/high16 v75, 0x4030000000000000L    # 16.0

    div-double v75, v44, v75

    mul-double v75, v75, v31

    const-wide/high16 v77, 0x4010000000000000L    # 4.0

    const-wide/high16 v79, 0x4010000000000000L    # 4.0

    const-wide/high16 v81, 0x4008000000000000L    # 3.0

    mul-double v81, v81, v31

    sub-double v79, v79, v81

    mul-double v79, v79, v44

    add-double v77, v77, v79

    mul-double v8, v75, v77

    .line 352
    .local v8, "C":D
    mul-double v25, v23, v23

    .line 353
    .local v25, "cos2SMSq":D
    mul-double v75, v6, v59

    const-wide/high16 v77, 0x4010000000000000L    # 4.0

    div-double v77, v6, v77

    const-wide/high16 v79, -0x4010000000000000L    # -1.0

    const-wide/high16 v81, 0x4000000000000000L    # 2.0

    mul-double v81, v81, v25

    add-double v79, v79, v81

    mul-double v79, v79, v29

    const-wide/high16 v81, 0x4018000000000000L    # 6.0

    div-double v81, v6, v81

    mul-double v81, v81, v23

    const-wide/high16 v83, -0x3ff8000000000000L    # -3.0

    const-wide/high16 v85, 0x4010000000000000L    # 4.0

    mul-double v85, v85, v59

    mul-double v85, v85, v59

    add-double v83, v83, v85

    mul-double v81, v81, v83

    const-wide/high16 v83, -0x3ff8000000000000L    # -3.0

    const-wide/high16 v85, 0x4010000000000000L    # 4.0

    mul-double v85, v85, v25

    add-double v83, v83, v85

    mul-double v81, v81, v83

    sub-double v79, v79, v81

    mul-double v77, v77, v79

    add-double v77, v77, v23

    mul-double v41, v75, v77

    .line 360
    const-wide/high16 v75, 0x3ff0000000000000L    # 1.0

    sub-double v75, v75, v8

    mul-double v75, v75, v44

    mul-double v75, v75, v55

    mul-double v77, v8, v59

    mul-double v79, v8, v29

    const-wide/high16 v81, -0x4010000000000000L    # -1.0

    const-wide/high16 v83, 0x4000000000000000L    # 2.0

    mul-double v83, v83, v23

    mul-double v83, v83, v23

    add-double v81, v81, v83

    mul-double v79, v79, v81

    add-double v79, v79, v23

    mul-double v77, v77, v79

    add-double v77, v77, v53

    mul-double v75, v75, v77

    add-double v49, v10, v75

    .line 366
    sub-double v75, v49, v51

    div-double v39, v75, v49

    .line 367
    .local v39, "delta":D
    invoke-static/range {v39 .. v40}, Ljava/lang/Math;->abs(D)D

    move-result-wide v75

    const-wide v77, 0x3d719799812dea11L    # 1.0E-12

    cmpg-double v75, v75, v77

    if-gez v75, :cond_4

    .line 372
    .end local v6    # "B":D
    .end local v8    # "C":D
    .end local v25    # "cos2SMSq":D
    .end local v39    # "delta":D
    .end local v51    # "lambdaOrig":D
    .end local v55    # "sinAlpha":D
    .end local v61    # "sinSqSigma":D
    .end local v69    # "t1":D
    .end local v71    # "t2":D
    .end local v73    # "uSquared":D
    :cond_0
    mul-double v75, v21, v4

    sub-double v77, v53, v41

    mul-double v75, v75, v77

    move-wide/from16 v0, v75

    double-to-float v0, v0

    move/from16 v43, v0

    .line 373
    .local v43, "distance":F
    const/16 v75, 0x0

    aput v43, p8, v75

    .line 374
    move-object/from16 v0, p8

    array-length v0, v0

    move/from16 v75, v0

    const/16 v76, 0x1

    move/from16 v0, v75

    move/from16 v1, v76

    if-le v0, v1, :cond_1

    .line 375
    mul-double v75, v37, v57

    mul-double v77, v33, v67

    mul-double v79, v63, v37

    mul-double v79, v79, v27

    sub-double v77, v77, v79

    invoke-static/range {v75 .. v78}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v75

    move-wide/from16 v0, v75

    double-to-float v0, v0

    move/from16 v47, v0

    .line 377
    .local v47, "initialBearing":F
    move/from16 v0, v47

    float-to-double v0, v0

    move-wide/from16 v75, v0

    const-wide v77, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double v75, v75, v77

    move-wide/from16 v0, v75

    double-to-float v0, v0

    move/from16 v47, v0

    .line 378
    const/16 v75, 0x1

    aput v47, p8, v75

    .line 379
    move-object/from16 v0, p8

    array-length v0, v0

    move/from16 v75, v0

    const/16 v76, 0x2

    move/from16 v0, v75

    move/from16 v1, v76

    if-le v0, v1, :cond_1

    .line 380
    mul-double v75, v33, v57

    move-wide/from16 v0, v63

    neg-double v0, v0

    move-wide/from16 v77, v0

    mul-double v77, v77, v37

    mul-double v79, v33, v67

    mul-double v79, v79, v27

    add-double v77, v77, v79

    invoke-static/range {v75 .. v78}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v75

    move-wide/from16 v0, v75

    double-to-float v0, v0

    move/from16 v46, v0

    .line 382
    .local v46, "finalBearing":F
    move/from16 v0, v46

    float-to-double v0, v0

    move-wide/from16 v75, v0

    const-wide v77, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double v75, v75, v77

    move-wide/from16 v0, v75

    double-to-float v0, v0

    move/from16 v46, v0

    .line 383
    const/16 v75, 0x2

    aput v46, p8, v75

    .line 386
    .end local v46    # "finalBearing":F
    .end local v47    # "initialBearing":F
    :cond_1
    return-void

    .line 336
    .end local v43    # "distance":F
    .restart local v51    # "lambdaOrig":D
    .restart local v61    # "sinSqSigma":D
    .restart local v69    # "t1":D
    .restart local v71    # "t2":D
    :cond_2
    mul-double v75, v35, v57

    div-double v55, v75, v59

    goto/16 :goto_1

    .line 339
    .restart local v55    # "sinAlpha":D
    :cond_3
    const-wide/high16 v75, 0x4000000000000000L    # 2.0

    mul-double v75, v75, v65

    div-double v75, v75, v31

    sub-double v23, v29, v75

    goto/16 :goto_2

    .line 326
    .restart local v6    # "B":D
    .restart local v8    # "C":D
    .restart local v25    # "cos2SMSq":D
    .restart local v39    # "delta":D
    .restart local v73    # "uSquared":D
    :cond_4
    add-int/lit8 v48, v48, 0x1

    goto/16 :goto_0
.end method

.method public static convert(Ljava/lang/String;)D
    .locals 21
    .param p0, "coordinate"    # Ljava/lang/String;

    .prologue
    .line 227
    if-nez p0, :cond_0

    .line 228
    new-instance v17, Ljava/lang/NullPointerException;

    const-string v18, "coordinate"

    invoke-direct/range {v17 .. v18}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 231
    :cond_0
    const/4 v8, 0x0

    .line 232
    .local v8, "negative":Z
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x2d

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 233
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 234
    const/4 v8, 0x1

    .line 237
    :cond_1
    new-instance v13, Ljava/util/StringTokenizer;

    const-string v17, ":"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v13, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .local v13, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v14

    .line 239
    .local v14, "tokens":I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ge v14, v0, :cond_2

    .line 240
    new-instance v17, Ljava/lang/IllegalArgumentException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "coordinate="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 243
    :cond_2
    :try_start_0
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 245
    .local v3, "degrees":Ljava/lang/String;
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v14, v0, :cond_4

    .line 246
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v15

    .line 247
    .local v15, "val":D
    if-eqz v8, :cond_3

    neg-double v0, v15

    move-wide/from16 v17, v0

    .line 281
    :goto_0
    return-wide v17

    :cond_3
    move-wide/from16 v17, v15

    .line 247
    goto :goto_0

    .line 250
    .end local v15    # "val":D
    :cond_4
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 251
    .local v7, "minutes":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 253
    .local v2, "deg":I
    const-wide/16 v10, 0x0

    .line 255
    .local v10, "sec":D
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 256
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    int-to-double v5, v0

    .line 257
    .local v5, "min":D
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    .line 258
    .local v12, "seconds":Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    .line 263
    .end local v12    # "seconds":Ljava/lang/String;
    :goto_1
    if-eqz v8, :cond_7

    const/16 v17, 0xb4

    move/from16 v0, v17

    if-ne v2, v0, :cond_7

    const-wide/16 v17, 0x0

    cmpl-double v17, v5, v17

    if-nez v17, :cond_7

    const-wide/16 v17, 0x0

    cmpl-double v17, v10, v17

    if-nez v17, :cond_7

    const/4 v4, 0x1

    .line 267
    .local v4, "isNegative180":Z
    :goto_2
    int-to-double v0, v2

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x0

    cmpg-double v17, v17, v19

    if-ltz v17, :cond_5

    const/16 v17, 0xb3

    move/from16 v0, v17

    if-le v2, v0, :cond_8

    if-nez v4, :cond_8

    .line 268
    :cond_5
    new-instance v17, Ljava/lang/IllegalArgumentException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "coordinate="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    .end local v2    # "deg":I
    .end local v3    # "degrees":Ljava/lang/String;
    .end local v4    # "isNegative180":Z
    .end local v5    # "min":D
    .end local v7    # "minutes":Ljava/lang/String;
    .end local v10    # "sec":D
    :catch_0
    move-exception v9

    .line 283
    .local v9, "nfe":Ljava/lang/NumberFormatException;
    new-instance v17, Ljava/lang/IllegalArgumentException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "coordinate="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 260
    .end local v9    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v2    # "deg":I
    .restart local v3    # "degrees":Ljava/lang/String;
    .restart local v7    # "minutes":Ljava/lang/String;
    .restart local v10    # "sec":D
    :cond_6
    :try_start_1
    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    .restart local v5    # "min":D
    goto :goto_1

    .line 263
    :cond_7
    const/4 v4, 0x0

    goto :goto_2

    .line 270
    .restart local v4    # "isNegative180":Z
    :cond_8
    const-wide/16 v17, 0x0

    cmpg-double v17, v5, v17

    if-ltz v17, :cond_9

    const-wide v17, 0x404d800000000000L    # 59.0

    cmpl-double v17, v5, v17

    if-lez v17, :cond_a

    .line 271
    :cond_9
    new-instance v17, Ljava/lang/IllegalArgumentException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "coordinate="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 274
    :cond_a
    const-wide/16 v17, 0x0

    cmpg-double v17, v10, v17

    if-ltz v17, :cond_b

    const-wide v17, 0x404d800000000000L    # 59.0

    cmpl-double v17, v10, v17

    if-lez v17, :cond_c

    .line 275
    :cond_b
    new-instance v17, Ljava/lang/IllegalArgumentException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "coordinate="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 279
    :cond_c
    int-to-double v0, v2

    move-wide/from16 v17, v0

    const-wide v19, 0x40ac200000000000L    # 3600.0

    mul-double v17, v17, v19

    const-wide/high16 v19, 0x404e000000000000L    # 60.0

    mul-double v19, v19, v5

    add-double v17, v17, v19

    add-double v15, v17, v10

    .line 280
    .restart local v15    # "val":D
    const-wide v17, 0x40ac200000000000L    # 3600.0

    div-double v15, v15, v17

    .line 281
    if-eqz v8, :cond_d

    neg-double v0, v15

    move-wide/from16 v17, v0

    goto/16 :goto_0

    :cond_d
    move-wide/from16 v17, v15

    goto/16 :goto_0
.end method

.method public static convert(DI)Ljava/lang/String;
    .locals 11
    .param p0, "coordinate"    # D
    .param p2, "outputType"    # I

    .prologue
    const/16 v10, 0x3a

    const/4 v9, 0x1

    const-wide/high16 v7, 0x404e000000000000L    # 60.0

    const/4 v6, 0x2

    .line 179
    const-wide v4, -0x3f99800000000000L    # -180.0

    cmpg-double v4, p0, v4

    if-ltz v4, :cond_0

    const-wide v4, 0x4066800000000000L    # 180.0

    cmpl-double v4, p0, v4

    if-gtz v4, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 181
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "coordinate="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 183
    :cond_1
    if-eqz p2, :cond_2

    if-eq p2, v9, :cond_2

    if-eq p2, v6, :cond_2

    .line 186
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "outputType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 189
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-wide/16 v4, 0x0

    cmpg-double v4, p0, v4

    if-gez v4, :cond_3

    .line 193
    const/16 v4, 0x2d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 194
    neg-double p0, p0

    .line 197
    :cond_3
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v4, "###.#####"

    invoke-direct {v1, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 198
    .local v1, "df":Ljava/text/DecimalFormat;
    if-eq p2, v9, :cond_4

    if-ne p2, v6, :cond_5

    .line 199
    :cond_4
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 200
    .local v0, "degrees":I
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 202
    int-to-double v4, v0

    sub-double/2addr p0, v4

    .line 203
    mul-double/2addr p0, v7

    .line 204
    if-ne p2, v6, :cond_5

    .line 205
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 206
    .local v2, "minutes":I
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 208
    int-to-double v4, v2

    sub-double/2addr p0, v4

    .line 209
    mul-double/2addr p0, v7

    .line 212
    .end local v0    # "degrees":I
    .end local v2    # "minutes":I
    :cond_5
    invoke-virtual {v1, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static distanceBetween(DDDD[F)V
    .locals 2
    .param p0, "startLatitude"    # D
    .param p2, "startLongitude"    # D
    .param p4, "endLatitude"    # D
    .param p6, "endLongitude"    # D
    .param p8, "results"    # [F

    .prologue
    .line 408
    if-eqz p8, :cond_0

    array-length v0, p8

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 409
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "results is null or has length < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 411
    :cond_1
    invoke-static/range {p0 .. p8}, Landroid/location/Location;->computeDistanceAndBearing(DDDD[F)V

    .line 413
    return-void
.end method


# virtual methods
.method public bearingTo(Landroid/location/Location;)F
    .locals 10
    .param p1, "dest"    # Landroid/location/Location;

    .prologue
    .line 452
    iget-object v9, p0, Landroid/location/Location;->mResults:[F

    monitor-enter v9

    .line 454
    :try_start_0
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    iget-wide v2, p0, Landroid/location/Location;->mLat1:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/location/Location;->mLongitude:D

    iget-wide v2, p0, Landroid/location/Location;->mLon1:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p1, Landroid/location/Location;->mLatitude:D

    iget-wide v2, p0, Landroid/location/Location;->mLat2:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p1, Landroid/location/Location;->mLongitude:D

    iget-wide v2, p0, Landroid/location/Location;->mLon2:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    .line 456
    :cond_0
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    iget-wide v2, p0, Landroid/location/Location;->mLongitude:D

    iget-wide v4, p1, Landroid/location/Location;->mLatitude:D

    iget-wide v6, p1, Landroid/location/Location;->mLongitude:D

    iget-object v8, p0, Landroid/location/Location;->mResults:[F

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->computeDistanceAndBearing(DDDD[F)V

    .line 458
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLat1:D

    .line 459
    iget-wide v0, p0, Landroid/location/Location;->mLongitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLon1:D

    .line 460
    iget-wide v0, p1, Landroid/location/Location;->mLatitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLat2:D

    .line 461
    iget-wide v0, p1, Landroid/location/Location;->mLongitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLon2:D

    .line 462
    iget-object v0, p0, Landroid/location/Location;->mResults:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Landroid/location/Location;->mDistance:F

    .line 463
    iget-object v0, p0, Landroid/location/Location;->mResults:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Landroid/location/Location;->mInitialBearing:F

    .line 465
    :cond_1
    iget v0, p0, Landroid/location/Location;->mInitialBearing:F

    monitor-exit v9

    return v0

    .line 466
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 890
    const/4 v0, 0x0

    return v0
.end method

.method public distanceTo(Landroid/location/Location;)F
    .locals 10
    .param p1, "dest"    # Landroid/location/Location;

    .prologue
    .line 425
    iget-object v9, p0, Landroid/location/Location;->mResults:[F

    monitor-enter v9

    .line 426
    :try_start_0
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    iget-wide v2, p0, Landroid/location/Location;->mLat1:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/location/Location;->mLongitude:D

    iget-wide v2, p0, Landroid/location/Location;->mLon1:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p1, Landroid/location/Location;->mLatitude:D

    iget-wide v2, p0, Landroid/location/Location;->mLat2:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p1, Landroid/location/Location;->mLongitude:D

    iget-wide v2, p0, Landroid/location/Location;->mLon2:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    .line 428
    :cond_0
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    iget-wide v2, p0, Landroid/location/Location;->mLongitude:D

    iget-wide v4, p1, Landroid/location/Location;->mLatitude:D

    iget-wide v6, p1, Landroid/location/Location;->mLongitude:D

    iget-object v8, p0, Landroid/location/Location;->mResults:[F

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->computeDistanceAndBearing(DDDD[F)V

    .line 430
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLat1:D

    .line 431
    iget-wide v0, p0, Landroid/location/Location;->mLongitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLon1:D

    .line 432
    iget-wide v0, p1, Landroid/location/Location;->mLatitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLat2:D

    .line 433
    iget-wide v0, p1, Landroid/location/Location;->mLongitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLon2:D

    .line 434
    iget-object v0, p0, Landroid/location/Location;->mResults:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Landroid/location/Location;->mDistance:F

    .line 435
    iget-object v0, p0, Landroid/location/Location;->mResults:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Landroid/location/Location;->mInitialBearing:F

    .line 437
    :cond_1
    iget v0, p0, Landroid/location/Location;->mDistance:F

    monitor-exit v9

    return v0

    .line 438
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 857
    return-void
.end method

.method public getAccuracy()F
    .locals 1

    .prologue
    .line 735
    iget v0, p0, Landroid/location/Location;->mAccuracy:F

    return v0
.end method

.method public getAltitude()D
    .locals 2

    .prologue
    .line 591
    iget-wide v0, p0, Landroid/location/Location;->mAltitude:D

    return-wide v0
.end method

.method public getBearing()F
    .locals 1

    .prologue
    .line 669
    iget v0, p0, Landroid/location/Location;->mBearing:F

    return v0
.end method

.method public getElapsedRealtimeNanos()J
    .locals 2

    .prologue
    .line 532
    iget-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    return-wide v0
.end method

.method public getExtraLocation(Ljava/lang/String;)Landroid/location/Location;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 921
    iget-object v1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 922
    iget-object v1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 923
    .local v0, "value":Landroid/os/Parcelable;
    instance-of v1, v0, Landroid/location/Location;

    if-eqz v1, :cond_0

    .line 924
    check-cast v0, Landroid/location/Location;

    .line 927
    .end local v0    # "value":Landroid/os/Parcelable;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 815
    iget-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 551
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 568
    iget-wide v0, p0, Landroid/location/Location;->mLongitude:D

    return-wide v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeed()F
    .locals 1

    .prologue
    .line 628
    iget v0, p0, Landroid/location/Location;->mSpeed:F

    return v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 503
    iget-wide v0, p0, Landroid/location/Location;->mTime:J

    return-wide v0
.end method

.method public hasAccuracy()Z
    .locals 1

    .prologue
    .line 709
    iget-boolean v0, p0, Landroid/location/Location;->mHasAccuracy:Z

    return v0
.end method

.method public hasAltitude()Z
    .locals 1

    .prologue
    .line 582
    iget-boolean v0, p0, Landroid/location/Location;->mHasAltitude:Z

    return v0
.end method

.method public hasBearing()Z
    .locals 1

    .prologue
    .line 656
    iget-boolean v0, p0, Landroid/location/Location;->mHasBearing:Z

    return v0
.end method

.method public hasSpeed()Z
    .locals 1

    .prologue
    .line 619
    iget-boolean v0, p0, Landroid/location/Location;->mHasSpeed:Z

    return v0
.end method

.method public isComplete()Z
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v0, 0x0

    .line 774
    iget-object v1, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 778
    :cond_0
    :goto_0
    return v0

    .line 775
    :cond_1
    iget-boolean v1, p0, Landroid/location/Location;->mHasAccuracy:Z

    if-eqz v1, :cond_0

    .line 776
    iget-wide v1, p0, Landroid/location/Location;->mTime:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 777
    iget-wide v1, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 778
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isFromMockProvider()Z
    .locals 1

    .prologue
    .line 950
    iget-boolean v0, p0, Landroid/location/Location;->mIsFromMockProvider:Z

    return v0
.end method

.method public makeComplete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 791
    iget-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "?"

    iput-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    .line 792
    :cond_0
    iget-boolean v0, p0, Landroid/location/Location;->mHasAccuracy:Z

    if-nez v0, :cond_1

    .line 793
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/location/Location;->mHasAccuracy:Z

    .line 794
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Landroid/location/Location;->mAccuracy:F

    .line 796
    :cond_1
    iget-wide v0, p0, Landroid/location/Location;->mTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/Location;->mTime:J

    .line 797
    :cond_2
    iget-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    .line 798
    :cond_3
    return-void
.end method

.method public removeAccuracy()V
    .locals 1

    .prologue
    .line 757
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/Location;->mAccuracy:F

    .line 758
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/location/Location;->mHasAccuracy:Z

    .line 759
    return-void
.end method

.method public removeAltitude()V
    .locals 2

    .prologue
    .line 611
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/location/Location;->mAltitude:D

    .line 612
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/location/Location;->mHasAltitude:Z

    .line 613
    return-void
.end method

.method public removeBearing()V
    .locals 1

    .prologue
    .line 698
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/Location;->mBearing:F

    .line 699
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/location/Location;->mHasBearing:Z

    .line 700
    return-void
.end method

.method public removeSpeed()V
    .locals 1

    .prologue
    .line 648
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/Location;->mSpeed:F

    .line 649
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/location/Location;->mHasSpeed:Z

    .line 650
    return-void
.end method

.method public reset()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 151
    iput-object v4, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    .line 152
    iput-wide v5, p0, Landroid/location/Location;->mTime:J

    .line 153
    iput-wide v5, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    .line 154
    iput-wide v1, p0, Landroid/location/Location;->mLatitude:D

    .line 155
    iput-wide v1, p0, Landroid/location/Location;->mLongitude:D

    .line 156
    iput-boolean v0, p0, Landroid/location/Location;->mHasAltitude:Z

    .line 157
    iput-wide v1, p0, Landroid/location/Location;->mAltitude:D

    .line 158
    iput-boolean v0, p0, Landroid/location/Location;->mHasSpeed:Z

    .line 159
    iput v3, p0, Landroid/location/Location;->mSpeed:F

    .line 160
    iput-boolean v0, p0, Landroid/location/Location;->mHasBearing:Z

    .line 161
    iput v3, p0, Landroid/location/Location;->mBearing:F

    .line 162
    iput-boolean v0, p0, Landroid/location/Location;->mHasAccuracy:Z

    .line 163
    iput v3, p0, Landroid/location/Location;->mAccuracy:F

    .line 164
    iput-object v4, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 165
    iput-boolean v0, p0, Landroid/location/Location;->mIsFromMockProvider:Z

    .line 166
    return-void
.end method

.method public set(Landroid/location/Location;)V
    .locals 2
    .param p1, "l"    # Landroid/location/Location;

    .prologue
    .line 130
    iget-object v0, p1, Landroid/location/Location;->mProvider:Ljava/lang/String;

    iput-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    .line 131
    iget-wide v0, p1, Landroid/location/Location;->mTime:J

    iput-wide v0, p0, Landroid/location/Location;->mTime:J

    .line 132
    iget-wide v0, p1, Landroid/location/Location;->mElapsedRealtimeNanos:J

    iput-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    .line 133
    iget-wide v0, p1, Landroid/location/Location;->mLatitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLatitude:D

    .line 134
    iget-wide v0, p1, Landroid/location/Location;->mLongitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLongitude:D

    .line 135
    iget-boolean v0, p1, Landroid/location/Location;->mHasAltitude:Z

    iput-boolean v0, p0, Landroid/location/Location;->mHasAltitude:Z

    .line 136
    iget-wide v0, p1, Landroid/location/Location;->mAltitude:D

    iput-wide v0, p0, Landroid/location/Location;->mAltitude:D

    .line 137
    iget-boolean v0, p1, Landroid/location/Location;->mHasSpeed:Z

    iput-boolean v0, p0, Landroid/location/Location;->mHasSpeed:Z

    .line 138
    iget v0, p1, Landroid/location/Location;->mSpeed:F

    iput v0, p0, Landroid/location/Location;->mSpeed:F

    .line 139
    iget-boolean v0, p1, Landroid/location/Location;->mHasBearing:Z

    iput-boolean v0, p0, Landroid/location/Location;->mHasBearing:Z

    .line 140
    iget v0, p1, Landroid/location/Location;->mBearing:F

    iput v0, p0, Landroid/location/Location;->mBearing:F

    .line 141
    iget-boolean v0, p1, Landroid/location/Location;->mHasAccuracy:Z

    iput-boolean v0, p0, Landroid/location/Location;->mHasAccuracy:Z

    .line 142
    iget v0, p1, Landroid/location/Location;->mAccuracy:F

    iput v0, p0, Landroid/location/Location;->mAccuracy:F

    .line 143
    iget-object v0, p1, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 144
    iget-boolean v0, p1, Landroid/location/Location;->mIsFromMockProvider:Z

    iput-boolean v0, p0, Landroid/location/Location;->mIsFromMockProvider:Z

    .line 145
    return-void

    .line 143
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p1, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public setAccuracy(F)V
    .locals 1
    .param p1, "accuracy"    # F

    .prologue
    .line 746
    iput p1, p0, Landroid/location/Location;->mAccuracy:F

    .line 747
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/location/Location;->mHasAccuracy:Z

    .line 748
    return-void
.end method

.method public setAltitude(D)V
    .locals 1
    .param p1, "altitude"    # D

    .prologue
    .line 600
    iput-wide p1, p0, Landroid/location/Location;->mAltitude:D

    .line 601
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/location/Location;->mHasAltitude:Z

    .line 602
    return-void
.end method

.method public setBearing(F)V
    .locals 2
    .param p1, "bearing"    # F

    .prologue
    const/high16 v1, 0x43b40000    # 360.0f

    .line 681
    :goto_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 682
    add-float/2addr p1, v1

    goto :goto_0

    .line 684
    :cond_0
    :goto_1
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_1

    .line 685
    sub-float/2addr p1, v1

    goto :goto_1

    .line 687
    :cond_1
    iput p1, p0, Landroid/location/Location;->mBearing:F

    .line 688
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/location/Location;->mHasBearing:Z

    .line 689
    return-void
.end method

.method public setElapsedRealtimeNanos(J)V
    .locals 0
    .param p1, "time"    # J

    .prologue
    .line 541
    iput-wide p1, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    .line 542
    return-void
.end method

.method public setExtraLocation(Ljava/lang/String;Landroid/location/Location;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/location/Location;

    .prologue
    .line 938
    iget-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 939
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 941
    :cond_0
    iget-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 942
    return-void
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 823
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 824
    return-void

    .line 823
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public setIsFromMockProvider(Z)V
    .locals 0
    .param p1, "isFromMockProvider"    # Z

    .prologue
    .line 960
    iput-boolean p1, p0, Landroid/location/Location;->mIsFromMockProvider:Z

    .line 961
    return-void
.end method

.method public setLatitude(D)V
    .locals 0
    .param p1, "latitude"    # D

    .prologue
    .line 558
    iput-wide p1, p0, Landroid/location/Location;->mLatitude:D

    .line 559
    return-void
.end method

.method public setLongitude(D)V
    .locals 0
    .param p1, "longitude"    # D

    .prologue
    .line 575
    iput-wide p1, p0, Landroid/location/Location;->mLongitude:D

    .line 576
    return-void
.end method

.method public setProvider(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 482
    iput-object p1, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    .line 483
    return-void
.end method

.method public setSpeed(F)V
    .locals 1
    .param p1, "speed"    # F

    .prologue
    .line 637
    iput p1, p0, Landroid/location/Location;->mSpeed:F

    .line 638
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/location/Location;->mHasSpeed:Z

    .line 639
    return-void
.end method

.method public setTime(J)V
    .locals 0
    .param p1, "time"    # J

    .prologue
    .line 513
    iput-wide p1, p0, Landroid/location/Location;->mTime:J

    .line 514
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 829
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string v1, "Location["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    iget-object v1, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    const-string v1, " %.6f,%.6f"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v3, p0, Landroid/location/Location;->mLatitude:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v5

    iget-wide v3, p0, Landroid/location/Location;->mLongitude:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    iget-boolean v1, p0, Landroid/location/Location;->mHasAccuracy:Z

    if-eqz v1, :cond_6

    const-string v1, " acc=%.0f"

    new-array v2, v6, [Ljava/lang/Object;

    iget v3, p0, Landroid/location/Location;->mAccuracy:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    :goto_0
    iget-wide v1, p0, Landroid/location/Location;->mTime:J

    cmp-long v1, v1, v7

    if-nez v1, :cond_0

    .line 835
    const-string v1, " t=?!?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    :cond_0
    iget-wide v1, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    cmp-long v1, v1, v7

    if-nez v1, :cond_7

    .line 838
    const-string v1, " et=?!?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    :goto_1
    iget-boolean v1, p0, Landroid/location/Location;->mHasAltitude:Z

    if-eqz v1, :cond_1

    const-string v1, " alt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/Location;->mAltitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 844
    :cond_1
    iget-boolean v1, p0, Landroid/location/Location;->mHasSpeed:Z

    if-eqz v1, :cond_2

    const-string v1, " vel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/Location;->mSpeed:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 845
    :cond_2
    iget-boolean v1, p0, Landroid/location/Location;->mHasBearing:Z

    if-eqz v1, :cond_3

    const-string v1, " bear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/Location;->mBearing:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 846
    :cond_3
    iget-boolean v1, p0, Landroid/location/Location;->mIsFromMockProvider:Z

    if-eqz v1, :cond_4

    const-string v1, " mock"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    :cond_4
    iget-object v1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_5

    .line 849
    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 851
    :cond_5
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 852
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 833
    :cond_6
    const-string v1, " acc=???"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 840
    :cond_7
    const-string v1, " et="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    iget-wide v1, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 895
    iget-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 896
    iget-wide v3, p0, Landroid/location/Location;->mTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 897
    iget-wide v3, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 898
    iget-wide v3, p0, Landroid/location/Location;->mLatitude:D

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 899
    iget-wide v3, p0, Landroid/location/Location;->mLongitude:D

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 900
    iget-boolean v0, p0, Landroid/location/Location;->mHasAltitude:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 901
    iget-wide v3, p0, Landroid/location/Location;->mAltitude:D

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 902
    iget-boolean v0, p0, Landroid/location/Location;->mHasSpeed:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 903
    iget v0, p0, Landroid/location/Location;->mSpeed:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 904
    iget-boolean v0, p0, Landroid/location/Location;->mHasBearing:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 905
    iget v0, p0, Landroid/location/Location;->mBearing:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 906
    iget-boolean v0, p0, Landroid/location/Location;->mHasAccuracy:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 907
    iget v0, p0, Landroid/location/Location;->mAccuracy:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 908
    iget-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 909
    iget-boolean v0, p0, Landroid/location/Location;->mIsFromMockProvider:Z

    if-eqz v0, :cond_4

    :goto_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 910
    return-void

    :cond_0
    move v0, v2

    .line 900
    goto :goto_0

    :cond_1
    move v0, v2

    .line 902
    goto :goto_1

    :cond_2
    move v0, v2

    .line 904
    goto :goto_2

    :cond_3
    move v0, v2

    .line 906
    goto :goto_3

    :cond_4
    move v1, v2

    .line 909
    goto :goto_4
.end method
