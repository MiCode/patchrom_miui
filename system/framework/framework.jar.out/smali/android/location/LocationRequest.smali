.class public final Landroid/location/LocationRequest;
.super Ljava/lang/Object;
.source "LocationRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ACCURACY_BLOCK:I = 0x66

.field public static final ACCURACY_CITY:I = 0x68

.field public static final ACCURACY_FINE:I = 0x64

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/location/LocationRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final FASTEST_INTERVAL_FACTOR:D = 6.0

.field public static final POWER_HIGH:I = 0xcb

.field public static final POWER_LOW:I = 0xc9

.field public static final POWER_NONE:I = 0xc8


# instance fields
.field private mExpireAt:J

.field private mExplicitFastestInterval:Z

.field private mFastestInterval:J

.field private mHideFromAppOps:Z

.field private mInterval:J

.field private mNumUpdates:I

.field private mProvider:Ljava/lang/String;

.field private mQuality:I

.field private mSmallestDisplacement:F

.field private mWorkSource:Landroid/os/WorkSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 575
    new-instance v0, Landroid/location/LocationRequest$1;

    invoke-direct {v0}, Landroid/location/LocationRequest$1;-><init>()V

    sput-object v0, Landroid/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    const/16 v0, 0xc9

    iput v0, p0, Landroid/location/LocationRequest;->mQuality:I

    .line 143
    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Landroid/location/LocationRequest;->mInterval:J

    .line 144
    iget-wide v0, p0, Landroid/location/LocationRequest;->mInterval:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    div-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Landroid/location/LocationRequest;->mFastestInterval:J

    .line 145
    iput-boolean v4, p0, Landroid/location/LocationRequest;->mExplicitFastestInterval:Z

    .line 146
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Landroid/location/LocationRequest;->mExpireAt:J

    .line 147
    const v0, 0x7fffffff

    iput v0, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    .line 148
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/LocationRequest;->mSmallestDisplacement:F

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    .line 150
    iput-boolean v4, p0, Landroid/location/LocationRequest;->mHideFromAppOps:Z

    .line 152
    const-string v0, "fused"

    iput-object v0, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    .line 227
    return-void
.end method

.method public constructor <init>(Landroid/location/LocationRequest;)V
    .locals 5
    .param p1, "src"    # Landroid/location/LocationRequest;

    .prologue
    const/4 v4, 0x0

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    const/16 v0, 0xc9

    iput v0, p0, Landroid/location/LocationRequest;->mQuality:I

    .line 143
    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Landroid/location/LocationRequest;->mInterval:J

    .line 144
    iget-wide v0, p0, Landroid/location/LocationRequest;->mInterval:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    div-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Landroid/location/LocationRequest;->mFastestInterval:J

    .line 145
    iput-boolean v4, p0, Landroid/location/LocationRequest;->mExplicitFastestInterval:Z

    .line 146
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Landroid/location/LocationRequest;->mExpireAt:J

    .line 147
    const v0, 0x7fffffff

    iput v0, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    .line 148
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/LocationRequest;->mSmallestDisplacement:F

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    .line 150
    iput-boolean v4, p0, Landroid/location/LocationRequest;->mHideFromAppOps:Z

    .line 152
    const-string v0, "fused"

    iput-object v0, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    .line 231
    iget v0, p1, Landroid/location/LocationRequest;->mQuality:I

    iput v0, p0, Landroid/location/LocationRequest;->mQuality:I

    .line 232
    iget-wide v0, p1, Landroid/location/LocationRequest;->mInterval:J

    iput-wide v0, p0, Landroid/location/LocationRequest;->mInterval:J

    .line 233
    iget-wide v0, p1, Landroid/location/LocationRequest;->mFastestInterval:J

    iput-wide v0, p0, Landroid/location/LocationRequest;->mFastestInterval:J

    .line 234
    iget-boolean v0, p1, Landroid/location/LocationRequest;->mExplicitFastestInterval:Z

    iput-boolean v0, p0, Landroid/location/LocationRequest;->mExplicitFastestInterval:Z

    .line 235
    iget-wide v0, p1, Landroid/location/LocationRequest;->mExpireAt:J

    iput-wide v0, p0, Landroid/location/LocationRequest;->mExpireAt:J

    .line 236
    iget v0, p1, Landroid/location/LocationRequest;->mNumUpdates:I

    iput v0, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    .line 237
    iget v0, p1, Landroid/location/LocationRequest;->mSmallestDisplacement:F

    iput v0, p0, Landroid/location/LocationRequest;->mSmallestDisplacement:F

    .line 238
    iget-object v0, p1, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    iput-object v0, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    .line 239
    iget-object v0, p1, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    iput-object v0, p0, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    .line 240
    iget-boolean v0, p1, Landroid/location/LocationRequest;->mHideFromAppOps:Z

    iput-boolean v0, p0, Landroid/location/LocationRequest;->mHideFromAppOps:Z

    .line 241
    return-void
