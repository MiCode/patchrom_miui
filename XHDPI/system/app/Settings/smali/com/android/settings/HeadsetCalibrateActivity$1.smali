.class Lcom/android/settings/HeadsetCalibrateActivity$1;
.super Ljava/lang/Object;
.source "HeadsetCalibrateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/HeadsetCalibrateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/HeadsetCalibrateActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/HeadsetCalibrateActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/settings/HeadsetCalibrateActivity$1;->this$0:Lcom/android/settings/HeadsetCalibrateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 195
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/settings/HeadsetCalibrateActivity$1;->this$0:Lcom/android/settings/HeadsetCalibrateActivity;

    const/4 v1, 0x1

    #setter for: Lcom/android/settings/HeadsetCalibrateActivity;->mCalibrateConfirmed:Z
    invoke-static {v0, v1}, Lcom/android/settings/HeadsetCalibrateActivity;->access$002(Lcom/android/settings/HeadsetCalibrateActivity;Z)Z

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/android/settings/HeadsetCalibrateActivity$1;->this$0:Lcom/android/settings/HeadsetCalibrateActivity;

    invoke-virtual {v0}, Lcom/android/settings/HeadsetCalibrateActivity;->finish()V

    .line 200
    return-void
.end method
