.class public Landroid/media/videoeditor/WaveformData;
.super Ljava/lang/Object;
.source "WaveformData.java"


# instance fields
.field private final mFrameDurationMs:I

.field private final mFramesCount:I

.field private final mGains:[S


# direct methods
.method private constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput v0, p0, Landroid/media/videoeditor/WaveformData;->mFrameDurationMs:I

    .line 45
    iput v0, p0, Landroid/media/videoeditor/WaveformData;->mFramesCount:I

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/videoeditor/WaveformData;->mGains:[S

    .line 47
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 11
    .param p1, "audioWaveformFilename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    if-nez p1, :cond_0

    .line 69
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "WaveformData : filename is null"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 72
    :cond_0
    const/4 v1, 0x0

    .line 75
    .local v1, "audioGraphFileReadHandle":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    .local v0, "audioGraphFileContext":Ljava/io/File;
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    .end local v1    # "audioGraphFileReadHandle":Ljava/io/FileInputStream;
    .local v2, "audioGraphFileReadHandle":Ljava/io/FileInputStream;
    const/4 v8, 0x4

    :try_start_1
    new-array v4, v8, [B

    .line 83
    .local v4, "tempFrameDuration":[B
    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-virtual {v2, v4, v8, v9}, Ljava/io/FileInputStream;->read([BII)I

    .line 85
    const/4 v5, 0x0

    .line 86
    .local v5, "tempFrameDurationMs":I
    const/4 v7, 0x0

    .line 87
    .local v7, "tempFramesCounter":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v10, :cond_1

    .line 88
    shl-int/lit8 v5, v5, 0x8

    .line 89
    aget-byte v8, v4, v3

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v5, v8

    .line 87
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 91
    :cond_1
    iput v5, p0, Landroid/media/videoeditor/WaveformData;->mFrameDurationMs:I

    .line 96
    const/4 v8, 0x4

    new-array v6, v8, [B

    .line 98
    .local v6, "tempFramesCount":[B
    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-virtual {v2, v6, v8, v9}, Ljava/io/FileInputStream;->read([BII)I

    .line 99
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v10, :cond_2

    .line 100
    shl-int/lit8 v7, v7, 0x8

    .line 101
    aget-byte v8, v6, v3

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    .line 99
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 103
    :cond_2
    iput v7, p0, Landroid/media/videoeditor/WaveformData;->mFramesCount:I

    .line 108
    iget v8, p0, Landroid/media/videoeditor/WaveformData;->mFramesCount:I

    new-array v8, v8, [S

    iput-object v8, p0, Landroid/media/videoeditor/WaveformData;->mGains:[S

    .line 110
    const/4 v3, 0x0

    :goto_2
    iget v8, p0, Landroid/media/videoeditor/WaveformData;->mFramesCount:I

    if-ge v3, v8, :cond_3

    .line 111
    iget-object v8, p0, Landroid/media/videoeditor/WaveformData;->mGains:[S

    invoke-virtual {v2}, Ljava/io/FileInputStream;->read()I

    move-result v9

    int-to-short v9, v9

    aput-short v9, v8, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 110
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 114
    :cond_3
    if-eqz v2, :cond_4

    .line 115
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 118
    :cond_4
    return-void

    .line 114
    .end local v0    # "audioGraphFileContext":Ljava/io/File;
    .end local v2    # "audioGraphFileReadHandle":Ljava/io/FileInputStream;
    .end local v3    # "i":I
    .end local v4    # "tempFrameDuration":[B
    .end local v5    # "tempFrameDurationMs":I
    .end local v6    # "tempFramesCount":[B
    .end local v7    # "tempFramesCounter":I
    .restart local v1    # "audioGraphFileReadHandle":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v8

    :goto_3
    if-eqz v1, :cond_5

    .line 115
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_5
    throw v8

    .line 114
    .end local v1    # "audioGraphFileReadHandle":Ljava/io/FileInputStream;
    .restart local v0    # "audioGraphFileContext":Ljava/io/File;
    .restart local v2    # "audioGraphFileReadHandle":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v1, v2

    .end local v2    # "audioGraphFileReadHandle":Ljava/io/FileInputStream;
    .restart local v1    # "audioGraphFileReadHandle":Ljava/io/FileInputStream;
    goto :goto_3
.end method


# virtual methods
.method public getFrameDuration()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Landroid/media/videoeditor/WaveformData;->mFrameDurationMs:I

    return v0
.end method

.method public getFrameGains()[S
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Landroid/media/videoeditor/WaveformData;->mGains:[S

    return-object v0
.end method

.method public getFramesCount()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Landroid/media/videoeditor/WaveformData;->mFramesCount:I

    return v0
.end method
