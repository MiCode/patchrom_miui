.class public Lcom/android/settings/VirusScanActivity;
.super Landroid/app/Activity;
.source "VirusScanActivity.java"

# interfaces
.implements Lcom/android/settings/VirusScanService$OnVirusLibUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/VirusScanActivity$ViewHolder;
    }
.end annotation


# static fields
.field private static final mItemInf:[I


# instance fields
.field private final SHOW_LIB_DIALOG:I

.field private mAdapter:Landroid/widget/BaseAdapter;

.field private mBinder:Lcom/android/settings/VirusScanService$ScanBinder;

.field private mCheckedItem:I

.field private mList:Landroid/widget/ListView;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mconn:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/VirusScanActivity;->mItemInf:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x7bt 0x8t 0xct 0x7ft
        0x7ct 0x8t 0xct 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    const/16 v0, 0x111

    iput v0, p0, Lcom/android/settings/VirusScanActivity;->SHOW_LIB_DIALOG:I

    .line 64
    new-instance v0, Lcom/android/settings/VirusScanActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/VirusScanActivity$1;-><init>(Lcom/android/settings/VirusScanActivity;)V

    iput-object v0, p0, Lcom/android/settings/VirusScanActivity;->mAdapter:Landroid/widget/BaseAdapter;

    .line 297
    new-instance v0, Lcom/android/settings/VirusScanActivity$5;

    invoke-direct {v0, p0}, Lcom/android/settings/VirusScanActivity$5;-><init>(Lcom/android/settings/VirusScanActivity;)V

    iput-object v0, p0, Lcom/android/settings/VirusScanActivity;->mconn:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000()[I
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/settings/VirusScanActivity;->mItemInf:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/VirusScanActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/settings/VirusScanActivity;->getApplicationLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/VirusScanActivity;)Ljava/util/Date;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/settings/VirusScanActivity;->getVirusLibUpdateDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/VirusScanActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/settings/VirusScanActivity;->updateVirusLib()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/VirusScanActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/android/settings/VirusScanActivity;->mCheckedItem:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/VirusScanActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput p1, p0, Lcom/android/settings/VirusScanActivity;->mCheckedItem:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/VirusScanActivity;ILjava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/settings/VirusScanActivity;->handleClick(ILjava/util/List;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/VirusScanActivity;)Lcom/android/settings/VirusScanService$ScanBinder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/VirusScanActivity;->mBinder:Lcom/android/settings/VirusScanService$ScanBinder;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/settings/VirusScanActivity;Lcom/android/settings/VirusScanService$ScanBinder;)Lcom/android/settings/VirusScanService$ScanBinder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/settings/VirusScanActivity;->mBinder:Lcom/android/settings/VirusScanService$ScanBinder;

    return-object p1
.end method

.method private getApplicationLabel()Ljava/lang/String;
    .locals 7

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/android/settings/VirusScanActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "safe_guard_choosed"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, packageName:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/VirusScanActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "safe_guard_choosed"

    const-string v6, "com.tencent.tmsprovider"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 182
    const-string v2, "com.tencent.tmsprovider"

    .line 185
    :cond_0
    const/4 v1, 0x0

    .line 186
    .local v1, label:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/VirusScanActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 189
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 190
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_1

    .line 191
    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 196
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v3           #pm:Landroid/content/pm/PackageManager;
    :cond_1
    :goto_0
    return-object v1

    .line 193
    .restart local v3       #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private getPackageName(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;
    .locals 1
    .parameter "info"

    .prologue
    .line 285
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 292
    :goto_0
    return-object v0

    .line 289
    :cond_0
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    .line 292
    :cond_1
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    goto :goto_0
.end method

