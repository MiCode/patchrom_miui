.class public Landroid/view/ViewConfigurationInjector;
.super Ljava/lang/Object;
.source "ViewConfigurationInjector.java"


# static fields
.field private static final sConfigrations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/ViewConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Landroid/view/ViewConfigurationInjector;->sConfigrations:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-static {p0}, Lmiui/os/Environment;->isUsingMiui(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 20
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    const/high16 v3, 0x42c80000    # 100.0f

    iget v4, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 22
    .local v1, "density":I
    sget-object v3, Landroid/view/ViewConfigurationInjector;->sConfigrations:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewConfiguration;

    .line 25
    .end local v1    # "density":I
    .end local v2    # "metrics":Landroid/util/DisplayMetrics;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getOverFlingDistance(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defaultValue"    # I

    .prologue
    .line 48
    invoke-static {p0}, Lmiui/os/Environment;->isUsingMiui(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x110a0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int p1, v0

    .line 51
    .end local p1    # "defaultValue":I
    :cond_0
    return p1
.end method

.method static getOverScrollDistance(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defaultValue"    # I

    .prologue
    .line 41
    invoke-static {p0}, Lmiui/os/Environment;->isUsingMiui(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x110a0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int p1, v0

    .line 44
    .end local p1    # "defaultValue":I
    :cond_0
    return p1
.end method

.method static needMiuiConfiguration(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-static {p0}, Lmiui/os/Environment;->isUsingMiui(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static put(Landroid/content/Context;Landroid/view/ViewConfiguration;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "configuration"    # Landroid/view/ViewConfiguration;

    .prologue
    .line 33
    invoke-static {p0}, Lmiui/os/Environment;->isUsingMiui(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 35
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    const/high16 v2, 0x42c80000    # 100.0f

    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 36
    .local v0, "density":I
    sget-object v2, Landroid/view/ViewConfigurationInjector;->sConfigrations:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 38
    .end local v0    # "density":I
    .end local v1    # "metrics":Landroid/util/DisplayMetrics;
    :cond_0
    return-void
.end method
