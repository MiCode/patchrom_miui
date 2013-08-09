.class public Lcom/android/settings/FrequentlySet;
.super Ljava/lang/Object;
.source "FrequentlySet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/FrequentlySet$HeaderItem;
    }
.end annotation


# static fields
.field private static sAllHeaderItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/FrequentlySet$HeaderItem;",
            ">;"
        }
    .end annotation
.end field

.field private static sHeaderId2Index:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sKey2Index:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sSearchHeaderItemIndex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sSearchKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/FrequentlySet;->sAllHeaderItemList:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/FrequentlySet;->sKey2Index:Ljava/util/HashMap;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/FrequentlySet;->sHeaderId2Index:Ljava/util/HashMap;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/FrequentlySet;->sSearchKeys:Ljava/util/ArrayList;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/FrequentlySet;->sSearchHeaderItemIndex:Ljava/util/ArrayList;

    .line 31
    const-string v0, "airplane_mode_settings"

    const v1, 0x7f06000b

    const v2, 0x7f0902a9

    const v3, 0x7f0c00ee

    const v4, 0x7f0c077a

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIII)V

    .line 32
    const-string v0, "mobile_network_settings"

    const v1, 0x7f060041

    const v2, 0x7f0902b6

    const v3, 0x7f0c0380

    const v4, 0x7f0c077b

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIII)V

    .line 33
    const-string v0, "wifi_settings"

    const v1, 0x7f06007f

    const v2, 0x7f0902bd

    const v3, 0x7f0c01d3

    const v4, 0x7f0c077c

    invoke-static/range {v0 .. v5}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIIIZ)V

    .line 34
    const-string v0, "bluetooth_settings"

    const v1, 0x7f060016

    const v2, 0x7f0902ac

    const v3, 0x7f0c016a

    const v4, 0x7f0c077d

    invoke-static/range {v0 .. v5}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIIIZ)V

    .line 35
    const-string v0, "android_beam_settings"

    const v1, 0x7f06000c

    const v2, 0x7f0902aa

    const v3, 0x7f0c01c7

    const v4, 0x7f0c077e

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIII)V

    .line 36
    const-string v0, "vpn_settings"

    const v1, 0x7f060077

    const v2, 0x7f0902d7

    const v3, 0x7f0c0572

    const v4, 0x7f0c077f

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIII)V

    .line 37
    const-string v0, "tether_settings"

    const v1, 0x7f06006e

    const v2, 0x7f0902d5

    const v3, 0x7f0c036f

    const v4, 0x7f0c0780

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIII)V

    .line 38
    const-string v0, "brightness"

    const v1, 0x7f060018

    const v2, 0x7f0902ad

    const v3, 0x7f0c02b1

    const v4, 0x7f0c0781

    invoke-static/range {v0 .. v5}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIIIZ)V

    .line 39
    const-string v0, "wallpaper"

    const v1, 0x7f060079

    const v2, 0x7f0902d8

    const v3, 0x7f0c02b5

    const v4, 0x7f0c0782

    invoke-static/range {v0 .. v5}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIIIZ)V

    .line 40
    const-string v0, "launcher_settings"

    const v1, 0x7f060039

    const v2, 0x7f0902b2

    const v3, 0x7f0c07bb

    const v4, 0x7f0c0783

    invoke-static/range {v0 .. v5}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIIIZ)V

    .line 41
    const-string v0, "accelerometer"

    const v1, 0x7f060001

    const v2, 0x7f0902a5

    const v3, 0x7f0c02ae

    const v4, 0x7f0c0784

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIII)V

    .line 42
    const-string v0, "screen_timeout"

    const v1, 0x7f06004d

    const v2, 0x7f0902ba

    const v3, 0x7f0c07bc

    const v4, 0x7f0c0785

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIII)V

    .line 43
    const-string v0, "ring_volume"

    const v1, 0x7f060049

    const v2, 0x7f0902b8

    const v3, 0x7f0c0284

    const v4, 0x7f0c0786

    invoke-static/range {v0 .. v5}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIIIZ)V

    .line 44
    const-string v0, "ringtone"

    const v1, 0x7f06004a

    const v2, 0x7f0902b9

    const v3, 0x7f0c0280

    const v4, 0x7f0c0787

    invoke-static/range {v0 .. v5}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIIIZ)V

    .line 45
    const-string v0, "sms_received_sound"

    const v1, 0x7f060065

    const v2, 0x7f0902d3

    const v3, 0x7f0c07a5

    const v4, 0x7f0c0788

    invoke-static/range {v0 .. v5}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIIIZ)V

    .line 46
    const-string v0, "unlock_set_or_change"

    const v1, 0x7f060074

    const v2, 0x7f0902d6

    const v3, 0x7f0c0133

    const v4, 0x7f0c078a

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIII)V

    .line 47
    const-string v0, "access_control_settings"

    const v1, 0x7f060003

    const v2, 0x7f0902a6

    const v3, 0x7f0c07aa

    const v4, 0x7f0c078b

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIII)V

    .line 48
    const-string v0, "location_gps"

    const v1, 0x7f060031

    const v2, 0x7f0902af

    const v3, 0x7f0c0385

    const v4, 0x7f0c078c

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIII)V

    .line 49
    const-string v0, "status_bar_settings"

    const v1, 0x7f060069

    const v2, 0x7f0902c4

    const v3, 0x7f0c07e4

    const v4, 0x7f0c078d

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIII)V

    .line 50
    const-string v0, "micloud_settings"

    const v1, 0x7f06003f

    const v2, 0x7f0902b4

    const v3, 0x7f0c0933

    const v4, 0x7f0c078e

    invoke-static/range {v0 .. v5}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIIIZ)V

    .line 51
    const-string v0, "mimoney_settings"

    const v1, 0x7f060040

    const v2, 0x7f0902b5

    const v3, 0x7f0c0934

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIIIZ)V

    .line 52
    const-string v0, "battery_indicator_style"

    const v1, 0x7f060013

    const v2, 0x7f0902ab

    const v3, 0x7f0c07e9

    const v4, 0x7f0c078f

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIII)V

    .line 53
    const-string v0, "key_settings"

    const v1, 0x7f060035

    const v2, 0x7f0902b0

    const v3, 0x7f0c07c4

    const v4, 0x7f0c0790

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIII)V

    .line 54
    const-string v0, "led_settings"

    const v1, 0x7f06003a

    const v2, 0x7f0902b3

    const v3, 0x7f0c0802

    const v4, 0x7f0c0791

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIII)V

    .line 55
    const-string v0, "date_time_settings"

    const v1, 0x7f06001a

    const v2, 0x7f0902ae

    const v3, 0x7f0c00fc

    const v4, 0x7f0c0792

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIII)V

    .line 56
    const-string v0, "language_settings"

    const v1, 0x7f060037

    const v2, 0x7f0902b1

    const v3, 0x7f0c0456

    const v4, 0x7f0c0793

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIII)V

    .line 57
    const-string v0, "about_settings"

    const/high16 v1, 0x7f06

    const v2, 0x7f0902a4

    const v3, 0x7f0c038f

    const v4, 0x7f0c02ab

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIII)V

    .line 58
    sget-boolean v0, Lmiui/os/Build;->IS_MITWO:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_MITHREE:Z

    if-eqz v0, :cond_1

    .line 59
    :cond_0
    const-string v0, "power_mode"

    const v1, 0x7f060045

    const v2, 0x7f0902b7

    const v3, 0x7f0c08cd

    const v4, 0x7f0c0795

    invoke-static/range {v0 .. v5}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIIIZ)V

    .line 61
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    return-void
.end method

