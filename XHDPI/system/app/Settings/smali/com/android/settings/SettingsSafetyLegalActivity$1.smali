.class Lcom/android/settings/SettingsSafetyLegalActivity$1;
.super Landroid/webkit/WebViewClient;
.source "SettingsSafetyLegalActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsSafetyLegalActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsSafetyLegalActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsSafetyLegalActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/settings/SettingsSafetyLegalActivity$1;->this$0:Lcom/android/settings/SettingsSafetyLegalActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "url"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/SettingsSafetyLegalActivity$1;->this$0:Lcom/android/settings/SettingsSafetyLegalActivity;

    #getter for: Lcom/android/settings/SettingsSafetyLegalActivity;->mAlert:Lcom/android/internal/app/AlertController;
    invoke-static {v0}, Lcom/android/settings/SettingsSafetyLegalActivity;->access$000(Lcom/android/settings/SettingsSafetyLegalActivity;)Lcom/android/internal/app/AlertController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SettingsSafetyLegalActivity$1;->this$0:Lcom/android/settings/SettingsSafetyLegalActivity;

    const v2, 0x7f0c039b

    invoke-virtual {v1, v2}, Lcom/android/settings/SettingsSafetyLegalActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 73
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/SettingsSafetyLegalActivity$1;->this$0:Lcom/android/settings/SettingsSafetyLegalActivity;

    #calls: Lcom/android/settings/SettingsSafetyLegalActivity;->showErrorAndFinish(Ljava/lang/String;)V
    invoke-static {v0, p4}, Lcom/android/settings/SettingsSafetyLegalActivity;->access$100(Lcom/android/settings/SettingsSafetyLegalActivity;Ljava/lang/String;)V

    .line 79
    return-void
.end method
