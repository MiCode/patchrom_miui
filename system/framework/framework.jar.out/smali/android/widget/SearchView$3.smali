.class Landroid/widget/SearchView$3;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 156
    iput-object p1, p0, Landroid/widget/SearchView$3;->this$0:Landroid/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Landroid/widget/SearchView$3;->this$0:Landroid/widget/SearchView;

    # getter for: Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;
    invoke-static {v0}, Landroid/widget/SearchView;->access$100(Landroid/widget/SearchView;)Landroid/widget/CursorAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SearchView$3;->this$0:Landroid/widget/SearchView;

    # getter for: Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;
    invoke-static {v0}, Landroid/widget/SearchView;->access$100(Landroid/widget/SearchView;)Landroid/widget/CursorAdapter;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/SuggestionsAdapter;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Landroid/widget/SearchView$3;->this$0:Landroid/widget/SearchView;

    # getter for: Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;
    invoke-static {v0}, Landroid/widget/SearchView;->access$100(Landroid/widget/SearchView;)Landroid/widget/CursorAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 161
    :cond_0
    return-void
.end method