.end method

.method private static checkDisplacement(F)V
    .locals 3
    .param p0, "meters"    # F

    .prologue
    .line 564
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    .line 565
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid displacement: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 567
    :cond_0
    return-void
.end method

.method private static checkInterval(J)V
    .locals 3
    .param p0, "millis"    # J

    .prologue
    .line 544
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 545
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid interval: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 547
    :cond_0
    return-void
.end method

.method private static checkProvider(Ljava/lang/String;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 570
    if-nez p0, :cond_0

    .line 571
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 573
    :cond_0
    return-void
.end method

.method private static checkQuality(I)V
    .locals 3
    .param p0, "quality"    # I

    .prologue
    .line 550
    sparse-switch p0, :sswitch_data_0

    .line 559
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid quality: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 561
    :sswitch_0
    return-void

    .line 550
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x66 -> :sswitch_0
        0x68 -> :sswitch_0
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_0
        0xcb -> :sswitch_0
    .end sparse-switch
.end method

.method public static create()Landroid/location/LocationRequest;
    .locals 1

    .prologue
    .line 164
    new-instance v0, Landroid/location/LocationRequest;

    invoke-direct {v0}, Landroid/location/LocationRequest;-><init>()V

    .line 165
    .local v0, "request":Landroid/location/LocationRequest;
    return-object v0
.end method

.method public static createFromDeprecatedCriteria(Landroid/location/Criteria;JFZ)Landroid/location/LocationRequest;
    .locals 4
    .param p0, "criteria"    # Landroid/location/Criteria;
    .param p1, "minTime"    # J
    .param p3, "minDistance"    # F
    .param p4, "singleShot"    # Z

    .prologue
    .line 196
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    const-wide/16 p1, 0x0

    .line 197
    :cond_0
    const/4 v2, 0x0

    cmpg-float v2, p3, v2

    if-gez v2, :cond_1

    const/4 p3, 0x0

    .line 200
    :cond_1
    invoke-virtual {p0}, Landroid/location/Criteria;->getAccuracy()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 208
    invoke-virtual {p0}, Landroid/location/Criteria;->getPowerRequirement()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    .line 212
    :goto_0
    const/16 v0, 0xc9

    .line 217
    .local v0, "quality":I
    :goto_1
    new-instance v2, Landroid/location/LocationRequest;

    invoke-direct {v2}, Landroid/location/LocationRequest;-><init>()V

    invoke-virtual {v2, v0}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/location/LocationRequest;->setSmallestDisplacement(F)Landroid/location/LocationRequest;

    move-result-object v1

    .line 222
    .local v1, "request":Landroid/location/LocationRequest;
    if-eqz p4, :cond_2

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/location/LocationRequest;->setNumUpdates(I)Landroid/location/LocationRequest;

    .line 223
    :cond_2
    return-object v1

    .line 202
    .end local v0    # "quality":I
    .end local v1    # "request":Landroid/location/LocationRequest;
    :pswitch_0
    const/16 v0, 0x66

    .line 203
    .restart local v0    # "quality":I
    goto :goto_1

    .line 205
    .end local v0    # "quality":I
    :pswitch_1
    const/16 v0, 0x64

    .line 206
    .restart local v0    # "quality":I
    goto :goto_1

    .line 210
    .end local v0    # "quality":I
    :pswitch_2
    const/16 v0, 0xcb

    .restart local v0    # "quality":I
    goto :goto_0

    .line 200
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 208
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_2
    .end packed-switch
.end method

.method public static createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;
    .locals 4
    .param p0, "provider"    # Ljava/lang/String;
    .param p1, "minTime"    # J
    .param p3, "minDistance"    # F
    .param p4, "singleShot"    # Z

    .prologue
    .line 171
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    const-wide/16 p1, 0x0

    .line 172
    :cond_0
    const/4 v2, 0x0

    cmpg-float v2, p3, v2

    if-gez v2, :cond_1

    const/4 p3, 0x0

    .line 175
    :cond_1
    const-string/jumbo v2, "passive"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 176
    const/16 v0, 0xc8

    .line 183
    .local v0, "quality":I
    :goto_0
    new-instance v2, Landroid/location/LocationRequest;

    invoke-direct {v2}, Landroid/location/LocationRequest;-><init>()V

    invoke-virtual {v2, p0}, Landroid/location/LocationRequest;->setProvider(Ljava/lang/String;)Landroid/location/LocationRequest;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/location/LocationRequest;->setSmallestDisplacement(F)Landroid/location/LocationRequest;

    move-result-object v1

    .line 189
    .local v1, "request":Landroid/location/LocationRequest;
    if-eqz p4, :cond_2

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/location/LocationRequest;->setNumUpdates(I)Landroid/location/LocationRequest;

    .line 190
    :cond_2
    return-object v1

    .line 177
    .end local v0    # "quality":I
    .end local v1    # "request":Landroid/location/LocationRequest;
    :cond_3
    const-string v2, "gps"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 178
    const/16 v0, 0x64

    .restart local v0    # "quality":I
    goto :goto_0

    .line 180
    .end local v0    # "quality":I
    :cond_4
    const/16 v0, 0xc9

    .restart local v0    # "quality":I
    goto :goto_0
.end method

.method public static qualityToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "quality"    # I

    .prologue
    .line 619
    sparse-switch p0, :sswitch_data_0

    .line 633
    const-string v0, "???"

    :goto_0
    return-object v0

    .line 621
    :sswitch_0
    const-string v0, "ACCURACY_FINE"

    goto :goto_0

    .line 623
    :sswitch_1
    const-string v0, "ACCURACY_BLOCK"

    goto :goto_0

    .line 625
    :sswitch_2
    const-string v0, "ACCURACY_CITY"

    goto :goto_0

    .line 627
    :sswitch_3
    const-string v0, "POWER_NONE"

    goto :goto_0

    .line 629
    :sswitch_4
    const-string v0, "POWER_LOW"

    goto :goto_0

    .line 631
    :sswitch_5
    const-string v0, "POWER_HIGH"

    goto :goto_0

    .line 619
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x66 -> :sswitch_1
        0x68 -> :sswitch_2
        0xc8 -> :sswitch_3
        0xc9 -> :sswitch_4
        0xcb -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public decrementNumUpdates()V
    .locals 2

    .prologue
    .line 468
    iget v0, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    .line 469
    iget v0, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    .line 471
    :cond_0
    iget v0, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    if-gez v0, :cond_1

    .line 472
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    .line 474
    :cond_1
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 601
    const/4 v0, 0x0

    return v0
.end method

.method public getExpireAt()J
    .locals 2

    .prologue
    .line 433
    iget-wide v0, p0, Landroid/location/LocationRequest;->mExpireAt:J

    return-wide v0
.end method

.method public getFastestInterval()J
    .locals 2

    .prologue
    .line 371
    iget-wide v0, p0, Landroid/location/LocationRequest;->mFastestInterval:J

    return-wide v0
.end method

.method public getHideFromAppOps()Z
    .locals 1

    .prologue
    .line 540
    iget-boolean v0, p0, Landroid/location/LocationRequest;->mHideFromAppOps:Z

    return v0
.end method

.method public getInterval()J
    .locals 2

    .prologue
    .line 322
    iget-wide v0, p0, Landroid/location/LocationRequest;->mInterval:J

    return-wide v0
.end method

.method public getNumUpdates()I
    .locals 1

    .prologue
    .line 463
    iget v0, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    return v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    return-object v0
.end method

.method public getQuality()I
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Landroid/location/LocationRequest;->mQuality:I

    return v0
.end method

.method public getSmallestDisplacement()F
    .locals 1

    .prologue
    .line 498
    iget v0, p0, Landroid/location/LocationRequest;->mSmallestDisplacement:F

    return v0
.end method

.method public getWorkSource()Landroid/os/WorkSource;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    return-object v0
.end method

.method public setExpireAt(J)Landroid/location/LocationRequest;
    .locals 4
    .param p1, "millis"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 419
    iput-wide p1, p0, Landroid/location/LocationRequest;->mExpireAt:J

    .line 420
    iget-wide v0, p0, Landroid/location/LocationRequest;->mExpireAt:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iput-wide v2, p0, Landroid/location/LocationRequest;->mExpireAt:J

    .line 421
    :cond_0
    return-object p0
.end method

.method public setExpireIn(J)Landroid/location/LocationRequest;
    .locals 8
    .param p1, "millis"    # J

    .prologue
    const-wide v6, 0x7fffffffffffffffL

    const-wide/16 v4, 0x0

    .line 391
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 394
    .local v0, "elapsedRealtime":J
    sub-long v2, v6, v0

    cmp-long v2, p1, v2

    if-lez v2, :cond_1

    .line 395
    iput-wide v6, p0, Landroid/location/LocationRequest;->mExpireAt:J

    .line 400
    :goto_0
    iget-wide v2, p0, Landroid/location/LocationRequest;->mExpireAt:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    iput-wide v4, p0, Landroid/location/LocationRequest;->mExpireAt:J

    .line 401
    :cond_0
    return-object p0

    .line 397
    :cond_1
    add-long v2, p1, v0

    iput-wide v2, p0, Landroid/location/LocationRequest;->mExpireAt:J

    goto :goto_0
.end method

.method public setFastestInterval(J)Landroid/location/LocationRequest;
    .locals 1
    .param p1, "millis"    # J

    .prologue
    .line 355
    invoke-static {p1, p2}, Landroid/location/LocationRequest;->checkInterval(J)V

    .line 356
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/location/LocationRequest;->mExplicitFastestInterval:Z

    .line 357
    iput-wide p1, p0, Landroid/location/LocationRequest;->mFastestInterval:J

    .line 358
    return-object p0
.end method

.method public setHideFromAppOps(Z)V
    .locals 0
    .param p1, "hideFromAppOps"    # Z

    .prologue
    .line 535
    iput-boolean p1, p0, Landroid/location/LocationRequest;->mHideFromAppOps:Z

    .line 536
    return-void
.end method

.method public setInterval(J)Landroid/location/LocationRequest;
    .locals 4
    .param p1, "millis"    # J

    .prologue
    .line 308
    invoke-static {p1, p2}, Landroid/location/LocationRequest;->checkInterval(J)V

    .line 309
    iput-wide p1, p0, Landroid/location/LocationRequest;->mInterval:J

    .line 310
    iget-boolean v0, p0, Landroid/location/LocationRequest;->mExplicitFastestInterval:Z

    if-nez v0, :cond_0

    .line 311
    iget-wide v0, p0, Landroid/location/LocationRequest;->mInterval:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    div-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Landroid/location/LocationRequest;->mFastestInterval:J

    .line 313
    :cond_0
    return-object p0
.end method

.method public setNumUpdates(I)Landroid/location/LocationRequest;
    .locals 3
    .param p1, "numUpdates"    # I

    .prologue
    .line 450
    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid numUpdates: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 451
    :cond_0
    iput p1, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    .line 452
    return-object p0
.end method

.method public setProvider(Ljava/lang/String;)Landroid/location/LocationRequest;
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 479
    invoke-static {p1}, Landroid/location/LocationRequest;->checkProvider(Ljava/lang/String;)V

    .line 480
    iput-object p1, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    .line 481
    return-object p0
.end method

.method public setQuality(I)Landroid/location/LocationRequest;
    .locals 0
    .param p1, "quality"    # I

    .prologue
    .line 265
    invoke-static {p1}, Landroid/location/LocationRequest;->checkQuality(I)V

    .line 266
    iput p1, p0, Landroid/location/LocationRequest;->mQuality:I

    .line 267
    return-object p0
.end method

.method public setSmallestDisplacement(F)Landroid/location/LocationRequest;
    .locals 0
    .param p1, "meters"    # F

    .prologue
    .line 491
    invoke-static {p1}, Landroid/location/LocationRequest;->checkDisplacement(F)V

    .line 492
    iput p1, p0, Landroid/location/LocationRequest;->mSmallestDisplacement:F

    .line 493
    return-object p0
.end method

.method public setWorkSource(Landroid/os/WorkSource;)V
    .locals 0
    .param p1, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 512
    iput-object p1, p0, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    .line 513
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 639
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 640
    .local v2, "s":Ljava/lang/StringBuilder;
    const-string v3, "Request["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/location/LocationRequest;->mQuality:I

    invoke-static {v4}, Landroid/location/LocationRequest;->qualityToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    iget-object v3, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    if-eqz v3, :cond_0

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    :cond_0
    iget v3, p0, Landroid/location/LocationRequest;->mQuality:I

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_1

    .line 643
    const-string v3, " requested="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    iget-wide v3, p0, Landroid/location/LocationRequest;->mInterval:J

    invoke-static {v3, v4, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 646
    :cond_1
    const-string v3, " fastest="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    iget-wide v3, p0, Landroid/location/LocationRequest;->mFastestInterval:J

    invoke-static {v3, v4, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 648
    iget-wide v3, p0, Landroid/location/LocationRequest;->mExpireAt:J

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    .line 649
    iget-wide v3, p0, Landroid/location/LocationRequest;->mExpireAt:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long v0, v3, v5

    .line 650
    .local v0, "expireIn":J
    const-string v3, " expireIn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 653
    .end local v0    # "expireIn":J
    :cond_2
    iget v3, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    const v4, 0x7fffffff

    if-eq v3, v4, :cond_3

    .line 654
    const-string v3, " num="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 656
    :cond_3
    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 657
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 606
    iget v0, p0, Landroid/location/LocationRequest;->mQuality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 607
    iget-wide v2, p0, Landroid/location/LocationRequest;->mFastestInterval:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 608
    iget-wide v2, p0, Landroid/location/LocationRequest;->mInterval:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 609
    iget-wide v2, p0, Landroid/location/LocationRequest;->mExpireAt:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 610
    iget v0, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 611
    iget v0, p0, Landroid/location/LocationRequest;->mSmallestDisplacement:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 612
    iget-boolean v0, p0, Landroid/location/LocationRequest;->mHideFromAppOps:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 613
    iget-object v0, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 614
    iget-object v0, p0, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 615
    return-void

    :cond_0
    move v0, v1

    .line 612
    goto :goto_0
.end method
