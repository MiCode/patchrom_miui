.class Landroid/webkit/JsDialogHelper$CancelListener;
.super Ljava/lang/Object;
.source "JsDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/JsDialogHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/JsDialogHelper;


# direct methods
.method private constructor <init>(Landroid/webkit/JsDialogHelper;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Landroid/webkit/JsDialogHelper$CancelListener;->this$0:Landroid/webkit/JsDialogHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/JsDialogHelper;Landroid/webkit/JsDialogHelper$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/webkit/JsDialogHelper;
    .param p2, "x1"    # Landroid/webkit/JsDialogHelper$1;

    .prologue
    .line 129
    invoke-direct {p0, p1}, Landroid/webkit/JsDialogHelper$CancelListener;-><init>(Landroid/webkit/JsDialogHelper;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 133
    iget-object v0, p0, Landroid/webkit/JsDialogHelper$CancelListener;->this$0:Landroid/webkit/JsDialogHelper;

    # getter for: Landroid/webkit/JsDialogHelper;->mResult:Landroid/webkit/JsPromptResult;
    invoke-static {v0}, Landroid/webkit/JsDialogHelper;->access$100(Landroid/webkit/JsDialogHelper;)Landroid/webkit/JsPromptResult;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/JsPromptResult;->cancel()V

    .line 134
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 137
    iget-object v0, p0, Landroid/webkit/JsDialogHelper$CancelListener;->this$0:Landroid/webkit/JsDialogHelper;

    # getter for: Landroid/webkit/JsDialogHelper;->mResult:Landroid/webkit/JsPromptResult;
    invoke-static {v0}, Landroid/webkit/JsDialogHelper;->access$100(Landroid/webkit/JsDialogHelper;)Landroid/webkit/JsPromptResult;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/JsPromptResult;->cancel()V

    .line 138
    return-void
.end method
