.class public Landroid/media/ExifInterface;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# static fields
.field public static final ORIENTATION_FLIP_HORIZONTAL:I = 0x2

.field public static final ORIENTATION_FLIP_VERTICAL:I = 0x4

.field public static final ORIENTATION_NORMAL:I = 0x1

.field public static final ORIENTATION_ROTATE_180:I = 0x3

.field public static final ORIENTATION_ROTATE_270:I = 0x8

.field public static final ORIENTATION_ROTATE_90:I = 0x6

.field public static final ORIENTATION_TRANSPOSE:I = 0x5

.field public static final ORIENTATION_TRANSVERSE:I = 0x7

.field public static final ORIENTATION_UNDEFINED:I = 0x0

.field public static final TAG_APERTURE:Ljava/lang/String; = "FNumber"

.field public static final TAG_DATETIME:Ljava/lang/String; = "DateTime"

.field public static final TAG_EXPOSURE_TIME:Ljava/lang/String; = "ExposureTime"

.field public static final TAG_FLASH:Ljava/lang/String; = "Flash"

.field public static final TAG_FOCAL_LENGTH:Ljava/lang/String; = "FocalLength"

.field public static final TAG_GPS_ALTITUDE:Ljava/lang/String; = "GPSAltitude"

.field public static final TAG_GPS_ALTITUDE_REF:Ljava/lang/String; = "GPSAltitudeRef"

.field public static final TAG_GPS_DATESTAMP:Ljava/lang/String; = "GPSDateStamp"

.field public static final TAG_GPS_LATITUDE:Ljava/lang/String; = "GPSLatitude"

.field public static final TAG_GPS_LATITUDE_REF:Ljava/lang/String; = "GPSLatitudeRef"

.field public static final TAG_GPS_LONGITUDE:Ljava/lang/String; = "GPSLongitude"

.field public static final TAG_GPS_LONGITUDE_REF:Ljava/lang/String; = "GPSLongitudeRef"

.field public static final TAG_GPS_PROCESSING_METHOD:Ljava/lang/String; = "GPSProcessingMethod"

.field public static final TAG_GPS_TIMESTAMP:Ljava/lang/String; = "GPSTimeStamp"

.field public static final TAG_IMAGE_LENGTH:Ljava/lang/String; = "ImageLength"

.field public static final TAG_IMAGE_WIDTH:Ljava/lang/String; = "ImageWidth"

.field public static final TAG_ISO:Ljava/lang/String; = "ISOSpeedRatings"

.field public static final TAG_MAKE:Ljava/lang/String; = "Make"

.field public static final TAG_MODEL:Ljava/lang/String; = "Model"

.field public static final TAG_ORIENTATION:Ljava/lang/String; = "Orientation"

.field public static final TAG_WHITE_BALANCE:Ljava/lang/String; = "WhiteBalance"

.field public static final WHITEBALANCE_AUTO:I = 0x0

.field public static final WHITEBALANCE_MANUAL:I = 0x1

.field private static sFormatter:Ljava/text/SimpleDateFormat;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private mAttributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFilename:Ljava/lang/String;

.field private mHasThumbnail:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 101
    const-string v0, "jhead_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 102
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    .line 103
    sget-object v0, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 114
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/ExifInterface;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    if-nez p1, :cond_0

    .line 121
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "filename cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_0
    iput-object p1, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 124
    invoke-direct {p0}, Landroid/media/ExifInterface;->loadAttributes()V

    .line 125
    return-void
.end method

