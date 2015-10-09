.class public Landroid/accounts/CantAddAccountActivity;
.super Landroid/app/Activity;
.source "CantAddAccountActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelButtonClicked(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 38
    invoke-virtual {p0}, Landroid/accounts/CantAddAccountActivity;->onBackPressed()V

    .line 39
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    sget v0, Lcom/android/internal/R$layout;->app_not_authorized:I

    invoke-virtual {p0, v0}, Landroid/accounts/CantAddAccountActivity;->setContentView(I)V

    .line 35
    return-void
.end method
