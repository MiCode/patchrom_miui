.class Lcom/android/settings/display/ScreenTimeoutDialogActivity$1;
.super Ljava/lang/Object;
.source "ScreenTimeoutDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/ScreenTimeoutDialogActivity;->createTimeOutDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/ScreenTimeoutDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/display/ScreenTimeoutDialogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity$1;->this$0:Lcom/android/settings/display/ScreenTimeoutDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "clickedIndex"

    .prologue
    .line 72
    iget-object v1, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity$1;->this$0:Lcom/android/settings/display/ScreenTimeoutDialogActivity;

    #getter for: Lcom/android/settings/display/ScreenTimeoutDialogActivity;->mEntryValues:[Ljava/lang/CharSequence;
    invoke-static {v1}, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->access$000(Lcom/android/settings/display/ScreenTimeoutDialogActivity;)[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    if-ge p2, v1, :cond_0

    if-ltz p2, :cond_0

    .line 73
    iget-object v1, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity$1;->this$0:Lcom/android/settings/display/ScreenTimeoutDialogActivity;

    #getter for: Lcom/android/settings/display/ScreenTimeoutDialogActivity;->mEntryValues:[Ljava/lang/CharSequence;
    invoke-static {v1}, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->access$000(Lcom/android/settings/display/ScreenTimeoutDialogActivity;)[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 75
    .local v0, timeout:I
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity$1;->this$0:Lcom/android/settings/display/ScreenTimeoutDialogActivity;

    invoke-virtual {v1}, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_off_timeout"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .end local v0           #timeout:I
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 81
    iget-object v1, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity$1;->this$0:Lcom/android/settings/display/ScreenTimeoutDialogActivity;

    invoke-virtual {v1}, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->finish()V

    .line 82
    return-void

    .line 77
    .restart local v0       #timeout:I
    :catch_0
    move-exception v1

    goto :goto_0
.end method
