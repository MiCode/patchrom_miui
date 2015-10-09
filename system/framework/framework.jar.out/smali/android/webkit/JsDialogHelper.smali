.class public Landroid/webkit/JsDialogHelper;
.super Ljava/lang/Object;
.source "JsDialogHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/JsDialogHelper$1;,
        Landroid/webkit/JsDialogHelper$PositiveListener;,
        Landroid/webkit/JsDialogHelper$CancelListener;
    }
.end annotation


# static fields
.field public static final ALERT:I = 0x1

.field public static final CONFIRM:I = 0x2

.field public static final PROMPT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "JsDialogHelper"

.field public static final UNLOAD:I = 0x4


# instance fields
.field private final mDefaultValue:Ljava/lang/String;

.field private final mMessage:Ljava/lang/String;

.field private final mResult:Landroid/webkit/JsPromptResult;

.field private final mType:I

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/webkit/JsPromptResult;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Landroid/webkit/JsPromptResult;
    .param p2, "type"    # I
    .param p3, "defaultValue"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "url"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Landroid/webkit/JsDialogHelper;->mResult:Landroid/webkit/JsPromptResult;

    .line 58
    iput-object p3, p0, Landroid/webkit/JsDialogHelper;->mDefaultValue:Ljava/lang/String;

    .line 59
    iput-object p4, p0, Landroid/webkit/JsDialogHelper;->mMessage:Ljava/lang/String;

    .line 60
    iput p2, p0, Landroid/webkit/JsDialogHelper;->mType:I

    .line 61
    iput-object p5, p0, Landroid/webkit/JsDialogHelper;->mUrl:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/webkit/JsPromptResult;Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/webkit/JsPromptResult;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Landroid/webkit/JsDialogHelper;->mResult:Landroid/webkit/JsPromptResult;

    .line 66
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/JsDialogHelper;->mDefaultValue:Ljava/lang/String;

    .line 67
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/JsDialogHelper;->mMessage:Ljava/lang/String;

    .line 68
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/webkit/JsDialogHelper;->mType:I

    .line 69
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/JsDialogHelper;->mUrl:Ljava/lang/String;

    .line 70
    return-void
.end method

.method static synthetic access$100(Landroid/webkit/JsDialogHelper;)Landroid/webkit/JsPromptResult;
    .locals 1
    .param p0, "x0"    # Landroid/webkit/JsDialogHelper;

    .prologue
    .line 39
    iget-object v0, p0, Landroid/webkit/JsDialogHelper;->mResult:Landroid/webkit/JsPromptResult;

    return-object v0
.end method

