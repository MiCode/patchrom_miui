.class public Lcom/mediatek/gemini/SimUtils;
.super Ljava/lang/Object;
.source "SimUtils.java"


# static fields
.field public static disableAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 304
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mediatek/gemini/SimUtils;->mList:Ljava/util/ArrayList;

    .line 306
    const-string v0, "/system/etc/disableapplist.txt"

    invoke-static {v0}, Lcom/mediatek/gemini/SimUtils;->readFile(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/mediatek/gemini/SimUtils;->disableAppList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApnEditorPlugin(Landroid/content/Context;)Lcom/android/settings/ext/IApnEditorExt;
    .locals 2
    .parameter

    .prologue
    .line 423
    :try_start_0
    const-class v0, Lcom/android/settings/ext/IApnEditorExt;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/content/pm/Signature;

    invoke-static {p0, v0, v1}, Lcom/mediatek/pluginmanager/PluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ext/IApnEditorExt;
    :try_end_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    :goto_0
    return-object v0

    .line 425
    :catch_0
    move-exception v0

    .line 426
    new-instance v0, Lcom/android/settings/ext/DefaultApnEditorExt;

    invoke-direct {v0}, Lcom/android/settings/ext/DefaultApnEditorExt;-><init>()V

    goto :goto_0
.end method

.method public static getAudioProfilePlgin(Landroid/content/Context;)Lcom/android/settings/ext/IAudioProfileExt;
    .locals 2
    .parameter

    .prologue
    .line 358
    :try_start_0
    const-class v0, Lcom/android/settings/ext/IAudioProfileExt;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/content/pm/Signature;

    invoke-static {p0, v0, v1}, Lcom/mediatek/pluginmanager/PluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ext/IAudioProfileExt;
    :try_end_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    :goto_0
    return-object v0

    .line 360
    :catch_0
    move-exception v0

    .line 361
    const-string v0, "Utils"

    const-string v1, "Plugin ObjectCreationException"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    new-instance v0, Lcom/android/settings/ext/DefaultAudioProfileExt;

    invoke-direct {v0, p0}, Lcom/android/settings/ext/DefaultAudioProfileExt;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static getMiscPlugin(Landroid/content/Context;)Lcom/android/settings/ext/ISettingsMiscExt;
    .locals 2
    .parameter

    .prologue
    .line 374
    :try_start_0
    const-class v0, Lcom/android/settings/ext/ISettingsMiscExt;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/content/pm/Signature;

    invoke-static {p0, v0, v1}, Lcom/mediatek/pluginmanager/PluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ext/ISettingsMiscExt;
    :try_end_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    :goto_0
    return-object v0

    .line 376
    :catch_0
    move-exception v0

    .line 377
    new-instance v0, Lcom/android/settings/ext/DefaultSettingsMiscExt;

    invoke-direct {v0}, Lcom/android/settings/ext/DefaultSettingsMiscExt;-><init>()V

    goto :goto_0
.end method

.method public static getRcseApnPlugin(Landroid/content/Context;)Lcom/android/settings/ext/IRcseOnlyApnExtension;
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 524
    const/4 v1, 0x0

    .line 525
    const-class v0, Lcom/android/settings/ext/IRcseOnlyApnExtension;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Landroid/content/pm/Signature;

    invoke-static {p0, v0, v2}, Lcom/mediatek/pluginmanager/PluginManager;->create(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Lcom/mediatek/pluginmanager/PluginManager;

    move-result-object v0

    .line 528
    const-string v2, "Utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current plug-in counts: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/mediatek/pluginmanager/PluginManager;->getPluginCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :try_start_0
    invoke-virtual {v0}, Lcom/mediatek/pluginmanager/PluginManager;->getPluginCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 531
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/mediatek/pluginmanager/PluginManager;->getPlugin(I)Lcom/mediatek/pluginmanager/Plugin;

    move-result-object v0

    .line 532
    if-eqz v0, :cond_0

    .line 533
    invoke-virtual {v0}, Lcom/mediatek/pluginmanager/Plugin;->createObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ext/IRcseOnlyApnExtension;
    :try_end_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    :goto_0
    return-object v0

    .line 536
    :catch_0
    move-exception v0

    .line 537
    const-string v0, "Utils"

    const-string v2, "error get object"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static getSimManagmentExtPlugin(Landroid/content/Context;)Lcom/android/settings/ext/ISimManagementExt;
    .locals 2
    .parameter

    .prologue
    .line 498
    :try_start_0
    const-class v0, Lcom/android/settings/ext/ISimManagementExt;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/content/pm/Signature;

    invoke-static {p0, v0, v1}, Lcom/mediatek/pluginmanager/PluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ext/ISimManagementExt;
    :try_end_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    :goto_0
    return-object v0

    .line 500
    :catch_0
    move-exception v0

    .line 501
    const-string v0, "Utils"

    const-string v1, "Enter the default ISimManagementExt"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    new-instance v0, Lcom/android/settings/ext/DefaultSimManagementExt;

    invoke-direct {v0}, Lcom/android/settings/ext/DefaultSimManagementExt;-><init>()V

    goto :goto_0
.end method

.method public static getSimRoamingExtPlugin(Landroid/content/Context;)Lcom/android/settings/ext/ISimRoamingExt;
    .locals 2
    .parameter

    .prologue
    .line 514
    :try_start_0
    const-class v0, Lcom/android/settings/ext/ISimRoamingExt;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/content/pm/Signature;

    invoke-static {p0, v0, v1}, Lcom/mediatek/pluginmanager/PluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ext/ISimRoamingExt;
    :try_end_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    :goto_0
    return-object v0

    .line 516
    :catch_0
    move-exception v0

    .line 517
    const-string v0, "Utils"

    const-string v1, "Enter the default ISimRoamingExt"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    new-instance v0, Lcom/android/settings/ext/DefaultSimRoamingExt;

    invoke-direct {v0}, Lcom/android/settings/ext/DefaultSimRoamingExt;-><init>()V

    goto :goto_0
.end method

.method public static getStatusGeminiExtPlugin(Landroid/content/Context;)Lcom/android/settings/ext/IStatusGeminiExt;
    .locals 2
    .parameter

    .prologue
    .line 468
    :try_start_0
    const-class v0, Lcom/android/settings/ext/IStatusGeminiExt;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/content/pm/Signature;

    invoke-static {p0, v0, v1}, Lcom/mediatek/pluginmanager/PluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ext/IStatusGeminiExt;
    :try_end_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    :goto_0
    return-object v0

    .line 470
    :catch_0
    move-exception v0

    .line 471
    new-instance v0, Lcom/android/settings/ext/DefaultStatusGeminiExt;

    invoke-direct {v0}, Lcom/android/settings/ext/DefaultStatusGeminiExt;-><init>()V

    goto :goto_0
.end method

.method public static getWifiApDialogPlugin(Landroid/content/Context;)Lcom/android/settings/ext/IWifiApDialogExt;
    .locals 2
    .parameter

    .prologue
    .line 438
    :try_start_0
    const-class v0, Lcom/android/settings/ext/IWifiApDialogExt;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/content/pm/Signature;

    invoke-static {p0, v0, v1}, Lcom/mediatek/pluginmanager/PluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ext/IWifiApDialogExt;
    :try_end_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    :goto_0
    return-object v0

    .line 440
    :catch_0
    move-exception v0

    .line 441
    new-instance v0, Lcom/android/settings/ext/DefaultWifiApDialogExt;

    invoke-direct {v0}, Lcom/android/settings/ext/DefaultWifiApDialogExt;-><init>()V

    goto :goto_0
.end method

.method public static readFile(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .parameter "path"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 314
    sget-object v8, Lcom/mediatek/gemini/SimUtils;->mList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 315
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 316
    .local v2, file:Ljava/io/File;
    const/4 v3, 0x0

    .line 317
    .local v3, fr:Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 319
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 320
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 325
    .end local v3           #fr:Ljava/io/FileReader;
    .local v4, fr:Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 327
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, line:Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 328
    const-string v8, "Utils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " read line "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    sget-object v8, Lcom/mediatek/gemini/SimUtils;->mList:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 332
    .end local v6           #line:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v3, v4

    .line 333
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v3       #fr:Ljava/io/FileReader;
    .local v5, io:Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v8, "Utils"

    const-string v9, "IOException"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 337
    if-eqz v0, :cond_0

    .line 338
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 340
    :cond_0
    if-eqz v3, :cond_1

    .line 341
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 347
    .end local v5           #io:Ljava/io/IOException;
    :cond_1
    :goto_2
    return-object v7

    .line 322
    :cond_2
    :try_start_5
    const-string v8, "Utils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "file in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " does not exist!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 337
    if-eqz v0, :cond_3

    .line 338
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 340
    :cond_3
    if-eqz v3, :cond_1

    .line 341
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 343
    :catch_1
    move-exception v5

    .line 344
    .restart local v5       #io:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 331
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #fr:Ljava/io/FileReader;
    .end local v5           #io:Ljava/io/IOException;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    .restart local v6       #line:Ljava/lang/String;
    :cond_4
    :try_start_7
    sget-object v7, Lcom/mediatek/gemini/SimUtils;->mList:Ljava/util/ArrayList;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 337
    if-eqz v1, :cond_5

    .line 338
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 340
    :cond_5
    if-eqz v4, :cond_6

    .line 341
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :cond_6
    :goto_3
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v3, v4

    .line 345
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v3       #fr:Ljava/io/FileReader;
    goto :goto_2

    .line 343
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    :catch_2
    move-exception v5

    .line 344
    .restart local v5       #io:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 343
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v4           #fr:Ljava/io/FileReader;
    .end local v6           #line:Ljava/lang/String;
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v3       #fr:Ljava/io/FileReader;
    :catch_3
    move-exception v5

    .line 344
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 336
    .end local v5           #io:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 337
    :goto_4
    if-eqz v0, :cond_7

    .line 338
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 340
    :cond_7
    if-eqz v3, :cond_8

    .line 341
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 345
    :cond_8
    :goto_5
    throw v7

    .line 343
    :catch_4
    move-exception v5

    .line 344
    .restart local v5       #io:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 336
    .end local v3           #fr:Ljava/io/FileReader;
    .end local v5           #io:Ljava/io/IOException;
    .restart local v4       #fr:Ljava/io/FileReader;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v3       #fr:Ljava/io/FileReader;
    goto :goto_4

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v3       #fr:Ljava/io/FileReader;
    goto :goto_4

    .line 332
    :catch_5
    move-exception v5

    goto :goto_1

    .end local v3           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    :catch_6
    move-exception v5

    move-object v3, v4

    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v3       #fr:Ljava/io/FileReader;
    goto :goto_1
.end method
