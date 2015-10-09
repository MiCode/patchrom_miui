.class public Landroid/net/wifi/MiuiWifiManager;
.super Ljava/lang/Object;
.source "MiuiWifiManager.java"


# static fields
.field private static final MAX_RSSI:I = -0x41

.field private static final MIN_RSSI:I = -0x64


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateSignalLevel(II)I
    .locals 3
    .param p0, "rssi"    # I
    .param p1, "numLevels"    # I

    .prologue
    .line 22
    const/16 v2, -0x64

    if-gt p0, v2, :cond_0

    .line 23
    const/4 v2, 0x0

    .line 29
    :goto_0
    return v2

    .line 24
    :cond_0
    const/16 v2, -0x41

    if-lt p0, v2, :cond_1

    .line 25
    add-int/lit8 v2, p1, -0x1

    goto :goto_0

    .line 27
    :cond_1
    const/high16 v0, 0x420c0000    # 35.0f

    .line 28
    .local v0, "inputRange":F
    add-int/lit8 v2, p1, -0x1

    int-to-float v1, v2

    .line 29
    .local v1, "outputRange":F
    add-int/lit8 v2, p0, 0x64

    int-to-float v2, v2

    mul-float/2addr v2, v1

    div-float/2addr v2, v0

    float-to-int v2, v2

    goto :goto_0
.end method