.method private static canShowAlertDialog(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 183
    instance-of v0, p0, Landroid/app/Activity;

    return v0
.end method

.method private getJsDialogTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 159
    iget-object v1, p0, Landroid/webkit/JsDialogHelper;->mUrl:Ljava/lang/String;

    .line 160
    .local v1, "title":Ljava/lang/String;
    iget-object v2, p0, Landroid/webkit/JsDialogHelper;->mUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/webkit/URLUtil;->isDataUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    sget v2, Lcom/android/internal/R$string;->js_dialog_title_default:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 173
    :goto_0
    return-object v1

    .line 165
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Landroid/webkit/JsDialogHelper;->mUrl:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 167
    .local v0, "alertUrl":Ljava/net/URL;
    sget v2, Lcom/android/internal/R$string;->js_dialog_title:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 169
    .end local v0    # "alertUrl":Ljava/net/URL;
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public invokeCallback(Landroid/webkit/WebChromeClient;Landroid/webkit/WebView;)Z
    .locals 6
    .param p1, "client"    # Landroid/webkit/WebChromeClient;
    .param p2, "webView"    # Landroid/webkit/WebView;

    .prologue
    .line 73
    iget v0, p0, Landroid/webkit/JsDialogHelper;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkit/JsDialogHelper;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :pswitch_0
    iget-object v0, p0, Landroid/webkit/JsDialogHelper;->mUrl:Ljava/lang/String;

    iget-object v1, p0, Landroid/webkit/JsDialogHelper;->mMessage:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/JsDialogHelper;->mResult:Landroid/webkit/JsPromptResult;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    .line 81
    :goto_0
    return v0

    .line 77
    :pswitch_1
    iget-object v0, p0, Landroid/webkit/JsDialogHelper;->mUrl:Ljava/lang/String;

    iget-object v1, p0, Landroid/webkit/JsDialogHelper;->mMessage:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/JsDialogHelper;->mResult:Landroid/webkit/JsPromptResult;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    goto :goto_0

    .line 79
    :pswitch_2
    iget-object v0, p0, Landroid/webkit/JsDialogHelper;->mUrl:Ljava/lang/String;

    iget-object v1, p0, Landroid/webkit/JsDialogHelper;->mMessage:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/JsDialogHelper;->mResult:Landroid/webkit/JsPromptResult;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/webkit/WebChromeClient;->onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    goto :goto_0

    .line 81
    :pswitch_3
    iget-object v2, p0, Landroid/webkit/JsDialogHelper;->mUrl:Ljava/lang/String;

    iget-object v3, p0, Landroid/webkit/JsDialogHelper;->mMessage:Ljava/lang/String;

    iget-object v4, p0, Landroid/webkit/JsDialogHelper;->mDefaultValue:Ljava/lang/String;

    iget-object v5, p0, Landroid/webkit/JsDialogHelper;->mResult:Landroid/webkit/JsPromptResult;

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v0

    goto :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public showDialog(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 88
    invoke-static {p1}, Landroid/webkit/JsDialogHelper;->canShowAlertDialog(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 89
    const-string v7, "JsDialogHelper"

    const-string v8, "Cannot create a dialog, the WebView context is not an Activity"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v7, p0, Landroid/webkit/JsDialogHelper;->mResult:Landroid/webkit/JsPromptResult;

    invoke-virtual {v7}, Landroid/webkit/JsPromptResult;->cancel()V

    .line 127
    :goto_0
    return-void

    .line 96
    :cond_0
    iget v7, p0, Landroid/webkit/JsDialogHelper;->mType:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_2

    .line 97
    sget v7, Lcom/android/internal/R$string;->js_dialog_before_unload_title:I

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 98
    .local v5, "title":Ljava/lang/String;
    sget v7, Lcom/android/internal/R$string;->js_dialog_before_unload:I

    new-array v8, v12, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Landroid/webkit/JsDialogHelper;->mMessage:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {p1, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "displayMessage":Ljava/lang/String;
    sget v4, Lcom/android/internal/R$string;->js_dialog_before_unload_positive_button:I

    .line 101
    .local v4, "positiveTextId":I
    sget v3, Lcom/android/internal/R$string;->js_dialog_before_unload_negative_button:I

    .line 108
    .local v3, "negativeTextId":I
    :goto_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 109
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 110
    new-instance v7, Landroid/webkit/JsDialogHelper$CancelListener;

    invoke-direct {v7, p0, v11}, Landroid/webkit/JsDialogHelper$CancelListener;-><init>(Landroid/webkit/JsDialogHelper;Landroid/webkit/JsDialogHelper$1;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 111
    iget v7, p0, Landroid/webkit/JsDialogHelper;->mType:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_3

    .line 112
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 113
    new-instance v7, Landroid/webkit/JsDialogHelper$PositiveListener;

    invoke-direct {v7, p0, v11}, Landroid/webkit/JsDialogHelper$PositiveListener;-><init>(Landroid/webkit/JsDialogHelper;Landroid/widget/EditText;)V

    invoke-virtual {v0, v4, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 123
    :goto_2
    iget v7, p0, Landroid/webkit/JsDialogHelper;->mType:I

    if-eq v7, v12, :cond_1

    .line 124
    new-instance v7, Landroid/webkit/JsDialogHelper$CancelListener;

    invoke-direct {v7, p0, v11}, Landroid/webkit/JsDialogHelper$CancelListener;-><init>(Landroid/webkit/JsDialogHelper;Landroid/webkit/JsDialogHelper$1;)V

    invoke-virtual {v0, v3, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 126
    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 103
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "displayMessage":Ljava/lang/String;
    .end local v3    # "negativeTextId":I
    .end local v4    # "positiveTextId":I
    .end local v5    # "title":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, p1}, Landroid/webkit/JsDialogHelper;->getJsDialogTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 104
    .restart local v5    # "title":Ljava/lang/String;
    iget-object v1, p0, Landroid/webkit/JsDialogHelper;->mMessage:Ljava/lang/String;

    .line 105
    .restart local v1    # "displayMessage":Ljava/lang/String;
    sget v4, Lcom/android/internal/R$string;->ok:I

    .line 106
    .restart local v4    # "positiveTextId":I
    sget v3, Lcom/android/internal/R$string;->cancel:I

    .restart local v3    # "negativeTextId":I
    goto :goto_1

    .line 115
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    sget v8, Lcom/android/internal/R$layout;->js_prompt:I

    invoke-virtual {v7, v8, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 117
    .local v6, "view":Landroid/view/View;
    sget v7, Lcom/android/internal/R$id;->value:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 118
    .local v2, "edit":Landroid/widget/EditText;
    iget-object v7, p0, Landroid/webkit/JsDialogHelper;->mDefaultValue:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 119
    new-instance v7, Landroid/webkit/JsDialogHelper$PositiveListener;

    invoke-direct {v7, p0, v2}, Landroid/webkit/JsDialogHelper$PositiveListener;-><init>(Landroid/webkit/JsDialogHelper;Landroid/widget/EditText;)V

    invoke-virtual {v0, v4, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 120
    sget v7, Lcom/android/internal/R$id;->message:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, p0, Landroid/webkit/JsDialogHelper;->mMessage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    goto :goto_2
.end method
