.class Lcom/android/settings/SettingsLicenseActivity$1;
.super Landroid/os/Handler;
.source "SettingsLicenseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsLicenseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsLicenseActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsLicenseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/settings/SettingsLicenseActivity$1;->this$0:Lcom/android/settings/SettingsLicenseActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 153
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 155
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_0

    .line 156
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 157
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/SettingsLicenseActivity$1;->this$0:Lcom/android/settings/SettingsLicenseActivity;

    #calls: Lcom/android/settings/SettingsLicenseActivity;->showPageOfText(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/settings/SettingsLicenseActivity;->access$000(Lcom/android/settings/SettingsLicenseActivity;Ljava/lang/String;)V

    .line 161
    .end local v0           #text:Ljava/lang/String;
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SettingsLicenseActivity$1;->this$0:Lcom/android/settings/SettingsLicenseActivity;

    #calls: Lcom/android/settings/SettingsLicenseActivity;->showErrorAndFinish()V
    invoke-static {v1}, Lcom/android/settings/SettingsLicenseActivity;->access$100(Lcom/android/settings/SettingsLicenseActivity;)V

    goto :goto_0
.end method
