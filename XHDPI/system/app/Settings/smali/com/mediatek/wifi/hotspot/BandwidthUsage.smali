.class public Lcom/mediatek/wifi/hotspot/BandwidthUsage;
.super Landroid/app/Fragment;
.source "BandwidthUsage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment;
    }
.end annotation


# instance fields
.field private mChart:Lcom/mediatek/widget/ChartBandwidthUsageView;

.field private mChartListener:Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthChartListener;

.field private mConnManager:Landroid/net/IConnectivityManager;

.field private mEnableThrottling:Landroid/widget/CheckBox;

.field private mEnableThrottlingView:Landroid/view/View;

.field private mFirstLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mHandler:Landroid/os/Handler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mNetworkService:Landroid/os/INetworkManagementService;

.field private mOnEnableCheckBoxClick:Landroid/view/View$OnClickListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStartTime:J

.field private mTotalDataView:Landroid/view/View;

.field private mTotalTimeView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 78
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mStartTime:J

    .line 84
    new-instance v0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$1;

    invoke-direct {v0, p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage$1;-><init>(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)V

    iput-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mHandler:Landroid/os/Handler;

    .line 97
    new-instance v0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$2;

    invoke-direct {v0, p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage$2;-><init>(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)V

    iput-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 212
    new-instance v0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$3;

    invoke-direct {v0, p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage$3;-><init>(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)V

    iput-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mFirstLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 226
    new-instance v0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$4;

    invoke-direct {v0, p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage$4;-><init>(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)V

    iput-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChartListener:Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthChartListener;

    .line 244
    new-instance v0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$5;

    invoke-direct {v0, p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage$5;-><init>(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)V

    iput-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mOnEnableCheckBoxClick:Landroid/view/View$OnClickListener;

    .line 385
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->updateBandwidthUsage()V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mEnableThrottlingView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)Landroid/animation/LayoutTransition;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)Lcom/mediatek/widget/ChartBandwidthUsageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChart:Lcom/mediatek/widget/ChartBandwidthUsageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/wifi/hotspot/BandwidthUsage;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->setLimitData(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mEnableThrottling:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)Landroid/os/INetworkManagementService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mNetworkService:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method private buildLayoutTransition()Landroid/animation/LayoutTransition;
    .locals 2

    .prologue
    .line 294
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 296
    .local v0, transition:Landroid/animation/LayoutTransition;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    .line 297
    return-object v0
.end method

.method private checkIfacePairs([Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter "pairs"

    .prologue
    .line 367
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 369
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v2, p1

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    .line 370
    const/4 v2, 0x0

    .line 379
    :goto_0
    return-object v2

    .line 372
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 373
    aget-object v2, p1, v0

    if-eqz v2, :cond_1

    aget-object v2, p1, v0

    add-int/lit8 v3, v0, 0x1

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 374
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    add-int/lit8 v2, v0, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    :cond_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 379
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    goto :goto_0
.end method

.method private inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "root"
    .parameter "widget"

    .prologue
    const/4 v4, -0x2

    .line 304
    const v2, 0x7f040078

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 305
    .local v0, view:Landroid/view/View;
    const v2, 0x1020018

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 306
    .local v1, widgetFrame:Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 307
    return-object v0
.end method

.method private refreshTimeAndData()V
    .locals 14

    .prologue
    const-wide/32 v12, 0x40000000

    const-wide/32 v10, 0x100000

    .line 326
    const-wide/16 v4, 0x0

    .line 328
    .local v4, usedTime:J
    iget-wide v6, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mStartTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 329
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mStartTime:J

    sub-long v4, v6, v8

    .line 331
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->getActivity()Landroid/app/Activity;

    move-result-object v6

    long-to-double v7, v4

    invoke-static {v6, v7, v8}, Lcom/android/settings/fuelgauge/Utils;->formatElapsedTime(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, time:Ljava/lang/String;
    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mTotalTimeView:Landroid/view/View;

    const v7, 0x7f0c0aeb

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v8}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->setPreferenceTitle(Landroid/view/View;ILjava/lang/String;)V

    .line 335
    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChart:Lcom/mediatek/widget/ChartBandwidthUsageView;

    invoke-virtual {v6}, Lcom/mediatek/widget/ChartBandwidthUsageView;->getTotalUsedData()J

    move-result-wide v1

    .line 337
    .local v1, totalData:J
    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChart:Lcom/mediatek/widget/ChartBandwidthUsageView;

    cmp-long v6, v1, v10

    if-gez v6, :cond_1

    .line 338
    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChart:Lcom/mediatek/widget/ChartBandwidthUsageView;

    const-wide/16 v6, 0x400

    div-long/2addr v1, v6

    .line 339
    const-string v3, " KB"

    .line 347
    .local v3, unit:Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mTotalDataView:Landroid/view/View;

    const v7, 0x7f0c0aec

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v8}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->setPreferenceTitle(Landroid/view/View;ILjava/lang/String;)V

    .line 348
    return-void

    .line 340
    .end local v3           #unit:Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChart:Lcom/mediatek/widget/ChartBandwidthUsageView;

    cmp-long v6, v1, v12

    if-gez v6, :cond_2

    .line 341
    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChart:Lcom/mediatek/widget/ChartBandwidthUsageView;

    div-long/2addr v1, v10

    .line 342
    const-string v3, " M"

    .restart local v3       #unit:Ljava/lang/String;
    goto :goto_0

    .line 344
    .end local v3           #unit:Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChart:Lcom/mediatek/widget/ChartBandwidthUsageView;

    div-long/2addr v1, v12

    .line 345
    const-string v3, " G"

    .restart local v3       #unit:Ljava/lang/String;
    goto :goto_0
.end method

.method private setLimitData(Z)V
    .locals 14
    .parameter "enable"

    .prologue
    const-wide/16 v12, 0x8

    const/4 v5, 0x1

    const-wide/16 v10, 0x0

    .line 274
    if-eqz p1, :cond_3

    .line 275
    :try_start_0
    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChart:Lcom/mediatek/widget/ChartBandwidthUsageView;

    invoke-virtual {v6}, Lcom/mediatek/widget/ChartBandwidthUsageView;->getLimitBytes()J

    move-result-wide v2

    .line 276
    .local v2, limit:J
    cmp-long v6, v2, v10

    if-nez v6, :cond_1

    move v4, v5

    .line 277
    .local v4, rxBytes:I
    :goto_0
    cmp-long v6, v2, v10

    if-nez v6, :cond_2

    .line 278
    .local v5, txBytes:I
    :goto_1
    const-string v6, "BandwidthUsage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setLimitData,setInterfaceThrottle,rxBytes="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",txBytes="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mNetworkService:Landroid/os/INetworkManagementService;

    const-string v7, "ap0"

    invoke-interface {v6, v7, v4, v5}, Landroid/os/INetworkManagementService;->setInterfaceThrottle(Ljava/lang/String;II)V

    .line 281
    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "network_info"

    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->getActivity()Landroid/app/Activity;

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 283
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "network_limit"

    cmp-long v7, v2, v10

    if-nez v7, :cond_0

    const-wide/16 v2, 0x1

    .end local v2           #limit:J
    :cond_0
    invoke-interface {v1, v6, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 284
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 291
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v4           #rxBytes:I
    .end local v5           #txBytes:I
    :goto_2
    return-void

    .line 276
    .restart local v2       #limit:J
    :cond_1
    mul-long v6, v2, v12

    const-wide/16 v8, 0x2

    mul-long/2addr v6, v8

    long-to-int v6, v6

    div-int/lit16 v4, v6, 0xc00

    goto :goto_0

    .line 277
    .restart local v4       #rxBytes:I
    :cond_2
    mul-long v6, v2, v12

    long-to-int v6, v6

    div-int/lit16 v5, v6, 0xc00

    goto :goto_1

    .line 286
    .end local v2           #limit:J
    .end local v4           #rxBytes:I
    :cond_3
    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mNetworkService:Landroid/os/INetworkManagementService;

    const-string v7, "ap0"

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-interface {v6, v7, v8, v9}, Landroid/os/INetworkManagementService;->setInterfaceThrottle(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, e:Landroid/os/RemoteException;
    const-string v6, "BandwidthUsage"

    const-string v7, " RemoteException happens when setInterfaceRxThrottle"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private setPreferenceTitle(Landroid/view/View;I)V
    .locals 2
    .parameter "parent"
    .parameter "resId"

    .prologue
    .line 314
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 315
    .local v0, title:Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 316
    return-void
.end method

.method private setPreferenceTitle(Landroid/view/View;ILjava/lang/String;)V
    .locals 5
    .parameter "parent"
    .parameter "resId"
    .parameter "data"

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-virtual {v2, p2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, text:Ljava/lang/String;
    const v2, 0x1020016

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 321
    .local v1, title:Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    return-void
.end method

.method private updateBandwidthUsage()V
    .locals 6

    .prologue
    .line 351
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mConnManager:Landroid/net/IConnectivityManager;

    invoke-interface {v4}, Landroid/net/IConnectivityManager;->getTetheredIfacePairs()[Ljava/lang/String;

    move-result-object v3

    .line 353
    .local v3, tetheredIfacePairs:[Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->checkIfacePairs([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, availableIfacePairs:[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 356
    iget-object v4, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v4, v0}, Landroid/os/INetworkManagementService;->getNetworkStatsTethering([Ljava/lang/String;)Landroid/net/NetworkStats;

    move-result-object v2

    .line 357
    .local v2, networkStats:Landroid/net/NetworkStats;
    iget-object v4, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChart:Lcom/mediatek/widget/ChartBandwidthUsageView;

    invoke-virtual {v4, v2}, Lcom/mediatek/widget/ChartBandwidthUsageView;->setNetworkStates(Landroid/net/NetworkStats;)V

    .line 359
    .end local v2           #networkStats:Landroid/net/NetworkStats;
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->refreshTimeAndData()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    .end local v0           #availableIfacePairs:[Ljava/lang/String;
    .end local v3           #tetheredIfacePairs:[Ljava/lang/String;
    :goto_0
    return-void

    .line 360
    :catch_0
    move-exception v1

    .line 361
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "BandwidthUsage"

    const-string v5, "RemoteException happens"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 114
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 115
    const-string v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 117
    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mConnManager:Landroid/net/IConnectivityManager;

    .line 119
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mIntentFilter:Landroid/content/IntentFilter;

    .line 120
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const v9, 0x7f040078

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 123
    const-string v5, "BandwidthUsage"

    const-string v6, "onCreateView"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 126
    .local v0, context:Landroid/content/Context;
    const v5, 0x7f0400ce

    invoke-virtual {p1, v5, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 128
    .local v4, view:Landroid/view/View;
    const v5, 0x7f09021f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 129
    .local v2, enableLayout:Landroid/widget/LinearLayout;
    new-instance v5, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mEnableThrottling:Landroid/widget/CheckBox;

    .line 130
    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mEnableThrottling:Landroid/widget/CheckBox;

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 131
    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mEnableThrottling:Landroid/widget/CheckBox;

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 132
    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mEnableThrottling:Landroid/widget/CheckBox;

    invoke-direct {p0, p1, v2, v5}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mEnableThrottlingView:Landroid/view/View;

    .line 133
    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mEnableThrottlingView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setClickable(Z)V

    .line 134
    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mEnableThrottlingView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setFocusable(Z)V

    .line 135
    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mEnableThrottlingView:Landroid/view/View;

    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mOnEnableCheckBoxClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mEnableThrottlingView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 137
    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mEnableThrottlingView:Landroid/view/View;

    const v6, 0x7f0c0ae6

    invoke-direct {p0, v5, v6}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->setPreferenceTitle(Landroid/view/View;I)V

    .line 139
    const v5, 0x7f090057

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/mediatek/widget/ChartBandwidthUsageView;

    iput-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChart:Lcom/mediatek/widget/ChartBandwidthUsageView;

    .line 140
    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChart:Lcom/mediatek/widget/ChartBandwidthUsageView;

    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChartListener:Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthChartListener;

    invoke-virtual {v5, v6}, Lcom/mediatek/widget/ChartBandwidthUsageView;->setListener(Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthChartListener;)V

    .line 142
    const v5, 0x7f090054

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 143
    .local v3, timeLayout:Landroid/widget/LinearLayout;
    invoke-virtual {p1, v9, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mTotalTimeView:Landroid/view/View;

    .line 144
    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mTotalTimeView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setClickable(Z)V

    .line 145
    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mTotalTimeView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 146
    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mTotalTimeView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 148
    const v5, 0x7f0900ce

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 149
    .local v1, dataLayout:Landroid/widget/LinearLayout;
    invoke-virtual {p1, v9, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mTotalDataView:Landroid/view/View;

    .line 150
    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mTotalDataView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setClickable(Z)V

    .line 151
    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mTotalDataView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 152
    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mTotalDataView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 154
    return-object v4
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 204
    const-string v0, "BandwidthUsage"

    const-string v1, "onDestory"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 206
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 207
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 199
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mEnableThrottlingView:Landroid/view/View;

    .line 201
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 192
    const-string v0, "BandwidthUsage"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 194
    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 195
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 196
    return-void
.end method

.method public onResume()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 159
    const-string v7, "BandwidthUsage"

    const-string v8, "onResume"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 161
    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v9, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v7, v8, v9}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 162
    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "airplane_mode_on"

    invoke-static {v7, v8, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_0

    move v2, v6

    .line 164
    .local v2, isAirplaneMode:Z
    :cond_0
    if-eqz v2, :cond_1

    .line 165
    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->onBackPressed()V

    .line 168
    :cond_1
    iget-object v7, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v7, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 170
    :try_start_0
    iget-object v7, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v7}, Landroid/os/INetworkManagementService;->getInterfaceThrottleEnabled()Z

    move-result v1

    .line 171
    .local v1, enable:Z
    const-string v7, "BandwidthUsage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onResume,getInterfaceRxThrottle="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v7, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mEnableThrottling:Landroid/widget/CheckBox;

    invoke-virtual {v7, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 173
    iget-object v7, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChart:Lcom/mediatek/widget/ChartBandwidthUsageView;

    invoke-virtual {v7, v1}, Lcom/mediatek/widget/ChartBandwidthUsageView;->setLimitState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .end local v1           #enable:Z
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "network_info"

    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->getActivity()Landroid/app/Activity;

    invoke-virtual {v7, v8, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 179
    .local v3, pre:Landroid/content/SharedPreferences;
    const-string v6, "network_limit"

    invoke-interface {v3, v6, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 180
    .local v4, value:J
    const-string v6, "BandwidthUsage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "init limit value="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChart:Lcom/mediatek/widget/ChartBandwidthUsageView;

    invoke-virtual {v6, v4, v5}, Lcom/mediatek/widget/ChartBandwidthUsageView;->setLimitBytes(J)V

    .line 182
    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChart:Lcom/mediatek/widget/ChartBandwidthUsageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/mediatek/widget/ChartBandwidthUsageView;->updateVertAxisBounds(Lcom/mediatek/widget/ChartSweepView;)V

    .line 184
    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "wifi_hotspot_start_time"

    invoke-static {v6, v7, v10, v11}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mStartTime:J

    .line 186
    const-string v6, "BandwidthUsage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mStartTime:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mStartTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-direct {p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->refreshTimeAndData()V

    .line 188
    return-void

    .line 174
    .end local v3           #pre:Landroid/content/SharedPreferences;
    .end local v4           #value:J
    :catch_0
    move-exception v0

    .line 175
    .local v0, e:Landroid/os/RemoteException;
    const-string v7, "BandwidthUsage"

    const-string v8, " RemoteException happens when getInterfaceThrottle"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
