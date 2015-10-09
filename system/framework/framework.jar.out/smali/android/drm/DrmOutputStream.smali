.class public Landroid/drm/DrmOutputStream;
.super Ljava/io/OutputStream;
.source "DrmOutputStream.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DrmOutputStream"


# instance fields
.field private final mClient:Landroid/drm/DrmManagerClient;

.field private final mFile:Ljava/io/RandomAccessFile;

.field private mSessionId:I


# direct methods
.method public constructor <init>(Landroid/drm/DrmManagerClient;Ljava/io/RandomAccessFile;Ljava/lang/String;)V
    .locals 3
    .param p1, "client"    # Landroid/drm/DrmManagerClient;
    .param p2, "file"    # Ljava/io/RandomAccessFile;
    .param p3, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 51
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 45
    iput v1, p0, Landroid/drm/DrmOutputStream;->mSessionId:I

    .line 52
    iput-object p1, p0, Landroid/drm/DrmOutputStream;->mClient:Landroid/drm/DrmManagerClient;

    .line 53
    iput-object p2, p0, Landroid/drm/DrmOutputStream;->mFile:Ljava/io/RandomAccessFile;

    .line 55
    iget-object v0, p0, Landroid/drm/DrmOutputStream;->mClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p3}, Landroid/drm/DrmManagerClient;->openConvertSession(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/drm/DrmOutputStream;->mSessionId:I

    .line 56
    iget v0, p0, Landroid/drm/DrmOutputStream;->mSessionId:I

    if-ne v0, v1, :cond_0

    .line 57
    new-instance v0, Ljava/net/UnknownServiceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to open DRM session for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    iget v0, p0, Landroid/drm/DrmOutputStream;->mSessionId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 75
    const-string v0, "DrmOutputStream"

    const-string v1, "Closing stream without finishing"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    iget-object v0, p0, Landroid/drm/DrmOutputStream;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 79
    return-void
.end method

.method public finish()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v1, p0, Landroid/drm/DrmOutputStream;->mClient:Landroid/drm/DrmManagerClient;

    iget v2, p0, Landroid/drm/DrmOutputStream;->mSessionId:I

    invoke-virtual {v1, v2}, Landroid/drm/DrmManagerClient;->closeConvertSession(I)Landroid/drm/DrmConvertedStatus;

    move-result-object v0

    .line 63
    .local v0, "status":Landroid/drm/DrmConvertedStatus;
    iget v1, v0, Landroid/drm/DrmConvertedStatus;->statusCode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 64
    iget-object v1, p0, Landroid/drm/DrmOutputStream;->mFile:Ljava/io/RandomAccessFile;

    iget v2, v0, Landroid/drm/DrmConvertedStatus;->offset:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 65
    iget-object v1, p0, Landroid/drm/DrmOutputStream;->mFile:Ljava/io/RandomAccessFile;

    iget-object v2, v0, Landroid/drm/DrmConvertedStatus;->convertedData:[B

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->write([B)V

    .line 66
    const/4 v1, -0x1

    iput v1, p0, Landroid/drm/DrmOutputStream;->mSessionId:I

    .line 70
    return-void

    .line 68
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected DRM status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/drm/DrmConvertedStatus;->statusCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public write(I)V
    .locals 0
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-static {p0, p1}, Llibcore/io/Streams;->writeSingleByte(Ljava/io/OutputStream;I)V

    .line 104
    return-void
.end method

.method public write([BII)V
    .locals 5
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    array-length v2, p1

    invoke-static {v2, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 86
    array-length v2, p1

    if-ne p3, v2, :cond_0

    .line 87
    move-object v0, p1

    .line 93
    .local v0, "exactBuffer":[B
    :goto_0
    iget-object v2, p0, Landroid/drm/DrmOutputStream;->mClient:Landroid/drm/DrmManagerClient;

    iget v3, p0, Landroid/drm/DrmOutputStream;->mSessionId:I

    invoke-virtual {v2, v3, v0}, Landroid/drm/DrmManagerClient;->convertData(I[B)Landroid/drm/DrmConvertedStatus;

    move-result-object v1

    .line 94
    .local v1, "status":Landroid/drm/DrmConvertedStatus;
    iget v2, v1, Landroid/drm/DrmConvertedStatus;->statusCode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 95
    iget-object v2, p0, Landroid/drm/DrmOutputStream;->mFile:Ljava/io/RandomAccessFile;

    iget-object v3, v1, Landroid/drm/DrmConvertedStatus;->convertedData:[B

    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->write([B)V

    .line 99
    return-void

    .line 89
    .end local v0    # "exactBuffer":[B
    .end local v1    # "status":Landroid/drm/DrmConvertedStatus;
    :cond_0
    new-array v0, p3, [B

    .line 90
    .restart local v0    # "exactBuffer":[B
    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 97
    .restart local v1    # "status":Landroid/drm/DrmConvertedStatus;
    :cond_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected DRM status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/drm/DrmConvertedStatus;->statusCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
