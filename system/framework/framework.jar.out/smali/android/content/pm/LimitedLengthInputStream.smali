.class public Landroid/content/pm/LimitedLengthInputStream;
.super Ljava/io/FilterInputStream;
.source "LimitedLengthInputStream.java"


# instance fields
.field private final mEnd:J

.field private mOffset:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;JJ)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "offset"    # J
    .param p4, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v1, 0x0

    .line 33
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v0, Ljava/io/IOException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    cmp-long v0, p2, v1

    if-gez v0, :cond_1

    .line 40
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "offset < 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_1
    cmp-long v0, p4, v1

    if-gez v0, :cond_2

    .line 44
    new-instance v0, Ljava/io/IOException;

    const-string v1, "length < 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_2
    const-wide v0, 0x7fffffffffffffffL

    sub-long/2addr v0, p2

    cmp-long v0, p4, v0

    if-lez v0, :cond_3

    .line 48
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "offset + length > Long.MAX_VALUE"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_3
    add-long v0, p2, p4

    iput-wide v0, p0, Landroid/content/pm/LimitedLengthInputStream;->mEnd:J

    .line 53
    invoke-virtual {p0, p2, p3}, Landroid/content/pm/LimitedLengthInputStream;->skip(J)J

    .line 54
    iput-wide p2, p0, Landroid/content/pm/LimitedLengthInputStream;->mOffset:J

    .line 55
    return-void
.end method


# virtual methods
.method public declared-synchronized read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Landroid/content/pm/LimitedLengthInputStream;->mOffset:J

    iget-wide v2, p0, Landroid/content/pm/LimitedLengthInputStream;->mEnd:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 60
    const/4 v0, -0x1

    .line 64
    :goto_0
    monitor-exit p0

    return v0

    .line 63
    :cond_0
    :try_start_1
    iget-wide v0, p0, Landroid/content/pm/LimitedLengthInputStream;->mOffset:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/content/pm/LimitedLengthInputStream;->mOffset:J

    .line 64
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/pm/LimitedLengthInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 8
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    iget-wide v2, p0, Landroid/content/pm/LimitedLengthInputStream;->mOffset:J

    iget-wide v4, p0, Landroid/content/pm/LimitedLengthInputStream;->mEnd:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 70
    const/4 v1, -0x1

    .line 87
    :goto_0
    return v1

    .line 73
    :cond_0
    array-length v0, p1

    .line 74
    .local v0, "arrayLength":I
    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 76
    iget-wide v2, p0, Landroid/content/pm/LimitedLengthInputStream;->mOffset:J

    const-wide v4, 0x7fffffffffffffffL

    int-to-long v6, p3

    sub-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 77
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "offset out of bounds: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Landroid/content/pm/LimitedLengthInputStream;->mOffset:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " + "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 80
    :cond_1
    iget-wide v2, p0, Landroid/content/pm/LimitedLengthInputStream;->mOffset:J

    int-to-long v4, p3

    add-long/2addr v2, v4

    iget-wide v4, p0, Landroid/content/pm/LimitedLengthInputStream;->mEnd:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 81
    iget-wide v2, p0, Landroid/content/pm/LimitedLengthInputStream;->mEnd:J

    iget-wide v4, p0, Landroid/content/pm/LimitedLengthInputStream;->mOffset:J

    sub-long/2addr v2, v4

    long-to-int p3, v2

    .line 84
    :cond_2
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v1

    .line 85
    .local v1, "numRead":I
    iget-wide v2, p0, Landroid/content/pm/LimitedLengthInputStream;->mOffset:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/content/pm/LimitedLengthInputStream;->mOffset:J

    goto :goto_0
.end method
