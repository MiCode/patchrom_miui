.class public Landroid/filterpacks/base/OutputStreamTarget;
.super Landroid/filterfw/core/Filter;
.source "OutputStreamTarget.java"


# instance fields
.field private mOutputStream:Ljava/io/OutputStream;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "stream"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 40
    return-void
.end method


# virtual methods
.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 8
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 49
    const-string v4, "data"

    invoke-virtual {p0, v4}, Landroid/filterpacks/base/OutputStreamTarget;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v2

    .line 52
    .local v2, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v4

    invoke-virtual {v4}, Landroid/filterfw/core/FrameFormat;->getObjectClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/String;

    if-ne v4, v5, :cond_0

    .line 53
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->getObjectValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 54
    .local v3, "stringVal":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 59
    .end local v3    # "stringVal":Ljava/lang/String;
    .local v0, "data":Ljava/nio/ByteBuffer;
    :goto_0
    :try_start_0
    iget-object v4, p0, Landroid/filterpacks/base/OutputStreamTarget;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 60
    iget-object v4, p0, Landroid/filterpacks/base/OutputStreamTarget;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    return-void

    .line 56
    .end local v0    # "data":Ljava/nio/ByteBuffer;
    :cond_0
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    .restart local v0    # "data":Ljava/nio/ByteBuffer;
    goto :goto_0

    .line 61
    :catch_0
    move-exception v1

    .line 62
    .local v1, "exception":Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OutputStreamTarget: Could not write to stream: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public setupPorts()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "data"

    invoke-virtual {p0, v0}, Landroid/filterpacks/base/OutputStreamTarget;->addInputPort(Ljava/lang/String;)V

    .line 45
    return-void
.end method
