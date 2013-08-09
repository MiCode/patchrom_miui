.class Lcom/android/settings/wifi/DataConnectionDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "DataConnectionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/DataConnectionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/DataConnectionDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/DataConnectionDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/settings/wifi/DataConnectionDialog$1;->this$0:Lcom/android/settings/wifi/DataConnectionDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 45
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, action:Ljava/lang/String;
    const-string v2, "DataConnectionDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const-string v2, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 48
    const-string v2, "DataConnectionDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mIsLastDataOn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/DataConnectionDialog$1;->this$0:Lcom/android/settings/wifi/DataConnectionDialog;

    #getter for: Lcom/android/settings/wifi/DataConnectionDialog;->mIsLastDataOn:Z
    invoke-static {v4}, Lcom/android/settings/wifi/DataConnectionDialog;->access$000(Lcom/android/settings/wifi/DataConnectionDialog;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v2, p0, Lcom/android/settings/wifi/DataConnectionDialog$1;->this$0:Lcom/android/settings/wifi/DataConnectionDialog;

    invoke-virtual {v2}, Lcom/android/settings/wifi/DataConnectionDialog;->finish()V

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 52
    const-string v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 55
    .local v1, info:Landroid/net/NetworkInfo;
    if-nez v1, :cond_2

    .line 56
    iget-object v2, p0, Lcom/android/settings/wifi/DataConnectionDialog$1;->this$0:Lcom/android/settings/wifi/DataConnectionDialog;

    invoke-virtual {v2}, Lcom/android/settings/wifi/DataConnectionDialog;->finish()V

    goto :goto_0

    .line 59
    :cond_2
    const-string v2, "DataConnectionDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mIsLastDataOn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/DataConnectionDialog$1;->this$0:Lcom/android/settings/wifi/DataConnectionDialog;

    #getter for: Lcom/android/settings/wifi/DataConnectionDialog;->mIsLastDataOn:Z
    invoke-static {v4}, Lcom/android/settings/wifi/DataConnectionDialog;->access$000(Lcom/android/settings/wifi/DataConnectionDialog;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", NetworkInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v2, v3}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    iget-object v2, p0, Lcom/android/settings/wifi/DataConnectionDialog$1;->this$0:Lcom/android/settings/wifi/DataConnectionDialog;

    #getter for: Lcom/android/settings/wifi/DataConnectionDialog;->mIsLastDataOn:Z
    invoke-static {v2}, Lcom/android/settings/wifi/DataConnectionDialog;->access$000(Lcom/android/settings/wifi/DataConnectionDialog;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    iget-object v2, p0, Lcom/android/settings/wifi/DataConnectionDialog$1;->this$0:Lcom/android/settings/wifi/DataConnectionDialog;

    #calls: Lcom/android/settings/wifi/DataConnectionDialog;->onUserPositive()V
    invoke-static {v2}, Lcom/android/settings/wifi/DataConnectionDialog;->access$100(Lcom/android/settings/wifi/DataConnectionDialog;)V

    .line 66
    iget-object v2, p0, Lcom/android/settings/wifi/DataConnectionDialog$1;->this$0:Lcom/android/settings/wifi/DataConnectionDialog;

    invoke-virtual {v2}, Lcom/android/settings/wifi/DataConnectionDialog;->finish()V

    goto :goto_0

    .line 69
    .end local v1           #info:Landroid/net/NetworkInfo;
    :cond_3
    const-string v2, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    const-string v2, "DataConnectionDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mIsLastDataOn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/DataConnectionDialog$1;->this$0:Lcom/android/settings/wifi/DataConnectionDialog;

    #getter for: Lcom/android/settings/wifi/DataConnectionDialog;->mIsLastDataOn:Z
    invoke-static {v4}, Lcom/android/settings/wifi/DataConnectionDialog;->access$000(Lcom/android/settings/wifi/DataConnectionDialog;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    iget-object v2, p0, Lcom/android/settings/wifi/DataConnectionDialog$1;->this$0:Lcom/android/settings/wifi/DataConnectionDialog;

    invoke-virtual {v2}, Lcom/android/settings/wifi/DataConnectionDialog;->finish()V

    goto/16 :goto_0
.end method
