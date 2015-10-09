.class public Landroid/filterpacks/base/NullFilter;
.super Landroid/filterfw/core/Filter;
.source "NullFilter.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 32
    return-void
.end method


# virtual methods
.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 41
    const-string v0, "frame"

    invoke-virtual {p0, v0}, Landroid/filterpacks/base/NullFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    .line 42
    return-void
.end method

.method public setupPorts()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "frame"

    invoke-virtual {p0, v0}, Landroid/filterpacks/base/NullFilter;->addInputPort(Ljava/lang/String;)V

    .line 37
    return-void
.end method
