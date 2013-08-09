.class Lcom/mediatek/gemini/SimManagement$12;
.super Ljava/lang/Object;
.source "SimManagement.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/gemini/SimManagement;->buildChangeDataConnDialog(Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gemini/SimManagement;


# direct methods
.method constructor <init>(Lcom/mediatek/gemini/SimManagement;)V
    .locals 0
    .parameter

    .prologue
    .line 1723
    iput-object p1, p0, Lcom/mediatek/gemini/SimManagement$12;->this$0:Lcom/mediatek/gemini/SimManagement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1726
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement$12;->this$0:Lcom/mediatek/gemini/SimManagement;

    const/4 v1, -0x1

    #setter for: Lcom/mediatek/gemini/SimManagement;->mToCloseSlot:I
    invoke-static {v0, v1}, Lcom/mediatek/gemini/SimManagement;->access$2602(Lcom/mediatek/gemini/SimManagement;I)I

    .line 1727
    return-void
.end method
