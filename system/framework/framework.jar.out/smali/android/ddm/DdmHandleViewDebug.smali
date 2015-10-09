.class public Landroid/ddm/DdmHandleViewDebug;
.super Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;
.source "DdmHandleViewDebug.java"


# static fields
.field public static final CHUNK_VUGL:I

.field private static final CHUNK_VULW:I

.field private static final CHUNK_VUOP:I

.field private static final CHUNK_VURT:I

.field private static final ERR_EXCEPTION:I = -0x3

.field private static final ERR_INVALID_OP:I = -0x1

.field private static final ERR_INVALID_PARAM:I = -0x2

.field private static final TAG:Ljava/lang/String; = "DdmViewDebug"

.field private static final VUOP_CAPTURE_VIEW:I = 0x1

.field private static final VUOP_DUMP_DISPLAYLIST:I = 0x2

.field private static final VUOP_INVOKE_VIEW_METHOD:I = 0x4

.field private static final VUOP_PROFILE_VIEW:I = 0x3

.field private static final VUOP_SET_LAYOUT_PARAMETER:I = 0x5

.field private static final VURT_CAPTURE_LAYERS:I = 0x2

.field private static final VURT_DUMP_HIERARCHY:I = 0x1

.field private static final sInstance:Landroid/ddm/DdmHandleViewDebug;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "VUGL"

    invoke-static {v0}, Landroid/ddm/DdmHandleViewDebug;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VUGL:I

    .line 48
    const-string v0, "VULW"

    invoke-static {v0}, Landroid/ddm/DdmHandleViewDebug;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VULW:I

    .line 51
    const-string v0, "VURT"

    invoke-static {v0}, Landroid/ddm/DdmHandleViewDebug;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VURT:I

    .line 63
    const-string v0, "VUOP"

    invoke-static {v0}, Landroid/ddm/DdmHandleViewDebug;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VUOP:I

    .line 91
    new-instance v0, Landroid/ddm/DdmHandleViewDebug;

    invoke-direct {v0}, Landroid/ddm/DdmHandleViewDebug;-><init>()V

    sput-object v0, Landroid/ddm/DdmHandleViewDebug;->sInstance:Landroid/ddm/DdmHandleViewDebug;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;-><init>()V

    return-void
.end method

