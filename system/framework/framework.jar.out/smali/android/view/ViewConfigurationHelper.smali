.class public Landroid/view/ViewConfigurationHelper;
.super Ljava/lang/Object;
.source "ViewConfigurationHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 10
    invoke-static {p0}, Landroid/view/ViewConfigurationInjector;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    return-object v0
.end method

.method static getOverFlingDistance(Landroid/content/Context;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defaultValue"    # I

    .prologue
    .line 26
    invoke-static {p0, p1}, Landroid/view/ViewConfigurationInjector;->getOverFlingDistance(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method static getOverScrollDistance(Landroid/content/Context;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defaultValue"    # I

    .prologue
    .line 22
    invoke-static {p0, p1}, Landroid/view/ViewConfigurationInjector;->getOverScrollDistance(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method static needMiuiConfiguration(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-static {p0}, Landroid/view/ViewConfigurationInjector;->needMiuiConfiguration(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static put(Landroid/content/Context;Landroid/view/ViewConfiguration;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "configuration"    # Landroid/view/ViewConfiguration;

    .prologue
    .line 18
    invoke-static {p0, p1}, Landroid/view/ViewConfigurationInjector;->put(Landroid/content/Context;Landroid/view/ViewConfiguration;)V

    .line 19
    return-void
.end method
