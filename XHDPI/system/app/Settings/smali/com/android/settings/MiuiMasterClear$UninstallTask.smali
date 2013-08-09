.class public Lcom/android/settings/MiuiMasterClear$UninstallTask;
.super Landroid/os/AsyncTask;
.source "MiuiMasterClear.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiMasterClear;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UninstallTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/MiuiMasterClear$UninstallTask$Waitor;,
        Lcom/android/settings/MiuiMasterClear$UninstallTask$DeleteObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiMasterClear;


# direct methods
.method public constructor <init>(Lcom/android/settings/MiuiMasterClear;)V
    .locals 0
    .parameter

    .prologue
    .line 323
    iput-object p1, p0, Lcom/android/settings/MiuiMasterClear$UninstallTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 345
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 323
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiMasterClear$UninstallTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .parameter "params"

    .prologue
    const/4 v8, 0x0

    .line 366
    new-instance v5, Lcom/android/settings/MiuiMasterClear$UninstallTask$Waitor;

    const/16 v6, 0x1388

    invoke-direct {v5, p0, v6}, Lcom/android/settings/MiuiMasterClear$UninstallTask$Waitor;-><init>(Lcom/android/settings/MiuiMasterClear$UninstallTask;I)V

    .line 367
    .local v5, waitor:Lcom/android/settings/MiuiMasterClear$UninstallTask$Waitor;
    new-instance v2, Lcom/android/settings/MiuiMasterClear$UninstallTask$DeleteObserver;

    invoke-direct {v2, p0, v5}, Lcom/android/settings/MiuiMasterClear$UninstallTask$DeleteObserver;-><init>(Lcom/android/settings/MiuiMasterClear$UninstallTask;Lcom/android/settings/MiuiMasterClear$UninstallTask$Waitor;)V

    .line 368
    .local v2, deleteObserver:Lcom/android/settings/MiuiMasterClear$UninstallTask$DeleteObserver;
    iget-object v6, p0, Lcom/android/settings/MiuiMasterClear$UninstallTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-virtual {v6}, Lcom/android/settings/MiuiMasterClear;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 369
    .local v4, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v4, v8}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 370
    .local v1, applicationInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v1, :cond_1

    .line 371
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 372
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/MiuiMasterClear$UninstallTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    #getter for: Lcom/android/settings/MiuiMasterClear;->mWhitePkgSet:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/android/settings/MiuiMasterClear;->access$500(Lcom/android/settings/MiuiMasterClear;)Ljava/util/HashSet;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 375
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6, v2, v8}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 376
    invoke-virtual {v5}, Lcom/android/settings/MiuiMasterClear$UninstallTask$Waitor;->waitInterval()V

    goto :goto_0

    .line 379
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_1
    const/4 v6, 0x0

    return-object v6
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 323
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiMasterClear$UninstallTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear$UninstallTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    #getter for: Lcom/android/settings/MiuiMasterClear;->mFactoryResetDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/settings/MiuiMasterClear;->access$600(Lcom/android/settings/MiuiMasterClear;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear$UninstallTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    #getter for: Lcom/android/settings/MiuiMasterClear;->mFactoryResetDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/settings/MiuiMasterClear;->access$600(Lcom/android/settings/MiuiMasterClear;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear$UninstallTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    #calls: Lcom/android/settings/MiuiMasterClear;->doFactoryReset()V
    invoke-static {v0}, Lcom/android/settings/MiuiMasterClear;->access$400(Lcom/android/settings/MiuiMasterClear;)V

    .line 388
    return-void
.end method
