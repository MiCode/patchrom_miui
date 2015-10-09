.class Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "AutoCompleteTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AutoCompleteTextView;


# direct methods
.method private constructor <init>(Landroid/widget/AutoCompleteTextView;)V
    .locals 0

    .prologue
    .line 1254
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;->this$0:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/AutoCompleteTextView;
    .param p2, "x1"    # Landroid/widget/AutoCompleteTextView$1;

    .prologue
    .line 1254
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;-><init>(Landroid/widget/AutoCompleteTextView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 1257
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;->this$0:Landroid/widget/AutoCompleteTextView;

    # getter for: Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v0}, Landroid/widget/AutoCompleteTextView;->access$700(Landroid/widget/AutoCompleteTextView;)Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1262
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;->this$0:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver$1;

    invoke-direct {v1, p0}, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver$1;-><init>(Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->post(Ljava/lang/Runnable;)Z

    .line 1273
    :cond_0
    return-void
.end method
