.class Lcom/mediatek/gemini/GeminiApnSettings$RestoreApnProcessHandler;
.super Landroid/os/Handler;
.source "GeminiApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gemini/GeminiApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreApnProcessHandler"
.end annotation


# instance fields
.field private mRestoreApnUiHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/mediatek/gemini/GeminiApnSettings;


# direct methods
.method public constructor <init>(Lcom/mediatek/gemini/GeminiApnSettings;Landroid/os/Looper;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "looper"
    .parameter "restoreApnUiHandler"

    .prologue
    .line 796
    iput-object p1, p0, Lcom/mediatek/gemini/GeminiApnSettings$RestoreApnProcessHandler;->this$0:Lcom/mediatek/gemini/GeminiApnSettings;

    .line 797
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 798
    iput-object p3, p0, Lcom/mediatek/gemini/GeminiApnSettings$RestoreApnProcessHandler;->mRestoreApnUiHandler:Landroid/os/Handler;

    .line 799
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 803
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 813
    :goto_0
    return-void

    .line 805
    :pswitch_0
    iget-object v1, p0, Lcom/mediatek/gemini/GeminiApnSettings$RestoreApnProcessHandler;->this$0:Lcom/mediatek/gemini/GeminiApnSettings;

    invoke-virtual {v1}, Lcom/mediatek/gemini/GeminiApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 806
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/mediatek/gemini/GeminiApnSettings$RestoreApnProcessHandler;->this$0:Lcom/mediatek/gemini/GeminiApnSettings;

    iget-object v1, v1, Lcom/mediatek/gemini/GeminiApnSettings;->mDefaultApnUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 807
    iget-object v1, p0, Lcom/mediatek/gemini/GeminiApnSettings$RestoreApnProcessHandler;->mRestoreApnUiHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 803
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
