.class public Landroid/app/backup/BackupDataInput;
.super Ljava/lang/Object;
.source "BackupDataInput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/BackupDataInput$1;,
        Landroid/app/backup/BackupDataInput$EntityHeader;
    }
.end annotation


# instance fields
.field mBackupReader:I

.field private mHeader:Landroid/app/backup/BackupDataInput$EntityHeader;

.field private mHeaderReady:Z


# direct methods
.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Landroid/app/backup/BackupDataInput$EntityHeader;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/backup/BackupDataInput$EntityHeader;-><init>(Landroid/app/backup/BackupDataInput$1;)V

    iput-object v0, p0, Landroid/app/backup/BackupDataInput;->mHeader:Landroid/app/backup/BackupDataInput$EntityHeader;

    .line 74
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 75
    :cond_0
    invoke-static {p1}, Landroid/app/backup/BackupDataInput;->ctor(Ljava/io/FileDescriptor;)I

    move-result v0

    iput v0, p0, Landroid/app/backup/BackupDataInput;->mBackupReader:I

    .line 76
    iget v0, p0, Landroid/app/backup/BackupDataInput;->mBackupReader:I

    if-nez v0, :cond_1

    .line 77
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Native initialization failed with fd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_1
    return-void
.end method

.method private static native ctor(Ljava/io/FileDescriptor;)I
.end method

.method private static native dtor(I)V
.end method

.method private native readEntityData_native(I[BII)I
.end method

.method private native readNextHeader_native(ILandroid/app/backup/BackupDataInput$EntityHeader;)I
.end method

.method private native skipEntityData_native(I)I
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 84
    :try_start_0
    iget v0, p0, Landroid/app/backup/BackupDataInput;->mBackupReader:I

    invoke-static {v0}, Landroid/app/backup/BackupDataInput;->dtor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 88
    return-void

    .line 86
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getDataSize()I
    .locals 2

    .prologue
    .line 137
    iget-boolean v0, p0, Landroid/app/backup/BackupDataInput;->mHeaderReady:Z

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Landroid/app/backup/BackupDataInput;->mHeader:Landroid/app/backup/BackupDataInput$EntityHeader;

    iget v0, v0, Landroid/app/backup/BackupDataInput$EntityHeader;->dataSize:I

    return v0

    .line 140
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Entity header not read"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    iget-boolean v0, p0, Landroid/app/backup/BackupDataInput;->mHeaderReady:Z

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Landroid/app/backup/BackupDataInput;->mHeader:Landroid/app/backup/BackupDataInput$EntityHeader;

    iget-object v0, v0, Landroid/app/backup/BackupDataInput$EntityHeader;->key:Ljava/lang/String;

    return-object v0

    .line 125
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Entity header not read"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readEntityData([BII)I
    .locals 4
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    iget-boolean v1, p0, Landroid/app/backup/BackupDataInput;->mHeaderReady:Z

    if-eqz v1, :cond_1

    .line 161
    iget v1, p0, Landroid/app/backup/BackupDataInput;->mBackupReader:I

    invoke-direct {p0, v1, p1, p2, p3}, Landroid/app/backup/BackupDataInput;->readEntityData_native(I[BII)I

    move-result v0

    .line 162
    .local v0, "result":I
    if-ltz v0, :cond_0

    .line 163
    return v0

    .line 165
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "result=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 168
    .end local v0    # "result":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Entity header not read"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readNextHeader()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 100
    iget v3, p0, Landroid/app/backup/BackupDataInput;->mBackupReader:I

    iget-object v4, p0, Landroid/app/backup/BackupDataInput;->mHeader:Landroid/app/backup/BackupDataInput$EntityHeader;

    invoke-direct {p0, v3, v4}, Landroid/app/backup/BackupDataInput;->readNextHeader_native(ILandroid/app/backup/BackupDataInput$EntityHeader;)I

    move-result v0

    .line 101
    .local v0, "result":I
    if-nez v0, :cond_0

    .line 103
    iput-boolean v1, p0, Landroid/app/backup/BackupDataInput;->mHeaderReady:Z

    .line 108
    :goto_0
    return v1

    .line 105
    :cond_0
    if-lez v0, :cond_1

    .line 107
    iput-boolean v2, p0, Landroid/app/backup/BackupDataInput;->mHeaderReady:Z

    move v1, v2

    .line 108
    goto :goto_0

    .line 111
    :cond_1
    iput-boolean v2, p0, Landroid/app/backup/BackupDataInput;->mHeaderReady:Z

    .line 112
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public skipEntityData()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    iget-boolean v0, p0, Landroid/app/backup/BackupDataInput;->mHeaderReady:Z

    if-eqz v0, :cond_0

    .line 182
    iget v0, p0, Landroid/app/backup/BackupDataInput;->mBackupReader:I

    invoke-direct {p0, v0}, Landroid/app/backup/BackupDataInput;->skipEntityData_native(I)I

    .line 186
    return-void

    .line 184
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Entity header not read"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
