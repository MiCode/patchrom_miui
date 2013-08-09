.class Lcom/android/settings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;
.super Ljava/lang/Object;
.source "MiuiVpnSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/vpn2/MiuiVpnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfigureKeyGuardDialog"
.end annotation


# instance fields
.field private mConfigureConfirmed:Z

.field final synthetic this$0:Lcom/android/settings/vpn2/MiuiVpnSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/vpn2/MiuiVpnSettings;)V
    .locals 3
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;->this$0:Lcom/android/settings/vpn2/MiuiVpnSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lcom/android/settings/vpn2/MiuiVpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1040014

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0587

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 141
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 142
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 143
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/vpn2/MiuiVpnSettings;Lcom/android/settings/vpn2/MiuiVpnSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/settings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;-><init>(Lcom/android/settings/vpn2/MiuiVpnSettings;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 147
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;->mConfigureConfirmed:Z

    .line 148
    return-void

    .line 147
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    const/4 v2, 0x0

    .line 152
    iget-boolean v1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;->mConfigureConfirmed:Z

    if-eqz v1, :cond_0

    .line 153
    iput-boolean v2, p0, Lcom/android/settings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;->mConfigureConfirmed:Z

    .line 154
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;->this$0:Lcom/android/settings/vpn2/MiuiVpnSettings;

    const/4 v2, 0x1

    #setter for: Lcom/android/settings/vpn2/MiuiVpnSettings;->mIsNewPassword:Z
    invoke-static {v1, v2}, Lcom/android/settings/vpn2/MiuiVpnSettings;->access$102(Lcom/android/settings/vpn2/MiuiVpnSettings;Z)Z

    .line 155
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "minimum_quality"

    const/high16 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 157
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;->this$0:Lcom/android/settings/vpn2/MiuiVpnSettings;

    invoke-virtual {v1, v0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->startActivity(Landroid/content/Intent;)V

    .line 161
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;->this$0:Lcom/android/settings/vpn2/MiuiVpnSettings;

    #calls: Lcom/android/settings/vpn2/MiuiVpnSettings;->updateResult(Z)V
    invoke-static {v1, v2}, Lcom/android/settings/vpn2/MiuiVpnSettings;->access$200(Lcom/android/settings/vpn2/MiuiVpnSettings;Z)V

    goto :goto_0
.end method
