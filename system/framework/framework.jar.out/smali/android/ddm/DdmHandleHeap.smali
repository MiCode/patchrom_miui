.class public Landroid/ddm/DdmHandleHeap;
.super Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;
.source "DdmHandleHeap.java"


# static fields
.field public static final CHUNK_HPDS:I

.field public static final CHUNK_HPDU:I

.field public static final CHUNK_HPGC:I

.field public static final CHUNK_HPIF:I

.field public static final CHUNK_HPSG:I

.field public static final CHUNK_NHSG:I

.field public static final CHUNK_REAE:I

.field public static final CHUNK_REAL:I

.field public static final CHUNK_REAQ:I

.field private static mInstance:Landroid/ddm/DdmHandleHeap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "HPIF"

    invoke-static {v0}, Landroid/ddm/DdmHandleHeap;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleHeap;->CHUNK_HPIF:I

    .line 34
    const-string v0, "HPSG"

    invoke-static {v0}, Landroid/ddm/DdmHandleHeap;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleHeap;->CHUNK_HPSG:I

    .line 35
    const-string v0, "HPDU"

    invoke-static {v0}, Landroid/ddm/DdmHandleHeap;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleHeap;->CHUNK_HPDU:I

    .line 36
    const-string v0, "HPDS"

    invoke-static {v0}, Landroid/ddm/DdmHandleHeap;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleHeap;->CHUNK_HPDS:I

    .line 37
    const-string v0, "NHSG"

    invoke-static {v0}, Landroid/ddm/DdmHandleHeap;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleHeap;->CHUNK_NHSG:I

    .line 38
    const-string v0, "HPGC"

    invoke-static {v0}, Landroid/ddm/DdmHandleHeap;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleHeap;->CHUNK_HPGC:I

    .line 39
    const-string v0, "REAE"

    invoke-static {v0}, Landroid/ddm/DdmHandleHeap;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleHeap;->CHUNK_REAE:I

    .line 40
    const-string v0, "REAQ"

    invoke-static {v0}, Landroid/ddm/DdmHandleHeap;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleHeap;->CHUNK_REAQ:I

    .line 41
    const-string v0, "REAL"

    invoke-static {v0}, Landroid/ddm/DdmHandleHeap;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleHeap;->CHUNK_REAL:I

    .line 43
    new-instance v0, Landroid/ddm/DdmHandleHeap;

    invoke-direct {v0}, Landroid/ddm/DdmHandleHeap;-><init>()V

    sput-object v0, Landroid/ddm/DdmHandleHeap;->mInstance:Landroid/ddm/DdmHandleHeap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;-><init>()V

    return-void
.end method

