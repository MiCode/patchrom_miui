.class Lcom/android/settings/BackgroundApplicationsManager$1;
.super Ljava/lang/Object;
.source "BackgroundApplicationsManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/BackgroundApplicationsManager;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/BackgroundApplicationsManager;


# direct methods
.method constructor <init>(Lcom/android/settings/BackgroundApplicationsManager;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/settings/BackgroundApplicationsManager$1;->this$0:Lcom/android/settings/BackgroundApplicationsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 60
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/BackgroundApplicationsManager$1;->this$0:Lcom/android/settings/BackgroundApplicationsManager;

    const-class v2, Lcom/android/settings/SelectAutoRunApplicationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    iget-object v1, p0, Lcom/android/settings/BackgroundApplicationsManager$1;->this$0:Lcom/android/settings/BackgroundApplicationsManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/BackgroundApplicationsManager;->startActivityForResult(Landroid/content/Intent;I)V

    .line 62
    return-void
.end method
