.class public final Landroid/media/MediaMuxer;
.super Ljava/lang/Object;
.source "MediaMuxer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaMuxer$OutputFormat;
    }
.end annotation


# static fields
.field private static final MUXER_STATE_INITIALIZED:I = 0x0

.field private static final MUXER_STATE_STARTED:I = 0x1

.field private static final MUXER_STATE_STOPPED:I = 0x2

.field private static final MUXER_STATE_UNINITIALIZED:I = -0x1


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mLastTrackIndex:I

.field private mNativeContext:I

.field private mNativeObject:I

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "format"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput v5, p0, Landroid/media/MediaMuxer;->mState:I

    .line 108
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v4

    iput-object v4, p0, Landroid/media/MediaMuxer;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 109
    iput v5, p0, Landroid/media/MediaMuxer;->mLastTrackIndex:I

    .line 122
    if-nez p1, :cond_0

    .line 123
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "path must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 125
    :cond_0
    if-eqz p2, :cond_1

    .line 126
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "format is invalid"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 128
    :cond_1
    const/4 v2, 0x0

    .line 130
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 131
    .local v1, "file":Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 133
    .local v0, "fd":Ljava/io/FileDescriptor;
    invoke-static {v0, p2}, Landroid/media/MediaMuxer;->nativeSetup(Ljava/io/FileDescriptor;I)I

    move-result v4

    iput v4, p0, Landroid/media/MediaMuxer;->mNativeObject:I

    .line 134
    const/4 v4, 0x0

    iput v4, p0, Landroid/media/MediaMuxer;->mState:I

    .line 135
    iget-object v4, p0, Landroid/media/MediaMuxer;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v5, "release"

    invoke-virtual {v4, v5}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 137
    if-eqz v3, :cond_2

    .line 138
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 141
    :cond_2
    return-void

    .line 137
    .end local v0    # "fd":Ljava/io/FileDescriptor;
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v4

    :goto_0
    if-eqz v2, :cond_3

    .line 138
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_3
    throw v4

    .line 137
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method private static native nativeAddTrack(I[Ljava/lang/String;[Ljava/lang/Object;)I
.end method

.method private static native nativeRelease(I)V
.end method

.method private static native nativeSetLocation(III)V
.end method

.method private static native nativeSetOrientationHint(II)V
.end method

.method private static native nativeSetup(Ljava/io/FileDescriptor;I)I
.end method

.method private static native nativeStart(I)V
.end method

.method private static native nativeStop(I)V
.end method

.method private static native nativeWriteSampleData(IILjava/nio/ByteBuffer;IIJI)V
.end method


# virtual methods
.method public addTrack(Landroid/media/MediaFormat;)I
    .locals 10
    .param p1, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 255
    if-nez p1, :cond_0

    .line 256
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "format must not be null."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 258
    :cond_0
    iget v8, p0, Landroid/media/MediaMuxer;->mState:I

    if-eqz v8, :cond_1

    .line 259
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "Muxer is not initialized."

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 261
    :cond_1
    iget v8, p0, Landroid/media/MediaMuxer;->mNativeObject:I

    if-nez v8, :cond_2

    .line 262
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "Muxer has been released!"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 264
    :cond_2
    const/4 v6, -0x1

    .line 266
    .local v6, "trackIndex":I
    invoke-virtual {p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object v1

    .line 268
    .local v1, "formatMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v4, 0x0

    .line 269
    .local v4, "keys":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 270
    .local v7, "values":[Ljava/lang/Object;
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v5

    .line 271
    .local v5, "mapSize":I
    if-lez v5, :cond_4

    .line 272
    new-array v4, v5, [Ljava/lang/String;

    .line 273
    new-array v7, v5, [Ljava/lang/Object;

    .line 274
    const/4 v2, 0x0

    .line 275
    .local v2, "i":I
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 276
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v4, v2

    .line 277
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v7, v2

    .line 278
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 280
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    iget v8, p0, Landroid/media/MediaMuxer;->mNativeObject:I

    invoke-static {v8, v4, v7}, Landroid/media/MediaMuxer;->nativeAddTrack(I[Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v6

    .line 287
    iget v8, p0, Landroid/media/MediaMuxer;->mLastTrackIndex:I

    if-lt v8, v6, :cond_5

    .line 288
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Invalid format."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 282
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_4
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "format must not be empty."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 290
    .restart local v2    # "i":I
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_5
    iput v6, p0, Landroid/media/MediaMuxer;->mLastTrackIndex:I

    .line 291
    return v6
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 236
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaMuxer;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Landroid/media/MediaMuxer;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 239
    :cond_0
    iget v0, p0, Landroid/media/MediaMuxer;->mNativeObject:I

    if-eqz v0, :cond_1

    .line 240
    iget v0, p0, Landroid/media/MediaMuxer;->mNativeObject:I

    invoke-static {v0}, Landroid/media/MediaMuxer;->nativeRelease(I)V

    .line 241
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaMuxer;->mNativeObject:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 246
    return-void

    .line 244
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 345
    iget v0, p0, Landroid/media/MediaMuxer;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 346
    invoke-virtual {p0}, Landroid/media/MediaMuxer;->stop()V

    .line 348
    :cond_0
    iget v0, p0, Landroid/media/MediaMuxer;->mNativeObject:I

    if-eqz v0, :cond_1

    .line 349
    iget v0, p0, Landroid/media/MediaMuxer;->mNativeObject:I

    invoke-static {v0}, Landroid/media/MediaMuxer;->nativeRelease(I)V

    .line 350
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaMuxer;->mNativeObject:I

    .line 351
    iget-object v0, p0, Landroid/media/MediaMuxer;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 353
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/MediaMuxer;->mState:I

    .line 354
    return-void
.end method

.method public setLocation(FF)V
    .locals 8
    .param p1, "latitude"    # F
    .param p2, "longitude"    # F

    .prologue
    const v7, 0x461c4000    # 10000.0f

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    .line 184
    mul-float v3, p1, v7

    float-to-double v3, v3

    add-double/2addr v3, v5

    double-to-int v0, v3

    .line 185
    .local v0, "latitudex10000":I
    mul-float v3, p2, v7

    float-to-double v3, v3

    add-double/2addr v3, v5

    double-to-int v1, v3

    .line 187
    .local v1, "longitudex10000":I
    const v3, 0xdbba0

    if-gt v0, v3, :cond_0

    const v3, -0xdbba0

    if-ge v0, v3, :cond_1

    .line 188
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Latitude: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " out of range."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 191
    .end local v2    # "msg":Ljava/lang/String;
    :cond_1
    const v3, 0x1b7740

    if-gt v1, v3, :cond_2

    const v3, -0x1b7740

    if-ge v1, v3, :cond_3

    .line 192
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Longitude: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " out of range"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 193
    .restart local v2    # "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 196
    .end local v2    # "msg":Ljava/lang/String;
    :cond_3
    iget v3, p0, Landroid/media/MediaMuxer;->mState:I

    if-nez v3, :cond_4

    iget v3, p0, Landroid/media/MediaMuxer;->mNativeObject:I

    if-eqz v3, :cond_4

    .line 197
    iget v3, p0, Landroid/media/MediaMuxer;->mNativeObject:I

    invoke-static {v3, v0, v1}, Landroid/media/MediaMuxer;->nativeSetLocation(III)V

    .line 201
    return-void

    .line 199
    :cond_4
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Can\'t set location due to wrong state."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setOrientationHint(I)V
    .locals 3
    .param p1, "degrees"    # I

    .prologue
    .line 157
    if-eqz p1, :cond_0

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x10e

    if-eq p1, v0, :cond_0

    .line 158
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported angle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_0
    iget v0, p0, Landroid/media/MediaMuxer;->mState:I

    if-nez v0, :cond_1

    .line 161
    iget v0, p0, Landroid/media/MediaMuxer;->mNativeObject:I

    invoke-static {v0, p1}, Landroid/media/MediaMuxer;->nativeSetOrientationHint(II)V

    .line 166
    return-void

    .line 163
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t set rotation degrees due to wrong state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 209
    iget v0, p0, Landroid/media/MediaMuxer;->mNativeObject:I

    if-nez v0, :cond_0

    .line 210
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Muxer has been released!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_0
    iget v0, p0, Landroid/media/MediaMuxer;->mState:I

    if-nez v0, :cond_1

    .line 213
    iget v0, p0, Landroid/media/MediaMuxer;->mNativeObject:I

    invoke-static {v0}, Landroid/media/MediaMuxer;->nativeStart(I)V

    .line 214
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/MediaMuxer;->mState:I

    .line 218
    return-void

    .line 216
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t start due to wrong state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 225
    iget v0, p0, Landroid/media/MediaMuxer;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 226
    iget v0, p0, Landroid/media/MediaMuxer;->mNativeObject:I

    invoke-static {v0}, Landroid/media/MediaMuxer;->nativeStop(I)V

    .line 227
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/MediaMuxer;->mState:I

    .line 231
    return-void

    .line 229
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t stop due to wrong state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 8
    .param p1, "trackIndex"    # I
    .param p2, "byteBuf"    # Ljava/nio/ByteBuffer;
    .param p3, "bufferInfo"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    .line 308
    if-ltz p1, :cond_0

    iget v0, p0, Landroid/media/MediaMuxer;->mLastTrackIndex:I

    if-le p1, v0, :cond_1

    .line 309
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "trackIndex is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_1
    if-nez p2, :cond_2

    .line 313
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "byteBuffer must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_2
    if-nez p3, :cond_3

    .line 317
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bufferInfo must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :cond_3
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ltz v0, :cond_4

    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    if-ltz v0, :cond_4

    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v1, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v0, v1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-gt v0, v1, :cond_4

    iget-wide v0, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_5

    .line 322
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bufferInfo must specify a valid buffer offset, size and presentation time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_5
    iget v0, p0, Landroid/media/MediaMuxer;->mNativeObject:I

    if-nez v0, :cond_6

    .line 327
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Muxer has been released!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_6
    iget v0, p0, Landroid/media/MediaMuxer;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    .line 331
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t write, muxer is not started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :cond_7
    iget v0, p0, Landroid/media/MediaMuxer;->mNativeObject:I

    iget v3, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v4, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v5, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v7, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v7}, Landroid/media/MediaMuxer;->nativeWriteSampleData(IILjava/nio/ByteBuffer;IIJI)V

    .line 337
    return-void
.end method
