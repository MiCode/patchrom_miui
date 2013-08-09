.class Lcom/android/settings/deviceinfo/MsdInstallActivity$MsdInstallRetrySpan;
.super Landroid/text/style/ClickableSpan;
.source "MsdInstallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/MsdInstallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MsdInstallRetrySpan"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/MsdInstallActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/MsdInstallActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity$MsdInstallRetrySpan;->this$0:Lcom/android/settings/deviceinfo/MsdInstallActivity;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "widget"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity$MsdInstallRetrySpan;->this$0:Lcom/android/settings/deviceinfo/MsdInstallActivity;

    #calls: Lcom/android/settings/deviceinfo/MsdInstallActivity;->init()V
    invoke-static {v0}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->access$500(Lcom/android/settings/deviceinfo/MsdInstallActivity;)V

    .line 248
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .parameter "ds"

    .prologue
    .line 241
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 242
    const/high16 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 243
    return-void
.end method
