.class public Landroid/filterpacks/text/ToUpperCase;
.super Landroid/filterfw/core/Filter;
.source "ToUpperCase.java"


# instance fields
.field private mOutputFormat:Landroid/filterfw/core/FrameFormat;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 37
    return-void
.end method


# virtual methods
.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 5
    .param p1, "env"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 48
    const-string/jumbo v3, "mixedcase"

    invoke-virtual {p0, v3}, Landroid/filterpacks/text/ToUpperCase;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 49
    .local v0, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getObjectValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 51
    .local v1, "inputString":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v3

    iget-object v4, p0, Landroid/filterpacks/text/ToUpperCase;->mOutputFormat:Landroid/filterfw/core/FrameFormat;

    invoke-virtual {v3, v4}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v2

    .line 52
    .local v2, "output":Landroid/filterfw/core/Frame;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/filterfw/core/Frame;->setObjectValue(Ljava/lang/Object;)V

    .line 54
    const-string/jumbo v3, "uppercase"

    invoke-virtual {p0, v3, v2}, Landroid/filterpacks/text/ToUpperCase;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 55
    return-void
.end method

.method public setupPorts()V
    .locals 2

    .prologue
    .line 41
    const-class v0, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/filterpacks/text/ToUpperCase;->mOutputFormat:Landroid/filterfw/core/FrameFormat;

    .line 42
    const-string/jumbo v0, "mixedcase"

    iget-object v1, p0, Landroid/filterpacks/text/ToUpperCase;->mOutputFormat:Landroid/filterfw/core/FrameFormat;

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/text/ToUpperCase;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 43
    const-string/jumbo v0, "uppercase"

    iget-object v1, p0, Landroid/filterpacks/text/ToUpperCase;->mOutputFormat:Landroid/filterfw/core/FrameFormat;

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/text/ToUpperCase;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 44
    return-void
.end method
