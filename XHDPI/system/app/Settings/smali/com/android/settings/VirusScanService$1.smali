.class Lcom/android/settings/VirusScanService$1;
.super Ljava/lang/Object;
.source "VirusScanService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/VirusScanService;->startScan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/VirusScanService;


# direct methods
.method constructor <init>(Lcom/android/settings/VirusScanService;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/settings/VirusScanService$1;->this$0:Lcom/android/settings/VirusScanService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 201
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/VirusScanService$1;->this$0:Lcom/android/settings/VirusScanService;

    const/4 v14, 0x1

    #setter for: Lcom/android/settings/VirusScanService;->mScanState:I
    invoke-static {v13, v14}, Lcom/android/settings/VirusScanService;->access$102(Lcom/android/settings/VirusScanService;I)I

    .line 203
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/VirusScanService$1;->this$0:Lcom/android/settings/VirusScanService;

    #getter for: Lcom/android/settings/VirusScanService;->mScannedCount:I
    invoke-static {v13}, Lcom/android/settings/VirusScanService;->access$800(Lcom/android/settings/VirusScanService;)I

    move-result v3

    .local v3, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/VirusScanService$1;->this$0:Lcom/android/settings/VirusScanService;

    #getter for: Lcom/android/settings/VirusScanService;->mAppData:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/settings/VirusScanService;->access$000(Lcom/android/settings/VirusScanService;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v3, v13, :cond_3

    .line 204
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/VirusScanService$1;->this$0:Lcom/android/settings/VirusScanService;

    #getter for: Lcom/android/settings/VirusScanService;->mAppData:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/settings/VirusScanService;->access$000(Lcom/android/settings/VirusScanService;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/ScanAppData;

    .line 206
    .local v1, data:Lcom/android/settings/ScanAppData;
    sget-object v13, Lcom/android/settings/ScanState;->ESS_SCANNING:Lcom/android/settings/ScanState;

    iput-object v13, v1, Lcom/android/settings/ScanAppData;->mState:Lcom/android/settings/ScanState;

    .line 207
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/VirusScanService$1;->this$0:Lcom/android/settings/VirusScanService;

    #getter for: Lcom/android/settings/VirusScanService;->mVirusScanListener:Lcom/android/settings/VirusScanService$OnVirusScanListener;
    invoke-static {v13}, Lcom/android/settings/VirusScanService;->access$200(Lcom/android/settings/VirusScanService;)Lcom/android/settings/VirusScanService$OnVirusScanListener;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 208
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/VirusScanService$1;->this$0:Lcom/android/settings/VirusScanService;

    #getter for: Lcom/android/settings/VirusScanService;->mVirusScanListener:Lcom/android/settings/VirusScanService$OnVirusScanListener;
    invoke-static {v13}, Lcom/android/settings/VirusScanService;->access$200(Lcom/android/settings/VirusScanService;)Lcom/android/settings/VirusScanService$OnVirusScanListener;

    move-result-object v13

    invoke-interface {v13, v3}, Lcom/android/settings/VirusScanService$OnVirusScanListener;->onItemScanning(I)V

    .line 211
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 212
    .local v7, startTime:J
    new-instance v13, Ljava/io/File;

    iget-object v14, v1, Lcom/android/settings/ScanAppData;->mFullPath:Ljava/lang/String;

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v13}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v12

    .line 214
    .local v12, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/VirusScanService$1;->this$0:Lcom/android/settings/VirusScanService;

    invoke-static {v13, v12}, Lmiui/provider/ExtraGuard;->checkApk(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v6

    .line 215
    .local v6, passed:Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long v10, v13, v7

    .line 216
    .local v10, time:J
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v13

    const-wide v15, 0x408f400000000000L

    mul-double/2addr v13, v15

    const-wide v15, 0x408f400000000000L

    add-double/2addr v13, v15

    double-to-long v4, v13

    .line 217
    .local v4, interval:J
    cmp-long v13, v10, v4

    if-gez v13, :cond_1

    .line 219
    sub-long v13, v4, v10

    :try_start_0
    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :cond_1
    :goto_1
    if-eqz v6, :cond_5

    .line 226
    sget-object v13, Lcom/android/settings/ScanState;->ESS_PASSED:Lcom/android/settings/ScanState;

    iput-object v13, v1, Lcom/android/settings/ScanAppData;->mState:Lcom/android/settings/ScanState;

    .line 234
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/VirusScanService$1;->this$0:Lcom/android/settings/VirusScanService;

    invoke-static {v13}, Lcom/android/settings/VirusScanService;->access$804(Lcom/android/settings/VirusScanService;)I

    .line 236
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/VirusScanService$1;->this$0:Lcom/android/settings/VirusScanService;

    #getter for: Lcom/android/settings/VirusScanService;->mVirusScanListener:Lcom/android/settings/VirusScanService$OnVirusScanListener;
    invoke-static {v13}, Lcom/android/settings/VirusScanService;->access$200(Lcom/android/settings/VirusScanService;)Lcom/android/settings/VirusScanService$OnVirusScanListener;

    move-result-object v13

    if-eqz v13, :cond_6

    .line 237
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/VirusScanService$1;->this$0:Lcom/android/settings/VirusScanService;

    #getter for: Lcom/android/settings/VirusScanService;->mVirusScanListener:Lcom/android/settings/VirusScanService$OnVirusScanListener;
    invoke-static {v13}, Lcom/android/settings/VirusScanService;->access$200(Lcom/android/settings/VirusScanService;)Lcom/android/settings/VirusScanService$OnVirusScanListener;

    move-result-object v13

    invoke-interface {v13, v3, v6}, Lcom/android/settings/VirusScanService$OnVirusScanListener;->onItemScanFinished(IZ)V

    .line 243
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/VirusScanService$1;->this$0:Lcom/android/settings/VirusScanService;

    #getter for: Lcom/android/settings/VirusScanService;->mScanState:I
    invoke-static {v13}, Lcom/android/settings/VirusScanService;->access$100(Lcom/android/settings/VirusScanService;)I

    move-result v13

    const/4 v14, 0x2

    if-eq v13, v14, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/VirusScanService$1;->this$0:Lcom/android/settings/VirusScanService;

    #getter for: Lcom/android/settings/VirusScanService;->mScanState:I
    invoke-static {v13}, Lcom/android/settings/VirusScanService;->access$100(Lcom/android/settings/VirusScanService;)I

    move-result v13

    const/4 v14, 0x3

    if-ne v13, v14, :cond_7

    .line 248
    .end local v1           #data:Lcom/android/settings/ScanAppData;
    .end local v4           #interval:J
    .end local v6           #passed:Z
    .end local v7           #startTime:J
    .end local v10           #time:J
    .end local v12           #uri:Landroid/net/Uri;
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/VirusScanService$1;->this$0:Lcom/android/settings/VirusScanService;

    #getter for: Lcom/android/settings/VirusScanService;->mVirusScanListener:Lcom/android/settings/VirusScanService$OnVirusScanListener;
    invoke-static {v13}, Lcom/android/settings/VirusScanService;->access$200(Lcom/android/settings/VirusScanService;)Lcom/android/settings/VirusScanService$OnVirusScanListener;

    move-result-object v13

    if-eqz v13, :cond_9

    .line 249
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/VirusScanService$1;->this$0:Lcom/android/settings/VirusScanService;

    #getter for: Lcom/android/settings/VirusScanService;->mScannedCount:I
    invoke-static {v13}, Lcom/android/settings/VirusScanService;->access$800(Lcom/android/settings/VirusScanService;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/VirusScanService$1;->this$0:Lcom/android/settings/VirusScanService;

    #getter for: Lcom/android/settings/VirusScanService;->mAppData:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/android/settings/VirusScanService;->access$000(Lcom/android/settings/VirusScanService;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v13, v14, :cond_8

    .line 250
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/VirusScanService$1;->this$0:Lcom/android/settings/VirusScanService;

    #getter for: Lcom/android/settings/VirusScanService;->mVirusScanListener:Lcom/android/settings/VirusScanService$OnVirusScanListener;
    invoke-static {v13}, Lcom/android/settings/VirusScanService;->access$200(Lcom/android/settings/VirusScanService;)Lcom/android/settings/VirusScanService$OnVirusScanListener;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/settings/VirusScanService$OnVirusScanListener;->onScanForceStopped()V

    .line 261
    :cond_4
    :goto_4
    return-void

    .line 220
    .restart local v1       #data:Lcom/android/settings/ScanAppData;
    .restart local v4       #interval:J
    .restart local v6       #passed:Z
    .restart local v7       #startTime:J
    .restart local v10       #time:J
    .restart local v12       #uri:Landroid/net/Uri;
    :catch_0
    move-exception v2

    .line 221
    .local v2, e:Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 229
    .end local v2           #e:Ljava/lang/InterruptedException;
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/VirusScanService$1;->this$0:Lcom/android/settings/VirusScanService;

    #getter for: Lcom/android/settings/VirusScanService;->mRiskDataIndex:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/settings/VirusScanService;->access$900(Lcom/android/settings/VirusScanService;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/VirusScanService$1;->this$0:Lcom/android/settings/VirusScanService;

    invoke-static {v13}, Lcom/android/settings/VirusScanService;->access$504(Lcom/android/settings/VirusScanService;)I

    .line 231
    sget-object v13, Lcom/android/settings/ScanState;->ESS_RISK:Lcom/android/settings/ScanState;

    iput-object v13, v1, Lcom/android/settings/ScanAppData;->mState:Lcom/android/settings/ScanState;

    goto :goto_2

    .line 238
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/VirusScanService$1;->this$0:Lcom/android/settings/VirusScanService;

    #getter for: Lcom/android/settings/VirusScanService;->mScanState:I
    invoke-static {v13}, Lcom/android/settings/VirusScanService;->access$100(Lcom/android/settings/VirusScanService;)I

    move-result v13

    const/4 v14, 0x3

    if-eq v13, v14, :cond_2

    .line 239
    const-string v13, "%s(%d%%)"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/VirusScanService$1;->this$0:Lcom/android/settings/VirusScanService;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/settings/VirusScanService;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0c088a

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/VirusScanService$1;->this$0:Lcom/android/settings/VirusScanService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/settings/VirusScanService;->mScannedCount:I
    invoke-static/range {v16 .. v16}, Lcom/android/settings/VirusScanService;->access$800(Lcom/android/settings/VirusScanService;)I

    move-result v16

    mul-int/lit8 v16, v16, 0x64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/VirusScanService$1;->this$0:Lcom/android/settings/VirusScanService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/VirusScanService;->mAppData:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/VirusScanService;->access$000(Lcom/android/settings/VirusScanService;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    div-int v16, v16, v17

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 240
    .local v9, str:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/VirusScanService$1;->this$0:Lcom/android/settings/VirusScanService;

    invoke-static {v13, v9}, Lcom/android/settings/VirusScanAppActivity;->showNotification(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 203
    .end local v9           #str:Ljava/lang/String;
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 252
    .end local v1           #data:Lcom/android/settings/ScanAppData;
    .end local v4           #interval:J
    .end local v6           #passed:Z
    .end local v7           #startTime:J
    .end local v10           #time:J
    .end local v12           #uri:Landroid/net/Uri;
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/VirusScanService$1;->this$0:Lcom/android/settings/VirusScanService;

    #getter for: Lcom/android/settings/VirusScanService;->mVirusScanListener:Lcom/android/settings/VirusScanService$OnVirusScanListener;
    invoke-static {v13}, Lcom/android/settings/VirusScanService;->access$200(Lcom/android/settings/VirusScanService;)Lcom/android/settings/VirusScanService$OnVirusScanListener;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/settings/VirusScanService$OnVirusScanListener;->onScanFinished()V

    goto/16 :goto_4

    .line 253
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/VirusScanService$1;->this$0:Lcom/android/settings/VirusScanService;

    #getter for: Lcom/android/settings/VirusScanService;->mScanState:I
    invoke-static {v13}, Lcom/android/settings/VirusScanService;->access$100(Lcom/android/settings/VirusScanService;)I

    move-result v13

    const/4 v14, 0x3

    if-eq v13, v14, :cond_4

    .line 255
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/VirusScanService$1;->this$0:Lcom/android/settings/VirusScanService;

    #getter for: Lcom/android/settings/VirusScanService;->mRiskDataIndex:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/settings/VirusScanService;->access$900(Lcom/android/settings/VirusScanService;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_a

    .line 256
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/VirusScanService$1;->this$0:Lcom/android/settings/VirusScanService;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/VirusScanService$1;->this$0:Lcom/android/settings/VirusScanService;

    invoke-virtual {v14}, Lcom/android/settings/VirusScanService;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c088d

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/settings/VirusScanAppActivity;->showNotification(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 258
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/VirusScanService$1;->this$0:Lcom/android/settings/VirusScanService;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/VirusScanService$1;->this$0:Lcom/android/settings/VirusScanService;

    invoke-virtual {v14}, Lcom/android/settings/VirusScanService;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c0894

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/settings/VirusScanAppActivity;->showNotification(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_4
.end method