.method private static addHeaderItem(Ljava/lang/String;IIII)V
    .locals 6
    .parameter "key"
    .parameter "headerFileId"
    .parameter "headerId"
    .parameter "showStringId"
    .parameter "searchKeyId"

    .prologue
    .line 64
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIIIZ)V

    .line 65
    return-void
.end method

.method private static addHeaderItem(Ljava/lang/String;IIIIZ)V
    .locals 9
    .parameter "key"
    .parameter "headerFileId"
    .parameter "headerId"
    .parameter "showStringId"
    .parameter "searchKeyId"
    .parameter "isDefault"

    .prologue
    .line 68
    sget-object v0, Lcom/android/settings/FrequentlySet;->sAllHeaderItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 69
    .local v7, index:I
    sget-object v0, Lcom/android/settings/FrequentlySet;->sKey2Index:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/android/settings/FrequentlySet;->sHeaderId2Index:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v8, Lcom/android/settings/FrequentlySet;->sAllHeaderItemList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/settings/FrequentlySet$HeaderItem;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/FrequentlySet$HeaderItem;-><init>(Ljava/lang/String;IIIIZ)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    if-eqz p4, :cond_0

    invoke-static {p4}, Lcom/android/settings/FrequentlySet;->filterSearchKey(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    sget-object v0, Lcom/android/settings/FrequentlySet;->sSearchKeys:Ljava/util/ArrayList;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lcom/android/settings/FrequentlySet;->sSearchHeaderItemIndex:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_0
    return-void
.end method

.method private static filterSearchKey(I)Z
    .locals 2
    .parameter "searchKeyId"

    .prologue
    const/4 v0, 0x0

    .line 80
    const v1, 0x7f0c077e

    if-ne v1, p0, :cond_0

    .line 81
    invoke-static {}, Lcom/android/settings/FrequentlySet;->hasNfcFeature()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 84
    :cond_0
    return v0
.end method

.method public static getDefaultKeys()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v0, defaultKeyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v3, Lcom/android/settings/FrequentlySet;->sAllHeaderItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/FrequentlySet$HeaderItem;

    .line 120
    .local v1, headerItem:Lcom/android/settings/FrequentlySet$HeaderItem;
    iget-boolean v3, v1, Lcom/android/settings/FrequentlySet$HeaderItem;->isDefaultKey:Z

    if-eqz v3, :cond_0

    .line 121
    iget-object v3, v1, Lcom/android/settings/FrequentlySet$HeaderItem;->key:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 124
    .end local v1           #headerItem:Lcom/android/settings/FrequentlySet$HeaderItem;
    :cond_1
    return-object v0
.end method

.method public static getHeaderIds()[I
    .locals 4

    .prologue
    .line 145
    sget-object v3, Lcom/android/settings/FrequentlySet;->sAllHeaderItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 146
    .local v2, size:I
    new-array v0, v2, [I

    .line 147
    .local v0, headerFileIds:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 148
    sget-object v3, Lcom/android/settings/FrequentlySet;->sAllHeaderItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/FrequentlySet$HeaderItem;

    iget v3, v3, Lcom/android/settings/FrequentlySet$HeaderItem;->headerFileId:I

    aput v3, v0, v1

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    :cond_0
    return-object v0
.end method

.method public static getHeaderIndex(Ljava/lang/String;)I
    .locals 2
    .parameter "key"

    .prologue
    .line 100
    sget-object v1, Lcom/android/settings/FrequentlySet;->sKey2Index:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 101
    .local v0, index:Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public static getKey(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 105
    const/4 v0, 0x0

    .line 106
    .local v0, key:Ljava/lang/String;
    sget-object v1, Lcom/android/settings/FrequentlySet;->sAllHeaderItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    .line 107
    sget-object v1, Lcom/android/settings/FrequentlySet;->sAllHeaderItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/FrequentlySet$HeaderItem;

    iget-object v0, v1, Lcom/android/settings/FrequentlySet$HeaderItem;->key:Ljava/lang/String;

    .line 109
    :cond_0
    return-object v0
.end method

.method public static getKeyIndex(I)I
    .locals 3
    .parameter "headerId"

    .prologue
    .line 113
    sget-object v1, Lcom/android/settings/FrequentlySet;->sHeaderId2Index:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 114
    .local v0, index:Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public static getSearchKeys()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    sget-object v0, Lcom/android/settings/FrequentlySet;->sSearchKeys:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getShowIndex(I)I
    .locals 2
    .parameter "index"

    .prologue
    const/4 v0, -0x1

    .line 132
    if-le p0, v0, :cond_0

    sget-object v1, Lcom/android/settings/FrequentlySet;->sSearchHeaderItemIndex:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    .line 133
    sget-object v0, Lcom/android/settings/FrequentlySet;->sSearchHeaderItemIndex:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 135
    :cond_0
    return v0
.end method

.method public static getShowStringId(I)I
    .locals 3
    .parameter "index"

    .prologue
    .line 139
    invoke-static {p0}, Lcom/android/settings/FrequentlySet;->getShowIndex(I)I

    move-result v0

    .line 140
    .local v0, i:I
    sget-object v2, Lcom/android/settings/FrequentlySet;->sHeaderId2Index:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v1

    .line 141
    .local v1, size:I
    if-ge v0, v1, :cond_0

    sget-object v2, Lcom/android/settings/FrequentlySet;->sAllHeaderItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/FrequentlySet$HeaderItem;

    iget v2, v2, Lcom/android/settings/FrequentlySet$HeaderItem;->showId:I

    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private static hasNfcFeature()Z
    .locals 3

    .prologue
    .line 88
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 90
    .local v1, pm:Landroid/content/pm/IPackageManager;
    if-eqz v1, :cond_0

    :try_start_0
    const-string v2, "android.hardware.nfc"

    invoke-interface {v1, v2}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    const/4 v2, 0x1

    .line 96
    :goto_0
    return v2

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 96
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
