.class Lcom/android/settings/AppPickerV5$2;
.super Ljava/lang/Object;
.source "AppPickerV5.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AppPickerV5;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AppPickerV5;


# direct methods
.method constructor <init>(Lcom/android/settings/AppPickerV5;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/settings/AppPickerV5$2;->this$0:Lcom/android/settings/AppPickerV5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/AppPickerV5$2;->this$0:Lcom/android/settings/AppPickerV5;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/AppPickerV5;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/settings/AppPickerV5;->access$102(Lcom/android/settings/AppPickerV5;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 65
    iget-object v0, p0, Lcom/android/settings/AppPickerV5$2;->this$0:Lcom/android/settings/AppPickerV5;

    invoke-virtual {v0}, Lcom/android/settings/AppPickerV5;->finish()V

    .line 66
    return-void
.end method
