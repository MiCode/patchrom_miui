.class Landroid/app/SearchDialog$3;
.super Ljava/lang/Object;
.source "SearchDialog.java"

# interfaces
.implements Landroid/widget/SearchView$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SearchDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/SearchDialog;


# direct methods
.method constructor <init>(Landroid/app/SearchDialog;)V
    .locals 0

    .prologue
    .line 673
    iput-object p1, p0, Landroid/app/SearchDialog$3;->this$0:Landroid/app/SearchDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()Z
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Landroid/app/SearchDialog$3;->this$0:Landroid/app/SearchDialog;

    # invokes: Landroid/app/SearchDialog;->onClosePressed()Z
    invoke-static {v0}, Landroid/app/SearchDialog;->access$000(Landroid/app/SearchDialog;)Z

    move-result v0

    return v0
.end method
