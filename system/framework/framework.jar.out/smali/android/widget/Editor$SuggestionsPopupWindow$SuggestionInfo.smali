.class Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor$SuggestionsPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestionInfo"
.end annotation


# instance fields
.field highlightSpan:Landroid/text/style/TextAppearanceSpan;

.field suggestionEnd:I

.field suggestionIndex:I

.field suggestionSpan:Landroid/text/style/SuggestionSpan;

.field suggestionStart:I

.field text:Landroid/text/SpannableStringBuilder;

.field final synthetic this$1:Landroid/widget/Editor$SuggestionsPopupWindow;


# direct methods
.method private constructor <init>(Landroid/widget/Editor$SuggestionsPopupWindow;)V
    .locals 3

    .prologue
    .line 2605
    iput-object p1, p0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2609
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    .line 2610
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    iget-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    iget-object v1, v1, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Landroid/R$style;->TextAppearance_SuggestionHighlight:I

    invoke-direct {v0, v1, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->highlightSpan:Landroid/text/style/TextAppearanceSpan;

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor$SuggestionsPopupWindow;Landroid/widget/Editor$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Editor$SuggestionsPopupWindow;
    .param p2, "x1"    # Landroid/widget/Editor$1;

    .prologue
    .line 2605
    invoke-direct {p0, p1}, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;-><init>(Landroid/widget/Editor$SuggestionsPopupWindow;)V

    return-void
.end method
