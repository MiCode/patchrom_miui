.class Landroid/webkit/JsDialogHelper$PositiveListener;
.super Ljava/lang/Object;
.source "JsDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/JsDialogHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PositiveListener"
.end annotation


# instance fields
.field private final mEdit:Landroid/widget/EditText;

.field final synthetic this$0:Landroid/webkit/JsDialogHelper;


# direct methods
.method public constructor <init>(Landroid/webkit/JsDialogHelper;Landroid/widget/EditText;)V
    .locals 0
    .param p2, "edit"    # Landroid/widget/EditText;

    .prologue
    .line 144
    iput-object p1, p0, Landroid/webkit/JsDialogHelper$PositiveListener;->this$0:Landroid/webkit/JsDialogHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p2, p0, Landroid/webkit/JsDialogHelper$PositiveListener;->mEdit:Landroid/widget/EditText;

    .line 146
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 150
    iget-object v0, p0, Landroid/webkit/JsDialogHelper$PositiveListener;->mEdit:Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Landroid/webkit/JsDialogHelper$PositiveListener;->this$0:Landroid/webkit/JsDialogHelper;

    # getter for: Landroid/webkit/JsDialogHelper;->mResult:Landroid/webkit/JsPromptResult;
    invoke-static {v0}, Landroid/webkit/JsDialogHelper;->access$100(Landroid/webkit/JsDialogHelper;)Landroid/webkit/JsPromptResult;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/JsPromptResult;->confirm()V

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Landroid/webkit/JsDialogHelper$PositiveListener;->this$0:Landroid/webkit/JsDialogHelper;

    # getter for: Landroid/webkit/JsDialogHelper;->mResult:Landroid/webkit/JsPromptResult;
    invoke-static {v0}, Landroid/webkit/JsDialogHelper;->access$100(Landroid/webkit/JsDialogHelper;)Landroid/webkit/JsPromptResult;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/JsDialogHelper$PositiveListener;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    goto :goto_0
.end method
