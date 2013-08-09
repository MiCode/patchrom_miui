.class Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment$1;
.super Ljava/lang/Object;
.source "ConfirmAccessControl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment$1;->this$0:Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 124
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 127
    iget-object v1, p0, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment$1;->this$0:Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;

    invoke-virtual {v1, v0}, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->startActivity(Landroid/content/Intent;)V

    .line 128
    return-void
.end method
