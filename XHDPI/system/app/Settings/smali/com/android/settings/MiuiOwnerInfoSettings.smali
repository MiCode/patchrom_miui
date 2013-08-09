.class public Lcom/android/settings/MiuiOwnerInfoSettings;
.super Lcom/android/settings/OwnerInfoSettings;
.source "MiuiOwnerInfoSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/settings/OwnerInfoSettings;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 55
    :goto_0
    return-void

    .line 45
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/MiuiOwnerInfoSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearComposingText()V

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/MiuiOwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 49
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/MiuiOwnerInfoSettings;->saveToDb()V

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/MiuiOwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 43
    :pswitch_data_0
    .packed-switch 0x1020019
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/android/settings/MiuiOwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 21
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 22
    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 23
    const v4, 0x603002d

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 25
    invoke-virtual {p0}, Lcom/android/settings/MiuiOwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x1020019

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 26
    .local v2, saveBtn:Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/android/settings/MiuiOwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x102001a

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 27
    .local v1, cancelBtn:Landroid/widget/Button;
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    invoke-virtual {p0}, Lcom/android/settings/MiuiOwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x1020016

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 30
    .local v3, title:Landroid/widget/TextView;
    const v4, 0x7f0c0114

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 33
    .end local v1           #cancelBtn:Landroid/widget/Button;
    .end local v2           #saveBtn:Landroid/widget/Button;
    .end local v3           #title:Landroid/widget/TextView;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/OwnerInfoSettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v4

    return-object v4
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 38
    const v0, 0x7f0900fe

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/MiuiOwnerInfoSettings;->mEditText:Landroid/widget/EditText;

    .line 39
    return-void
.end method
