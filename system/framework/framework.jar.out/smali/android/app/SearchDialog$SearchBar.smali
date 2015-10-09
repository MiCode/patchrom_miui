.class public Landroid/app/SearchDialog$SearchBar;
.super Landroid/widget/LinearLayout;
.source "SearchDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SearchDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchBar"
.end annotation


# instance fields
.field private mSearchDialog:Landroid/app/SearchDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 629
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 630
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 625
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 626
    return-void
.end method


# virtual methods
.method public setSearchDialog(Landroid/app/SearchDialog;)V
    .locals 0
    .param p1, "searchDialog"    # Landroid/app/SearchDialog;

    .prologue
    .line 633
    iput-object p1, p0, Landroid/app/SearchDialog$SearchBar;->mSearchDialog:Landroid/app/SearchDialog;

    .line 634
    return-void
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 641
    const/4 v0, 0x0

    return-object v0
.end method
