.class public Landroid/app/backup/BackupHelperDispatcher;
.super Ljava/lang/Object;
.source "BackupHelperDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/BackupHelperDispatcher$1;,
        Landroid/app/backup/BackupHelperDispatcher$Header;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BackupHelperDispatcher"


# instance fields
.field mHelpers:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/backup/BackupHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Landroid/app/backup/BackupHelperDispatcher;->mHelpers:Ljava/util/TreeMap;

    .line 39
    return-void
.end method

.method private static native allocateHeader_native(Landroid/app/backup/BackupHelperDispatcher$Header;Ljava/io/FileDescriptor;)I
.end method

.method private doOneBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupHelperDispatcher$Header;Landroid/app/backup/BackupHelper;)V
    .locals 6
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "header"    # Landroid/app/backup/BackupHelperDispatcher$Header;
    .param p5, "helper"    # Landroid/app/backup/BackupHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 87
    .local v1, "newStateFD":Ljava/io/FileDescriptor;
    invoke-static {p4, v1}, Landroid/app/backup/BackupHelperDispatcher;->allocateHeader_native(Landroid/app/backup/BackupHelperDispatcher$Header;Ljava/io/FileDescriptor;)I

    move-result v2

    .line 88
    .local v2, "pos":I
    if-gez v2, :cond_0

    .line 89
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allocateHeader_native failed (error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 92
    :cond_0
    iget-object v3, p4, Landroid/app/backup/BackupHelperDispatcher$Header;->keyPrefix:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/app/backup/BackupDataOutput;->setKeyPrefix(Ljava/lang/String;)V

    .line 95
    invoke-interface {p5, p1, p2, p3}, Landroid/app/backup/BackupHelper;->performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V

    .line 99
    invoke-static {p4, v1, v2}, Landroid/app/backup/BackupHelperDispatcher;->writeHeader_native(Landroid/app/backup/BackupHelperDispatcher$Header;Ljava/io/FileDescriptor;I)I

    move-result v0

    .line 100
    .local v0, "err":I
    if-eqz v0, :cond_1

    .line 101
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "writeHeader_native failed (error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 103
    :cond_1
    return-void
.end method

.method private static native readHeader_native(Landroid/app/backup/BackupHelperDispatcher$Header;Ljava/io/FileDescriptor;)I
.end method

.method private static native skipChunk_native(Ljava/io/FileDescriptor;I)I
.end method

.method private static native writeHeader_native(Landroid/app/backup/BackupHelperDispatcher$Header;Ljava/io/FileDescriptor;I)I
.end method


# virtual methods
.method public addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V
    .locals 1
    .param p1, "keyPrefix"    # Ljava/lang/String;
    .param p2, "helper"    # Landroid/app/backup/BackupHelper;

    .prologue
    .line 42
    iget-object v0, p0, Landroid/app/backup/BackupHelperDispatcher;->mHelpers:Ljava/util/TreeMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    return-void
.end method

.method public performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 12
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    new-instance v4, Landroid/app/backup/BackupHelperDispatcher$Header;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Landroid/app/backup/BackupHelperDispatcher$Header;-><init>(Landroid/app/backup/BackupHelperDispatcher$1;)V

    .line 51
    .local v4, "header":Landroid/app/backup/BackupHelperDispatcher$Header;
    iget-object v0, p0, Landroid/app/backup/BackupHelperDispatcher;->mHelpers:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/TreeMap;

    .line 52
    .local v8, "helpers":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/app/backup/BackupHelper;>;"
    const/4 v11, 0x0

    .line 53
    .local v11, "oldStateFD":Ljava/io/FileDescriptor;
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    .line 55
    .local v10, "newStateFD":Ljava/io/FileDescriptor;
    if-eqz p1, :cond_2

    .line 56
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v11

    .line 57
    :cond_0
    :goto_0
    invoke-static {v4, v11}, Landroid/app/backup/BackupHelperDispatcher;->readHeader_native(Landroid/app/backup/BackupHelperDispatcher$Header;Ljava/io/FileDescriptor;)I

    move-result v7

    .local v7, "err":I
    if-ltz v7, :cond_2

    .line 58
    if-nez v7, :cond_0

    .line 59
    iget-object v0, v4, Landroid/app/backup/BackupHelperDispatcher$Header;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/backup/BackupHelper;

    .line 60
    .local v5, "helper":Landroid/app/backup/BackupHelper;
    const-string v0, "BackupHelperDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handling existing helper \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v4, Landroid/app/backup/BackupHelperDispatcher$Header;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    if-eqz v5, :cond_1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 62
    invoke-direct/range {v0 .. v5}, Landroid/app/backup/BackupHelperDispatcher;->doOneBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupHelperDispatcher$Header;Landroid/app/backup/BackupHelper;)V

    .line 63
    iget-object v0, v4, Landroid/app/backup/BackupHelperDispatcher$Header;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 65
    :cond_1
    iget v0, v4, Landroid/app/backup/BackupHelperDispatcher$Header;->chunkSize:I

    invoke-static {v11, v0}, Landroid/app/backup/BackupHelperDispatcher;->skipChunk_native(Ljava/io/FileDescriptor;I)I

    goto :goto_0

    .line 72
    .end local v5    # "helper":Landroid/app/backup/BackupHelper;
    .end local v7    # "err":I
    :cond_2
    invoke-virtual {v8}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 73
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/backup/BackupHelper;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v4, Landroid/app/backup/BackupHelperDispatcher$Header;->keyPrefix:Ljava/lang/String;

    .line 74
    const-string v0, "BackupHelperDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handling new helper \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v4, Landroid/app/backup/BackupHelperDispatcher$Header;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/backup/BackupHelper;

    .restart local v5    # "helper":Landroid/app/backup/BackupHelper;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 76
    invoke-direct/range {v0 .. v5}, Landroid/app/backup/BackupHelperDispatcher;->doOneBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupHelperDispatcher$Header;Landroid/app/backup/BackupHelper;)V

    goto :goto_1

    .line 78
    .end local v5    # "helper":Landroid/app/backup/BackupHelper;
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/backup/BackupHelper;>;"
    :cond_3
    return-void
