.class public Landroid/ddm/DdmHandleHello;
.super Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;
.source "DdmHandleHello.java"


# static fields
.field public static final CHUNK_FEAT:I

.field public static final CHUNK_HELO:I

.field public static final CHUNK_WAIT:I

.field private static final FRAMEWORK_FEATURES:[Ljava/lang/String;

.field private static mInstance:Landroid/ddm/DdmHandleHello;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    const-string v0, "HELO"

    invoke-static {v0}, Landroid/ddm/DdmHandleHello;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleHello;->CHUNK_HELO:I

    .line 34
    const-string v0, "WAIT"

    invoke-static {v0}, Landroid/ddm/DdmHandleHello;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleHello;->CHUNK_WAIT:I

    .line 35
    const-string v0, "FEAT"

    invoke-static {v0}, Landroid/ddm/DdmHandleHello;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleHello;->CHUNK_FEAT:I

    .line 37
    new-instance v0, Landroid/ddm/DdmHandleHello;

    invoke-direct {v0}, Landroid/ddm/DdmHandleHello;-><init>()V

    sput-object v0, Landroid/ddm/DdmHandleHello;->mInstance:Landroid/ddm/DdmHandleHello;

    .line 39
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "opengl-tracing"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "view-hierarchy"

    aput-object v2, v0, v1

    sput-object v0, Landroid/ddm/DdmHandleHello;->FRAMEWORK_FEATURES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;-><init>()V

    return-void
.end method

.method private handleFEAT(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 6
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .prologue
    .line 158
    invoke-static {}, Landroid/os/Debug;->getVmFeatureList()[Ljava/lang/String;

    move-result-object v3

    .line 163
    .local v3, "vmFeatures":[Ljava/lang/String;
    array-length v4, v3

    sget-object v5, Landroid/ddm/DdmHandleHello;->FRAMEWORK_FEATURES:[Ljava/lang/String;

    array-length v5, v5

    add-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x4

    add-int/lit8 v2, v4, 0x4

    .line 164
    .local v2, "size":I
    array-length v4, v3

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 165
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    .line 164
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 166
    :cond_0
    sget-object v4, Landroid/ddm/DdmHandleHello;->FRAMEWORK_FEATURES:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v0, v4, -0x1

    :goto_1
    if-ltz v0, :cond_1

    .line 167
    sget-object v4, Landroid/ddm/DdmHandleHello;->FRAMEWORK_FEATURES:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    .line 166
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 169
    :cond_1
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 170
    .local v1, "out":Ljava/nio/ByteBuffer;
    sget-object v4, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->CHUNK_ORDER:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 171
    array-length v4, v3

    sget-object v5, Landroid/ddm/DdmHandleHello;->FRAMEWORK_FEATURES:[Ljava/lang/String;

    array-length v5, v5

    add-int/2addr v4, v5

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 172
    array-length v4, v3

    add-int/lit8 v0, v4, -0x1

    :goto_2
    if-ltz v0, :cond_2

    .line 173
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 174
    aget-object v4, v3, v0

    invoke-static {v1, v4}, Landroid/ddm/DdmHandleHello;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 172
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 176
    :cond_2
    sget-object v4, Landroid/ddm/DdmHandleHello;->FRAMEWORK_FEATURES:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v0, v4, -0x1

    :goto_3
    if-ltz v0, :cond_3

    .line 177
    sget-object v4, Landroid/ddm/DdmHandleHello;->FRAMEWORK_FEATURES:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 178
    sget-object v4, Landroid/ddm/DdmHandleHello;->FRAMEWORK_FEATURES:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-static {v1, v4}, Landroid/ddm/DdmHandleHello;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 176
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 181
    :cond_3
    new-instance v4, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v5, Landroid/ddm/DdmHandleHello;->CHUNK_FEAT:I

    invoke-direct {v4, v5, v1}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(ILjava/nio/ByteBuffer;)V

    return-object v4
.end method

.method private handleHELO(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 10
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .prologue
    .line 111
    invoke-static {p1}, Landroid/ddm/DdmHandleHello;->wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 113
    .local v1, "in":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 120
    .local v4, "serverProtoVers":I
    const-string v8, "java.vm.name"

    const-string v9, "?"

    invoke-static {v8, v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 121
    .local v6, "vmName":Ljava/lang/String;
    const-string v8, "java.vm.version"

    const-string v9, "?"

    invoke-static {v8, v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 122
    .local v7, "vmVersion":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " v"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 127
    .local v5, "vmIdent":Ljava/lang/String;
    invoke-static {}, Landroid/ddm/DdmHandleAppName;->getAppName()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "appName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    add-int/lit8 v8, v8, 0x14

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 131
    .local v2, "out":Ljava/nio/ByteBuffer;
    sget-object v8, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->CHUNK_ORDER:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 132
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 133
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 134
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 135
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 136
    invoke-static {v2, v5}, Landroid/ddm/DdmHandleHello;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 137
    invoke-static {v2, v0}, Landroid/ddm/DdmHandleHello;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 138
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 140
    new-instance v3, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v8, Landroid/ddm/DdmHandleHello;->CHUNK_HELO:I

    invoke-direct {v3, v8, v2}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(ILjava/nio/ByteBuffer;)V

    .line 146
    .local v3, "reply":Lorg/apache/harmony/dalvik/ddmc/Chunk;
    invoke-static {}, Landroid/os/Debug;->waitingForDebugger()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 147
    const/4 v8, 0x0

    invoke-static {v8}, Landroid/ddm/DdmHandleHello;->sendWAIT(I)V

    .line 149
    :cond_0
    return-object v3
.end method

.method public static register()V
    .locals 2

    .prologue
    .line 51
    sget v0, Landroid/ddm/DdmHandleHello;->CHUNK_HELO:I

    sget-object v1, Landroid/ddm/DdmHandleHello;->mInstance:Landroid/ddm/DdmHandleHello;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 52
    sget v0, Landroid/ddm/DdmHandleHello;->CHUNK_FEAT:I

    sget-object v1, Landroid/ddm/DdmHandleHello;->mInstance:Landroid/ddm/DdmHandleHello;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 53
    return-void
.end method

.method public static sendWAIT(I)V
    .locals 5
    .param p0, "reason"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 189
    new-array v0, v4, [B

    int-to-byte v2, p0

    aput-byte v2, v0, v3

    .line 190
    .local v0, "data":[B
    new-instance v1, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v2, Landroid/ddm/DdmHandleHello;->CHUNK_WAIT:I

    invoke-direct {v1, v2, v0, v3, v4}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    .line 191
    .local v1, "waitChunk":Lorg/apache/harmony/dalvik/ddmc/Chunk;
    invoke-static {v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->sendChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)V

    .line 192
    return-void
.end method


# virtual methods
.method public connected()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public disconnected()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public handleChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 4
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .prologue
    .line 87
    iget v0, p1, Lorg/apache/harmony/dalvik/ddmc/Chunk;->type:I

    .line 89
    .local v0, "type":I
    sget v1, Landroid/ddm/DdmHandleHello;->CHUNK_HELO:I

    if-ne v0, v1, :cond_0

    .line 90
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleHello;->handleHELO(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    .line 92
    :goto_0
    return-object v1

    .line 91
    :cond_0
    sget v1, Landroid/ddm/DdmHandleHello;->CHUNK_FEAT:I

    if-ne v0, v1, :cond_1

    .line 92
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleHello;->handleFEAT(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    goto :goto_0

    .line 94
    :cond_1
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
