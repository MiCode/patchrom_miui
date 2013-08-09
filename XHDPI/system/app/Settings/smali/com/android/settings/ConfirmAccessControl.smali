.class public Lcom/android/settings/ConfirmAccessControl;
.super Lcom/android/settings/ConfirmLockPattern;
.source "ConfirmAccessControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;
    }
.end annotation


# instance fields
.field private mFragment:Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;

.field private mNoBack:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPattern;-><init>()V

    .line 99
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/ConfirmAccessControl;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/android/settings/ConfirmAccessControl;->mNoBack:Z

    return p1
.end method

.method private showLauncher()V
    .locals 2

    .prologue
    .line 94
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    invoke-virtual {p0, v0}, Lcom/android/settings/ConfirmAccessControl;->startActivity(Landroid/content/Intent;)V

    .line 97
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 75
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/ConfirmLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 76
    const-string v1, ":android:show_fragment"

    const-class v2, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 78
    return-object v0
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 0
    .parameter "fragment"

    .prologue
    .line 83
    check-cast p1, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;

    .end local p1
    iput-object p1, p0, Lcom/android/settings/ConfirmAccessControl;->mFragment:Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;

    .line 84
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/settings/ConfirmAccessControl;->mNoBack:Z

    if-nez v0, :cond_0

    .line 59
    invoke-super {p0}, Lcom/android/settings/ConfirmLockPattern;->onBackPressed()V

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/ConfirmAccessControl;->showLauncher()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/android/settings/ConfirmLockPattern;->onNewIntent(Landroid/content/Intent;)V

    .line 89
    iget-object v0, p0, Lcom/android/settings/ConfirmAccessControl;->mFragment:Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;

    invoke-virtual {v0, p1}, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->parseIntent(Landroid/content/Intent;)V

    .line 90
    iget-object v0, p0, Lcom/android/settings/ConfirmAccessControl;->mFragment:Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;

    sget-object v1, Lcom/android/settings/ConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/settings/ConfirmLockPattern$Stage;

    invoke-virtual {v0, v1}, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->updateStage(Lcom/android/settings/ConfirmLockPattern$Stage;)V

    .line 91
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/settings/ConfirmAccessControl;->mNoBack:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 50
    invoke-direct {p0}, Lcom/android/settings/ConfirmAccessControl;->showLauncher()V

    .line 51
    const/4 v0, 0x1

    .line 53
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/ConfirmLockPattern;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Lcom/android/settings/ConfirmLockPattern;->onStop()V

    .line 68
    iget-boolean v0, p0, Lcom/android/settings/ConfirmAccessControl;->mNoBack:Z

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/ConfirmAccessControl;->finish()V

    .line 71
    :cond_0
    return-void
.end method