.end method

.method public performRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 10
    .param p1, "input"    # Landroid/app/backup/BackupDataInput;
    .param p2, "appVersionCode"    # I
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    const/4 v0, 0x0

    .line 110
    .local v0, "alreadyComplained":Z
    new-instance v6, Landroid/app/backup/BackupDataInputStream;

    invoke-direct {v6, p1}, Landroid/app/backup/BackupDataInputStream;-><init>(Landroid/app/backup/BackupDataInput;)V

    .line 111
    .local v6, "stream":Landroid/app/backup/BackupDataInputStream;
    :goto_0
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 113
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 114
    .local v5, "rawKey":Ljava/lang/String;
    const/16 v7, 0x3a

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 115
    .local v3, "pos":I
    if-lez v3, :cond_2

    .line 116
    const/4 v7, 0x0

    invoke-virtual {v5, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 117
    .local v4, "prefix":Ljava/lang/String;
    iget-object v7, p0, Landroid/app/backup/BackupHelperDispatcher;->mHelpers:Ljava/util/TreeMap;

    invoke-virtual {v7, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/backup/BackupHelper;

    .line 118
    .local v1, "helper":Landroid/app/backup/BackupHelper;
    if-eqz v1, :cond_1

    .line 119
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v7

    iput v7, v6, Landroid/app/backup/BackupDataInputStream;->dataSize:I

    .line 120
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/app/backup/BackupDataInputStream;->key:Ljava/lang/String;

    .line 121
    invoke-interface {v1, v6}, Landroid/app/backup/BackupHelper;->restoreEntity(Landroid/app/backup/BackupDataInputStream;)V

    .line 134
    .end local v1    # "helper":Landroid/app/backup/BackupHelper;
    .end local v4    # "prefix":Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->skipEntityData()V

    goto :goto_0

    .line 123
    .restart local v1    # "helper":Landroid/app/backup/BackupHelper;
    .restart local v4    # "prefix":Ljava/lang/String;
    :cond_1
    if-nez v0, :cond_0

    .line 124
    const-string v7, "BackupHelperDispatcher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t find helper for: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v0, 0x1

    goto :goto_1

    .line 129
    .end local v1    # "helper":Landroid/app/backup/BackupHelper;
    .end local v4    # "prefix":Ljava/lang/String;
    :cond_2
    if-nez v0, :cond_0

    .line 130
    const-string v7, "BackupHelperDispatcher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Entity with no prefix: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/4 v0, 0x1

    goto :goto_1

    .line 138
    .end local v3    # "pos":I
    .end local v5    # "rawKey":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Landroid/app/backup/BackupHelperDispatcher;->mHelpers:Ljava/util/TreeMap;

    invoke-virtual {v7}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/backup/BackupHelper;

    .line 139
    .restart local v1    # "helper":Landroid/app/backup/BackupHelper;
    invoke-interface {v1, p3}, Landroid/app/backup/BackupHelper;->writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_2

    .line 141
    .end local v1    # "helper":Landroid/app/backup/BackupHelper;
    :cond_4
    return-void
.end method
