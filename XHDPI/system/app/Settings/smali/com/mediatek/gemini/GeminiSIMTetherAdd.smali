.class public Lcom/mediatek/gemini/GeminiSIMTetherAdd;
.super Landroid/app/Activity;
.source "GeminiSIMTetherAdd.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;
    }
.end annotation


# static fields
.field private static sAdapter:Lcom/mediatek/gemini/GeminiSIMTetherAdapter;

.field private static sIsNeedSave:Z

.field private static sIsSaving:Z


# instance fields
.field private mActionBarTextView:Landroid/widget/TextView;

.field private mAsyncTask:Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;

.field private mContactObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/gemini/GeminiSIMTetherItem;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mIsRefresh:Z

.field private mListView:Landroid/widget/ListView;

.field private mManager:Lcom/mediatek/gemini/GeminiSIMTetherMamager;

.field private volatile mNeedRefresh:Z

.field private mNumSelected:I

.field private mSaveProgressHandler:Landroid/os/Handler;

.field private mSimId:J

.field private mSimReceiver:Landroid/content/BroadcastReceiver;

.field private mTotalConNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    sput-boolean v0, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->sIsNeedSave:Z

    .line 48
    sput-boolean v0, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->sIsSaving:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mDataList:Ljava/util/ArrayList;

    .line 54
    iput-boolean v1, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mIsRefresh:Z

    .line 55
    iput-boolean v1, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mNeedRefresh:Z

    .line 56
    iput-object p0, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mContext:Landroid/content/Context;

    .line 57
    iput v1, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mTotalConNum:I

    .line 64
    new-instance v0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mediatek/gemini/GeminiSIMTetherAdd$1;-><init>(Lcom/mediatek/gemini/GeminiSIMTetherAdd;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mContactObserver:Landroid/database/ContentObserver;

    .line 90
    new-instance v0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$2;

    invoke-direct {v0, p0}, Lcom/mediatek/gemini/GeminiSIMTetherAdd$2;-><init>(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)V

    iput-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mSimReceiver:Landroid/content/BroadcastReceiver;

    .line 197
    new-instance v0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$3;

    invoke-direct {v0, p0}, Lcom/mediatek/gemini/GeminiSIMTetherAdd$3;-><init>(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)V

    iput-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mSaveProgressHandler:Landroid/os/Handler;

    .line 211
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 41
    sget-boolean v0, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->sIsSaving:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    sput-boolean p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->sIsSaving:Z

    return p0
.end method

.method static synthetic access$100(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mIsRefresh:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)Lcom/mediatek/gemini/GeminiSIMTetherMamager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mManager:Lcom/mediatek/gemini/GeminiSIMTetherMamager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mediatek/gemini/GeminiSIMTetherAdd;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mIsRefresh:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/mediatek/gemini/GeminiSIMTetherAdd;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mTotalConNum:I

    return p1
.end method

.method static synthetic access$1200(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mSaveProgressHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mNeedRefresh:Z

    return v0
.end method

.method static synthetic access$202(Lcom/mediatek/gemini/GeminiSIMTetherAdd;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mNeedRefresh:Z

    return p1
.end method

.method static synthetic access$300(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mAsyncTask:Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mediatek/gemini/GeminiSIMTetherAdd;Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;)Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mAsyncTask:Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;

    return-object p1
.end method

.method static synthetic access$400(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->goBackSettings()V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mSimId:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mDataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$702(Lcom/mediatek/gemini/GeminiSIMTetherAdd;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mDataList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$800(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$900()Lcom/mediatek/gemini/GeminiSIMTetherAdapter;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->sAdapter:Lcom/mediatek/gemini/GeminiSIMTetherAdapter;

    return-object v0
.end method

.method static synthetic access$902(Lcom/mediatek/gemini/GeminiSIMTetherAdapter;)Lcom/mediatek/gemini/GeminiSIMTetherAdapter;
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    sput-object p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->sAdapter:Lcom/mediatek/gemini/GeminiSIMTetherAdapter;

    return-object p0
.end method

.method private goBackSettings()V
    .locals 2

    .prologue
    .line 192
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/Settings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 193
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 194
    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->startActivity(Landroid/content/Intent;)V

    .line 195
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->finish()V

    .line 196
    return-void
.end method

.method private saveTetherConfigs()V
    .locals 2

    .prologue
    .line 322
    const-string v0, "GeminiSIMTetherAdd"

    const-string v1, "saveTetherConfigs(), begin"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    sget-boolean v0, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->sIsNeedSave:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 324
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->showDialog(I)V

    .line 325
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->sIsSaving:Z

    .line 326
    new-instance v0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$4;

    invoke-direct {v0, p0}, Lcom/mediatek/gemini/GeminiSIMTetherAdd$4;-><init>(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)V

    invoke-virtual {v0}, Lcom/mediatek/gemini/GeminiSIMTetherAdd$4;->start()V

    .line 346
    :cond_0
    return-void
.end method

.method private showActionBar()V
    .locals 9

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 352
    .local v0, actionBar:Landroid/app/ActionBar;
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 353
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f040067

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 355
    .local v1, customActionBarView:Landroid/view/View;
    const v4, 0x7f0900fb

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 357
    .local v2, doneMenuItem:Landroid/widget/ImageButton;
    const v4, 0x7f0900fc

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mActionBarTextView:Landroid/widget/TextView;

    .line 359
    iget-object v4, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mActionBarTextView:Landroid/widget/TextView;

    const v5, 0x7f0c0a7c

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mNumSelected:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    new-instance v4, Lcom/mediatek/gemini/GeminiSIMTetherAdd$5;

    invoke-direct {v4, p0}, Lcom/mediatek/gemini/GeminiSIMTetherAdd$5;-><init>(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    const/16 v4, 0x10

    const/16 v5, 0x1a

    invoke-virtual {v0, v4, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 372
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 374
    return-void
.end method

.method private updateTitle(I)V
    .locals 5
    .parameter "num"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mActionBarTextView:Landroid/widget/TextView;

    const v1, 0x7f0c0a7c

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    .line 119
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 120
    const-string v5, "GeminiSIMTetherAdd"

    const-string v6, "onCreate"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const v5, 0x7f040049

    invoke-virtual {p0, v5}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->setContentView(I)V

    .line 122
    invoke-static {p0}, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->getInstance(Landroid/content/Context;)Lcom/mediatek/gemini/GeminiSIMTetherMamager;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mManager:Lcom/mediatek/gemini/GeminiSIMTetherMamager;

    .line 124
    const-string v3, ""

    .line 125
    .local v3, simDisplayName:Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mManager:Lcom/mediatek/gemini/GeminiSIMTetherMamager;

    invoke-virtual {v5}, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->getCurrSIMID()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, mCurrSIMId:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-long v5, v5

    iput-wide v5, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mSimId:J

    .line 127
    iget-wide v5, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mSimId:J

    invoke-static {p0, v5, v6}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoById(Landroid/content/Context;J)Landroid/provider/Telephony$SIMInfo;

    move-result-object v4

    .line 128
    .local v4, simInfo:Landroid/provider/Telephony$SIMInfo;
    invoke-static {p0}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMCount(Landroid/content/Context;)I

    move-result v2

    .line 129
    .local v2, simCount:I
    const/4 v5, 0x1

    if-le v2, v5, :cond_0

    if-eqz v4, :cond_0

    .line 130
    iget-object v3, v4, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    .line 132
    :cond_0
    if-eqz v3, :cond_1

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 133
    invoke-virtual {p0, v3}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->setTitle(Ljava/lang/CharSequence;)V

    .line 135
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->showActionBar()V

    .line 136
    const v5, 0x102000a

    invoke-virtual {p0, v5}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mListView:Landroid/widget/ListView;

    .line 137
    sput-boolean v7, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->sIsNeedSave:Z

    .line 138
    new-instance v1, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;

    invoke-direct {v1, p0, p0}, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;-><init>(Lcom/mediatek/gemini/GeminiSIMTetherAdd;Landroid/content/Context;)V

    .line 139
    .local v1, mySync:Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;
    new-array v5, v7, [Ljava/lang/Void;

    invoke-virtual {v1, v5}, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v5

    check-cast v5, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;

    iput-object v5, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mAsyncTask:Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;

    .line 140
    iget-object v5, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mSimReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.SIM_INFO_UPDATE"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v6}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 141
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 378
    packed-switch p1, :pswitch_data_0

    .line 411
    :goto_0
    return-object v2

    .line 380
    :pswitch_0
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 381
    .local v2, progressDialog:Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0a84

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 383
    invoke-virtual {v2, v7}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 384
    invoke-virtual {v2, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_0

    .line 387
    .end local v2           #progressDialog:Landroid/app/ProgressDialog;
    :pswitch_1
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 388
    .local v3, progressDialog1:Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0399

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 390
    invoke-virtual {v3, v7}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 391
    invoke-virtual {v3, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    move-object v2, v3

    .line 392
    goto :goto_0

    .line 394
    .end local v3           #progressDialog1:Landroid/app/ProgressDialog;
    :pswitch_2
    iget v4, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mTotalConNum:I

    if-nez v4, :cond_0

    const v1, 0x7f0c0a79

    .line 396
    .local v1, msg:I
    :goto_1
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c0a82

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1080027

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    invoke-virtual {v4, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 402
    .local v0, d:Landroid/app/Dialog;
    new-instance v4, Lcom/mediatek/gemini/GeminiSIMTetherAdd$6;

    invoke-direct {v4, p0}, Lcom/mediatek/gemini/GeminiSIMTetherAdd$6;-><init>(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)V

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object v2, v0

    .line 409
    goto :goto_0

    .line 394
    .end local v0           #d:Landroid/app/Dialog;
    .end local v1           #msg:I
    :cond_0
    const v1, 0x7f0c0a7a

    goto :goto_1

    .line 378
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 146
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f110001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 147
    const v1, 0x7f0902e3

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 148
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 182
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, isCanceled:Z
    iget-object v1, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mAsyncTask:Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;

    if-eqz v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mAsyncTask:Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->cancel(Z)Z

    move-result v0

    .line 187
    :cond_0
    iget-object v1, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mSimReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 188
    const-string v1, "GeminiSIMTetherAdd"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestroy---isCanceled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x1

    .line 419
    const v3, 0x7f09009d

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 421
    .local v0, checkBox:Landroid/widget/CheckBox;
    if-eqz v0, :cond_0

    .line 422
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    .line 423
    .local v2, isChecked:Z
    if-nez v2, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 425
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 426
    iget v3, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mNumSelected:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mNumSelected:I

    .line 427
    const/4 v1, 0x1

    .line 432
    .local v1, checkBoxNewState:I
    :goto_1
    iget-object v3, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/gemini/GeminiSIMTetherItem;

    invoke-virtual {v3, v1}, Lcom/mediatek/gemini/GeminiSIMTetherItem;->setCheckedStatus(I)V

    .line 433
    sput-boolean v4, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->sIsNeedSave:Z

    .line 434
    iget v3, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mNumSelected:I

    invoke-direct {p0, v3}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->updateTitle(I)V

    .line 436
    .end local v1           #checkBoxNewState:I
    .end local v2           #isChecked:Z
    :cond_0
    return-void

    .line 423
    .restart local v2       #isChecked:Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 429
    :cond_2
    iget v3, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mNumSelected:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mNumSelected:I

    .line 430
    const/4 v1, 0x0

    .restart local v1       #checkBoxNewState:I
    goto :goto_1
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 153
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 166
    :goto_0
    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 155
    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->setAllContactSelected(Z)V

    goto :goto_0

    .line 158
    :pswitch_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->setAllContactSelected(Z)V

    goto :goto_0

    .line 161
    :pswitch_3
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->saveTetherConfigs()V

    goto :goto_0

    .line 153
    :pswitch_data_0
    .packed-switch 0x7f0902e1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 284
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 285
    const-string v0, "GeminiSIMTetherAdd"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mContactObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 288
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 171
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 172
    const-string v0, "GeminiSIMTetherAdd"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 174
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->GEMINI_TETHER_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mContactObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 178
    return-void
.end method

.method public setAllContactSelected(Z)V
    .locals 6
    .parameter "checked"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 297
    sput-boolean v4, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->sIsNeedSave:Z

    .line 298
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mListView:Landroid/widget/ListView;

    if-eqz v2, :cond_3

    .line 299
    iput v5, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mNumSelected:I

    .line 300
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 301
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 302
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/gemini/GeminiSIMTetherItem;

    if-eqz p1, :cond_1

    move v3, v4

    :goto_1
    invoke-virtual {v2, v3}, Lcom/mediatek/gemini/GeminiSIMTetherItem;->setCheckedStatus(I)V

    .line 307
    if-eqz p1, :cond_0

    .line 308
    iget v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mNumSelected:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mNumSelected:I

    .line 301
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v3, v5

    .line 302
    goto :goto_1

    .line 311
    :cond_2
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    .line 313
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_3
    iget v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mNumSelected:I

    invoke-direct {p0, v2}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->updateTitle(I)V

    .line 314
    return-void
.end method
