.class public Lcom/android/settings/AppPickerV5;
.super Landroid/app/Activity;
.source "AppPickerV5.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/AppPickerV5$AppListAdapter;,
        Lcom/android/settings/AppPickerV5$MyApplicationInfo;
    }
.end annotation


# static fields
.field private static final sDisplayNameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/AppPickerV5$MyApplicationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdapter:Lcom/android/settings/AppPickerV5$AppListAdapter;

.field private mAlertDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    new-instance v0, Lcom/android/settings/AppPickerV5$3;

    invoke-direct {v0}, Lcom/android/settings/AppPickerV5$3;-><init>()V

    sput-object v0, Lcom/android/settings/AppPickerV5;->sDisplayNameComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AppPickerV5;)Lcom/android/settings/AppPickerV5$AppListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/settings/AppPickerV5;->mAdapter:Lcom/android/settings/AppPickerV5$AppListAdapter;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/AppPickerV5;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/settings/AppPickerV5;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$200()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/android/settings/AppPickerV5;->sDisplayNameComparator:Ljava/util/Comparator;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/android/settings/AppPickerV5;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04000b

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 38
    .local v1, listView:Landroid/widget/ListView;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 39
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0c0601

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 40
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/AppPickerV5;->mAlertDialog:Landroid/app/AlertDialog;

    .line 41
    iget-object v2, p0, Lcom/android/settings/AppPickerV5;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 42
    new-instance v2, Lcom/android/settings/AppPickerV5$1;

    invoke-direct {v2, p0}, Lcom/android/settings/AppPickerV5$1;-><init>(Lcom/android/settings/AppPickerV5;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 54
    new-instance v2, Lcom/android/settings/AppPickerV5$AppListAdapter;

    invoke-direct {v2, p0, p0}, Lcom/android/settings/AppPickerV5$AppListAdapter;-><init>(Lcom/android/settings/AppPickerV5;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/AppPickerV5;->mAdapter:Lcom/android/settings/AppPickerV5$AppListAdapter;

    .line 55
    iget-object v2, p0, Lcom/android/settings/AppPickerV5;->mAdapter:Lcom/android/settings/AppPickerV5$AppListAdapter;

    invoke-virtual {v2}, Lcom/android/settings/AppPickerV5$AppListAdapter;->getCount()I

    move-result v2

    if-gtz v2, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/AppPickerV5;->finish()V

    .line 60
    :goto_0
    iget-object v2, p0, Lcom/android/settings/AppPickerV5;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 61
    iget-object v2, p0, Lcom/android/settings/AppPickerV5;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v3, Lcom/android/settings/AppPickerV5$2;

    invoke-direct {v3, p0}, Lcom/android/settings/AppPickerV5$2;-><init>(Lcom/android/settings/AppPickerV5;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 68
    return-void

    .line 58
    :cond_0
    iget-object v2, p0, Lcom/android/settings/AppPickerV5;->mAdapter:Lcom/android/settings/AppPickerV5$AppListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/AppPickerV5;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/AppPickerV5;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/settings/AppPickerV5;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 75
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 76
    return-void
.end method
