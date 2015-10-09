.class public final Landroid/util/MiuiDisplayMetrics;
.super Ljava/lang/Object;
.source "MiuiDisplayMetrics.java"


# static fields
.field public static final DENSITY_NXHGITH:I = 0x1b8

.field public static final PROP_MIUI_DENSITY:Ljava/lang/String; = "persist.miui.density_v2"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFactoryDeviceDensity()I
    .locals 2

    .prologue
    .line 29
    const-string/jumbo v0, "ro.sf.lcd_density"

    const/16 v1, 0xa0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static final getNxhdpiDensity()I
    .locals 1

    .prologue
    .line 22
    const/16 v0, 0x1b8

    return v0
.end method

.method public static setOverlayDensity(I)Z
    .locals 9
    .param p0, "overlayDensity"    # I

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-static {}, Landroid/util/MiuiDisplayMetrics;->getFactoryDeviceDensity()I

    move-result v1

    .line 34
    .local v1, "factoryDensity":I
    int-to-float v3, v1

    const/high16 v4, 0x3fc00000    # 1.5f

    div-float/2addr v3, v4

    int-to-float v4, p0

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_0

    int-to-double v3, p0

    int-to-double v5, v1

    const-wide/high16 v7, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v5, v7

    cmpg-double v3, v3, v5

    if-gtz v3, :cond_0

    .line 35
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 36
    .local v0, "currentDensity":I
    if-eq v0, p0, :cond_0

    .line 37
    const-string/jumbo v3, "persist.miui.density_v2"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string/jumbo v3, "persist.miui.density_v2"

    const/4 v4, -0x1

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne p0, v3, :cond_0

    const/4 v2, 0x1

    .line 41
    .end local v0    # "currentDensity":I
    :cond_0
    return v2
.end method
