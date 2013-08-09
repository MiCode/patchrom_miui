.class Lcom/android/settings/wifi/WpsActivity$5;
.super Ljava/lang/Object;
.source "WpsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WpsActivity;->updateState(Lcom/android/settings/wifi/WpsActivity$State;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WpsActivity;

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$state:Lcom/android/settings/wifi/WpsActivity$State;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WpsActivity;Lcom/android/settings/wifi/WpsActivity$State;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/settings/wifi/WpsActivity$5;->this$0:Lcom/android/settings/wifi/WpsActivity;

    iput-object p2, p0, Lcom/android/settings/wifi/WpsActivity$5;->val$state:Lcom/android/settings/wifi/WpsActivity$State;

    iput-object p3, p0, Lcom/android/settings/wifi/WpsActivity$5;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 205
    sget-object v0, Lcom/android/settings/wifi/WpsActivity$6;->$SwitchMap$com$android$settings$wifi$WpsActivity$State:[I

    iget-object v1, p0, Lcom/android/settings/wifi/WpsActivity$5;->val$state:Lcom/android/settings/wifi/WpsActivity$State;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WpsActivity$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 220
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WpsActivity$5;->this$0:Lcom/android/settings/wifi/WpsActivity;

    #getter for: Lcom/android/settings/wifi/WpsActivity;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/wifi/WpsActivity;->access$200(Lcom/android/settings/wifi/WpsActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WpsActivity$5;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    return-void

    .line 207
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WpsActivity$5;->this$0:Lcom/android/settings/wifi/WpsActivity;

    #getter for: Lcom/android/settings/wifi/WpsActivity;->mTimeoutBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/android/settings/wifi/WpsActivity;->access$300(Lcom/android/settings/wifi/WpsActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/android/settings/wifi/WpsActivity$5;->this$0:Lcom/android/settings/wifi/WpsActivity;

    #getter for: Lcom/android/settings/wifi/WpsActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/android/settings/wifi/WpsActivity;->access$700(Lcom/android/settings/wifi/WpsActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 212
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/WpsActivity$5;->this$0:Lcom/android/settings/wifi/WpsActivity;

    #getter for: Lcom/android/settings/wifi/WpsActivity;->mTimeoutBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/android/settings/wifi/WpsActivity;->access$300(Lcom/android/settings/wifi/WpsActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/android/settings/wifi/WpsActivity$5;->this$0:Lcom/android/settings/wifi/WpsActivity;

    #getter for: Lcom/android/settings/wifi/WpsActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/android/settings/wifi/WpsActivity;->access$700(Lcom/android/settings/wifi/WpsActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/android/settings/wifi/WpsActivity$5;->this$0:Lcom/android/settings/wifi/WpsActivity;

    #getter for: Lcom/android/settings/wifi/WpsActivity;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v0}, Lcom/android/settings/wifi/WpsActivity;->access$800(Lcom/android/settings/wifi/WpsActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/settings/wifi/WpsActivity$5;->this$0:Lcom/android/settings/wifi/WpsActivity;

    iget-object v1, p0, Lcom/android/settings/wifi/WpsActivity$5;->this$0:Lcom/android/settings/wifi/WpsActivity;

    #getter for: Lcom/android/settings/wifi/WpsActivity;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/android/settings/wifi/WpsActivity;->access$800(Lcom/android/settings/wifi/WpsActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WpsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 216
    iget-object v0, p0, Lcom/android/settings/wifi/WpsActivity$5;->this$0:Lcom/android/settings/wifi/WpsActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/wifi/WpsActivity;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WpsActivity;->access$802(Lcom/android/settings/wifi/WpsActivity;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    goto :goto_0

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
