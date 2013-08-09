.class public Lcom/android/settings/EditActivity;
.super Landroid/app/Activity;
.source "EditActivity.java"


# instance fields
.field private mFragment:Lcom/android/settings/BaseEditFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/EditActivity;)Lcom/android/settings/BaseEditFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/settings/EditActivity;->mFragment:Lcom/android/settings/BaseEditFragment;

    return-object v0
.end method

.method private getLayoutId()I
    .locals 5

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/android/settings/EditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 83
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "edit_type"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 84
    .local v2, type:I
    const/4 v1, 0x0

    .line 85
    .local v1, layoutId:I
    packed-switch v2, :pswitch_data_0

    .line 102
    :goto_0
    return v1

    .line 87
    :pswitch_0
    const v1, 0x7f040044

    .line 88
    goto :goto_0

    .line 90
    :pswitch_1
    const v1, 0x7f040006

    .line 91
    goto :goto_0

    .line 93
    :pswitch_2
    const v1, 0x7f040043

    .line 94
    goto :goto_0

    .line 96
    :pswitch_3
    const v1, 0x7f040042

    .line 97
    goto :goto_0

    .line 99
    :pswitch_4
    const v1, 0x7f040041

    goto :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 58
    iget-object v1, p0, Lcom/android/settings/EditActivity;->mFragment:Lcom/android/settings/BaseEditFragment;

    invoke-virtual {v1}, Lcom/android/settings/BaseEditFragment;->isChanged()Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 79
    :goto_0
    return-void

    .line 63
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 64
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0c0921

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 65
    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/EditActivity$3;

    invoke-direct {v2, p0}, Lcom/android/settings/EditActivity$3;-><init>(Lcom/android/settings/EditActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 71
    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings/EditActivity$4;

    invoke-direct {v2, p0}, Lcom/android/settings/EditActivity$4;-><init>(Lcom/android/settings/EditActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 77
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 78
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-direct {p0}, Lcom/android/settings/EditActivity;->getLayoutId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/settings/EditActivity;->setContentView(I)V

    .line 28
    invoke-virtual {p0}, Lcom/android/settings/EditActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const v5, 0x7f09000b

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/android/settings/BaseEditFragment;

    iput-object v4, p0, Lcom/android/settings/EditActivity;->mFragment:Lcom/android/settings/BaseEditFragment;

    .line 30
    invoke-virtual {p0}, Lcom/android/settings/EditActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 31
    .local v0, actionBar:Landroid/app/ActionBar;
    const v4, 0x603002d

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 33
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v3

    .line 34
    .local v3, titleView:Landroid/view/View;
    const v4, 0x1020016

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/EditActivity;->mFragment:Lcom/android/settings/BaseEditFragment;

    invoke-virtual {v5}, Lcom/android/settings/BaseEditFragment;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    const v4, 0x1020019

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 36
    .local v1, button1:Landroid/widget/TextView;
    const/high16 v4, 0x104

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 37
    new-instance v4, Lcom/android/settings/EditActivity$1;

    invoke-direct {v4, p0}, Lcom/android/settings/EditActivity$1;-><init>(Lcom/android/settings/EditActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    const v4, 0x102001a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 44
    .local v2, button2:Landroid/widget/TextView;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 45
    const v4, 0x6020174

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 46
    const v4, 0x104000a

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 47
    new-instance v4, Lcom/android/settings/EditActivity$2;

    invoke-direct {v4, p0}, Lcom/android/settings/EditActivity$2;-><init>(Lcom/android/settings/EditActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    return-void
.end method
