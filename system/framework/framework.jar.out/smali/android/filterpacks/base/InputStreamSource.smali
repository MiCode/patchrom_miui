.class public Landroid/filterpacks/base/InputStreamSource;
.super Landroid/filterfw/core/Filter;
.source "InputStreamSource.java"


# instance fields
.field private mInputStream:Ljava/io/InputStream;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "stream"
    .end annotation
.end field

.field private mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = true
        name = "format"
    .end annotation
.end field

.field private mTarget:Ljava/lang/String;
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        name = "target"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterpacks/base/InputStreamSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    .line 51
    return-void
.end method


# virtual methods
.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 10
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 64
    const/4 v5, 0x0

    .line 65
    .local v5, "fileSize":I
    const/4 v1, 0x0

    .line 69
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 70
    .local v2, "byteStream":Ljava/io/ByteArrayOutputStream;
    const/16 v7, 0x400

    new-array v0, v7, [B

    .line 72
    .local v0, "buffer":[B
    :goto_0
    iget-object v7, p0, Landroid/filterpacks/base/InputStreamSource;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v7, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "bytesRead":I
    if-lez v3, :cond_0

    .line 73
    const/4 v7, 0x0

    invoke-virtual {v2, v0, v7, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 74
    add-int/2addr v5, v3

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 83
    iget-object v7, p0, Landroid/filterpacks/base/InputStreamSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v7, v5}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(I)V

    .line 84
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v7

    iget-object v8, p0, Landroid/filterpacks/base/InputStreamSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v7, v8}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v6

    .line 85
    .local v6, "output":Landroid/filterfw/core/Frame;
    invoke-virtual {v6, v1}, Landroid/filterfw/core/Frame;->setData(Ljava/nio/ByteBuffer;)V

    .line 88
    const-string v7, "data"

    invoke-virtual {p0, v7, v6}, Landroid/filterpacks/base/InputStreamSource;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 91
    invoke-virtual {v6}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 94
    const-string v7, "data"

    invoke-virtual {p0, v7}, Landroid/filterpacks/base/InputStreamSource;->closeOutputPort(Ljava/lang/String;)V

    .line 95
    return-void

    .line 77
    .end local v0    # "buffer":[B
    .end local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "bytesRead":I
    .end local v6    # "output":Landroid/filterfw/core/Frame;
    :catch_0
    move-exception v4

    .line 78
    .local v4, "exception":Ljava/io/IOException;
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "InputStreamSource: Could not read stream: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public setupPorts()V
    .locals 3

    .prologue
    .line 55
    iget-object v1, p0, Landroid/filterpacks/base/InputStreamSource;->mTarget:Ljava/lang/String;

    invoke-static {v1}, Landroid/filterfw/core/FrameFormat;->readTargetString(Ljava/lang/String;)I

    move-result v0

    .line 56
    .local v0, "target":I
    iget-object v1, p0, Landroid/filterpacks/base/InputStreamSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    if-nez v1, :cond_0

    .line 57
    invoke-static {v0}, Landroid/filterfw/format/PrimitiveFormat;->createByteFormat(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    iput-object v1, p0, Landroid/filterpacks/base/InputStreamSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    .line 59
    :cond_0
    const-string v1, "data"

    iget-object v2, p0, Landroid/filterpacks/base/InputStreamSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {p0, v1, v2}, Landroid/filterpacks/base/InputStreamSource;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 60
    return-void
.end method
