.class Lcom/android/settings/wifi/WpsActivity$3;
.super Ljava/lang/Object;
.source "WpsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WpsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WpsActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WpsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/settings/wifi/WpsActivity$3;->this$0:Lcom/android/settings/wifi/WpsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 140
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/android/settings/wifi/WpsActivity$3;->this$0:Lcom/android/settings/wifi/WpsActivity;

    #getter for: Lcom/android/settings/wifi/WpsActivity;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/wifi/WpsActivity;->access$200(Lcom/android/settings/wifi/WpsActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0c01f6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 142
    iget-object v0, p0, Lcom/android/settings/wifi/WpsActivity$3;->this$0:Lcom/android/settings/wifi/WpsActivity;

    #getter for: Lcom/android/settings/wifi/WpsActivity;->mTimeoutBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/android/settings/wifi/WpsActivity;->access$300(Lcom/android/settings/wifi/WpsActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 143
    iget-object v0, p0, Lcom/android/settings/wifi/WpsActivity$3;->this$0:Lcom/android/settings/wifi/WpsActivity;

    #getter for: Lcom/android/settings/wifi/WpsActivity;->mTimeoutBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/android/settings/wifi/WpsActivity;->access$300(Lcom/android/settings/wifi/WpsActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/android/settings/wifi/WpsActivity$3;->this$0:Lcom/android/settings/wifi/WpsActivity;

    #calls: Lcom/android/settings/wifi/WpsActivity;->stop()V
    invoke-static {v0}, Lcom/android/settings/wifi/WpsActivity;->access$400(Lcom/android/settings/wifi/WpsActivity;)V

    .line 145
    iget-object v0, p0, Lcom/android/settings/wifi/WpsActivity$3;->this$0:Lcom/android/settings/wifi/WpsActivity;

    #calls: Lcom/android/settings/wifi/WpsActivity;->start()V
    invoke-static {v0}, Lcom/android/settings/wifi/WpsActivity;->access$500(Lcom/android/settings/wifi/WpsActivity;)V

    .line 146
    return-void
.end method
