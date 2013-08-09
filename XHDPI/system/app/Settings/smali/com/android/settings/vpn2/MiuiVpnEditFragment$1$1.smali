.class Lcom/android/settings/vpn2/MiuiVpnEditFragment$1$1;
.super Ljava/lang/Object;
.source "MiuiVpnEditFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/vpn2/MiuiVpnEditFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/vpn2/MiuiVpnEditFragment$1;


# direct methods
.method constructor <init>(Lcom/android/settings/vpn2/MiuiVpnEditFragment$1;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment$1$1;->this$1:Lcom/android/settings/vpn2/MiuiVpnEditFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment$1$1;->this$1:Lcom/android/settings/vpn2/MiuiVpnEditFragment$1;

    iget-object v0, v0, Lcom/android/settings/vpn2/MiuiVpnEditFragment$1;->this$0:Lcom/android/settings/vpn2/MiuiVpnEditFragment;

    const/4 v1, 0x1

    #calls: Lcom/android/settings/vpn2/MiuiVpnEditFragment;->saveEdit(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->access$000(Lcom/android/settings/vpn2/MiuiVpnEditFragment;Z)V

    .line 179
    return-void
.end method
