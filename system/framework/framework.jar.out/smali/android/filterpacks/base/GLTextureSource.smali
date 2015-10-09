.class public Landroid/filterpacks/base/GLTextureSource;
.super Landroid/filterfw/core/Filter;
.source "GLTextureSource.java"


# instance fields
.field private mFrame:Landroid/filterfw/core/Frame;

.field private mHeight:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "height"
    .end annotation
.end field

.field private mRepeatFrame:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "repeatFrame"
    .end annotation
.end field

.field private mTexId:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "texId"
    .end annotation
.end field

.field private mTimestamp:J
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "timestamp"
    .end annotation
.end field

.field private mWidth:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "width"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/filterpacks/base/GLTextureSource;->mRepeatFrame:Z

    .line 53
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/filterpacks/base/GLTextureSource;->mTimestamp:J

    .line 60
    return-void
.end method


# virtual methods
.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 71
    iget-object v0, p0, Landroid/filterpacks/base/GLTextureSource;->mFrame:Landroid/filterfw/core/Frame;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Landroid/filterpacks/base/GLTextureSource;->mFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterpacks/base/GLTextureSource;->mFrame:Landroid/filterfw/core/Frame;

    .line 75
    :cond_0
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 5
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    const/4 v3, 0x3

    .line 80
    iget-object v1, p0, Landroid/filterpacks/base/GLTextureSource;->mFrame:Landroid/filterfw/core/Frame;

    if-nez v1, :cond_0

    .line 81
    iget v1, p0, Landroid/filterpacks/base/GLTextureSource;->mWidth:I

    iget v2, p0, Landroid/filterpacks/base/GLTextureSource;->mHeight:I

    invoke-static {v1, v2, v3, v3}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 84
    .local v0, "outputFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v1

    const/16 v2, 0x64

    iget v3, p0, Landroid/filterpacks/base/GLTextureSource;->mTexId:I

    int-to-long v3, v3

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/filterfw/core/FrameManager;->newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    move-result-object v1

    iput-object v1, p0, Landroid/filterpacks/base/GLTextureSource;->mFrame:Landroid/filterfw/core/Frame;

    .line 87
    iget-object v1, p0, Landroid/filterpacks/base/GLTextureSource;->mFrame:Landroid/filterfw/core/Frame;

    iget-wide v2, p0, Landroid/filterpacks/base/GLTextureSource;->mTimestamp:J

    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/Frame;->setTimestamp(J)V

    .line 91
    .end local v0    # "outputFormat":Landroid/filterfw/core/FrameFormat;
    :cond_0
    const-string v1, "frame"

    iget-object v2, p0, Landroid/filterpacks/base/GLTextureSource;->mFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {p0, v1, v2}, Landroid/filterpacks/base/GLTextureSource;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 93
    iget-boolean v1, p0, Landroid/filterpacks/base/GLTextureSource;->mRepeatFrame:Z

    if-nez v1, :cond_1

    .line 95
    const-string v1, "frame"

    invoke-virtual {p0, v1}, Landroid/filterpacks/base/GLTextureSource;->closeOutputPort(Ljava/lang/String;)V

    .line 97
    :cond_1
    return-void
.end method

.method public setupPorts()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 64
    const-string v0, "frame"

    invoke-static {v1, v1}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/base/GLTextureSource;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 66
    return-void
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 101
    iget-object v0, p0, Landroid/filterpacks/base/GLTextureSource;->mFrame:Landroid/filterfw/core/Frame;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Landroid/filterpacks/base/GLTextureSource;->mFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 104
    :cond_0
    return-void
.end method
