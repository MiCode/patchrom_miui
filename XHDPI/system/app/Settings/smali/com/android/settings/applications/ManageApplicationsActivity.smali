.class public Lcom/android/settings/applications/ManageApplicationsActivity;
.super Landroid/app/Activity;
.source "ManageApplicationsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/android/settings/applications/ManageAppClickListener;
.implements Lmiui/v5/app/MiuiActionBar$FragmentViewPagerChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;,
        Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;
    }
.end annotation


# instance fields
.field private mActionBar:Lmiui/v5/app/MiuiActionBar;

.field private mActivityResumed:Z

.field private mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

.field private mCurTab:Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;

.field private mCurrentPkgName:Ljava/lang/String;

.field private mDefaultListType:I

.field private mOptionsMenu:Landroid/view/Menu;

.field private mResetDialog:Landroid/app/AlertDialog;

.field private mSortOrder:I

.field private mTabTexts:[I

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 64
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 100
    iput v1, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mSortOrder:I

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mTabs:Ljava/util/ArrayList;

    .line 114
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mTabTexts:[I

    .line 118
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mDefaultListType:I

    .line 457
    return-void

    .line 114
    :array_0
    .array-data 0x4
        0xfet 0x3t 0xct 0x7ft
        0xfft 0x3t 0xct 0x7ft
        0x0t 0x4t 0xct 0x7ft
        0x5t 0x9t 0xct 0x7ft
    .end array-data
.end method

.method static synthetic access$400(Lcom/android/settings/applications/ManageApplicationsActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mCurrentPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/applications/ManageApplicationsActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mActivityResumed:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings/applications/ManageApplicationsActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mTabs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/applications/ManageApplicationsActivity;)Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mCurTab:Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/applications/ManageApplicationsActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mSortOrder:I

    return v0
.end method

.method private onViewPagerChanged(I)V
    .locals 3
    .parameter "curPager"

    .prologue
    .line 285
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;

    iput-object v2, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mCurTab:Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;

    .line 287
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 288
    .local v1, fragmentManager:Landroid/app/FragmentManager;
    const/4 v0, 0x0

    .line 289
    .local v0, fragment:Lcom/android/settings/applications/RunningApplicationsFragment;
    packed-switch p1, :pswitch_data_0

    .line 300
    :goto_0
    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {v0}, Lcom/android/settings/applications/RunningApplicationsFragment;->update()V

    .line 304
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsActivity;->updateOptionsMenu()V

    .line 305
    return-void

    .line 291
    :pswitch_0
    const v2, 0x7f0c0400

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/ManageApplicationsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .end local v0           #fragment:Lcom/android/settings/applications/RunningApplicationsFragment;
    check-cast v0, Lcom/android/settings/applications/RunningApplicationsFragment;

    .line 293
    .restart local v0       #fragment:Lcom/android/settings/applications/RunningApplicationsFragment;
    goto :goto_0

    .line 296
    :pswitch_1
    const v2, 0x7f0c0905

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/ManageApplicationsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .end local v0           #fragment:Lcom/android/settings/applications/RunningApplicationsFragment;
    check-cast v0, Lcom/android/settings/applications/RunningApplicationsFragment;

    .restart local v0       #fragment:Lcom/android/settings/applications/RunningApplicationsFragment;
    goto :goto_0

    .line 289
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setupContents()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsActivity;->getMiuiActionBar()Lmiui/v5/app/MiuiActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mActionBar:Lmiui/v5/app/MiuiActionBar;

    .line 227
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mActionBar:Lmiui/v5/app/MiuiActionBar;

    const v1, 0x7f0c03d4

    invoke-interface {v0, v1}, Lmiui/v5/app/MiuiActionBar;->setTitle(I)V

    .line 228
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mActionBar:Lmiui/v5/app/MiuiActionBar;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lmiui/v5/app/MiuiActionBar;->setFragmentViewPagerMode(Landroid/content/Context;Landroid/app/FragmentManager;)V

    .line 229
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mActionBar:Lmiui/v5/app/MiuiActionBar;

    invoke-interface {v0, p0}, Lmiui/v5/app/MiuiActionBar;->addOnFragmentViewPagerChangeListener(Lmiui/v5/app/MiuiActionBar$FragmentViewPagerChangeListener;)V

    move v6, v5

    .line 231
    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mTabTexts:[I

    array-length v0, v0

    if-ge v6, v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mActionBar:Lmiui/v5/app/MiuiActionBar;

    invoke-interface {v0}, Lmiui/v5/app/MiuiActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    .line 233
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mTabTexts:[I

    aget v0, v0, v6

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplicationsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 234
    invoke-virtual {v2, v1}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    .line 236
    const/4 v3, 0x0

    .line 238
    packed-switch v6, :pswitch_data_0

    move v0, v5

    .line 260
    :goto_1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 261
    const-string v7, "filter_app_key"

    invoke-virtual {v4, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 262
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mActionBar:Lmiui/v5/app/MiuiActionBar;

    invoke-interface/range {v0 .. v5}, Lmiui/v5/app/MiuiActionBar;->addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;Z)I

    .line 231
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 241
    :pswitch_0
    const-class v3, Lcom/android/settings/applications/ManageApplicationsFragment;

    move v0, v5

    .line 242
    goto :goto_1

    .line 245
    :pswitch_1
    const/4 v0, 0x1

    .line 246
    const-class v3, Lcom/android/settings/applications/ManageApplicationsFragment;

    goto :goto_1

    .line 250
    :pswitch_2
    const/4 v0, 0x2

    .line 251
    const-class v3, Lcom/android/settings/applications/RunningApplicationsFragment;

    goto :goto_1

    .line 255
    :pswitch_3
    const/4 v0, 0x3

    .line 256
    const-class v3, Lcom/android/settings/applications/RunningApplicationsFragment;

    goto :goto_1

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mActionBar:Lmiui/v5/app/MiuiActionBar;

    iget v1, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mDefaultListType:I

    invoke-interface {v0, v1}, Lmiui/v5/app/MiuiActionBar;->setSelectedNavigationItem(I)V

    .line 266
    return-void

    .line 238
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private startApplicationDetailsActivity()V
    .locals 3

    .prologue
    .line 450
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 451
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.applications.InstalledAppDetailsTop"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 452
    const-string v1, "package"

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 453
    const-string v1, ":android:show_fragment_title"

    const v2, 0x7f0c03d4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 454
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplicationsActivity;->startActivity(Landroid/content/Intent;)V

    .line 455
    return-void
.end method


# virtual methods
.method buildResetDialog()V
    .locals 3

    .prologue
    .line 819
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mResetDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_0

    .line 820
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 821
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0c03f8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 822
    const v1, 0x7f0c03f9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 823
    const v1, 0x7f0c03fa

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 824
    const v1, 0x7f0c00ea

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 825
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mResetDialog:Landroid/app/AlertDialog;

    .line 826
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mResetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 828
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    return-void
.end method

.method public getDefaultListType()I
    .locals 1

    .prologue
    .line 815
    iget v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mDefaultListType:I

    return v0
.end method

.method public getTabs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mTabs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 839
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mResetDialog:Landroid/app/AlertDialog;

    if-ne v0, p1, :cond_0

    .line 840
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 841
    .local v2, pm:Landroid/content/pm/PackageManager;
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v3

    .line 843
    .local v3, nm:Landroid/app/INotificationManager;
    invoke-static {p0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v4

    .line 844
    .local v4, npm:Landroid/net/NetworkPolicyManager;
    new-instance v5, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 845
    .local v5, handler:Landroid/os/Handler;
    new-instance v0, Lcom/android/settings/applications/ManageApplicationsActivity$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/ManageApplicationsActivity$1;-><init>(Lcom/android/settings/applications/ManageApplicationsActivity;Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Landroid/net/NetworkPolicyManager;Landroid/os/Handler;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ManageApplicationsActivity$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 906
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    .end local v3           #nm:Landroid/app/INotificationManager;
    .end local v4           #npm:Landroid/net/NetworkPolicyManager;
    .end local v5           #handler:Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 123
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settings/applications/ApplicationsState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 126
    .local v7, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings.APPLICATION_LIST_TYPE"

    invoke-virtual {v7, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mDefaultListType:I

    .line 128
    new-instance v0, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    const v1, 0x7f0c03fe

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/ManageApplicationsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;-><init>(Lcom/android/settings/applications/ManageApplicationsActivity;Lcom/android/settings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings/applications/ManageAppClickListener;Landroid/os/Bundle;)V

    .line 131
    .local v0, tab:Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance v0, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;

    .end local v0           #tab:Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    const v1, 0x7f0c03ff

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/ManageApplicationsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object v1, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;-><init>(Lcom/android/settings/applications/ManageApplicationsActivity;Lcom/android/settings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings/applications/ManageAppClickListener;Landroid/os/Bundle;)V

    .line 136
    .restart local v0       #tab:Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    new-instance v0, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;

    .end local v0           #tab:Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    const v1, 0x7f0c0400

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/ManageApplicationsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    move-object v1, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;-><init>(Lcom/android/settings/applications/ManageApplicationsActivity;Lcom/android/settings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings/applications/ManageAppClickListener;Landroid/os/Bundle;)V

    .line 141
    .restart local v0       #tab:Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance v0, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;

    .end local v0           #tab:Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    const v1, 0x7f0c0905

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/ManageApplicationsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    move-object v1, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;-><init>(Lcom/android/settings/applications/ManageApplicationsActivity;Lcom/android/settings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings/applications/ManageAppClickListener;Landroid/os/Bundle;)V

    .line 146
    .restart local v0       #tab:Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplicationsActivity;->setupContents()V

    .line 149
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 749
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 751
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mOptionsMenu:Landroid/view/Menu;

    .line 754
    const v0, 0x7f0c03f3

    invoke-interface {p1, v3, v5, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 757
    const/4 v0, 0x5

    const/4 v1, 0x2

    const v2, 0x7f0c03f4

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 760
    const/16 v0, 0x8

    const v1, 0x7f0c03f7

    invoke-interface {p1, v3, v0, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 762
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsActivity;->updateOptionsMenu()V

    .line 764
    return v4
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 832
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mResetDialog:Landroid/app/AlertDialog;

    if-ne v0, p1, :cond_0

    .line 833
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mResetDialog:Landroid/app/AlertDialog;

    .line 835
    :cond_0
    return-void
.end method

.method public onItemClick(Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "tab"
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 440
    .local p2, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p1, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;

    invoke-virtual {v1}, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->getCount()I

    move-result v1

    if-le v1, p4, :cond_0

    .line 441
    iget-object v1, p1, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->mApplications:Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;

    invoke-virtual {v1, p4}, Lcom/android/settings/applications/ManageApplicationsActivity$ApplicationsAdapter;->getAppEntry(I)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .line 442
    .local v0, entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    iget-object v1, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mCurrentPkgName:Ljava/lang/String;

    .line 443
    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplicationsActivity;->startApplicationDetailsActivity()V

    .line 446
    .end local v0           #entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 798
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 799
    .local v1, menuId:I
    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 800
    :cond_0
    iput v1, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mSortOrder:I

    .line 801
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-gt v0, v3, :cond_2

    .line 802
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/ManageApplicationsActivity;->updateCurrentTab(Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;)V

    .line 801
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 804
    .end local v0           #i:I
    :cond_1
    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 805
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsActivity;->buildResetDialog()V

    .line 810
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsActivity;->updateOptionsMenu()V

    move v2, v3

    .line 811
    :goto_1
    return v2

    .line 808
    :cond_3
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 271
    return-void
.end method

.method public onPageScrolled(IFZZ)V
    .locals 0
    .parameter "position"
    .parameter "ratio"
    .parameter "fromHasActionMenu"
    .parameter "toHasActionMenu"

    .prologue
    .line 277
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 281
    invoke-direct {p0, p1}, Lcom/android/settings/applications/ManageApplicationsActivity;->onViewPagerChanged(I)V

    .line 282
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 183
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 184
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mActivityResumed:Z

    .line 185
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;

    invoke-virtual {v1}, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->pause()V

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 769
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 771
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsActivity;->updateOptionsMenu()V

    .line 773
    const/4 v0, 0x1

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, -0x1

    .line 192
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 194
    if-eqz p1, :cond_0

    .line 195
    const-string v1, "sortOrder"

    iget v2, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mSortOrder:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mSortOrder:I

    .line 196
    const-string v1, "defaultListType"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 197
    .local v0, tmp:I
    if-eq v0, v3, :cond_0

    .line 198
    iput v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mDefaultListType:I

    .line 202
    .end local v0           #tmp:I
    :cond_0
    if-eqz p1, :cond_1

    const-string v1, "resetDialog"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsActivity;->buildResetDialog()V

    .line 205
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 163
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 164
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mActivityResumed:Z

    .line 166
    const/4 v2, -0x1

    iget v3, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mDefaultListType:I

    if-ne v2, v3, :cond_0

    .line 167
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mDefaultListType:I

    .line 170
    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mTabs:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mDefaultListType:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;

    iput-object v2, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mCurTab:Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;

    .line 172
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mCurTab:Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;

    .line 173
    .local v1, tab:Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 174
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/ManageApplicationsActivity;->updateCurrentTab(Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;)V

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_1
    iput-object v1, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mCurTab:Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsActivity;->updateOptionsMenu()V

    .line 179
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 209
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 211
    const-string v0, "sortOrder"

    iget v1, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mSortOrder:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 212
    iget v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mDefaultListType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 213
    const-string v0, "defaultListType"

    iget v1, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mDefaultListType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mResetDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 216
    const-string v0, "resetDialog"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 218
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 153
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 155
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mResetDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mResetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mResetDialog:Landroid/app/AlertDialog;

    .line 159
    :cond_0
    return-void
.end method

.method public updateCurrentTab(Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;)V
    .locals 3
    .parameter "tab"

    .prologue
    .line 415
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mCurTab:Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;

    .line 418
    iget-boolean v1, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mActivityResumed:Z

    if-eqz v1, :cond_1

    .line 419
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mCurTab:Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;

    iget v2, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mSortOrder:I

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->resume(I)V

    .line 424
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsActivity;->updateOptionsMenu()V

    .line 425
    move-object v0, p0

    .line 426
    .local v0, host:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 427
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 430
    :cond_0
    return-void

    .line 421
    .end local v0           #host:Landroid/app/Activity;
    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mCurTab:Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;

    invoke-virtual {v1}, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->pause()V

    goto :goto_0
.end method

.method updateOptionsMenu()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 777
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mOptionsMenu:Landroid/view/Menu;

    if-nez v0, :cond_0

    .line 794
    :goto_0
    return-void

    .line 785
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mCurTab:Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mCurTab:Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;

    iget v0, v0, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->mListType:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mCurTab:Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;

    iget v0, v0, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->mListType:I

    if-ne v0, v1, :cond_4

    .line 786
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mSortOrder:I

    if-eq v0, v4, :cond_3

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 787
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v3, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mSortOrder:I

    if-eq v3, v5, :cond_2

    move v2, v1

    :cond_2
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 788
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_3
    move v0, v2

    .line 786
    goto :goto_1

    .line 790
    :cond_4
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 791
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 792
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsActivity;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method
