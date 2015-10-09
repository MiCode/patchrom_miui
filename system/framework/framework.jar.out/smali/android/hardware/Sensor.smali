.class public final Landroid/hardware/Sensor;
.super Ljava/lang/Object;
.source "Sensor.java"


# static fields
.field static REPORTING_MODE_CONTINUOUS:I = 0x0

.field static REPORTING_MODE_ONE_SHOT:I = 0x0

.field static REPORTING_MODE_ON_CHANGE:I = 0x0

.field public static final TYPE_ACCELEROMETER:I = 0x1

.field public static final TYPE_ALL:I = -0x1

.field public static final TYPE_AMBIENT_TEMPERATURE:I = 0xd

.field public static final TYPE_GAME_ROTATION_VECTOR:I = 0xf

.field public static final TYPE_GEOMAGNETIC_ROTATION_VECTOR:I = 0x14

.field public static final TYPE_GRAVITY:I = 0x9

.field public static final TYPE_GYROSCOPE:I = 0x4

.field public static final TYPE_GYROSCOPE_UNCALIBRATED:I = 0x10

.field public static final TYPE_LIGHT:I = 0x5

.field public static final TYPE_LINEAR_ACCELERATION:I = 0xa

.field public static final TYPE_MAGNETIC_FIELD:I = 0x2

.field public static final TYPE_MAGNETIC_FIELD_UNCALIBRATED:I = 0xe

.field public static final TYPE_ORIENTATION:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_PRESSURE:I = 0x6

.field public static final TYPE_PROXIMITY:I = 0x8

.field public static final TYPE_RELATIVE_HUMIDITY:I = 0xc

.field public static final TYPE_ROTATION_VECTOR:I = 0xb

.field public static final TYPE_SIGNIFICANT_MOTION:I = 0x11

.field public static final TYPE_STEP_COUNTER:I = 0x13

.field public static final TYPE_STEP_DETECTOR:I = 0x12

