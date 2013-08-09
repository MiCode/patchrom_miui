.class Lcom/android/settings/display/BrightnessActivity$1;
.super Landroid/database/ContentObserver;
.source "BrightnessActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/BrightnessActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/BrightnessActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/display/BrightnessActivity;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/settings/display/BrightnessActivity$1;->this$0:Lcom/android/settings/display/BrightnessActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/display/BrightnessActivity$1;->this$0:Lcom/android/settings/display/BrightnessActivity;

    const/4 v1, -0x1

    #setter for: Lcom/android/settings/display/BrightnessActivity;->mCurBrightness:I
    invoke-static {v0, v1}, Lcom/android/settings/display/BrightnessActivity;->access$002(Lcom/android/settings/display/BrightnessActivity;I)I

    .line 57
    iget-object v0, p0, Lcom/android/settings/display/BrightnessActivity$1;->this$0:Lcom/android/settings/display/BrightnessActivity;

    #calls: Lcom/android/settings/display/BrightnessActivity;->onBrightnessChanged()V
    invoke-static {v0}, Lcom/android/settings/display/BrightnessActivity;->access$100(Lcom/android/settings/display/BrightnessActivity;)V

    .line 58
    return-void
.end method
