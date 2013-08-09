.class Lcom/android/settings/MiuiDriveModeSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "MiuiDriveModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiDriveModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiDriveModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiDriveModeSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/settings/MiuiDriveModeSettings$1;->this$0:Lcom/android/settings/MiuiDriveModeSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 189
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 190
    iget-object v1, p0, Lcom/android/settings/MiuiDriveModeSettings$1;->this$0:Lcom/android/settings/MiuiDriveModeSettings;

    const/4 v2, 0x1

    #setter for: Lcom/android/settings/MiuiDriveModeSettings;->mKeyguard:Z
    invoke-static {v1, v2}, Lcom/android/settings/MiuiDriveModeSettings;->access$002(Lcom/android/settings/MiuiDriveModeSettings;Z)Z

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/android/settings/MiuiDriveModeSettings$1;->this$0:Lcom/android/settings/MiuiDriveModeSettings;

    const/4 v2, 0x0

    #setter for: Lcom/android/settings/MiuiDriveModeSettings;->mKeyguard:Z
    invoke-static {v1, v2}, Lcom/android/settings/MiuiDriveModeSettings;->access$002(Lcom/android/settings/MiuiDriveModeSettings;Z)Z

    .line 193
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.app.ExtraStatusBarManager.action_leave_drive_mode"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/MiuiDriveModeSettings$1;->this$0:Lcom/android/settings/MiuiDriveModeSettings;

    invoke-virtual {v1, v0}, Lcom/android/settings/MiuiDriveModeSettings;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
