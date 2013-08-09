.class Lcom/android/settings/vpn2/MiuiVpnEditFragment$1;
.super Ljava/lang/Object;
.source "MiuiVpnEditFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/vpn2/MiuiVpnEditFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/vpn2/MiuiVpnEditFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/vpn2/MiuiVpnEditFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment$1;->this$0:Lcom/android/settings/vpn2/MiuiVpnEditFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 173
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment$1;->this$0:Lcom/android/settings/vpn2/MiuiVpnEditFragment;

    invoke-virtual {v3}, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x60d003e

    invoke-direct {v2, v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v3, 0x7f0c068f

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/settings/vpn2/MiuiVpnEditFragment$1$1;

    invoke-direct {v4, p0}, Lcom/android/settings/vpn2/MiuiVpnEditFragment$1$1;-><init>(Lcom/android/settings/vpn2/MiuiVpnEditFragment$1;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 183
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 184
    .local v0, alertDialog:Landroid/app/Dialog;
    new-instance v2, Lcom/android/settings/vpn2/MiuiVpnEditFragment$1$2;

    invoke-direct {v2, p0}, Lcom/android/settings/vpn2/MiuiVpnEditFragment$1$2;-><init>(Lcom/android/settings/vpn2/MiuiVpnEditFragment$1;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 190
    return-void
.end method
