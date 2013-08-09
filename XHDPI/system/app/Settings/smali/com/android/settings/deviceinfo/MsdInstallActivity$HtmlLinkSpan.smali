.class Lcom/android/settings/deviceinfo/MsdInstallActivity$HtmlLinkSpan;
.super Landroid/text/style/CharacterStyle;
.source "MsdInstallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/MsdInstallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HtmlLinkSpan"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/MsdInstallActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/MsdInstallActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity$HtmlLinkSpan;->this$0:Lcom/android/settings/deviceinfo/MsdInstallActivity;

    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2
    .parameter "ds"

    .prologue
    .line 254
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 255
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity$HtmlLinkSpan;->this$0:Lcom/android/settings/deviceinfo/MsdInstallActivity;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 256
    return-void
.end method
