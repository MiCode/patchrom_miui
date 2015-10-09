.class public Landroid/location/Criteria;
.super Ljava/lang/Object;
.source "Criteria.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ACCURACY_COARSE:I = 0x2

.field public static final ACCURACY_FINE:I = 0x1

.field public static final ACCURACY_HIGH:I = 0x3

.field public static final ACCURACY_LOW:I = 0x1

.field public static final ACCURACY_MEDIUM:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/location/Criteria;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_REQUIREMENT:I = 0x0

.field public static final POWER_HIGH:I = 0x3

.field public static final POWER_LOW:I = 0x1

.field public static final POWER_MEDIUM:I = 0x2


# instance fields
.field private mAltitudeRequired:Z

.field private mBearingAccuracy:I

.field private mBearingRequired:Z

.field private mCostAllowed:Z

.field private mHorizontalAccuracy:I

.field private mPowerRequirement:I

.field private mSpeedAccuracy:I

.field private mSpeedRequired:Z

.field private mVerticalAccuracy:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 327
    new-instance v0, Landroid/location/Criteria$1;

    invoke-direct {v0}, Landroid/location/Criteria$1;-><init>()V

    sput-object v0, Landroid/location/Criteria;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput v0, p0, Landroid/location/Criteria;->mHorizontalAccuracy:I

    .line 85
    iput v0, p0, Landroid/location/Criteria;->mVerticalAccuracy:I

    .line 86
    iput v0, p0, Landroid/location/Criteria;->mSpeedAccuracy:I

    .line 87
    iput v0, p0, Landroid/location/Criteria;->mBearingAccuracy:I

    .line 88
    iput v0, p0, Landroid/location/Criteria;->mPowerRequirement:I

    .line 89
    iput-boolean v0, p0, Landroid/location/Criteria;->mAltitudeRequired:Z

    .line 90
    iput-boolean v0, p0, Landroid/location/Criteria;->mBearingRequired:Z

    .line 91
    iput-boolean v0, p0, Landroid/location/Criteria;->mSpeedRequired:Z

    .line 92
    iput-boolean v0, p0, Landroid/location/Criteria;->mCostAllowed:Z

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/location/Criteria;)V
    .locals 1
    .param p1, "criteria"    # Landroid/location/Criteria;

    .prologue
    const/4 v0, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput v0, p0, Landroid/location/Criteria;->mHorizontalAccuracy:I

    .line 85
    iput v0, p0, Landroid/location/Criteria;->mVerticalAccuracy:I

    .line 86
    iput v0, p0, Landroid/location/Criteria;->mSpeedAccuracy:I

    .line 87
    iput v0, p0, Landroid/location/Criteria;->mBearingAccuracy:I

    .line 88
    iput v0, p0, Landroid/location/Criteria;->mPowerRequirement:I

    .line 89
    iput-boolean v0, p0, Landroid/location/Criteria;->mAltitudeRequired:Z

    .line 90
    iput-boolean v0, p0, Landroid/location/Criteria;->mBearingRequired:Z

    .line 91
    iput-boolean v0, p0, Landroid/location/Criteria;->mSpeedRequired:Z

    .line 92
    iput-boolean v0, p0, Landroid/location/Criteria;->mCostAllowed:Z

    .line 106
    iget v0, p1, Landroid/location/Criteria;->mHorizontalAccuracy:I

    iput v0, p0, Landroid/location/Criteria;->mHorizontalAccuracy:I

    .line 107
    iget v0, p1, Landroid/location/Criteria;->mVerticalAccuracy:I

    iput v0, p0, Landroid/location/Criteria;->mVerticalAccuracy:I

    .line 108
    iget v0, p1, Landroid/location/Criteria;->mSpeedAccuracy:I

    iput v0, p0, Landroid/location/Criteria;->mSpeedAccuracy:I

    .line 109
    iget v0, p1, Landroid/location/Criteria;->mBearingAccuracy:I

    iput v0, p0, Landroid/location/Criteria;->mBearingAccuracy:I

    .line 110
    iget v0, p1, Landroid/location/Criteria;->mPowerRequirement:I

    iput v0, p0, Landroid/location/Criteria;->mPowerRequirement:I

    .line 111
    iget-boolean v0, p1, Landroid/location/Criteria;->mAltitudeRequired:Z

    iput-boolean v0, p0, Landroid/location/Criteria;->mAltitudeRequired:Z

    .line 112
    iget-boolean v0, p1, Landroid/location/Criteria;->mBearingRequired:Z

    iput-boolean v0, p0, Landroid/location/Criteria;->mBearingRequired:Z

    .line 113
    iget-boolean v0, p1, Landroid/location/Criteria;->mSpeedRequired:Z

    iput-boolean v0, p0, Landroid/location/Criteria;->mSpeedRequired:Z

    .line 114
    iget-boolean v0, p1, Landroid/location/Criteria;->mCostAllowed:Z

    iput-boolean v0, p0, Landroid/location/Criteria;->mCostAllowed:Z

    .line 115
    return-void
