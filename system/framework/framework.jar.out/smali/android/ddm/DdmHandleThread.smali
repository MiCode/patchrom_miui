.class public Landroid/ddm/DdmHandleThread;
.super Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;
.source "DdmHandleThread.java"


# static fields
.field public static final CHUNK_STKL:I

.field public static final CHUNK_THCR:I

.field public static final CHUNK_THDE:I

.field public static final CHUNK_THEN:I

.field public static final CHUNK_THST:I

.field private static mInstance:Landroid/ddm/DdmHandleThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "THEN"

    invoke-static {v0}, Landroid/ddm/DdmHandleThread;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleThread;->CHUNK_THEN:I

    .line 32
    const-string v0, "THCR"

    invoke-static {v0}, Landroid/ddm/DdmHandleThread;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleThread;->CHUNK_THCR:I

    .line 33
    const-string v0, "THDE"

    invoke-static {v0}, Landroid/ddm/DdmHandleThread;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleThread;->CHUNK_THDE:I

    .line 34
    const-string v0, "THST"

    invoke-static {v0}, Landroid/ddm/DdmHandleThread;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleThread;->CHUNK_THST:I

    .line 35
    const-string v0, "STKL"

    invoke-static {v0}, Landroid/ddm/DdmHandleThread;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleThread;->CHUNK_STKL:I

    .line 37
    new-instance v0, Landroid/ddm/DdmHandleThread;

    invoke-direct {v0}, Landroid/ddm/DdmHandleThread;-><init>()V

    sput-object v0, Landroid/ddm/DdmHandleThread;->mInstance:Landroid/ddm/DdmHandleThread;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;-><init>()V

    return-void
.end method

.method private createStackChunk([Ljava/lang/StackTraceElement;I)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 8
    .param p1, "trace"    # [Ljava/lang/StackTraceElement;
    .param p2, "threadId"    # I

    .prologue
    const/4 v7, 0x0

    .line 146
    const/4 v1, 0x0

    .line 148
    .local v1, "bufferSize":I
    add-int/lit8 v1, v1, 0x4

    .line 149
    add-int/lit8 v1, v1, 0x4

    .line 150
    add-int/lit8 v1, v1, 0x4

    .line 151
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/StackTraceElement;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 152
    .local v2, "elem":Ljava/lang/StackTraceElement;
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x4

    add-int/2addr v1, v6

    .line 153
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x4

    add-int/2addr v1, v6

    .line 154
    add-int/lit8 v1, v1, 0x4

    .line 155
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 156
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v1, v6

    .line 157
    :cond_0
    add-int/lit8 v1, v1, 0x4

    .line 151
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 160
    .end local v2    # "elem":Ljava/lang/StackTraceElement;
    :cond_1
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 161
    .local v5, "out":Ljava/nio/ByteBuffer;
    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 162
    invoke-virtual {v5, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 163
    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 164
    move-object v0, p1

    array-length v4, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v2, v0, v3

    .line 165
    .restart local v2    # "elem":Ljava/lang/StackTraceElement;
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 166
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/ddm/DdmHandleThread;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 167
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 168
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/ddm/DdmHandleThread;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 169
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 170
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 171
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/ddm/DdmHandleThread;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 175
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 164
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 173
    :cond_2
    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_2

    .line 178
    .end local v2    # "elem":Ljava/lang/StackTraceElement;
    :cond_3
    new-instance v6, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v7, Landroid/ddm/DdmHandleThread;->CHUNK_STKL:I

    invoke-direct {v6, v7, v5}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(ILjava/nio/ByteBuffer;)V

    return-object v6
.end method

.method private handleSTKL(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 5
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .prologue
    .line 124
    invoke-static {p1}, Landroid/ddm/DdmHandleThread;->wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 127
    .local v0, "in":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 131
    .local v1, "threadId":I
    invoke-static {v1}, Lorg/apache/harmony/dalvik/ddmc/DdmVmInternal;->getStackTraceById(I)[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 132
    .local v2, "trace":[Ljava/lang/StackTraceElement;
    if-nez v2, :cond_0

    .line 133
    const/4 v3, 0x1

    const-string v4, "Stack trace unavailable"

    invoke-static {v3, v4}, Landroid/ddm/DdmHandleThread;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v3

    .line 135
    :goto_0
    return-object v3

    :cond_0
    invoke-direct {p0, v2, v1}, Landroid/ddm/DdmHandleThread;->createStackChunk([Ljava/lang/StackTraceElement;I)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v3

    goto :goto_0
.end method

.method private handleTHEN(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 3
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .prologue
    .line 88
    invoke-static {p1}, Landroid/ddm/DdmHandleThread;->wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 90
    .local v1, "in":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 93
    .local v0, "enable":Z
    :goto_0
    invoke-static {v0}, Lorg/apache/harmony/dalvik/ddmc/DdmVmInternal;->threadNotify(Z)V

    .line 94
    const/4 v2, 0x0

    return-object v2

    .line 90
    .end local v0    # "enable":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleTHST(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 6
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .prologue
    .line 101
    invoke-static {p1}, Landroid/ddm/DdmHandleThread;->wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 106
    .local v0, "in":Ljava/nio/ByteBuffer;
    invoke-static {}, Lorg/apache/harmony/dalvik/ddmc/DdmVmInternal;->getThreadStats()[B

    move-result-object v1

    .line 107
    .local v1, "status":[B
    if-eqz v1, :cond_0

    .line 108
    new-instance v2, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v3, Landroid/ddm/DdmHandleThread;->CHUNK_THST:I

    const/4 v4, 0x0

    array-length v5, v1

    invoke-direct {v2, v3, v1, v4, v5}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    .line 110
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x1

    const-string v3, "Can\'t build THST chunk"

    invoke-static {v2, v3}, Landroid/ddm/DdmHandleThread;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v2

    goto :goto_0
.end method

.method public static register()V
    .locals 2

    .prologue
    .line 47
    sget v0, Landroid/ddm/DdmHandleThread;->CHUNK_THEN:I

    sget-object v1, Landroid/ddm/DdmHandleThread;->mInstance:Landroid/ddm/DdmHandleThread;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 48
    sget v0, Landroid/ddm/DdmHandleThread;->CHUNK_THST:I

    sget-object v1, Landroid/ddm/DdmHandleThread;->mInstance:Landroid/ddm/DdmHandleThread;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 49
    sget v0, Landroid/ddm/DdmHandleThread;->CHUNK_STKL:I

    sget-object v1, Landroid/ddm/DdmHandleThread;->mInstance:Landroid/ddm/DdmHandleThread;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 50
    return-void
.end method


# virtual methods
.method public connected()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public disconnected()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public handleChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 4
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .prologue
    .line 70
    iget v0, p1, Lorg/apache/harmony/dalvik/ddmc/Chunk;->type:I

    .line 72
    .local v0, "type":I
    sget v1, Landroid/ddm/DdmHandleThread;->CHUNK_THEN:I

    if-ne v0, v1, :cond_0

    .line 73
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleThread;->handleTHEN(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    .line 77
    :goto_0
    return-object v1

    .line 74
    :cond_0
    sget v1, Landroid/ddm/DdmHandleThread;->CHUNK_THST:I

    if-ne v0, v1, :cond_1

    .line 75
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleThread;->handleTHST(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    goto :goto_0

    .line 76
    :cond_1
    sget v1, Landroid/ddm/DdmHandleThread;->CHUNK_STKL:I

    if-ne v0, v1, :cond_2

    .line 77
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleThread;->handleSTKL(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    goto :goto_0

    .line 79
    :cond_2
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