.method private handleHPDS(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 6
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .prologue
    .line 190
    invoke-static {p1}, Landroid/ddm/DdmHandleHeap;->wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 197
    .local v1, "in":Ljava/nio/ByteBuffer;
    const/4 v0, 0x0

    .line 199
    .local v0, "failMsg":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/os/Debug;->dumpHprofDataDdms()V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 206
    :goto_0
    if-eqz v0, :cond_0

    .line 207
    const-string v4, "ddm-heap"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const/4 v4, 0x1

    invoke-static {v4, v0}, Landroid/ddm/DdmHandleHeap;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v4

    .line 210
    :goto_1
    return-object v4

    .line 200
    :catch_0
    move-exception v3

    .line 201
    .local v3, "uoe":Ljava/lang/UnsupportedOperationException;
    const-string v0, "hprof dumps not supported in this VM"

    .line 204
    goto :goto_0

    .line 202
    .end local v3    # "uoe":Ljava/lang/UnsupportedOperationException;
    :catch_1
    move-exception v2

    .line 203
    .local v2, "re":Ljava/lang/RuntimeException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 210
    .end local v2    # "re":Ljava/lang/RuntimeException;
    :cond_0
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private handleHPDU(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 12
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .prologue
    const/4 v11, 0x0

    .line 156
    invoke-static {p1}, Landroid/ddm/DdmHandleHeap;->wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 160
    .local v1, "in":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 161
    .local v3, "len":I
    invoke-static {v1, v3}, Landroid/ddm/DdmHandleHeap;->getString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "fileName":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 167
    const/4 v6, 0x0

    .line 178
    .local v6, "result":B
    :goto_0
    const/4 v8, 0x1

    new-array v5, v8, [B

    aput-byte v6, v5, v11

    .line 179
    .local v5, "reply":[B
    new-instance v8, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v9, Landroid/ddm/DdmHandleHeap;->CHUNK_HPDU:I

    array-length v10, v5

    invoke-direct {v8, v9, v5, v11, v10}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    return-object v8

    .line 168
    .end local v5    # "reply":[B
    .end local v6    # "result":B
    :catch_0
    move-exception v7

    .line 169
    .local v7, "uoe":Ljava/lang/UnsupportedOperationException;
    const-string v8, "ddm-heap"

    const-string v9, "hprof dumps not supported in this VM"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v6, -0x1

    .line 175
    .restart local v6    # "result":B
    goto :goto_0

    .line 171
    .end local v6    # "result":B
    .end local v7    # "uoe":Ljava/lang/UnsupportedOperationException;
    :catch_1
    move-exception v2

    .line 172
    .local v2, "ioe":Ljava/io/IOException;
    const/4 v6, -0x1

    .line 175
    .restart local v6    # "result":B
    goto :goto_0

    .line 173
    .end local v2    # "ioe":Ljava/io/IOException;
    .end local v6    # "result":B
    :catch_2
    move-exception v4

    .line 174
    .local v4, "re":Ljava/lang/RuntimeException;
    const/4 v6, -0x1

    .restart local v6    # "result":B
    goto :goto_0
.end method

.method private handleHPGC(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 1
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .prologue
    .line 222
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 224
    const/4 v0, 0x0

    return-object v0
.end method

.method private handleHPIF(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 5
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .prologue
    .line 112
    invoke-static {p1}, Landroid/ddm/DdmHandleHeap;->wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 114
    .local v0, "in":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 118
    .local v2, "when":I
    invoke-static {v2}, Lorg/apache/harmony/dalvik/ddmc/DdmVmInternal;->heapInfoNotify(I)Z

    move-result v1

    .line 119
    .local v1, "ok":Z
    if-nez v1, :cond_0

    .line 120
    const/4 v3, 0x1

    const-string v4, "Unsupported HPIF what"

    invoke-static {v3, v4}, Landroid/ddm/DdmHandleHeap;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v3

    .line 122
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private handleHPSGNHSG(Lorg/apache/harmony/dalvik/ddmc/Chunk;Z)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 6
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .param p2, "isNative"    # Z

    .prologue
    .line 130
    invoke-static {p1}, Landroid/ddm/DdmHandleHeap;->wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 132
    .local v0, "in":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 133
    .local v3, "when":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 138
    .local v2, "what":I
    invoke-static {v3, v2, p2}, Lorg/apache/harmony/dalvik/ddmc/DdmVmInternal;->heapSegmentNotify(IIZ)Z

    move-result v1

    .line 139
    .local v1, "ok":Z
    if-nez v1, :cond_0

    .line 140
    const/4 v4, 0x1

    const-string v5, "Unsupported HPSG what/when"

    invoke-static {v4, v5}, Landroid/ddm/DdmHandleHeap;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v4

    .line 144
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private handleREAE(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 3
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .prologue
    .line 231
    invoke-static {p1}, Landroid/ddm/DdmHandleHeap;->wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 234
    .local v1, "in":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 239
    .local v0, "enable":Z
    :goto_0
    invoke-static {v0}, Lorg/apache/harmony/dalvik/ddmc/DdmVmInternal;->enableRecentAllocations(Z)V

    .line 241
    const/4 v2, 0x0

    return-object v2

    .line 234
    .end local v0    # "enable":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleREAL(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 5
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .prologue
    .line 265
    invoke-static {}, Lorg/apache/harmony/dalvik/ddmc/DdmVmInternal;->getRecentAllocations()[B

    move-result-object v0

    .line 266
    .local v0, "reply":[B
    new-instance v1, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v2, Landroid/ddm/DdmHandleHeap;->CHUNK_REAL:I

    const/4 v3, 0x0

    array-length v4, v0

    invoke-direct {v1, v2, v0, v3, v4}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    return-object v1
.end method

.method private handleREAQ(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 5
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 250
    new-array v0, v1, [B

    .line 251
    .local v0, "reply":[B
    invoke-static {}, Lorg/apache/harmony/dalvik/ddmc/DdmVmInternal;->getRecentAllocationStatus()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    aput-byte v1, v0, v2

    .line 252
    new-instance v1, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v3, Landroid/ddm/DdmHandleHeap;->CHUNK_REAQ:I

    array-length v4, v0

    invoke-direct {v1, v3, v0, v2, v4}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    return-object v1

    :cond_0
    move v1, v2

    .line 251
    goto :goto_0
.end method

.method public static register()V
    .locals 2

    .prologue
    .line 53
    sget v0, Landroid/ddm/DdmHandleHeap;->CHUNK_HPIF:I

    sget-object v1, Landroid/ddm/DdmHandleHeap;->mInstance:Landroid/ddm/DdmHandleHeap;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 54
    sget v0, Landroid/ddm/DdmHandleHeap;->CHUNK_HPSG:I

    sget-object v1, Landroid/ddm/DdmHandleHeap;->mInstance:Landroid/ddm/DdmHandleHeap;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 55
    sget v0, Landroid/ddm/DdmHandleHeap;->CHUNK_HPDU:I

    sget-object v1, Landroid/ddm/DdmHandleHeap;->mInstance:Landroid/ddm/DdmHandleHeap;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 56
    sget v0, Landroid/ddm/DdmHandleHeap;->CHUNK_HPDS:I

    sget-object v1, Landroid/ddm/DdmHandleHeap;->mInstance:Landroid/ddm/DdmHandleHeap;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 57
    sget v0, Landroid/ddm/DdmHandleHeap;->CHUNK_NHSG:I

    sget-object v1, Landroid/ddm/DdmHandleHeap;->mInstance:Landroid/ddm/DdmHandleHeap;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 58
    sget v0, Landroid/ddm/DdmHandleHeap;->CHUNK_HPGC:I

    sget-object v1, Landroid/ddm/DdmHandleHeap;->mInstance:Landroid/ddm/DdmHandleHeap;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 59
    sget v0, Landroid/ddm/DdmHandleHeap;->CHUNK_REAE:I

    sget-object v1, Landroid/ddm/DdmHandleHeap;->mInstance:Landroid/ddm/DdmHandleHeap;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 60
    sget v0, Landroid/ddm/DdmHandleHeap;->CHUNK_REAQ:I

    sget-object v1, Landroid/ddm/DdmHandleHeap;->mInstance:Landroid/ddm/DdmHandleHeap;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 61
    sget v0, Landroid/ddm/DdmHandleHeap;->CHUNK_REAL:I

    sget-object v1, Landroid/ddm/DdmHandleHeap;->mInstance:Landroid/ddm/DdmHandleHeap;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 62
    return-void
.end method


# virtual methods
.method public connected()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public disconnected()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public handleChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 4
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .prologue
    .line 82
    iget v0, p1, Lorg/apache/harmony/dalvik/ddmc/Chunk;->type:I

    .line 84
    .local v0, "type":I
    sget v1, Landroid/ddm/DdmHandleHeap;->CHUNK_HPIF:I

    if-ne v0, v1, :cond_0

    .line 85
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleHeap;->handleHPIF(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    .line 101
    :goto_0
    return-object v1

    .line 86
    :cond_0
    sget v1, Landroid/ddm/DdmHandleHeap;->CHUNK_HPSG:I

    if-ne v0, v1, :cond_1

    .line 87
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/ddm/DdmHandleHeap;->handleHPSGNHSG(Lorg/apache/harmony/dalvik/ddmc/Chunk;Z)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    goto :goto_0

    .line 88
    :cond_1
    sget v1, Landroid/ddm/DdmHandleHeap;->CHUNK_HPDU:I

    if-ne v0, v1, :cond_2

    .line 89
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleHeap;->handleHPDU(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    goto :goto_0

    .line 90
    :cond_2
    sget v1, Landroid/ddm/DdmHandleHeap;->CHUNK_HPDS:I

    if-ne v0, v1, :cond_3

    .line 91
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleHeap;->handleHPDS(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    goto :goto_0

    .line 92
    :cond_3
    sget v1, Landroid/ddm/DdmHandleHeap;->CHUNK_NHSG:I

    if-ne v0, v1, :cond_4

    .line 93
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/ddm/DdmHandleHeap;->handleHPSGNHSG(Lorg/apache/harmony/dalvik/ddmc/Chunk;Z)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    goto :goto_0

    .line 94
    :cond_4
    sget v1, Landroid/ddm/DdmHandleHeap;->CHUNK_HPGC:I

    if-ne v0, v1, :cond_5

    .line 95
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleHeap;->handleHPGC(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    goto :goto_0

    .line 96
    :cond_5
    sget v1, Landroid/ddm/DdmHandleHeap;->CHUNK_REAE:I

    if-ne v0, v1, :cond_6

    .line 97
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleHeap;->handleREAE(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    goto :goto_0

    .line 98
    :cond_6
    sget v1, Landroid/ddm/DdmHandleHeap;->CHUNK_REAQ:I

    if-ne v0, v1, :cond_7

    .line 99
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleHeap;->handleREAQ(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    goto :goto_0

    .line 100
    :cond_7
    sget v1, Landroid/ddm/DdmHandleHeap;->CHUNK_REAL:I

    if-ne v0, v1, :cond_8

    .line 101
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleHeap;->handleREAL(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    goto :goto_0

    .line 103
    :cond_8
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown packet "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
