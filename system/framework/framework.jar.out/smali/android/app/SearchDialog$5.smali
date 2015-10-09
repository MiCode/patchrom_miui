.class Landroid/app/SearchDialog$5;
.super Ljava/lang/Object;
.source "SearchDialog.java"

# interfaces
.implements Landroid/widget/SearchView$OnSuggestionListener;


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
    .line 694
    iput-object p1, p0, Landroid/app/SearchDialog$5;->this$0:Landroid/app/SearchDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuggestionClick(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 701
    iget-object v0, p0, Landroid/app/SearchDialog$5;->this$0:Landroid/app/SearchDialog;

    invoke-virtual {v0}, Landroid/app/SearchDialog;->dismiss()V

    .line 702
    const/4 v0, 0x0

    return v0
.end method

.method public onSuggestionSelect(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 697
    const/4 v0, 0x0

    return v0
.end method