.method private getVirusLibUpdateDate()Ljava/util/Date;
    .locals 5

    .prologue
    .line 200
    const-wide/16 v0, 0x0

    .line 202
    .local v0, dateMS:J
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/VirusScanActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "virus_update_date"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 206
    :goto_0
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object v3

    .line 203
    :catch_0
    move-exception v2

    .line 204
    .local v2, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v2}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private handleClick(ILjava/util/List;)V
    .locals 3
    .parameter "checkedItem"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 277
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget v1, p0, Lcom/android/settings/VirusScanActivity;->mCheckedItem:I

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, v1}, Lcom/android/settings/VirusScanActivity;->getPackageName(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, packageName:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 279
    invoke-virtual {p0}, Lcom/android/settings/VirusScanActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "safe_guard_choosed"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 282
    :cond_0
    return-void
.end method

.method private updateVirusLib()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 211
    invoke-direct {p0}, Lcom/android/settings/VirusScanActivity;->getVirusLibUpdateDate()Ljava/util/Date;

    move-result-object v0

    .line 212
    .local v0, date:Ljava/util/Date;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 214
    .local v1, dateNowMS:Ljava/util/Date;
    iget-object v2, p0, Lcom/android/settings/VirusScanActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/VirusScanActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 215
    iget-object v2, p0, Lcom/android/settings/VirusScanActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 216
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/VirusScanActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 218
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 219
    iget-object v2, p0, Lcom/android/settings/VirusScanActivity;->mBinder:Lcom/android/settings/VirusScanService$ScanBinder;

    if-nez v2, :cond_1

    .line 233
    :goto_0
    return-void

    .line 222
    :cond_1
    iget-object v2, p0, Lcom/android/settings/VirusScanActivity;->mBinder:Lcom/android/settings/VirusScanService$ScanBinder;

    invoke-virtual {v2}, Lcom/android/settings/VirusScanService$ScanBinder;->updateVirusLib()V

    .line 224
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/VirusScanActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 225
    iget-object v2, p0, Lcom/android/settings/VirusScanActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 226
    iget-object v2, p0, Lcom/android/settings/VirusScanActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings/VirusScanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0885

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v2, p0, Lcom/android/settings/VirusScanActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 228
    iget-object v2, p0, Lcom/android/settings/VirusScanActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 229
    iget-object v2, p0, Lcom/android/settings/VirusScanActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0

    .line 231
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/VirusScanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0886

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 121
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 122
    const v3, 0x7f0400c7

    invoke-virtual {p0, v3}, Lcom/android/settings/VirusScanActivity;->setContentView(I)V

    .line 124
    const v3, 0x7f0901ed

    invoke-virtual {p0, v3}, Lcom/android/settings/VirusScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 125
    .local v2, scan:Landroid/widget/Button;
    new-instance v3, Lcom/android/settings/VirusScanActivity$2;

    invoke-direct {v3, p0}, Lcom/android/settings/VirusScanActivity$2;-><init>(Lcom/android/settings/VirusScanActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    const v3, 0x7f0901ec

    invoke-virtual {p0, v3}, Lcom/android/settings/VirusScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/android/settings/VirusScanActivity;->mList:Landroid/widget/ListView;

    .line 135
    iget-object v3, p0, Lcom/android/settings/VirusScanActivity;->mList:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/settings/VirusScanActivity;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 136
    iget-object v3, p0, Lcom/android/settings/VirusScanActivity;->mList:Landroid/widget/ListView;

    new-instance v4, Lcom/android/settings/VirusScanActivity$3;

    invoke-direct {v4, p0}, Lcom/android/settings/VirusScanActivity$3;-><init>(Lcom/android/settings/VirusScanActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 154
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 155
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "com.android.service.VIRUS_SCAN_SERVICE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    iget-object v3, p0, Lcom/android/settings/VirusScanActivity;->mconn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v3, v5}, Lcom/android/settings/VirusScanActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 158
    const v3, 0x7f0901eb

    invoke-virtual {p0, v3}, Lcom/android/settings/VirusScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 159
    .local v1, provider:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings/VirusScanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0881

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/android/settings/VirusScanActivity;->getApplicationLabel()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 13
    .parameter "id"
    .parameter "state"

    .prologue
    const/4 v12, -0x1

    const/4 v9, 0x0

    .line 237
    const/16 v10, 0x111

    if-ne v10, p1, :cond_3

    .line 238
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v10, 0x60d003e

    invoke-direct {v0, p0, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 239
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings/VirusScanActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 240
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v10, 0x7f0400c3

    invoke-virtual {v4, v10, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/VirusScanActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 243
    .local v7, pm:Landroid/content/pm/PackageManager;
    new-instance v10, Landroid/content/Intent;

    const-string v11, "miui.intent.action.safeguard"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 244
    .local v8, resolveInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    new-array v2, v10, [Ljava/lang/CharSequence;

    .line 246
    .local v2, entries:[Ljava/lang/CharSequence;
    iput v12, p0, Lcom/android/settings/VirusScanActivity;->mCheckedItem:I

    .line 247
    invoke-virtual {p0}, Lcom/android/settings/VirusScanActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "safe_guard_choosed"

    invoke-static {v10, v11}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, choosePackageName:Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    .line 249
    .local v6, infoSize:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v6, :cond_1

    .line 250
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 252
    .local v5, info:Landroid/content/pm/ResolveInfo;
    invoke-virtual {v5, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    aput-object v10, v2, v3

    .line 254
    invoke-direct {p0, v5}, Lcom/android/settings/VirusScanActivity;->getPackageName(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 255
    iput v3, p0, Lcom/android/settings/VirusScanActivity;->mCheckedItem:I

    .line 249
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 259
    .end local v5           #info:Landroid/content/pm/ResolveInfo;
    :cond_1
    iget v10, p0, Lcom/android/settings/VirusScanActivity;->mCheckedItem:I

    if-le v10, v12, :cond_2

    .line 260
    iget v10, p0, Lcom/android/settings/VirusScanActivity;->mCheckedItem:I

    new-instance v11, Lcom/android/settings/VirusScanActivity$4;

    invoke-direct {v11, p0, v8}, Lcom/android/settings/VirusScanActivity$4;-><init>(Lcom/android/settings/VirusScanActivity;Ljava/util/List;)V

    invoke-virtual {v0, v2, v10, v11}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 270
    :cond_2
    const v10, 0x7f0c0880

    invoke-virtual {v0, v10, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 271
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 273
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #choosePackageName:Ljava/lang/String;
    .end local v2           #entries:[Ljava/lang/CharSequence;
    .end local v3           #i:I
    .end local v4           #inflater:Landroid/view/LayoutInflater;
    .end local v6           #infoSize:I
    .end local v7           #pm:Landroid/content/pm/PackageManager;
    .end local v8           #resolveInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    return-object v9
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 164
    iget-object v0, p0, Lcom/android/settings/VirusScanActivity;->mBinder:Lcom/android/settings/VirusScanService$ScanBinder;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/settings/VirusScanActivity;->mBinder:Lcom/android/settings/VirusScanService$ScanBinder;

    invoke-virtual {v0, v1}, Lcom/android/settings/VirusScanService$ScanBinder;->setOnVirusLibUpdateListener(Lcom/android/settings/VirusScanService$OnVirusLibUpdateListener;)V

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/android/settings/VirusScanActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/VirusScanActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/android/settings/VirusScanActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 169
    iput-object v1, p0, Lcom/android/settings/VirusScanActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/android/settings/VirusScanActivity;->mconn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/android/settings/VirusScanActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 172
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 173
    return-void
.end method

.method public onUpdateVirusFinish(Z)V
    .locals 2
    .parameter "success"

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/settings/VirusScanActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/VirusScanActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/android/settings/VirusScanActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 319
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/VirusScanActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 321
    :cond_0
    if-eqz p1, :cond_1

    .line 322
    iget-object v0, p0, Lcom/android/settings/VirusScanActivity;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 326
    :goto_0
    return-void

    .line 324
    :cond_1
    const v0, 0x7f0c0887

    invoke-virtual {p0, v0}, Lcom/android/settings/VirusScanActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