.method private native appendThumbnailNative(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native commitChangesNative(Ljava/lang/String;)V
.end method

.method private static convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F
    .locals 16
    .param p0, "rationalString"    # Ljava/lang/String;
    .param p1, "ref"    # Ljava/lang/String;

    .prologue
    .line 393
    :try_start_0
    const-string v12, ","

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 396
    .local v7, "parts":[Ljava/lang/String;
    const/4 v12, 0x0

    aget-object v12, v7, v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 397
    .local v6, "pair":[Ljava/lang/String;
    const/4 v12, 0x0

    aget-object v12, v6, v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    const/4 v14, 0x1

    aget-object v14, v6, v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    div-double v1, v12, v14

    .line 400
    .local v1, "degrees":D
    const/4 v12, 0x1

    aget-object v12, v7, v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 401
    const/4 v12, 0x0

    aget-object v12, v6, v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    const/4 v14, 0x1

    aget-object v14, v6, v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    div-double v4, v12, v14

    .line 404
    .local v4, "minutes":D
    const/4 v12, 0x2

    aget-object v12, v7, v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 405
    const/4 v12, 0x0

    aget-object v12, v6, v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    const/4 v14, 0x1

    aget-object v14, v6, v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    div-double v10, v12, v14

    .line 408
    .local v10, "seconds":D
    const-wide/high16 v12, 0x404e000000000000L    # 60.0

    div-double v12, v4, v12

    add-double/2addr v12, v1

    const-wide v14, 0x40ac200000000000L    # 3600.0

    div-double v14, v10, v14

    add-double v8, v12, v14

    .line 409
    .local v8, "result":D
    const-string v12, "S"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, "W"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v12

    if-eqz v12, :cond_1

    .line 410
    :cond_0
    neg-double v12, v8

    double-to-float v12, v12

    .line 412
    :goto_0
    return v12

    :cond_1
    double-to-float v12, v8

    goto :goto_0

    .line 413
    .end local v1    # "degrees":D
    .end local v4    # "minutes":D
    .end local v6    # "pair":[Ljava/lang/String;
    .end local v7    # "parts":[Ljava/lang/String;
    .end local v8    # "result":D
    .end local v10    # "seconds":D
    :catch_0
    move-exception v3

    .line 415
    .local v3, "e":Ljava/lang/NumberFormatException;
    new-instance v12, Ljava/lang/IllegalArgumentException;

    invoke-direct {v12}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v12

    .line 416
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v3

    .line 418
    .local v3, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v12, Ljava/lang/IllegalArgumentException;

    invoke-direct {v12}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v12
.end method

.method private native getAttributesNative(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native getThumbnailNative(Ljava/lang/String;)[B
.end method

.method private native getThumbnailRangeNative(Ljava/lang/String;)[J
.end method

.method private loadAttributes()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x20

    .line 203
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Landroid/media/ExifInterface;->mAttributes:Ljava/util/HashMap;

    .line 206
    sget-object v10, Landroid/media/ExifInterface;->sLock:Ljava/lang/Object;

    monitor-enter v10

    .line 207
    :try_start_0
    iget-object v9, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {p0, v9}, Landroid/media/ExifInterface;->getAttributesNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, "attrStr":Ljava/lang/String;
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    invoke-virtual {v2, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 212
    .local v8, "ptr":I
    const/4 v9, 0x0

    invoke-virtual {v2, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 214
    .local v4, "count":I
    add-int/lit8 v8, v8, 0x1

    .line 216
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v4, :cond_1

    .line 218
    const/16 v9, 0x3d

    invoke-virtual {v2, v9, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 219
    .local v5, "equalPos":I
    invoke-virtual {v2, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, "attrName":Ljava/lang/String;
    add-int/lit8 v8, v5, 0x1

    .line 223
    invoke-virtual {v2, v11, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 224
    .local v7, "lenPos":I
    invoke-virtual {v2, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 225
    .local v0, "attrLen":I
    add-int/lit8 v8, v7, 0x1

    .line 228
    add-int v9, v8, v0

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 229
    .local v3, "attrValue":Ljava/lang/String;
    add-int/2addr v8, v0

    .line 231
    const-string v9, "hasThumbnail"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 232
    const-string/jumbo v9, "true"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    .line 216
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 208
    .end local v0    # "attrLen":I
    .end local v1    # "attrName":Ljava/lang/String;
    .end local v2    # "attrStr":Ljava/lang/String;
    .end local v3    # "attrValue":Ljava/lang/String;
    .end local v4    # "count":I
    .end local v5    # "equalPos":I
    .end local v6    # "i":I
    .end local v7    # "lenPos":I
    .end local v8    # "ptr":I
    :catchall_0
    move-exception v9

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    .line 234
    .restart local v0    # "attrLen":I
    .restart local v1    # "attrName":Ljava/lang/String;
    .restart local v2    # "attrStr":Ljava/lang/String;
    .restart local v3    # "attrValue":Ljava/lang/String;
    .restart local v4    # "count":I
    .restart local v5    # "equalPos":I
    .restart local v6    # "i":I
    .restart local v7    # "lenPos":I
    .restart local v8    # "ptr":I
    :cond_0
    iget-object v9, p0, Landroid/media/ExifInterface;->mAttributes:Ljava/util/HashMap;

    invoke-virtual {v9, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 237
    .end local v0    # "attrLen":I
    .end local v1    # "attrName":Ljava/lang/String;
    .end local v3    # "attrValue":Ljava/lang/String;
    .end local v5    # "equalPos":I
    .end local v7    # "lenPos":I
    :cond_1
    return-void
.end method

.method private native saveAttributesNative(Ljava/lang/String;Ljava/lang/String;)V
.end method


# virtual methods
.method public getAltitude(D)D
    .locals 8
    .param p1, "defaultValue"    # D

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 338
    const-string v5, "GPSAltitude"

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-virtual {p0, v5, v6, v7}, Landroid/media/ExifInterface;->getAttributeDouble(Ljava/lang/String;D)D

    move-result-wide v0

    .line 339
    .local v0, "altitude":D
    const-string v5, "GPSAltitudeRef"

    invoke-virtual {p0, v5, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    .line 341
    .local v2, "ref":I
    const-wide/16 v5, 0x0

    cmpl-double v5, v0, v5

    if-ltz v5, :cond_0

    if-ltz v2, :cond_0

    .line 342
    if-ne v2, v4, :cond_1

    :goto_0
    int-to-double v3, v3

    mul-double p1, v0, v3

    .line 344
    .end local p1    # "defaultValue":D
    :cond_0
    return-wide p1

    .restart local p1    # "defaultValue":D
    :cond_1
    move v3, v4

    .line 342
    goto :goto_0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 134
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAttributeDouble(Ljava/lang/String;D)D
    .locals 9
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .prologue
    .line 164
    iget-object v7, p0, Landroid/media/ExifInterface;->mAttributes:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 165
    .local v6, "value":Ljava/lang/String;
    if-nez v6, :cond_1

    .line 174
    .end local p2    # "defaultValue":D
    :cond_0
    :goto_0
    return-wide p2

    .line 167
    .restart local p2    # "defaultValue":D
    :cond_1
    :try_start_0
    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 168
    .local v3, "index":I
    const/4 v7, -0x1

    if-eq v3, v7, :cond_0

    .line 169
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 170
    .local v0, "denom":D
    const-wide/16 v7, 0x0

    cmpl-double v7, v0, v7

    if-eqz v7, :cond_0

    .line 171
    const/4 v7, 0x0

    invoke-virtual {v6, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 172
    .local v4, "num":D
    div-double p2, v4, v0

    goto :goto_0

    .line 173
    .end local v0    # "denom":D
    .end local v3    # "index":I
    .end local v4    # "num":D
    :catch_0
    move-exception v2

    .line 174
    .local v2, "ex":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public getAttributeInt(Ljava/lang/String;I)I
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 146
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 147
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 151
    .end local p2    # "defaultValue":I
    :goto_0
    return p2

    .line 149
    .restart local p2    # "defaultValue":I
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "ex":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public getDateTime()J
    .locals 8

    .prologue
    const-wide/16 v4, -0x1

    .line 354
    iget-object v6, p0, Landroid/media/ExifInterface;->mAttributes:Ljava/util/HashMap;

    const-string v7, "DateTime"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 355
    .local v0, "dateTimeString":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 363
    :cond_0
    :goto_0
    return-wide v4

    .line 357
    :cond_1
    new-instance v3, Ljava/text/ParsePosition;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Ljava/text/ParsePosition;-><init>(I)V

    .line 359
    .local v3, "pos":Ljava/text/ParsePosition;
    :try_start_0
    sget-object v6, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v0, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v1

    .line 360
    .local v1, "datetime":Ljava/util/Date;
    if-eqz v1, :cond_0

    .line 361
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    goto :goto_0

    .line 362
    .end local v1    # "datetime":Ljava/util/Date;
    :catch_0
    move-exception v2

    .line 363
    .local v2, "ex":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method public getGpsDateTime()J
    .locals 10

    .prologue
    const-wide/16 v6, -0x1

    .line 373
    iget-object v8, p0, Landroid/media/ExifInterface;->mAttributes:Ljava/util/HashMap;

    const-string v9, "GPSDateStamp"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 374
    .local v0, "date":Ljava/lang/String;
    iget-object v8, p0, Landroid/media/ExifInterface;->mAttributes:Ljava/util/HashMap;

    const-string v9, "GPSTimeStamp"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 375
    .local v5, "time":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-nez v5, :cond_1

    .line 386
    :cond_0
    :goto_0
    return-wide v6

    .line 377
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 378
    .local v1, "dateTimeString":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 380
    new-instance v4, Ljava/text/ParsePosition;

    const/4 v8, 0x0

    invoke-direct {v4, v8}, Ljava/text/ParsePosition;-><init>(I)V

    .line 382
    .local v4, "pos":Ljava/text/ParsePosition;
    :try_start_0
    sget-object v8, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v8, v1, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v2

    .line 383
    .local v2, "datetime":Ljava/util/Date;
    if-eqz v2, :cond_0

    .line 384
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    goto :goto_0

    .line 385
    .end local v2    # "datetime":Ljava/util/Date;
    :catch_0
    move-exception v3

    .line 386
    .local v3, "ex":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method public getLatLong([F)Z
    .locals 8
    .param p1, "output"    # [F

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 313
    iget-object v6, p0, Landroid/media/ExifInterface;->mAttributes:Ljava/util/HashMap;

    const-string v7, "GPSLatitude"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 314
    .local v1, "latValue":Ljava/lang/String;
    iget-object v6, p0, Landroid/media/ExifInterface;->mAttributes:Ljava/util/HashMap;

    const-string v7, "GPSLatitudeRef"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 315
    .local v0, "latRef":Ljava/lang/String;
    iget-object v6, p0, Landroid/media/ExifInterface;->mAttributes:Ljava/util/HashMap;

    const-string v7, "GPSLongitude"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 316
    .local v3, "lngValue":Ljava/lang/String;
    iget-object v6, p0, Landroid/media/ExifInterface;->mAttributes:Ljava/util/HashMap;

    const-string v7, "GPSLongitudeRef"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 318
    .local v2, "lngRef":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 320
    const/4 v6, 0x0

    :try_start_0
    invoke-static {v1, v0}, Landroid/media/ExifInterface;->convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v7

    aput v7, p1, v6

    .line 321
    const/4 v6, 0x1

    invoke-static {v3, v2}, Landroid/media/ExifInterface;->convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v7

    aput v7, p1, v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :goto_0
    return v4

    .line 323
    :catch_0
    move-exception v4

    :cond_0
    move v4, v5

    .line 328
    goto :goto_0
.end method

.method public getThumbnail()[B
    .locals 2

    .prologue
    .line 288
    sget-object v1, Landroid/media/ExifInterface;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 289
    :try_start_0
    iget-object v0, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->getThumbnailNative(Ljava/lang/String;)[B

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getThumbnailRange()[J
    .locals 2

    .prologue
    .line 302
    sget-object v1, Landroid/media/ExifInterface;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 303
    :try_start_0
    iget-object v0, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->getThumbnailRangeNative(Ljava/lang/String;)[J

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 304
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasThumbnail()Z
    .locals 1

    .prologue
    .line 279
    iget-boolean v0, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    return v0
.end method

.method public saveAttributes()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    .local v4, "sb":Ljava/lang/StringBuilder;
    iget-object v7, p0, Landroid/media/ExifInterface;->mAttributes:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v5

    .line 253
    .local v5, "size":I
    iget-object v7, p0, Landroid/media/ExifInterface;->mAttributes:Ljava/util/HashMap;

    const-string v8, "hasThumbnail"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 254
    add-int/lit8 v5, v5, -0x1

    .line 256
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    iget-object v7, p0, Landroid/media/ExifInterface;->mAttributes:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 258
    .local v1, "iter":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 259
    .local v2, "key":Ljava/lang/String;
    const-string v7, "hasThumbnail"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 263
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 264
    .local v6, "val":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 268
    .end local v1    # "iter":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v6    # "val":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 269
    .local v3, "s":Ljava/lang/String;
    sget-object v8, Landroid/media/ExifInterface;->sLock:Ljava/lang/Object;

    monitor-enter v8

    .line 270
    :try_start_0
    iget-object v7, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {p0, v7, v3}, Landroid/media/ExifInterface;->saveAttributesNative(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v7, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {p0, v7}, Landroid/media/ExifInterface;->commitChangesNative(Ljava/lang/String;)V

    .line 272
    monitor-exit v8

    .line 273
    return-void

    .line 272
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 185
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    return-void
.end method
