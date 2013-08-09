.class Lcom/android/settings/permission/PermissionFragment$1;
.super Ljava/lang/Object;
.source "PermissionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/permission/PermissionFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/permission/PermissionFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/permission/PermissionFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/settings/permission/PermissionFragment$1;->this$0:Lcom/android/settings/permission/PermissionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 36
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/permission/PermissionFragment$1;->this$0:Lcom/android/settings/permission/PermissionFragment;

    invoke-virtual {v1}, Lcom/android/settings/permission/PermissionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/permission/PermListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    iget-object v1, p0, Lcom/android/settings/permission/PermissionFragment$1;->this$0:Lcom/android/settings/permission/PermissionFragment;

    invoke-virtual {v1, v0}, Lcom/android/settings/permission/PermissionFragment;->startActivity(Landroid/content/Intent;)V

    .line 38
    return-void
.end method
