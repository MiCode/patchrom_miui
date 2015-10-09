.class public Landroid/os/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field private static final SAFE_FILENAME_PATTERN:Ljava/util/regex/Pattern;

.field public static final S_IRGRP:I = 0x20

.field public static final S_IROTH:I = 0x4

.field public static final S_IRUSR:I = 0x100

.field public static final S_IRWXG:I = 0x38

.field public static final S_IRWXO:I = 0x7

.field public static final S_IRWXU:I = 0x1c0

.field public static final S_IWGRP:I = 0x10

.field public static final S_IWOTH:I = 0x2

.field public static final S_IWUSR:I = 0x80

.field public static final S_IXGRP:I = 0x8

.field public static final S_IXOTH:I = 0x1

.field public static final S_IXUSR:I = 0x40

.field private static final TAG:Ljava/lang/String; = "FileUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-string v0, "[\\w%+,./=_-]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/os/FileUtils;->SAFE_FILENAME_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checksumCrc32(Ljava/io/File;)J
    .locals 7
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 305
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    .line 306
    .local v1, "checkSummer":Ljava/util/zip/CRC32;
    const/4 v2, 0x0

    .line 309
    .local v2, "cis":Ljava/util/zip/CheckedInputStream;
    :try_start_0
    new-instance v3, Ljava/util/zip/CheckedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4, v1}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    .end local v2    # "cis":Ljava/util/zip/CheckedInputStream;
    .local v3, "cis":Ljava/util/zip/CheckedInputStream;
    const/16 v4, 0x80

    :try_start_1
    new-array v0, v4, [B

    .line 311
    .local v0, "buf":[B
    :cond_0
    invoke-virtual {v3, v0}, Ljava/util/zip/CheckedInputStream;->read([B)I

    move-result v4

    if-gez v4, :cond_0

    .line 314
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v4

    .line 316
    if-eqz v3, :cond_1

    .line 318
    :try_start_2
    invoke-virtual {v3}, Ljava/util/zip/CheckedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 320
    :cond_1
    :goto_0
    return-wide v4

    .line 316
    .end local v0    # "buf":[B
    .end local v3    # "cis":Ljava/util/zip/CheckedInputStream;
    .restart local v2    # "cis":Ljava/util/zip/CheckedInputStream;
    :catchall_0
    move-exception v4

    :goto_1
    if-eqz v2, :cond_2

    .line 318
    :try_start_3
    invoke-virtual {v2}, Ljava/util/zip/CheckedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 320
    :cond_2
    :goto_2
    throw v4

    .line 319
    .end local v2    # "cis":Ljava/util/zip/CheckedInputStream;
    .restart local v0    # "buf":[B
    .restart local v3    # "cis":Ljava/util/zip/CheckedInputStream;
    :catch_0
    move-exception v6

    goto :goto_0

    .end local v0    # "buf":[B
    .end local v3    # "cis":Ljava/util/zip/CheckedInputStream;
    .restart local v2    # "cis":Ljava/util/zip/CheckedInputStream;
    :catch_1
    move-exception v5

    goto :goto_2

    .line 316
    .end local v2    # "cis":Ljava/util/zip/CheckedInputStream;
    .restart local v3    # "cis":Ljava/util/zip/CheckedInputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "cis":Ljava/util/zip/CheckedInputStream;
    .restart local v2    # "cis":Ljava/util/zip/CheckedInputStream;
    goto :goto_1
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 4
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "destFile"    # Ljava/io/File;

    .prologue
    .line 165
    const/4 v2, 0x0

    .line 167
    .local v2, "result":Z
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .local v1, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v1, p1}, Landroid/os/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 171
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 176
    .end local v1    # "in":Ljava/io/InputStream;
    :goto_0
    return v2

    .line 171
    .restart local v1    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 173
    .end local v1    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 7
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "destFile"    # Ljava/io/File;

    .prologue
    const/4 v4, 0x0

    .line 185
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 186
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 188
    :cond_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .local v3, "out":Ljava/io/FileOutputStream;
    const/16 v5, 0x1000

    :try_start_1
    new-array v0, v5, [B

    .line 192
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "bytesRead":I
    if-ltz v1, :cond_1

    .line 193
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 196
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    :catchall_0
    move-exception v5

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 198
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/FileDescriptor;->sync()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 201
    :goto_1
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    throw v5

    .line 204
    .end local v3    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 205
    :goto_2
    return v4

    .line 196
    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :cond_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 198
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/FileDescriptor;->sync()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 201
    :goto_3
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 203
    const/4 v4, 0x1

    goto :goto_2

    .line 199
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    :catch_1
    move-exception v6

    goto :goto_1

    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    :catch_2
    move-exception v5

    goto :goto_3
.end method

.method public static deleteOlderFiles(Ljava/io/File;IJ)V
    .locals 9
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "minCount"    # I
    .param p2, "minAge"    # J

    .prologue
    .line 333
    if-ltz p1, :cond_0

    const-wide/16 v5, 0x0

    cmp-long v5, p2, v5

    if-gez v5, :cond_1

    .line 334
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Constraints must be positive or 0"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 337
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 338
    .local v3, "files":[Ljava/io/File;
    if-nez v3, :cond_3

    .line 359
    :cond_2
    return-void

    .line 341
    :cond_3
    new-instance v5, Landroid/os/FileUtils$1;

    invoke-direct {v5}, Landroid/os/FileUtils$1;-><init>()V

    invoke-static {v3, v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 349
    move v4, p1

    .local v4, "i":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_2

    .line 350
    aget-object v2, v3, v4

    .line 353
    .local v2, "file":Ljava/io/File;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    sub-long v0, v5, v7

    .line 354
    .local v0, "age":J
    cmp-long v5, v0, p2

    if-lez v5, :cond_4

    .line 355
    const-string v5, "FileUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Deleting old file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 349
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static getUid(Ljava/lang/String;)I
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 141
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v1, p0}, Llibcore/io/Os;->stat(Ljava/lang/String;)Llibcore/io/StructStat;

    move-result-object v1

    iget v1, v1, Llibcore/io/StructStat;->st_uid:I
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    return v1

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Llibcore/io/ErrnoException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static isFilenameSafe(Ljava/io/File;)Z
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 217
    sget-object v0, Landroid/os/FileUtils;->SAFE_FILENAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p0, "file"    # Ljava/io/File;
    .param p1, "max"    # I
    .param p2, "ellipsis"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 233
    .local v4, "input":Ljava/io/InputStream;
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 235
    .local v1, "bis":Ljava/io/BufferedInputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v9

    .line 236
    .local v9, "size":J
    if-gtz p1, :cond_0

    const-wide/16 v12, 0x0

    cmp-long v12, v9, v12

    if-lez v12, :cond_6

    if-nez p1, :cond_6

    .line 237
    :cond_0
    const-wide/16 v12, 0x0

    cmp-long v12, v9, v12

    if-lez v12, :cond_2

    if-eqz p1, :cond_1

    move/from16 v0, p1

    int-to-long v12, v0

    cmp-long v12, v9, v12

    if-gez v12, :cond_2

    :cond_1
    long-to-int v0, v9

    move/from16 p1, v0

    .line 238
    :cond_2
    add-int/lit8 v12, p1, 0x1

    new-array v3, v12, [B

    .line 239
    .local v3, "data":[B
    invoke-virtual {v1, v3}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v7

    .line 240
    .local v7, "length":I
    if-gtz v7, :cond_3

    const-string v12, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 277
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .end local v7    # "length":I
    :goto_0
    return-object v12

    .line 241
    .restart local v7    # "length":I
    :cond_3
    move/from16 v0, p1

    if-gt v7, v0, :cond_4

    :try_start_1
    new-instance v12, Ljava/lang/String;

    const/4 v13, 0x0

    invoke-direct {v12, v3, v13, v7}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 277
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 242
    :cond_4
    if-nez p2, :cond_5

    :try_start_2
    new-instance v12, Ljava/lang/String;

    const/4 v13, 0x0

    move/from16 v0, p1

    invoke-direct {v12, v3, v13, v0}, Ljava/lang/String;-><init>([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 276
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 277
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 243
    :cond_5
    :try_start_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v13, Ljava/lang/String;

    const/4 v14, 0x0

    move/from16 v0, p1

    invoke-direct {v13, v3, v14, v0}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v12

    .line 276
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 277
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 244
    .end local v3    # "data":[B
    .end local v7    # "length":I
    :cond_6
    if-gez p1, :cond_f

    .line 246
    const/4 v8, 0x0

    .line 247
    .local v8, "rolled":Z
    const/4 v5, 0x0

    .line 248
    .local v5, "last":[B
    const/4 v3, 0x0

    .line 250
    .restart local v3    # "data":[B
    :cond_7
    if-eqz v5, :cond_8

    const/4 v8, 0x1

    .line 251
    :cond_8
    move-object v11, v5

    .local v11, "tmp":[B
    move-object v5, v3

    move-object v3, v11

    .line 252
    if-nez v3, :cond_9

    move/from16 v0, p1

    neg-int v12, v0

    :try_start_4
    new-array v3, v12, [B

    .line 253
    :cond_9
    invoke-virtual {v1, v3}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    .line 254
    .local v6, "len":I
    array-length v12, v3

    if-eq v6, v12, :cond_7

    .line 256
    if-nez v5, :cond_a

    if-gtz v6, :cond_a

    const-string v12, ""
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 276
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 277
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 257
    :cond_a
    if-nez v5, :cond_b

    :try_start_5
    new-instance v12, Ljava/lang/String;

    const/4 v13, 0x0

    invoke-direct {v12, v3, v13, v6}, Ljava/lang/String;-><init>([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 276
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 277
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 258
    :cond_b
    if-lez v6, :cond_c

    .line 259
    const/4 v8, 0x1

    .line 260
    const/4 v12, 0x0

    :try_start_6
    array-length v13, v5

    sub-int/2addr v13, v6

    invoke-static {v5, v6, v5, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 261
    const/4 v12, 0x0

    array-length v13, v5

    sub-int/2addr v13, v6

    invoke-static {v3, v12, v5, v13, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 263
    :cond_c
    if-eqz p2, :cond_d

    if-nez v8, :cond_e

    :cond_d
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v5}, Ljava/lang/String;-><init>([B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 276
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 277
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto/16 :goto_0

    .line 264
    :cond_e
    :try_start_7
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v12

    .line 276
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 277
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto/16 :goto_0

    .line 266
    .end local v3    # "data":[B
    .end local v5    # "last":[B
    .end local v6    # "len":I
    .end local v8    # "rolled":Z
    .end local v11    # "tmp":[B
    :cond_f
    :try_start_8
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 268
    .local v2, "contents":Ljava/io/ByteArrayOutputStream;
    const/16 v12, 0x400

    new-array v3, v12, [B

    .line 270
    .restart local v3    # "data":[B
    :cond_10
    invoke-virtual {v1, v3}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    .line 271
    .restart local v6    # "len":I
    if-lez v6, :cond_11

    const/4 v12, 0x0

    invoke-virtual {v2, v3, v12, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 272
    :cond_11
    array-length v12, v3

    if-eq v6, v12, :cond_10

    .line 273
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v12

    .line 276
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 277
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto/16 :goto_0

    .line 276
    .end local v2    # "contents":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "data":[B
    .end local v6    # "len":I
    .end local v9    # "size":J
    :catchall_0
    move-exception v12

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 277
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    throw v12
.end method

.method public static setPermissions(Ljava/io/File;III)I
    .locals 1
    .param p0, "path"    # Ljava/io/File;
    .param p1, "mode"    # I
    .param p2, "uid"    # I
    .param p3, "gid"    # I

    .prologue
    .line 77
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    move-result v0

    return v0
.end method

.method public static setPermissions(Ljava/io/FileDescriptor;III)I
    .locals 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "mode"    # I
    .param p2, "uid"    # I
    .param p3, "gid"    # I

    .prologue
    .line 118
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v1, p0, p1}, Llibcore/io/Os;->fchmod(Ljava/io/FileDescriptor;I)V
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    if-gez p2, :cond_0

    if-ltz p3, :cond_1

    .line 126
    :cond_0
    :try_start_1
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v1, p0, p2, p3}, Llibcore/io/Os;->fchown(Ljava/io/FileDescriptor;II)V
    :try_end_1
    .catch Llibcore/io/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1

    .line 133
    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Llibcore/io/ErrnoException;
    const-string v1, "FileUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to fchmod(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget v1, v0, Llibcore/io/ErrnoException;->errno:I

    goto :goto_0

    .line 127
    .end local v0    # "e":Llibcore/io/ErrnoException;
    :catch_1
    move-exception v0

    .line 128
    .restart local v0    # "e":Llibcore/io/ErrnoException;
    const-string v1, "FileUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to fchown(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget v1, v0, Llibcore/io/ErrnoException;->errno:I

    goto :goto_0
.end method

.method public static setPermissions(Ljava/lang/String;III)I
    .locals 4
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "mode"    # I
    .param p2, "uid"    # I
    .param p3, "gid"    # I

    .prologue
    .line 90
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v1, p0, p1}, Llibcore/io/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    if-gez p2, :cond_0

    if-ltz p3, :cond_1

    .line 98
    :cond_0
    :try_start_1
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v1, p0, p2, p3}, Llibcore/io/Os;->chown(Ljava/lang/String;II)V
    :try_end_1
    .catch Llibcore/io/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1

    .line 105
    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Llibcore/io/ErrnoException;
    const-string v1, "FileUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to chmod("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget v1, v0, Llibcore/io/ErrnoException;->errno:I

    goto :goto_0

    .line 99
    .end local v0    # "e":Llibcore/io/ErrnoException;
    :catch_1
    move-exception v0

    .line 100
    .restart local v0    # "e":Llibcore/io/ErrnoException;
    const-string v1, "FileUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to chown("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget v1, v0, Llibcore/io/ErrnoException;->errno:I

    goto :goto_0
.end method

.method public static stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 289
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 291
    .local v0, "out":Ljava/io/FileWriter;
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    .line 295
    return-void

    .line 293
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    throw v1
.end method

.method public static sync(Ljava/io/FileOutputStream;)Z
    .locals 1
    .param p0, "stream"    # Ljava/io/FileOutputStream;

    .prologue
    .line 153
    if-eqz p0, :cond_0

    .line 154
    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :cond_0
    const/4 v0, 0x1

    .line 159
    :goto_0
    return v0

    .line 157
    :catch_0
    move-exception v0

    .line 159
    const/4 v0, 0x0

    goto :goto_0
.end method
