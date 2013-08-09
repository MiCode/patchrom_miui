.class Lcom/mediatek/gemini/GeminiApnSettings$4;
.super Ljava/lang/Object;
.source "GeminiApnSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/gemini/GeminiApnSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gemini/GeminiApnSettings;


# direct methods
.method constructor <init>(Lcom/mediatek/gemini/GeminiApnSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 828
    iput-object p1, p0, Lcom/mediatek/gemini/GeminiApnSettings$4;->this$0:Lcom/mediatek/gemini/GeminiApnSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "a0"
    .parameter "a1"

    .prologue
    .line 830
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiApnSettings$4;->this$0:Lcom/mediatek/gemini/GeminiApnSettings;

    invoke-virtual {v0}, Lcom/mediatek/gemini/GeminiApnSettings;->finish()V

    .line 831
    return-void
.end method
