.class Lcom/mediatek/gemini/GeminiApnEditor$6;
.super Ljava/lang/Object;
.source "GeminiApnEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/gemini/GeminiApnEditor;->checkToSave()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gemini/GeminiApnEditor;


# direct methods
.method constructor <init>(Lcom/mediatek/gemini/GeminiApnEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 1055
    iput-object p1, p0, Lcom/mediatek/gemini/GeminiApnEditor$6;->this$0:Lcom/mediatek/gemini/GeminiApnEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiApnEditor$6;->this$0:Lcom/mediatek/gemini/GeminiApnEditor;

    const/4 v1, 0x0

    #calls: Lcom/mediatek/gemini/GeminiApnEditor;->validateAndSave(Z)Z
    invoke-static {v0, v1}, Lcom/mediatek/gemini/GeminiApnEditor;->access$2000(Lcom/mediatek/gemini/GeminiApnEditor;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1059
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiApnEditor$6;->this$0:Lcom/mediatek/gemini/GeminiApnEditor;

    invoke-virtual {v0}, Lcom/mediatek/gemini/GeminiApnEditor;->finish()V

    .line 1061
    :cond_0
    return-void
.end method
