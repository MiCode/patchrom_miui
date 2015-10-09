.class public Landroid/app/backup/BackupDataInputStream;
.super Ljava/io/InputStream;
.source "BackupDataInputStream.java"


# instance fields
.field dataSize:I

.field key:Ljava/lang/String;

.field mData:Landroid/app/backup/BackupDataInput;

.field mOneByte:[B


# direct methods
.method constructor <init>(Landroid/app/backup/BackupDataInput;)V
    .locals 0
    .param p1, "data"    # Landroid/app/backup/BackupDataInput;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 48
    iput-object p1, p0, Landroid/app/backup/BackupDataInputStream;->mData:Landroid/app/backup/BackupDataInput;

    .line 49
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Landroid/app/backup/BackupDataInputStream;->key:Ljava/lang/String;

    return-object v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    iget-object v0, p0, Landroid/app/backup/BackupDataInputStream;->mOneByte:[B

    .line 60
    .local v0, "one":[B
    iget-object v1, p0, Landroid/app/backup/BackupDataInputStream;->mOneByte:[B

    if-nez v1, :cond_0

    .line 61
    new-array v0, v3, [B

    .end local v0    # "one":[B
    iput-object v0, p0, Landroid/app/backup/BackupDataInputStream;->mOneByte:[B

    .line 63
    .restart local v0    # "one":[B
    :cond_0
    iget-object v1, p0, Landroid/app/backup/BackupDataInputStream;->mData:Landroid/app/backup/BackupDataInput;

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 64
    aget-byte v1, v0, v2

    return v1
.end method

.method public read([B)I
    .locals 3
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Landroid/app/backup/BackupDataInputStream;->mData:Landroid/app/backup/BackupDataInput;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Landroid/app/backup/BackupDataInputStream;->mData:Landroid/app/backup/BackupDataInput;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Landroid/app/backup/BackupDataInputStream;->dataSize:I

    return v0
.end method
