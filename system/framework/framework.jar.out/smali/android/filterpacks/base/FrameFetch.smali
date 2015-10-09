.class public Landroid/filterpacks/base/FrameFetch;
.super Landroid/filterfw/core/Filter;
.source "FrameFetch.java"


# instance fields
.field private mFormat:Landroid/filterfw/core/FrameFormat;
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = true
        name = "format"
    .end annotation
.end field

.field private mKey:Ljava/lang/String;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "key"
    .end annotation
.end field

.field private mRepeatFrame:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "repeatFrame"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/filterpacks/base/FrameFetch;->mRepeatFrame:Z

    .line 45
    return-void
.end method


# virtual methods
.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 2
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 53
    iget-object v1, p0, Landroid/filterpacks/base/FrameFetch;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/filterfw/core/FilterContext;->fetchFrame(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 54
    .local v0, "output":Landroid/filterfw/core/Frame;
    if-eqz v0, :cond_1

    .line 55
    const-string v1, "frame"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/base/FrameFetch;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 56
    iget-boolean v1, p0, Landroid/filterpacks/base/FrameFetch;->mRepeatFrame:Z

    if-nez v1, :cond_0

    .line 57
    const-string v1, "frame"

    invoke-virtual {p0, v1}, Landroid/filterpacks/base/FrameFetch;->closeOutputPort(Ljava/lang/String;)V

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    const/16 v1, 0xfa

    invoke-virtual {p0, v1}, Landroid/filterpacks/base/FrameFetch;->delayNextProcess(I)V

    goto :goto_0
.end method

.method public setupPorts()V
    .locals 2

    .prologue
    .line 49
    const-string v1, "frame"

    iget-object v0, p0, Landroid/filterpacks/base/FrameFetch;->mFormat:Landroid/filterfw/core/FrameFormat;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/filterfw/core/FrameFormat;->unspecified()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/base/FrameFetch;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 50
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Landroid/filterpacks/base/FrameFetch;->mFormat:Landroid/filterfw/core/FrameFormat;

    goto :goto_0
.end method