.end method

.method static synthetic access$002(Landroid/location/Criteria;I)I
    .locals 0
    .param p0, "x0"    # Landroid/location/Criteria;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Landroid/location/Criteria;->mHorizontalAccuracy:I

    return p1
.end method

.method static synthetic access$102(Landroid/location/Criteria;I)I
    .locals 0
    .param p0, "x0"    # Landroid/location/Criteria;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Landroid/location/Criteria;->mVerticalAccuracy:I

    return p1
.end method

.method static synthetic access$202(Landroid/location/Criteria;I)I
    .locals 0
    .param p0, "x0"    # Landroid/location/Criteria;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Landroid/location/Criteria;->mSpeedAccuracy:I

    return p1
.end method

.method static synthetic access$302(Landroid/location/Criteria;I)I
    .locals 0
    .param p0, "x0"    # Landroid/location/Criteria;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Landroid/location/Criteria;->mBearingAccuracy:I

    return p1
.end method

.method static synthetic access$402(Landroid/location/Criteria;I)I
    .locals 0
    .param p0, "x0"    # Landroid/location/Criteria;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Landroid/location/Criteria;->mPowerRequirement:I

    return p1
.end method

.method static synthetic access$502(Landroid/location/Criteria;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/location/Criteria;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Landroid/location/Criteria;->mAltitudeRequired:Z

    return p1
.end method

.method static synthetic access$602(Landroid/location/Criteria;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/location/Criteria;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Landroid/location/Criteria;->mBearingRequired:Z

    return p1
.end method

.method static synthetic access$702(Landroid/location/Criteria;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/location/Criteria;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Landroid/location/Criteria;->mSpeedRequired:Z

    return p1
.end method

.method static synthetic access$802(Landroid/location/Criteria;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/location/Criteria;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Landroid/location/Criteria;->mCostAllowed:Z

    return p1
.end method

.method private static accuracyToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "accuracy"    # I

    .prologue
    .line 384
    packed-switch p0, :pswitch_data_0

    .line 394
    const-string v0, "???"

    :goto_0
    return-object v0

    .line 386
    :pswitch_0
    const-string v0, "---"

    goto :goto_0

    .line 388
    :pswitch_1
    const-string v0, "HIGH"

    goto :goto_0

    .line 390
    :pswitch_2
    const-string v0, "MEDIUM"

    goto :goto_0

    .line 392
    :pswitch_3
    const-string v0, "LOW"

    goto :goto_0

    .line 384
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static powerToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "power"    # I

    .prologue
    .line 369
    packed-switch p0, :pswitch_data_0

    .line 379
    const-string v0, "???"

    :goto_0
    return-object v0

    .line 371
    :pswitch_0
    const-string v0, "NO_REQ"

    goto :goto_0

    .line 373
    :pswitch_1
    const-string v0, "LOW"

    goto :goto_0

    .line 375
    :pswitch_2
    const-string v0, "MEDIUM"

    goto :goto_0

    .line 377
    :pswitch_3
    const-string v0, "HIGH"

    goto :goto_0

    .line 369
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 352
    const/4 v0, 0x0

    return v0
.end method

.method public getAccuracy()I
    .locals 2

    .prologue
    .line 238
    iget v0, p0, Landroid/location/Criteria;->mHorizontalAccuracy:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 239
    const/4 v0, 0x1

    .line 241
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getBearingAccuracy()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Landroid/location/Criteria;->mBearingAccuracy:I

    return v0
.end method

.method public getHorizontalAccuracy()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Landroid/location/Criteria;->mHorizontalAccuracy:I

    return v0
.end method

.method public getPowerRequirement()I
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Landroid/location/Criteria;->mPowerRequirement:I

    return v0
.end method

.method public getSpeedAccuracy()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Landroid/location/Criteria;->mSpeedAccuracy:I

    return v0
.end method

.method public getVerticalAccuracy()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Landroid/location/Criteria;->mVerticalAccuracy:I

    return v0
.end method

.method public isAltitudeRequired()Z
    .locals 1

    .prologue
    .line 292
    iget-boolean v0, p0, Landroid/location/Criteria;->mAltitudeRequired:Z

    return v0
.end method

.method public isBearingRequired()Z
    .locals 1

    .prologue
    .line 324
    iget-boolean v0, p0, Landroid/location/Criteria;->mBearingRequired:Z

    return v0
.end method

.method public isCostAllowed()Z
    .locals 1

    .prologue
    .line 276
    iget-boolean v0, p0, Landroid/location/Criteria;->mCostAllowed:Z

    return v0
.end method

.method public isSpeedRequired()Z
    .locals 1

    .prologue
    .line 308
    iget-boolean v0, p0, Landroid/location/Criteria;->mSpeedRequired:Z

    return v0
.end method

.method public setAccuracy(I)V
    .locals 3
    .param p1, "accuracy"    # I

    .prologue
    const/4 v1, 0x1

    .line 222
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    .line 223
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accuracy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_1
    if-ne p1, v1, :cond_2

    .line 226
    const/4 v0, 0x3

    iput v0, p0, Landroid/location/Criteria;->mHorizontalAccuracy:I

    .line 230
    :goto_0
    return-void

    .line 228
    :cond_2
    iput v1, p0, Landroid/location/Criteria;->mHorizontalAccuracy:I

    goto :goto_0
.end method

.method public setAltitudeRequired(Z)V
    .locals 0
    .param p1, "altitudeRequired"    # Z

    .prologue
    .line 284
    iput-boolean p1, p0, Landroid/location/Criteria;->mAltitudeRequired:Z

    .line 285
    return-void
.end method

.method public setBearingAccuracy(I)V
    .locals 3
    .param p1, "accuracy"    # I

    .prologue
    .line 198
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    .line 199
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accuracy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_1
    iput p1, p0, Landroid/location/Criteria;->mBearingAccuracy:I

    .line 202
    return-void
.end method

.method public setBearingRequired(Z)V
    .locals 0
    .param p1, "bearingRequired"    # Z

    .prologue
    .line 316
    iput-boolean p1, p0, Landroid/location/Criteria;->mBearingRequired:Z

    .line 317
    return-void
.end method

.method public setCostAllowed(Z)V
    .locals 0
    .param p1, "costAllowed"    # Z

    .prologue
    .line 269
    iput-boolean p1, p0, Landroid/location/Criteria;->mCostAllowed:Z

    .line 270
    return-void
.end method

.method public setHorizontalAccuracy(I)V
    .locals 3
    .param p1, "accuracy"    # I

    .prologue
    .line 126
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    .line 127
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accuracy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_1
    iput p1, p0, Landroid/location/Criteria;->mHorizontalAccuracy:I

    .line 130
    return-void
.end method

.method public setPowerRequirement(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 251
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    .line 252
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_1
    iput p1, p0, Landroid/location/Criteria;->mPowerRequirement:I

    .line 255
    return-void
.end method

.method public setSpeedAccuracy(I)V
    .locals 3
    .param p1, "accuracy"    # I

    .prologue
    .line 174
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    .line 175
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accuracy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_1
    iput p1, p0, Landroid/location/Criteria;->mSpeedAccuracy:I

    .line 178
    return-void
.end method

.method public setSpeedRequired(Z)V
    .locals 0
    .param p1, "speedRequired"    # Z

    .prologue
    .line 300
    iput-boolean p1, p0, Landroid/location/Criteria;->mSpeedRequired:Z

    .line 301
    return-void
.end method

.method public setVerticalAccuracy(I)V
    .locals 3
    .param p1, "accuracy"    # I

    .prologue
    .line 150
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    .line 151
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accuracy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_1
    iput p1, p0, Landroid/location/Criteria;->mVerticalAccuracy:I

    .line 154
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 401
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string v1, "Criteria[power="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/Criteria;->mPowerRequirement:I

    invoke-static {v2}, Landroid/location/Criteria;->powerToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    const-string v1, " acc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/Criteria;->mHorizontalAccuracy:I

    invoke-static {v2}, Landroid/location/Criteria;->accuracyToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 404
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 357
    iget v0, p0, Landroid/location/Criteria;->mHorizontalAccuracy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 358
    iget v0, p0, Landroid/location/Criteria;->mVerticalAccuracy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    iget v0, p0, Landroid/location/Criteria;->mSpeedAccuracy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    iget v0, p0, Landroid/location/Criteria;->mBearingAccuracy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    iget v0, p0, Landroid/location/Criteria;->mPowerRequirement:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 362
    iget-boolean v0, p0, Landroid/location/Criteria;->mAltitudeRequired:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    iget-boolean v0, p0, Landroid/location/Criteria;->mBearingRequired:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 364
    iget-boolean v0, p0, Landroid/location/Criteria;->mSpeedRequired:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    iget-boolean v0, p0, Landroid/location/Criteria;->mCostAllowed:Z

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 366
    return-void

    :cond_0
    move v0, v2

    .line 362
    goto :goto_0

    :cond_1
    move v0, v2

    .line 363
    goto :goto_1

    :cond_2
    move v0, v2

    .line 364
    goto :goto_2

    :cond_3
    move v1, v2

    .line 365
    goto :goto_3
.end method
