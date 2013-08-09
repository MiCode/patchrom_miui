.class Lcom/android/settings/applications/InstalledAppDetailsFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "InstalledAppDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/InstalledAppDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/InstalledAppDetailsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/InstalledAppDetailsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1020
    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment$2;->this$0:Lcom/android/settings/applications/InstalledAppDetailsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1023
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment$2;->this$0:Lcom/android/settings/applications/InstalledAppDetailsFragment;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$2;->getResultCode()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #calls: Lcom/android/settings/applications/InstalledAppDetailsFragment;->updateForceStopButton(Z)V
    invoke-static {v1, v0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->access$1600(Lcom/android/settings/applications/InstalledAppDetailsFragment;Z)V

    .line 1024
    return-void

    .line 1023
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
