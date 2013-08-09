.class public Lcom/android/settings/wifi/DataConnectionDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "DataConnectionDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mIsLastDataOn:Z

.field private mLastDataSimId:J

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mService:Lcom/android/internal/telephony/ITelephony;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 42
    new-instance v0, Lcom/android/settings/wifi/DataConnectionDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/DataConnectionDialog$1;-><init>(Lcom/android/settings/wifi/DataConnectionDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/DataConnectionDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/DataConnectionDialog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/android/settings/wifi/DataConnectionDialog;->mIsLastDataOn:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/DataConnectionDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/settings/wifi/DataConnectionDialog;->onUserPositive()V

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 5

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/android/settings/wifi/DataConnectionDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040020

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 215
    .local v1, view:Landroid/view/View;
    const v2, 0x7f090040

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 216
    .local v0, contentView:Landroid/widget/TextView;
    const v2, 0x7f0c0b45

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/DataConnectionDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    return-object v1
.end method

.method private onUserNegative()V
    .locals 3

    .prologue
    .line 119
    const-string v1, "DataConnectionDialog"

    const-string v2, "onUserNegative"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/DataConnectionDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 122
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 123
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 125
    :cond_0
    return-void
.end method

.method private onUserPositive()V
    .locals 7

    .prologue
    .line 81
    const-string v3, "DataConnectionDialog"

    const-string v4, "onUserPositive"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/DataConnectionDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 84
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 85
    const-string v3, "DataConnectionDialog"

    const-string v4, "onUserPositive : get CONNECTIVITY_SERVICE failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 91
    const-string v3, "DataConnectionDialog"

    const-string v4, "onUserPositive : already ON"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 95
    :cond_2
    const-string v3, "DataConnectionDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onUserPositive: gemini=true, mIsLastDataOn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/wifi/DataConnectionDialog;->mIsLastDataOn:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mLastDataSimId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/settings/wifi/DataConnectionDialog;->mLastDataSimId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-boolean v3, p0, Lcom/android/settings/wifi/DataConnectionDialog;->mIsLastDataOn:Z

    if-eqz v3, :cond_3

    iget-wide v3, p0, Lcom/android/settings/wifi/DataConnectionDialog;->mLastDataSimId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    .line 101
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.DATA_DEFAULT_SIM"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "simid"

    iget-wide v4, p0, Lcom/android/settings/wifi/DataConnectionDialog;->mLastDataSimId:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 103
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/DataConnectionDialog;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 105
    .end local v2           #intent:Landroid/content/Intent;
    :cond_3
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 106
    iget-object v3, p0, Lcom/android/settings/wifi/DataConnectionDialog;->mService:Lcom/android/internal/telephony/ITelephony;

    if-eqz v3, :cond_0

    .line 108
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/wifi/DataConnectionDialog;->mService:Lcom/android/internal/telephony/ITelephony;

    const-string v4, "default"

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/ITelephony;->enableApnType(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    :catch_0
    move-exception v1

    .line 110
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "DataConnectionDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to call mService.enableApnType():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected enableApn()V
    .locals 6

    .prologue
    .line 184
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/wifi/DataConnectionDialog;->mService:Lcom/android/internal/telephony/ITelephony;

    if-eqz v3, :cond_1

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/wifi/DataConnectionDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "gprs_connection_setting"

    const/4 v5, -0x4

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 189
    .local v1, gprsDefaultSlot:I
    if-eqz v1, :cond_0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 190
    :cond_0
    iget-object v3, p0, Lcom/android/settings/wifi/DataConnectionDialog;->mService:Lcom/android/internal/telephony/ITelephony;

    const-string v4, "default"

    invoke-interface {v3, v4, v1}, Lcom/android/internal/telephony/ITelephony;->enableApnTypeGemini(Ljava/lang/String;I)I

    move-result v2

    .line 191
    .local v2, ret:I
    const-string v3, "DataConnectionDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableApnTypeGemini(): slot="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", the return value"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    .end local v1           #gprsDefaultSlot:I
    .end local v2           #ret:I
    :cond_1
    :goto_0
    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 201
    const-string v3, "DataConnectionDialog"

    const-string v4, "tryRestoreDefault(): Connect to phone service error"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 221
    const-string v0, "DataConnectionDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick which="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    packed-switch p2, :pswitch_data_0

    .line 235
    const-string v0, "DataConnectionDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick(): which="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :goto_0
    return-void

    .line 225
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/wifi/DataConnectionDialog;->onUserPositive()V

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/wifi/DataConnectionDialog;->finish()V

    goto :goto_0

    .line 231
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/DataConnectionDialog;->finish()V

    goto :goto_0

    .line 223
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    .line 129
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 130
    invoke-super {p0, v3}, Lcom/android/internal/app/AlertActivity;->setFinishOnTouchOutside(Z)V

    .line 133
    iget-object v1, p0, Lcom/android/settings/wifi/DataConnectionDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 134
    .local v1, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v2, 0x1080027

    iput v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 135
    const v2, 0x7f0c0b44

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/DataConnectionDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 136
    invoke-direct {p0}, Lcom/android/settings/wifi/DataConnectionDialog;->createView()Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 137
    const v2, 0x104000a

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/DataConnectionDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 138
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 139
    const/high16 v2, 0x104

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/DataConnectionDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 140
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/wifi/DataConnectionDialog;->setupAlert()V

    .line 143
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 144
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    const-string v2, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    iget-object v2, p0, Lcom/android/settings/wifi/DataConnectionDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/wifi/DataConnectionDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 149
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/DataConnectionDialog;->mService:Lcom/android/internal/telephony/ITelephony;

    .line 153
    iput-boolean v3, p0, Lcom/android/settings/wifi/DataConnectionDialog;->mIsLastDataOn:Z

    .line 154
    iput-wide v6, p0, Lcom/android/settings/wifi/DataConnectionDialog;->mLastDataSimId:J

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/wifi/DataConnectionDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gprs_connection_sim_setting"

    const-wide/16 v4, -0x5

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/wifi/DataConnectionDialog;->mLastDataSimId:J

    .line 160
    iget-wide v2, p0, Lcom/android/settings/wifi/DataConnectionDialog;->mLastDataSimId:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_0

    .line 161
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/wifi/DataConnectionDialog;->mIsLastDataOn:Z

    .line 170
    :cond_0
    const-string v2, "DataConnectionDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate : mIsLastDataOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/wifi/DataConnectionDialog;->mIsLastDataOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mLastDataSimId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/settings/wifi/DataConnectionDialog;->mLastDataSimId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-boolean v2, p0, Lcom/android/settings/wifi/DataConnectionDialog;->mIsLastDataOn:Z

    if-eqz v2, :cond_1

    .line 175
    invoke-direct {p0}, Lcom/android/settings/wifi/DataConnectionDialog;->onUserNegative()V

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/wifi/DataConnectionDialog;->enableApn()V

    .line 180
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 207
    const-string v0, "DataConnectionDialog"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 210
    iget-object v0, p0, Lcom/android/settings/wifi/DataConnectionDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/DataConnectionDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 211
    return-void
.end method
