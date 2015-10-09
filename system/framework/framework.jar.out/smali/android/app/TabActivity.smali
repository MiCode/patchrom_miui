.class public Landroid/app/TabActivity;
.super Landroid/app/ActivityGroup;
.source "TabActivity.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mDefaultTab:Ljava/lang/String;

.field private mDefaultTabIndex:I

.field private mTabHost:Landroid/widget/TabHost;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/TabActivity;->mDefaultTab:Ljava/lang/String;

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/TabActivity;->mDefaultTabIndex:I

    .line 60
    return-void
.end method

.method private ensureTabHost()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    if-nez v0, :cond_0

    .line 140
    sget v0, Lcom/android/internal/R$layout;->tab_content:I

    invoke-virtual {p0, v0}, Landroid/app/TabActivity;->setContentView(I)V

    .line 142
    :cond_0
    return-void
.end method


# virtual methods
.method public getTabHost()Landroid/widget/TabHost;
    .locals 1

    .prologue
    .line 162
    invoke-direct {p0}, Landroid/app/TabActivity;->ensureTabHost()V

    .line 163
    iget-object v0, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method public getTabWidget()Landroid/widget/TabWidget;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    return-object v0
.end method

.method protected onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "childActivity"    # Landroid/app/Activity;
    .param p2, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 148
    invoke-virtual {p0}, Landroid/app/TabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 149
    iget-object v1, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabView()Landroid/view/View;

    move-result-object v0

    .line 150
    .local v0, "tabView":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 151
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "tabView":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    :cond_0
    return-void
.end method

.method public onContentChanged()V
    .locals 2

    .prologue
    .line 127
    invoke-super {p0}, Landroid/app/ActivityGroup;->onContentChanged()V

    .line 128
    sget v0, Lcom/android/internal/R$id;->tabhost:I

    invoke-virtual {p0, v0}, Landroid/app/TabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    .line 130
    iget-object v0, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your content must have a TabHost whose id attribute is \'android.R.id.tabhost\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    iget-object v0, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {p0}, Landroid/app/TabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setup(Landroid/app/LocalActivityManager;)V

    .line 136
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onPostCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-direct {p0}, Landroid/app/TabActivity;->ensureTabHost()V

    .line 105
    iget-object v0, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 106
    iget-object v0, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 108
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 85
    invoke-direct {p0}, Landroid/app/TabActivity;->ensureTabHost()V

    .line 86
    const-string v1, "currentTab"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "cur":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 88
    iget-object v1, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 90
    :cond_0
    iget-object v1, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v1

    if-gez v1, :cond_1

    .line 91
    iget-object v1, p0, Landroid/app/TabActivity;->mDefaultTab:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 92
    iget-object v1, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    iget-object v2, p0, Landroid/app/TabActivity;->mDefaultTab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 97
    :cond_1
    :goto_0
    return-void

    .line 93
    :cond_2
    iget v1, p0, Landroid/app/TabActivity;->mDefaultTabIndex:I

    if-ltz v1, :cond_1

    .line 94
    iget-object v1, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    iget v2, p0, Landroid/app/TabActivity;->mDefaultTabIndex:I

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 113
    iget-object v1, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "currentTabTag":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 115
    const-string v1, "currentTab"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_0
    return-void
.end method

.method public setDefaultTab(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/TabActivity;->mDefaultTab:Ljava/lang/String;

    .line 79
    iput p1, p0, Landroid/app/TabActivity;->mDefaultTabIndex:I

    .line 80
    return-void
.end method

.method public setDefaultTab(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Landroid/app/TabActivity;->mDefaultTab:Ljava/lang/String;

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/TabActivity;->mDefaultTabIndex:I

    .line 70
    return-void
.end method
