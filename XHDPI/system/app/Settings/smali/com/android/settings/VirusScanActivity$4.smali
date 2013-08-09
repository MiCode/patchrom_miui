.class Lcom/android/settings/VirusScanActivity$4;
.super Ljava/lang/Object;
.source "VirusScanActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/VirusScanActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/VirusScanActivity;

.field final synthetic val$resolveInfoList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/settings/VirusScanActivity;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/android/settings/VirusScanActivity$4;->this$0:Lcom/android/settings/VirusScanActivity;

    iput-object p2, p0, Lcom/android/settings/VirusScanActivity$4;->val$resolveInfoList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/settings/VirusScanActivity$4;->this$0:Lcom/android/settings/VirusScanActivity;

    #setter for: Lcom/android/settings/VirusScanActivity;->mCheckedItem:I
    invoke-static {v0, p2}, Lcom/android/settings/VirusScanActivity;->access$502(Lcom/android/settings/VirusScanActivity;I)I

    .line 264
    iget-object v0, p0, Lcom/android/settings/VirusScanActivity$4;->this$0:Lcom/android/settings/VirusScanActivity;

    iget-object v1, p0, Lcom/android/settings/VirusScanActivity$4;->this$0:Lcom/android/settings/VirusScanActivity;

    #getter for: Lcom/android/settings/VirusScanActivity;->mCheckedItem:I
    invoke-static {v1}, Lcom/android/settings/VirusScanActivity;->access$500(Lcom/android/settings/VirusScanActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/VirusScanActivity$4;->val$resolveInfoList:Ljava/util/List;

    #calls: Lcom/android/settings/VirusScanActivity;->handleClick(ILjava/util/List;)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/VirusScanActivity;->access$600(Lcom/android/settings/VirusScanActivity;ILjava/util/List;)V

    .line 265
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 266
    return-void
.end method
