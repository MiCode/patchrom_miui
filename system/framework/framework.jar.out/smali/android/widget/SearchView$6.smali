.class Landroid/widget/SearchView$6;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SearchView;


# direct methods
.method constructor <init>(Landroid/widget/SearchView;)V
    .locals 0

    .prologue
    .line 852
    iput-object p1, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 855
    iget-object v0, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    # getter for: Landroid/widget/SearchView;->mSearchButton:Landroid/view/View;
    invoke-static {v0}, Landroid/widget/SearchView;->access$400(Landroid/widget/SearchView;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 856
    iget-object v0, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    # invokes: Landroid/widget/SearchView;->onSearchClicked()V
    invoke-static {v0}, Landroid/widget/SearchView;->access$500(Landroid/widget/SearchView;)V

    .line 866
    :cond_0
    :goto_0
    return-void

    .line 857
    :cond_1
    iget-object v0, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    # getter for: Landroid/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;
    invoke-static {v0}, Landroid/widget/SearchView;->access$600(Landroid/widget/SearchView;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 858
    iget-object v0, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    # invokes: Landroid/widget/SearchView;->onCloseClicked()V
    invoke-static {v0}, Landroid/widget/SearchView;->access$700(Landroid/widget/SearchView;)V

    goto :goto_0

    .line 859
    :cond_2
    iget-object v0, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    # getter for: Landroid/widget/SearchView;->mSubmitButton:Landroid/view/View;
    invoke-static {v0}, Landroid/widget/SearchView;->access$800(Landroid/widget/SearchView;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 860
    iget-object v0, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    # invokes: Landroid/widget/SearchView;->onSubmitQuery()V
    invoke-static {v0}, Landroid/widget/SearchView;->access$900(Landroid/widget/SearchView;)V

    goto :goto_0

    .line 861
    :cond_3
    iget-object v0, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    # getter for: Landroid/widget/SearchView;->mVoiceButton:Landroid/view/View;
    invoke-static {v0}, Landroid/widget/SearchView;->access$1000(Landroid/widget/SearchView;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_4

    .line 862
    iget-object v0, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    # invokes: Landroid/widget/SearchView;->onVoiceClicked()V
    invoke-static {v0}, Landroid/widget/SearchView;->access$1100(Landroid/widget/SearchView;)V

    goto :goto_0

    .line 863
    :cond_4
    iget-object v0, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    # getter for: Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;
    invoke-static {v0}, Landroid/widget/SearchView;->access$1200(Landroid/widget/SearchView;)Landroid/widget/SearchView$SearchAutoComplete;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 864
    iget-object v0, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    # invokes: Landroid/widget/SearchView;->forceSuggestionQuery()V
    invoke-static {v0}, Landroid/widget/SearchView;->access$1300(Landroid/widget/SearchView;)V

    goto :goto_0
.end method
