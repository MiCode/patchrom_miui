.class final Lcom/android/settings/VirusScanService$UpdateVirusLibTask;
.super Landroid/os/AsyncTask;
.source "VirusScanService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/VirusScanService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UpdateVirusLibTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/VirusScanService;


# direct methods
.method private constructor <init>(Lcom/android/settings/VirusScanService;)V
    .locals 0
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lcom/android/settings/VirusScanService$UpdateVirusLibTask;->this$0:Lcom/android/settings/VirusScanService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/VirusScanService;Lcom/android/settings/VirusScanService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 306
    invoke-direct {p0, p1}, Lcom/android/settings/VirusScanService$UpdateVirusLibTask;-><init>(Lcom/android/settings/VirusScanService;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 7
    .parameter "params"

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 311
    iget-object v4, p0, Lcom/android/settings/VirusScanService$UpdateVirusLibTask;->this$0:Lcom/android/settings/VirusScanService;

    const-string v5, "VirusDatabaseUpdateUri"

    invoke-static {v4, v5}, Lmiui/provider/ExtraGuard;->getUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 312
    .local v0, antiVirusUri:Landroid/net/Uri;
    const/4 v2, 0x0

    .line 313
    .local v2, ret:I
    if-eqz v0, :cond_0

    .line 315
    iget-object v4, p0, Lcom/android/settings/VirusScanService$UpdateVirusLibTask;->this$0:Lcom/android/settings/VirusScanService;

    invoke-virtual {v4}, Lcom/android/settings/VirusScanService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 316
    .local v1, resolver:Landroid/content/ContentResolver;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v1, v0, v4, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 319
    .end local v1           #resolver:Landroid/content/ContentResolver;
    :cond_0
    if-ne v2, v3, :cond_1

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 306
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/VirusScanService$UpdateVirusLibTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 5
    .parameter "result"

    .prologue
    .line 324
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 325
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 326
    iget-object v1, p0, Lcom/android/settings/VirusScanService$UpdateVirusLibTask;->this$0:Lcom/android/settings/VirusScanService;

    invoke-virtual {v1}, Lcom/android/settings/VirusScanService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "virus_update_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 327
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.FINISH_UPDATE_VIRUS_LIB"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 328
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/VirusScanService$UpdateVirusLibTask;->this$0:Lcom/android/settings/VirusScanService;

    invoke-virtual {v1, v0}, Lcom/android/settings/VirusScanService;->sendBroadcast(Landroid/content/Intent;)V

    .line 330
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/android/settings/VirusScanService$UpdateVirusLibTask;->this$0:Lcom/android/settings/VirusScanService;

    #getter for: Lcom/android/settings/VirusScanService;->mOnVirusLibUpdateListener:Lcom/android/settings/VirusScanService$OnVirusLibUpdateListener;
    invoke-static {v1}, Lcom/android/settings/VirusScanService;->access$300(Lcom/android/settings/VirusScanService;)Lcom/android/settings/VirusScanService$OnVirusLibUpdateListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 331
    iget-object v1, p0, Lcom/android/settings/VirusScanService$UpdateVirusLibTask;->this$0:Lcom/android/settings/VirusScanService;

    #getter for: Lcom/android/settings/VirusScanService;->mOnVirusLibUpdateListener:Lcom/android/settings/VirusScanService$OnVirusLibUpdateListener;
    invoke-static {v1}, Lcom/android/settings/VirusScanService;->access$300(Lcom/android/settings/VirusScanService;)Lcom/android/settings/VirusScanService$OnVirusLibUpdateListener;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/settings/VirusScanService$OnVirusLibUpdateListener;->onUpdateVirusFinish(Z)V

    .line 333
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 306
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/VirusScanService$UpdateVirusLibTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