.field public static final TYPE_TEMPERATURE:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final sSensorReportingModes:[I


# instance fields
.field private mFifoMaxEventCount:I

.field private mFifoReservedEventCount:I

.field private mHandle:I

.field private mMaxRange:F

.field private mMinDelay:I

.field private mName:Ljava/lang/String;

.field private mPower:F

.field private mResolution:F

.field private mType:I

.field private mVendor:Ljava/lang/String;

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x5

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x3

    .line 232
    sput v4, Landroid/hardware/Sensor;->REPORTING_MODE_CONTINUOUS:I

    .line 235
    const/4 v0, 0x2

    sput v0, Landroid/hardware/Sensor;->REPORTING_MODE_ON_CHANGE:I

    .line 238
    sput v3, Landroid/hardware/Sensor;->REPORTING_MODE_ONE_SHOT:I

    .line 246
    const/16 v0, 0x2a

    new-array v0, v0, [I

    aput v1, v0, v1

    aput v1, v0, v4

    const/4 v1, 0x2

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_CONTINUOUS:I

    aput v2, v0, v1

    aput v3, v0, v3

    const/4 v1, 0x4

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_CONTINUOUS:I

    aput v2, v0, v1

    aput v3, v0, v5

    sget v1, Landroid/hardware/Sensor;->REPORTING_MODE_CONTINUOUS:I

    aput v1, v0, v6

    const/4 v1, 0x7

    aput v3, v0, v1

    const/16 v1, 0x8

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_CONTINUOUS:I

    aput v2, v0, v1

    const/16 v1, 0x9

    aput v3, v0, v1

    const/16 v1, 0xa

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_ON_CHANGE:I

    aput v2, v0, v1

    const/16 v1, 0xb

    aput v3, v0, v1

    const/16 v1, 0xc

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_CONTINUOUS:I

    aput v2, v0, v1

    const/16 v1, 0xd

    aput v3, v0, v1

    const/16 v1, 0xe

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_ON_CHANGE:I

    aput v2, v0, v1

    const/16 v1, 0xf

    aput v3, v0, v1

    const/16 v1, 0x10

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_ON_CHANGE:I

    aput v2, v0, v1

    const/16 v1, 0x11

    aput v3, v0, v1

    const/16 v1, 0x12

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_CONTINUOUS:I

    aput v2, v0, v1

    const/16 v1, 0x13

    aput v3, v0, v1

    const/16 v1, 0x14

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_CONTINUOUS:I

    aput v2, v0, v1

    const/16 v1, 0x15

    aput v3, v0, v1

    const/16 v1, 0x16

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_CONTINUOUS:I

    aput v2, v0, v1

    const/16 v1, 0x17

    aput v5, v0, v1

    const/16 v1, 0x18

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_ON_CHANGE:I

    aput v2, v0, v1

    const/16 v1, 0x19

    aput v3, v0, v1

    const/16 v1, 0x1a

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_ON_CHANGE:I

    aput v2, v0, v1

    const/16 v1, 0x1b

    aput v3, v0, v1

    const/16 v1, 0x1c

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_CONTINUOUS:I

    aput v2, v0, v1

    const/16 v1, 0x1d

    aput v6, v0, v1

    const/16 v1, 0x1e

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_CONTINUOUS:I

    aput v2, v0, v1

    const/16 v1, 0x1f

    const/4 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0x20

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_CONTINUOUS:I

    aput v2, v0, v1

    const/16 v1, 0x21

    aput v6, v0, v1

    const/16 v1, 0x22

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_ONE_SHOT:I

    aput v2, v0, v1

    const/16 v1, 0x23

    aput v4, v0, v1

    const/16 v1, 0x24

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_ON_CHANGE:I

    aput v2, v0, v1

    const/16 v1, 0x25

    aput v4, v0, v1

    const/16 v1, 0x26

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_ON_CHANGE:I

    aput v2, v0, v1

    const/16 v1, 0x27

    aput v4, v0, v1

    const/16 v1, 0x28

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_CONTINUOUS:I

    aput v2, v0, v1

    const/16 v1, 0x29

    aput v5, v0, v1

    sput-object v0, Landroid/hardware/Sensor;->sSensorReportingModes:[I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    return-void
.end method

.method static getMaxLengthValuesArray(Landroid/hardware/Sensor;I)I
    .locals 3
    .param p0, "sensor"    # Landroid/hardware/Sensor;
    .param p1, "sdkLevel"    # I

    .prologue
    .line 290
    iget v1, p0, Landroid/hardware/Sensor;->mType:I

    .line 293
    .local v1, "type":I
    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    const/16 v2, 0x11

    if-gt p1, v2, :cond_0

    .line 295
    const/4 v2, 0x3

    .line 307
    :goto_0
    return v2

    .line 297
    :cond_0
    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v0, v2, 0x1

    .line 298
    .local v0, "offset":I
    sget-object v2, Landroid/hardware/Sensor;->sSensorReportingModes:[I

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 305
    const/16 v2, 0x10

    goto :goto_0

    .line 307
    :cond_1
    sget-object v2, Landroid/hardware/Sensor;->sSensorReportingModes:[I

    aget v2, v2, v0

    goto :goto_0
.end method

.method static getReportingMode(Landroid/hardware/Sensor;)I
    .locals 3
    .param p0, "sensor"    # Landroid/hardware/Sensor;

    .prologue
    .line 272
    iget v2, p0, Landroid/hardware/Sensor;->mType:I

    mul-int/lit8 v1, v2, 0x2

    .line 273
    .local v1, "offset":I
    sget-object v2, Landroid/hardware/Sensor;->sSensorReportingModes:[I

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 277
    iget v0, p0, Landroid/hardware/Sensor;->mMinDelay:I

    .line 278
    .local v0, "minDelay":I
    if-nez v0, :cond_0

    .line 279
    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_ON_CHANGE:I

    .line 286
    .end local v0    # "minDelay":I
    :goto_0
    return v2

    .line 280
    .restart local v0    # "minDelay":I
    :cond_0
    if-gez v0, :cond_1

    .line 281
    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_ONE_SHOT:I

    goto :goto_0

    .line 283
    :cond_1
    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_CONTINUOUS:I

    goto :goto_0

    .line 286
    .end local v0    # "minDelay":I
    :cond_2
    sget-object v2, Landroid/hardware/Sensor;->sSensorReportingModes:[I

    aget v2, v2, v1

    goto :goto_0
.end method


# virtual methods
.method public getFifoMaxEventCount()I
    .locals 1

    .prologue
    .line 401
    iget v0, p0, Landroid/hardware/Sensor;->mFifoMaxEventCount:I

    return v0
.end method

.method public getFifoReservedEventCount()I
    .locals 1

    .prologue
    .line 391
    iget v0, p0, Landroid/hardware/Sensor;->mFifoReservedEventCount:I

    return v0
.end method

.method public getHandle()I
    .locals 1

    .prologue
    .line 406
    iget v0, p0, Landroid/hardware/Sensor;->mHandle:I

    return v0
.end method

.method public getMaximumRange()F
    .locals 1

    .prologue
    .line 360
    iget v0, p0, Landroid/hardware/Sensor;->mMaxRange:F

    return v0
.end method

.method public getMinDelay()I
    .locals 1

    .prologue
    .line 383
    iget v0, p0, Landroid/hardware/Sensor;->mMinDelay:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Landroid/hardware/Sensor;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPower()F
    .locals 1

    .prologue
    .line 374
    iget v0, p0, Landroid/hardware/Sensor;->mPower:F

    return v0
.end method

.method public getResolution()F
    .locals 1

    .prologue
    .line 367
    iget v0, p0, Landroid/hardware/Sensor;->mResolution:F

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 346
    iget v0, p0, Landroid/hardware/Sensor;->mType:I

    return v0
.end method

.method public getVendor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Landroid/hardware/Sensor;->mVendor:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 353
    iget v0, p0, Landroid/hardware/Sensor;->mVersion:I

    return v0
.end method

.method setRange(FF)V
    .locals 0
    .param p1, "max"    # F
    .param p2, "res"    # F

    .prologue
    .line 410
    iput p1, p0, Landroid/hardware/Sensor;->mMaxRange:F

    .line 411
    iput p2, p0, Landroid/hardware/Sensor;->mResolution:F

    .line 412
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{Sensor name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/Sensor;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", vendor=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/Sensor;->mVendor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/Sensor;->mVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/Sensor;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/Sensor;->mMaxRange:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resolution="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/Sensor;->mResolution:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", power="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/Sensor;->mPower:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/Sensor;->mMinDelay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
