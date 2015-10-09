.class public Landroid/filterpacks/text/StringLogger;
.super Landroid/filterfw/core/Filter;
.source "StringLogger.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 34
    return-void
.end method


# virtual methods
.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 3
    .param p1, "env"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 44
    const-string/jumbo v2, "string"

    invoke-virtual {p0, v2}, Landroid/filterpacks/text/StringLogger;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 45
    .local v0, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getObjectValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "inputString":Ljava/lang/String;
    const-string v2, "StringLogger"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void
.end method

.method public setupPorts()V
    .locals 3

    .prologue
    .line 38
    const-string/jumbo v0, "string"

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/text/StringLogger;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 40
    return-void
.end method