.method private captureLayers(Landroid/view/View;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 8
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 242
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0x400

    invoke-direct {v0, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 243
    .local v0, "b":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 245
    .local v2, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    invoke-static {p1, v2}, Landroid/view/ViewDebug;->captureLayers(Landroid/view/View;Ljava/io/DataOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 257
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 258
    .local v1, "data":[B
    new-instance v4, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v5, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VURT:I

    const/4 v6, 0x0

    array-length v7, v1

    invoke-direct {v4, v5, v1, v6, v7}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    .end local v1    # "data":[B
    :goto_1
    return-object v4

    .line 246
    :catch_0
    move-exception v3

    .line 247
    .local v3, "e":Ljava/io/IOException;
    const/4 v4, 0x1

    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected error while obtaining view hierarchy: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/ddm/DdmHandleViewDebug;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 251
    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 252
    :catch_1
    move-exception v5

    goto :goto_1

    .line 250
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 251
    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 254
    :goto_2
    throw v4

    .line 252
    :catch_2
    move-exception v4

    goto :goto_0

    :catch_3
    move-exception v5

    goto :goto_2
.end method

.method private captureView(Landroid/view/View;Landroid/view/View;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 7
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "targetView"    # Landroid/view/View;

    .prologue
    .line 262
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x400

    invoke-direct {v0, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 264
    .local v0, "b":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-static {p1, v0, p2}, Landroid/view/ViewDebug;->capture(Landroid/view/View;Ljava/io/OutputStream;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 271
    .local v1, "data":[B
    new-instance v3, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v4, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VUOP:I

    const/4 v5, 0x0

    array-length v6, v1

    invoke-direct {v3, v4, v1, v5, v6}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    .end local v1    # "data":[B
    :goto_0
    return-object v3

    .line 265
    :catch_0
    move-exception v2

    .line 266
    .local v2, "e":Ljava/io/IOException;
    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected error while capturing view: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/ddm/DdmHandleViewDebug;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v3

    goto :goto_0
.end method

.method private dumpDisplayLists(Landroid/view/View;Landroid/view/View;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "targetView"    # Landroid/view/View;

    .prologue
    .line 276
    new-instance v0, Landroid/ddm/DdmHandleViewDebug$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/ddm/DdmHandleViewDebug$1;-><init>(Landroid/ddm/DdmHandleViewDebug;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 282
    const/4 v0, 0x0

    return-object v0
.end method

.method private dumpHierarchy(Landroid/view/View;Ljava/nio/ByteBuffer;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 9
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "in"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 225
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    if-lez v7, :cond_0

    move v4, v5

    .line 226
    .local v4, "skipChildren":Z
    :goto_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    if-lez v7, :cond_1

    move v3, v5

    .line 228
    .local v3, "includeProperties":Z
    :goto_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v7, 0x400

    invoke-direct {v0, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 230
    .local v0, "b":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-static {p1, v4, v3, v0}, Landroid/view/ViewDebug;->dump(Landroid/view/View;ZZLjava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 237
    .local v1, "data":[B
    new-instance v5, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v7, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VURT:I

    array-length v8, v1

    invoke-direct {v5, v7, v1, v6, v8}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    .end local v1    # "data":[B
    :goto_2
    return-object v5

    .end local v0    # "b":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "includeProperties":Z
    .end local v4    # "skipChildren":Z
    :cond_0
    move v4, v6

    .line 225
    goto :goto_0

    .restart local v4    # "skipChildren":Z
    :cond_1
    move v3, v6

    .line 226
    goto :goto_1

    .line 231
    .restart local v0    # "b":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "includeProperties":Z
    :catch_0
    move-exception v2

    .line 232
    .local v2, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected error while obtaining view hierarchy: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/ddm/DdmHandleViewDebug;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v5

    goto :goto_2
.end method

.method private getRootView(Ljava/nio/ByteBuffer;)Landroid/view/View;
    .locals 4
    .param p1, "in"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 193
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 194
    .local v2, "viewRootNameLength":I
    invoke-static {p1, v2}, Landroid/ddm/DdmHandleViewDebug;->getString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, "viewRootName":Ljava/lang/String;
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/WindowManagerGlobal;->getRootView(Ljava/lang/String;)Landroid/view/View;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 197
    .end local v1    # "viewRootName":Ljava/lang/String;
    .end local v2    # "viewRootNameLength":I
    :goto_0
    return-object v3

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getTargetView(Landroid/view/View;Ljava/nio/ByteBuffer;)Landroid/view/View;
    .locals 4
    .param p1, "root"    # Landroid/view/View;
    .param p2, "in"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 206
    :try_start_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 207
    .local v1, "viewLength":I
    invoke-static {p2, v1}, Landroid/ddm/DdmHandleViewDebug;->getString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 212
    .local v2, "viewName":Ljava/lang/String;
    invoke-static {p1, v2}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    .end local v1    # "viewLength":I
    .end local v2    # "viewName":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private handleOpenGlTrace(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 2
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .prologue
    .line 164
    invoke-static {p1}, Landroid/ddm/DdmHandleViewDebug;->wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 165
    .local v0, "in":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLUtils;->setTracingLevel(I)V

    .line 166
    const/4 v1, 0x0

    return-object v1
.end method

.method private invokeViewMethod(Landroid/view/View;Landroid/view/View;Ljava/nio/ByteBuffer;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 14
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "targetView"    # Landroid/view/View;
    .param p3, "in"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 302
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    .line 303
    .local v6, "l":I
    move-object/from16 v0, p3

    invoke-static {v0, v6}, Landroid/ddm/DdmHandleViewDebug;->getString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v8

    .line 307
    .local v8, "methodName":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v11

    if-nez v11, :cond_1

    .line 308
    const/4 v11, 0x0

    new-array v1, v11, [Ljava/lang/Class;

    .line 309
    .local v1, "argTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v11, 0x0

    new-array v2, v11, [Ljava/lang/Object;

    .line 359
    .local v2, "args":[Ljava/lang/Object;
    :cond_0
    const/4 v7, 0x0

    .line 361
    .local v7, "method":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11, v8, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 369
    :try_start_1
    move-object/from16 v0, p2

    invoke-static {v0, v7, v2}, Landroid/view/ViewDebug;->invokeViewMethod(Landroid/view/View;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 379
    const/4 v11, 0x0

    .end local v7    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v11

    .line 311
    .end local v1    # "argTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v2    # "args":[Ljava/lang/Object;
    :cond_1
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    .line 313
    .local v10, "nArgs":I
    new-array v1, v10, [Ljava/lang/Class;

    .line 314
    .restart local v1    # "argTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-array v2, v10, [Ljava/lang/Object;

    .line 316
    .restart local v2    # "args":[Ljava/lang/Object;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v10, :cond_0

    .line 317
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v3

    .line 318
    .local v3, "c":C
    sparse-switch v3, :sswitch_data_0

    .line 352
    const-string v11, "DdmViewDebug"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "arg "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", unrecognized type: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const/4 v11, -0x2

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unsupported parameter type ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ") to invoke view method."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/ddm/DdmHandleViewDebug;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v11

    goto :goto_0

    .line 320
    :sswitch_0
    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v11, v1, v5

    .line 321
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v11

    if-nez v11, :cond_2

    const/4 v11, 0x0

    :goto_2
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v2, v5

    .line 316
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 321
    :cond_2
    const/4 v11, 0x1

    goto :goto_2

    .line 324
    :sswitch_1
    sget-object v11, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v11, v1, v5

    .line 325
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v11

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    aput-object v11, v2, v5

    goto :goto_3

    .line 328
    :sswitch_2
    sget-object v11, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v11, v1, v5

    .line 329
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    aput-object v11, v2, v5

    goto :goto_3

    .line 332
    :sswitch_3
    sget-object v11, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v11, v1, v5

    .line 333
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v11

    invoke-static {v11}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v11

    aput-object v11, v2, v5

    goto :goto_3

    .line 336
    :sswitch_4
    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v1, v5

    .line 337
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v2, v5

    goto :goto_3

    .line 340
    :sswitch_5
    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v11, v1, v5

    .line 341
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v2, v5

    goto :goto_3

    .line 344
    :sswitch_6
    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v11, v1, v5

    .line 345
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v2, v5

    goto :goto_3

    .line 348
    :sswitch_7
    sget-object v11, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v11, v1, v5

    .line 349
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v2, v5

    goto :goto_3

    .line 362
    .end local v3    # "c":C
    .end local v5    # "i":I
    .end local v10    # "nArgs":I
    .restart local v7    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v4

    .line 363
    .local v4, "e":Ljava/lang/NoSuchMethodException;
    const-string v11, "DdmViewDebug"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "No such method: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const/4 v11, -0x2

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "No such method: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/ddm/DdmHandleViewDebug;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v11

    goto/16 :goto_0

    .line 370
    .end local v4    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v4

    .line 371
    .local v4, "e":Ljava/lang/Exception;
    const-string v11, "DdmViewDebug"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception while invoking method: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-virtual {v4}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    .line 373
    .local v9, "msg":Ljava/lang/String;
    if-nez v9, :cond_3

    .line 374
    invoke-virtual {v4}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    .line 376
    :cond_3
    const/4 v11, -0x3

    invoke-static {v11, v9}, Landroid/ddm/DdmHandleViewDebug;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v11

    goto/16 :goto_0

    .line 318
    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_1
        0x43 -> :sswitch_2
        0x44 -> :sswitch_7
        0x46 -> :sswitch_6
        0x49 -> :sswitch_4
        0x4a -> :sswitch_5
        0x53 -> :sswitch_3
        0x5a -> :sswitch_0
    .end sparse-switch
.end method

.method private listWindows()Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 9

    .prologue
    .line 171
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/WindowManagerGlobal;->getViewRootNames()[Ljava/lang/String;

    move-result-object v6

    .line 173
    .local v6, "windowNames":[Ljava/lang/String;
    const/4 v5, 0x4

    .line 174
    .local v5, "responseLength":I
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 175
    .local v3, "name":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x4

    .line 176
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v5, v7

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    .end local v3    # "name":Ljava/lang/String;
    :cond_0
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 180
    .local v4, "out":Ljava/nio/ByteBuffer;
    sget-object v7, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->CHUNK_ORDER:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 182
    array-length v7, v6

    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 183
    move-object v0, v6

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 184
    .restart local v3    # "name":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 185
    invoke-static {v4, v3}, Landroid/ddm/DdmHandleViewDebug;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 183
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 188
    .end local v3    # "name":Ljava/lang/String;
    :cond_1
    new-instance v7, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v8, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VULW:I

    invoke-direct {v7, v8, v4}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(ILjava/nio/ByteBuffer;)V

    return-object v7
.end method

.method private profileView(Landroid/view/View;Landroid/view/View;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 8
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "targetView"    # Landroid/view/View;

    .prologue
    const v5, 0x8000

    .line 399
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 400
    .local v0, "b":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 402
    .local v1, "bw":Ljava/io/BufferedWriter;
    :try_start_0
    invoke-static {p2, v1}, Landroid/view/ViewDebug;->profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 413
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 414
    .local v2, "data":[B
    new-instance v4, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v5, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VUOP:I

    const/4 v6, 0x0

    array-length v7, v2

    invoke-direct {v4, v5, v2, v6, v7}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    .end local v2    # "data":[B
    :goto_1
    return-object v4

    .line 403
    :catch_0
    move-exception v3

    .line 404
    .local v3, "e":Ljava/io/IOException;
    const/4 v4, 0x1

    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected error while profiling view: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/ddm/DdmHandleViewDebug;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 407
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 408
    :catch_1
    move-exception v5

    goto :goto_1

    .line 406
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 407
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 410
    :goto_2
    throw v4

    .line 408
    :catch_2
    move-exception v4

    goto :goto_0

    :catch_3
    move-exception v5

    goto :goto_2
.end method

.method public static register()V
    .locals 2

    .prologue
    .line 97
    sget v0, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VUGL:I

    sget-object v1, Landroid/ddm/DdmHandleViewDebug;->sInstance:Landroid/ddm/DdmHandleViewDebug;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 98
    sget v0, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VULW:I

    sget-object v1, Landroid/ddm/DdmHandleViewDebug;->sInstance:Landroid/ddm/DdmHandleViewDebug;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 99
    sget v0, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VURT:I

    sget-object v1, Landroid/ddm/DdmHandleViewDebug;->sInstance:Landroid/ddm/DdmHandleViewDebug;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 100
    sget v0, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VUOP:I

    sget-object v1, Landroid/ddm/DdmHandleViewDebug;->sInstance:Landroid/ddm/DdmHandleViewDebug;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 101
    return-void
.end method

.method private setLayoutParameter(Landroid/view/View;Landroid/view/View;Ljava/nio/ByteBuffer;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 7
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "targetView"    # Landroid/view/View;
    .param p3, "in"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 383
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 384
    .local v1, "l":I
    invoke-static {p3, v1}, Landroid/ddm/DdmHandleViewDebug;->getString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v2

    .line 385
    .local v2, "param":Ljava/lang/String;
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 387
    .local v3, "value":I
    :try_start_0
    invoke-static {p2, v2, v3}, Landroid/view/ViewDebug;->setLayoutParameter(Landroid/view/View;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    const/4 v4, 0x0

    :goto_0
    return-object v4

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "DdmViewDebug"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception setting layout parameter: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const/4 v4, -0x3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error accessing field "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/ddm/DdmHandleViewDebug;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v4

    goto :goto_0
.end method


# virtual methods
.method public connected()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public disconnected()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public handleChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 8
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .prologue
    const/4 v7, -0x1

    const/4 v6, -0x2

    .line 113
    iget v4, p1, Lorg/apache/harmony/dalvik/ddmc/Chunk;->type:I

    .line 115
    .local v4, "type":I
    sget v5, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VUGL:I

    if-ne v4, v5, :cond_0

    .line 116
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleViewDebug;->handleOpenGlTrace(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v5

    .line 156
    :goto_0
    return-object v5

    .line 117
    :cond_0
    sget v5, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VULW:I

    if-ne v4, v5, :cond_1

    .line 118
    invoke-direct {p0}, Landroid/ddm/DdmHandleViewDebug;->listWindows()Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v5

    goto :goto_0

    .line 121
    :cond_1
    invoke-static {p1}, Landroid/ddm/DdmHandleViewDebug;->wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 122
    .local v0, "in":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 124
    .local v1, "op":I
    invoke-direct {p0, v0}, Landroid/ddm/DdmHandleViewDebug;->getRootView(Ljava/nio/ByteBuffer;)Landroid/view/View;

    move-result-object v2

    .line 125
    .local v2, "rootView":Landroid/view/View;
    if-nez v2, :cond_2

    .line 126
    const-string v5, "Invalid View Root"

    invoke-static {v6, v5}, Landroid/ddm/DdmHandleViewDebug;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v5

    goto :goto_0

    .line 129
    :cond_2
    sget v5, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VURT:I

    if-ne v4, v5, :cond_5

    .line 130
    const/4 v5, 0x1

    if-ne v1, v5, :cond_3

    .line 131
    invoke-direct {p0, v2, v0}, Landroid/ddm/DdmHandleViewDebug;->dumpHierarchy(Landroid/view/View;Ljava/nio/ByteBuffer;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v5

    goto :goto_0

    .line 132
    :cond_3
    const/4 v5, 0x2

    if-ne v1, v5, :cond_4

    .line 133
    invoke-direct {p0, v2}, Landroid/ddm/DdmHandleViewDebug;->captureLayers(Landroid/view/View;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v5

    goto :goto_0

    .line 135
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown view root operation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/ddm/DdmHandleViewDebug;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v5

    goto :goto_0

    .line 138
    :cond_5
    invoke-direct {p0, v2, v0}, Landroid/ddm/DdmHandleViewDebug;->getTargetView(Landroid/view/View;Ljava/nio/ByteBuffer;)Landroid/view/View;

    move-result-object v3

    .line 139
    .local v3, "targetView":Landroid/view/View;
    if-nez v3, :cond_6

    .line 140
    const-string v5, "Invalid target view"

    invoke-static {v6, v5}, Landroid/ddm/DdmHandleViewDebug;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v5

    goto :goto_0

    .line 143
    :cond_6
    sget v5, Landroid/ddm/DdmHandleViewDebug;->CHUNK_VUOP:I

    if-ne v4, v5, :cond_7

    .line 144
    packed-switch v1, :pswitch_data_0

    .line 156
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown view operation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/ddm/DdmHandleViewDebug;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v5

    goto :goto_0

    .line 146
    :pswitch_0
    invoke-direct {p0, v2, v3}, Landroid/ddm/DdmHandleViewDebug;->captureView(Landroid/view/View;Landroid/view/View;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v5

    goto :goto_0

    .line 148
    :pswitch_1
    invoke-direct {p0, v2, v3}, Landroid/ddm/DdmHandleViewDebug;->dumpDisplayLists(Landroid/view/View;Landroid/view/View;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v5

    goto :goto_0

    .line 150
    :pswitch_2
    invoke-direct {p0, v2, v3}, Landroid/ddm/DdmHandleViewDebug;->profileView(Landroid/view/View;Landroid/view/View;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v5

    goto/16 :goto_0

    .line 152
    :pswitch_3
    invoke-direct {p0, v2, v3, v0}, Landroid/ddm/DdmHandleViewDebug;->invokeViewMethod(Landroid/view/View;Landroid/view/View;Ljava/nio/ByteBuffer;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v5

    goto/16 :goto_0

    .line 154
    :pswitch_4
    invoke-direct {p0, v2, v3, v0}, Landroid/ddm/DdmHandleViewDebug;->setLayoutParameter(Landroid/view/View;Landroid/view/View;Ljava/nio/ByteBuffer;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v5

    goto/16 :goto_0

    .line 159
    :cond_7
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown packet "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->name(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 144
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
