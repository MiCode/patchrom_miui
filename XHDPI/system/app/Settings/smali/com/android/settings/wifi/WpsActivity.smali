.class public Lcom/android/settings/wifi/WpsActivity;
.super Landroid/app/Activity;
.source "WpsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WpsActivity$6;,
        Lcom/android/settings/wifi/WpsActivity$State;
    }
.end annotation


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mChannel:Landroid/net/wifi/WifiManager$Channel;

.field private mFilter:Landroid/content/IntentFilter;

.field private mHandler:Landroid/os/Handler;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRetryButton:Landroid/widget/Button;

.field mState:Lcom/android/settings/wifi/WpsActivity$State;

.field private mTextView:Landroid/widget/TextView;

.field private mTimeoutBar:Landroid/widget/ProgressBar;

.field private mTimer:Ljava/util/Timer;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWpsListener:Landroid/net/wifi/WifiManager$WpsListener;

.field private mWpsSetup:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WpsActivity;->mHandler:Landroid/os/Handler;

    .line 58
    sget-object v0, Lcom/android/settings/wifi/WpsActivity$State;->WPS_INIT:Lcom/android/settings/wifi/WpsActivity$State;

    iput-object v0, p0, Lcom/android/settings/wifi/WpsActivity;->mState:Lcom/android/settings/wifi/WpsActivity$State;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WpsActivity;Lcom/android/settings/wifi/WpsActivity$State;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WpsActivity;->updateState(Lcom/android/settings/wifi/WpsActivity$State;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WpsActivity;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WpsActivity;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WpsActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/settings/wifi/WpsActivity;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WpsActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/settings/wifi/WpsActivity;->mTimeoutBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WpsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/settings/wifi/WpsActivity;->stop()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WpsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/settings/wifi/WpsActivity;->start()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WpsActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/settings/wifi/WpsActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/WpsActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/settings/wifi/WpsActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/WpsActivity;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/settings/wifi/WpsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/settings/wifi/WpsActivity;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/settings/wifi/WpsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 226
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 228
    const-string v5, "networkInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 230
    .local v1, info:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    .line 231
    .local v3, state:Landroid/net/NetworkInfo$DetailedState;
    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/wifi/WpsActivity;->mState:Lcom/android/settings/wifi/WpsActivity$State;

    sget-object v6, Lcom/android/settings/wifi/WpsActivity$State;->WPS_COMPLETE:Lcom/android/settings/wifi/WpsActivity$State;

    if-ne v5, v6, :cond_0

    .line 233
    iget-object v5, p0, Lcom/android/settings/wifi/WpsActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 234
    .local v4, wifiInfo:Landroid/net/wifi/WifiInfo;
    if-eqz v4, :cond_0

    .line 235
    const v5, 0x7f0c01fa

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WpsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 237
    .local v2, msg:Ljava/lang/String;
    sget-object v5, Lcom/android/settings/wifi/WpsActivity$State;->CONNECTED:Lcom/android/settings/wifi/WpsActivity$State;

    invoke-direct {p0, v5, v2}, Lcom/android/settings/wifi/WpsActivity;->updateState(Lcom/android/settings/wifi/WpsActivity$State;Ljava/lang/String;)V

    .line 241
    .end local v1           #info:Landroid/net/NetworkInfo;
    .end local v2           #msg:Ljava/lang/String;
    .end local v3           #state:Landroid/net/NetworkInfo$DetailedState;
    .end local v4           #wifiInfo:Landroid/net/wifi/WifiInfo;
    :cond_0
    return-void
.end method

.method private start()V
    .locals 7

    .prologue
    const-wide/16 v2, 0x3e8

    .line 155
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/WpsActivity;->mTimer:Ljava/util/Timer;

    .line 156
    iget-object v0, p0, Lcom/android/settings/wifi/WpsActivity;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/settings/wifi/WpsActivity$4;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WpsActivity$4;-><init>(Lcom/android/settings/wifi/WpsActivity;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 169
    new-instance v6, Landroid/net/wifi/WpsInfo;

    invoke-direct {v6}, Landroid/net/wifi/WpsInfo;-><init>()V

    .line 170
    .local v6, wpsConfig:Landroid/net/wifi/WpsInfo;
    iget v0, p0, Lcom/android/settings/wifi/WpsActivity;->mWpsSetup:I

    iput v0, v6, Landroid/net/wifi/WpsInfo;->setup:I

    .line 171
    iget-object v0, p0, Lcom/android/settings/wifi/WpsActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WpsActivity;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget-object v2, p0, Lcom/android/settings/wifi/WpsActivity;->mWpsListener:Landroid/net/wifi/WifiManager$WpsListener;

    invoke-virtual {v0, v1, v6, v2}, Landroid/net/wifi/WifiManager;->startWps(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WpsInfo;Landroid/net/wifi/WifiManager$WpsListener;)V

    .line 172
    return-void
.end method

.method private stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 175
    iget-object v0, p0, Lcom/android/settings/wifi/WpsActivity;->mState:Lcom/android/settings/wifi/WpsActivity$State;

    sget-object v1, Lcom/android/settings/wifi/WpsActivity$State;->WPS_COMPLETE:Lcom/android/settings/wifi/WpsActivity$State;

    if-eq v0, v1, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/settings/wifi/WpsActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WpsActivity;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->cancelWps(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WpsActivity;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/android/settings/wifi/WpsActivity;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 181
    iput-object v2, p0, Lcom/android/settings/wifi/WpsActivity;->mTimer:Ljava/util/Timer;

    .line 183
    :cond_1
    return-void
.end method

.method private updateState(Lcom/android/settings/wifi/WpsActivity$State;Ljava/lang/String;)V
    .locals 2
    .parameter "state"
    .parameter "msg"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/settings/wifi/WpsActivity;->mState:Lcom/android/settings/wifi/WpsActivity$State;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WpsActivity$State;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/settings/wifi/WpsActivity$State;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 223
    :goto_0
    return-void

    .line 200
    :cond_0
    iput-object p1, p0, Lcom/android/settings/wifi/WpsActivity;->mState:Lcom/android/settings/wifi/WpsActivity$State;

    .line 202
    iget-object v0, p0, Lcom/android/settings/wifi/WpsActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/wifi/WpsActivity$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/wifi/WpsActivity$5;-><init>(Lcom/android/settings/wifi/WpsActivity;Lcom/android/settings/wifi/WpsActivity$State;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v0, 0x7f0400ea

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WpsActivity;->setContentView(I)V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/wifi/WpsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "wps_setup"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/WpsActivity;->mWpsSetup:I

    .line 66
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WpsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WpsActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 67
    iget-object v0, p0, Lcom/android/settings/wifi/WpsActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WpsActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/net/wifi/WifiManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/WifiManager$ChannelListener;)Landroid/net/wifi/WifiManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WpsActivity;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    .line 107
    new-instance v0, Lcom/android/settings/wifi/WpsActivity$1WpsListener;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WpsActivity$1WpsListener;-><init>(Lcom/android/settings/wifi/WpsActivity;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WpsActivity;->mWpsListener:Landroid/net/wifi/WifiManager$WpsListener;

    .line 108
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WpsActivity;->mFilter:Landroid/content/IntentFilter;

    .line 109
    iget-object v0, p0, Lcom/android/settings/wifi/WpsActivity;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    new-instance v0, Lcom/android/settings/wifi/WpsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WpsActivity$1;-><init>(Lcom/android/settings/wifi/WpsActivity;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WpsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 116
    iget-object v0, p0, Lcom/android/settings/wifi/WpsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/wifi/WpsActivity;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/WpsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 118
    const v0, 0x7f09029d

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WpsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WpsActivity;->mTextView:Landroid/widget/TextView;

    .line 119
    iget-object v0, p0, Lcom/android/settings/wifi/WpsActivity;->mTextView:Landroid/widget/TextView;

    const v1, 0x7f0c01f6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 121
    const v0, 0x7f09029f

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WpsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/settings/wifi/WpsActivity;->mTimeoutBar:Landroid/widget/ProgressBar;

    .line 122
    iget-object v0, p0, Lcom/android/settings/wifi/WpsActivity;->mTimeoutBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 123
    iget-object v0, p0, Lcom/android/settings/wifi/WpsActivity;->mTimeoutBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 125
    const v0, 0x7f0902a0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WpsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/settings/wifi/WpsActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 126
    iget-object v0, p0, Lcom/android/settings/wifi/WpsActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 128
    const v0, 0x7f0900ff

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WpsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/wifi/WpsActivity;->mCancelButton:Landroid/widget/Button;

    .line 129
    iget-object v0, p0, Lcom/android/settings/wifi/WpsActivity;->mCancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/wifi/WpsActivity$2;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WpsActivity$2;-><init>(Lcom/android/settings/wifi/WpsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    const v0, 0x7f0902a1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WpsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/wifi/WpsActivity;->mRetryButton:Landroid/widget/Button;

    .line 137
    iget-object v0, p0, Lcom/android/settings/wifi/WpsActivity;->mRetryButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/wifi/WpsActivity$3;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WpsActivity$3;-><init>(Lcom/android/settings/wifi/WpsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    invoke-direct {p0}, Lcom/android/settings/wifi/WpsActivity;->start()V

    .line 149
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/settings/wifi/WpsActivity;->stop()V

    .line 188
    iget-object v0, p0, Lcom/android/settings/wifi/WpsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/settings/wifi/WpsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WpsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WpsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 192
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 193
    return-void
.end method
