.class Lcom/mediatek/gemini/GeminiApnSettings$RestoreApnUiHandler;
.super Landroid/os/Handler;
.source "GeminiApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gemini/GeminiApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreApnUiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gemini/GeminiApnSettings;


# direct methods
.method private constructor <init>(Lcom/mediatek/gemini/GeminiApnSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 772
    iput-object p1, p0, Lcom/mediatek/gemini/GeminiApnSettings$RestoreApnUiHandler;->this$0:Lcom/mediatek/gemini/GeminiApnSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/gemini/GeminiApnSettings;Lcom/mediatek/gemini/GeminiApnSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 772
    invoke-direct {p0, p1}, Lcom/mediatek/gemini/GeminiApnSettings$RestoreApnUiHandler;-><init>(Lcom/mediatek/gemini/GeminiApnSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 775
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 790
    :goto_0
    return-void

    .line 777
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiApnSettings$RestoreApnUiHandler;->this$0:Lcom/mediatek/gemini/GeminiApnSettings;

    iget-object v1, p0, Lcom/mediatek/gemini/GeminiApnSettings$RestoreApnUiHandler;->this$0:Lcom/mediatek/gemini/GeminiApnSettings;

    iget v1, v1, Lcom/mediatek/gemini/GeminiApnSettings;->mSimId:I

    #calls: Lcom/mediatek/gemini/GeminiApnSettings;->fillList(I)V
    invoke-static {v0, v1}, Lcom/mediatek/gemini/GeminiApnSettings;->access$000(Lcom/mediatek/gemini/GeminiApnSettings;I)V

    .line 778
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiApnSettings$RestoreApnUiHandler;->this$0:Lcom/mediatek/gemini/GeminiApnSettings;

    invoke-virtual {v0}, Lcom/mediatek/gemini/GeminiApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 779
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiApnSettings$RestoreApnUiHandler;->this$0:Lcom/mediatek/gemini/GeminiApnSettings;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/mediatek/gemini/GeminiApnSettings;->mRestoreDefaultApnMode:Z

    .line 780
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiApnSettings$RestoreApnUiHandler;->this$0:Lcom/mediatek/gemini/GeminiApnSettings;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/mediatek/gemini/GeminiApnSettings;->removeDialog(I)V

    .line 781
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiApnSettings$RestoreApnUiHandler;->this$0:Lcom/mediatek/gemini/GeminiApnSettings;

    iget-object v1, p0, Lcom/mediatek/gemini/GeminiApnSettings$RestoreApnUiHandler;->this$0:Lcom/mediatek/gemini/GeminiApnSettings;

    invoke-virtual {v1}, Lcom/mediatek/gemini/GeminiApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0351

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 775
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
