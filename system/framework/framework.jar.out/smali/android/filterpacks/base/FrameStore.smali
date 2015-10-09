.class public Landroid/filterpacks/base/FrameStore;
.super Landroid/filterfw/core/Filter;
.source "FrameStore.java"


# instance fields
.field private mKey:Ljava/lang/String;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "key"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 36
    return-void
.end method


# virtual methods
.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 2
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 45
    const-string v1, "frame"

    invoke-virtual {p0, v1}, Landroid/filterpacks/base/FrameStore;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 48
    .local v0, "input":Landroid/filterfw/core/Frame;
    iget-object v1, p0, Landroid/filterpacks/base/FrameStore;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/filterfw/core/FilterContext;->storeFrame(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 49
    return-void
.end method

.method public setupPorts()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "frame"

    invoke-virtual {p0, v0}, Landroid/filterpacks/base/FrameStore;->addInputPort(Ljava/lang/String;)V

    .line 41
    return-void
.end method
