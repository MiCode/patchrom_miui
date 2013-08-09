.class final Lcom/android/settings/provider/MiuiSettingsUtil$1;
.super Ljava/lang/Thread;
.source "MiuiSettingsUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/provider/MiuiSettingsUtil;->saveCache(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$updateCacheList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/settings/provider/MiuiSettingsUtil$1;->val$updateCacheList:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/settings/provider/MiuiSettingsUtil$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 137
    iget-object v2, p0, Lcom/android/settings/provider/MiuiSettingsUtil$1;->val$updateCacheList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/provider/MiuiSettingsUtil$Item;

    .line 138
    .local v1, item:Lcom/android/settings/provider/MiuiSettingsUtil$Item;
    iget-object v2, p0, Lcom/android/settings/provider/MiuiSettingsUtil$1;->val$context:Landroid/content/Context;

    iget-object v3, v1, Lcom/android/settings/provider/MiuiSettingsUtil$Item;->key:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/settings/provider/MiuiSettingsUtil$Item;->searchKey:Ljava/lang/String;

    iget v5, v1, Lcom/android/settings/provider/MiuiSettingsUtil$Item;->index:I

    iget v6, v1, Lcom/android/settings/provider/MiuiSettingsUtil$Item;->count:I

    #calls: Lcom/android/settings/provider/MiuiSettingsUtil;->updateCount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/settings/provider/MiuiSettingsUtil;->access$000(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 140
    .end local v1           #item:Lcom/android/settings/provider/MiuiSettingsUtil$Item;
    :cond_0
    return-void
.end method
