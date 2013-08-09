.class public Lcom/android/settings/wifi/QRCodeUtils;
.super Ljava/lang/Object;
.source "QRCodeUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWifiQrcode(Landroid/content/Context;Lcom/android/settings/wifi/MiuiAccessPoint;)Landroid/graphics/Bitmap;
    .locals 19
    .parameter "context"
    .parameter "accessPoint"

    .prologue
    .line 54
    invoke-static/range {p0 .. p1}, Lcom/android/settings/wifi/QRCodeUtils;->getWifiQrcodeText(Landroid/content/Context;Lcom/android/settings/wifi/MiuiAccessPoint;)Ljava/lang/String;

    move-result-object v14

    .line 55
    .local v14, qrcodeText:Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 56
    const/4 v2, 0x0

    .line 85
    :goto_0
    return-object v2

    .line 60
    :cond_0
    :try_start_0
    new-instance v11, Ljava/util/HashMap;

    const/4 v4, 0x2

    invoke-direct {v11, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 61
    .local v11, hints:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/google/zxing/EncodeHintType;Ljava/lang/String;>;"
    sget-object v4, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    const-string v6, "UTF-8"

    invoke-virtual {v11, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0e0032

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 64
    .local v13, qrCodeSize:I
    new-instance v16, Lcom/google/zxing/MultiFormatWriter;

    invoke-direct/range {v16 .. v16}, Lcom/google/zxing/MultiFormatWriter;-><init>()V

    .line 65
    .local v16, writer:Lcom/google/zxing/MultiFormatWriter;
    sget-object v4, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v0, v16

    invoke-virtual {v0, v14, v4, v13, v13}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object v15

    .line 66
    .local v15, result:Lcom/google/zxing/common/BitMatrix;
    invoke-virtual {v15}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v5

    .line 67
    .local v5, width:I
    invoke-virtual {v15}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v9

    .line 68
    .local v9, height:I
    mul-int v4, v5, v9

    new-array v3, v4, [I

    .line 70
    .local v3, pixels:[I
    const/16 v18, 0x0

    .local v18, y:I
    :goto_1
    move/from16 v0, v18

    if-ge v0, v9, :cond_3

    .line 71
    mul-int v12, v18, v5

    .line 72
    .local v12, offset:I
    const/16 v17, 0x0

    .local v17, x:I
    :goto_2
    move/from16 v0, v17

    if-ge v0, v5, :cond_2

    .line 73
    add-int v6, v12, v17

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v4

    if-eqz v4, :cond_1

    const/high16 v4, -0x100

    :goto_3
    aput v4, v3, v6

    .line 72
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 73
    :cond_1
    const/4 v4, 0x0

    goto :goto_3

    .line 70
    :cond_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 77
    .end local v12           #offset:I
    .end local v17           #x:I
    :cond_3
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v9, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 79
    .local v2, bitmap:Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #pixels:[I
    .end local v5           #width:I
    .end local v9           #height:I
    .end local v11           #hints:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/google/zxing/EncodeHintType;Ljava/lang/String;>;"
    .end local v13           #qrCodeSize:I
    .end local v15           #result:Lcom/google/zxing/common/BitMatrix;
    .end local v16           #writer:Lcom/google/zxing/MultiFormatWriter;
    .end local v18           #y:I
    :catch_0
    move-exception v10

    .line 82
    .local v10, e:Lcom/google/zxing/WriterException;
    invoke-virtual {v10}, Lcom/google/zxing/WriterException;->printStackTrace()V

    .line 85
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getWifiQrcodeText(Landroid/content/Context;Lcom/android/settings/wifi/MiuiAccessPoint;)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "accessPoint"

    .prologue
    const/4 v5, 0x0

    .line 24
    invoke-virtual {p1}, Lcom/android/settings/wifi/MiuiAccessPoint;->getWifiConfigurationSecurity()Ljava/lang/String;

    move-result-object v3

    .line 25
    .local v3, security:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-object v5

    .line 29
    :cond_1
    invoke-virtual {p1}, Lcom/android/settings/wifi/MiuiAccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 30
    .local v4, ssid:Ljava/lang/String;
    invoke-static {p0, v4}, Lcom/android/settings/wifi/WifiConfigurationManager;->parseSystemWifi(Landroid/content/Context;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 31
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .local v2, qrcodeTextBuilder:Ljava/lang/StringBuilder;
    const-string v5, "WIFI:T:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    const-string v5, ";P:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 40
    .local v1, password:Ljava/lang/String;
    const-string v5, "WEP"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Lcom/android/settings/wifi/MiuiAccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 41
    invoke-virtual {p1}, Lcom/android/settings/wifi/MiuiAccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v1, v5, v6

    .line 43
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 44
    const-string v1, ""

    .line 46
    :cond_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v5, ";S:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    const-string v5, ";"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method
