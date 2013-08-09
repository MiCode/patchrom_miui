.class public Lcom/android/settings/deviceinfo/MsdInstallPicker;
.super Landroid/app/Activity;
.source "MsdInstallPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/MsdInstallPicker$Holder;,
        Lcom/android/settings/deviceinfo/MsdInstallPicker$MyAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/settings/deviceinfo/MsdInstallPicker$MyAdapter;

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    new-instance v0, Lcom/android/settings/deviceinfo/MsdInstallPicker$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/MsdInstallPicker$2;-><init>(Lcom/android/settings/deviceinfo/MsdInstallPicker;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallPicker;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 120
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/MsdInstallPicker;)Lcom/android/settings/deviceinfo/MsdInstallPicker$MyAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallPicker;->mAdapter:Lcom/android/settings/deviceinfo/MsdInstallPicker$MyAdapter;

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 75
    const/4 v0, 0x0

    const/high16 v1, 0x7f05

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/deviceinfo/MsdInstallPicker;->overridePendingTransition(II)V

    .line 76
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 67
    const/4 v0, -0x1

    if-ne v0, p2, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MsdInstallPicker;->finish()V

    .line 70
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v9, 0x7f040065

    invoke-virtual {p0, v9}, Lcom/android/settings/deviceinfo/MsdInstallPicker;->setContentView(I)V

    .line 31
    const v9, 0x7f090011

    invoke-virtual {p0, v9}, Lcom/android/settings/deviceinfo/MsdInstallPicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    .line 32
    .local v7, listView:Landroid/widget/ListView;
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MsdInstallPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f08006d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 33
    .local v2, content:[Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .local v4, holderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/deviceinfo/MsdInstallPicker$Holder;>;"
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v8, v0, v5

    .line 35
    .local v8, text:Ljava/lang/String;
    new-instance v3, Lcom/android/settings/deviceinfo/MsdInstallPicker$Holder;

    const/4 v9, 0x0

    invoke-direct {v3, p0, v9}, Lcom/android/settings/deviceinfo/MsdInstallPicker$Holder;-><init>(Lcom/android/settings/deviceinfo/MsdInstallPicker;Lcom/android/settings/deviceinfo/MsdInstallPicker$1;)V

    .line 36
    .local v3, holder:Lcom/android/settings/deviceinfo/MsdInstallPicker$Holder;
    iput-object v8, v3, Lcom/android/settings/deviceinfo/MsdInstallPicker$Holder;->mText:Ljava/lang/String;

    .line 37
    const/4 v9, 0x0

    iput-boolean v9, v3, Lcom/android/settings/deviceinfo/MsdInstallPicker$Holder;->mIsChecked:Z

    .line 38
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 40
    .end local v3           #holder:Lcom/android/settings/deviceinfo/MsdInstallPicker$Holder;
    .end local v8           #text:Ljava/lang/String;
    :cond_0
    new-instance v9, Lcom/android/settings/deviceinfo/MsdInstallPicker$MyAdapter;

    invoke-direct {v9, p0, p0, v4}, Lcom/android/settings/deviceinfo/MsdInstallPicker$MyAdapter;-><init>(Lcom/android/settings/deviceinfo/MsdInstallPicker;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v9, p0, Lcom/android/settings/deviceinfo/MsdInstallPicker;->mAdapter:Lcom/android/settings/deviceinfo/MsdInstallPicker$MyAdapter;

    .line 41
    iget-object v9, p0, Lcom/android/settings/deviceinfo/MsdInstallPicker;->mAdapter:Lcom/android/settings/deviceinfo/MsdInstallPicker$MyAdapter;

    invoke-virtual {v7, v9}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 42
    iget-object v9, p0, Lcom/android/settings/deviceinfo/MsdInstallPicker;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v7, v9}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 44
    const v9, 0x7f0900fa

    invoke-virtual {p0, v9}, Lcom/android/settings/deviceinfo/MsdInstallPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 45
    .local v1, cancelBtn:Landroid/widget/Button;
    new-instance v9, Lcom/android/settings/deviceinfo/MsdInstallPicker$1;

    invoke-direct {v9, p0}, Lcom/android/settings/deviceinfo/MsdInstallPicker$1;-><init>(Lcom/android/settings/deviceinfo/MsdInstallPicker;)V

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    return-void
.end method
