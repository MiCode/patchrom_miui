.class public Lcom/android/settings/AppWidgetLoader;
.super Ljava/lang/Object;
.source "AppWidgetLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/AppWidgetLoader$ItemConstructor;,
        Lcom/android/settings/AppWidgetLoader$LabelledItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item::",
        "Lcom/android/settings/AppWidgetLoader$LabelledItem;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mContext:Landroid/content/Context;

.field mItemConstructor:Lcom/android/settings/AppWidgetLoader$ItemConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/AppWidgetLoader$ItemConstructor",
            "<TItem;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Lcom/android/settings/AppWidgetLoader$ItemConstructor;)V
    .locals 0
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/appwidget/AppWidgetManager;",
            "Lcom/android/settings/AppWidgetLoader$ItemConstructor",
            "<TItem;>;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, this:Lcom/android/settings/AppWidgetLoader;,"Lcom/android/settings/AppWidgetLoader<TItem;>;"
    .local p3, itemConstructor:Lcom/android/settings/AppWidgetLoader$ItemConstructor;,"Lcom/android/settings/AppWidgetLoader$ItemConstructor<TItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/settings/AppWidgetLoader;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/android/settings/AppWidgetLoader;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 49
    iput-object p3, p0, Lcom/android/settings/AppWidgetLoader;->mItemConstructor:Lcom/android/settings/AppWidgetLoader$ItemConstructor;

    .line 50
    return-void
.end method


# virtual methods
.method protected getItems(Landroid/content/Intent;)Ljava/util/List;
    .locals 6
    .parameter "intent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/android/settings/AppWidgetLoader;,"Lcom/android/settings/AppWidgetLoader<TItem;>;"
    const/4 v5, 0x1

    .line 145
    const-string v4, "customSort"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 148
    .local v3, sortCustomAppWidgets:Z
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v2, items:Ljava/util/List;,"Ljava/util/List<TItem;>;"
    const-string v4, "categoryFilter"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 154
    .local v0, categoryFilter:I
    invoke-virtual {p0, v2, v0}, Lcom/android/settings/AppWidgetLoader;->putInstalledAppWidgets(Ljava/util/List;I)V

    .line 157
    if-eqz v3, :cond_0

    .line 158
    invoke-virtual {p0, v2, p1}, Lcom/android/settings/AppWidgetLoader;->putCustomAppWidgets(Ljava/util/List;Landroid/content/Intent;)V

    .line 160
    :cond_0
    new-instance v4, Lcom/android/settings/AppWidgetLoader$1;

    invoke-direct {v4, p0}, Lcom/android/settings/AppWidgetLoader$1;-><init>(Lcom/android/settings/AppWidgetLoader;)V

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 167
    if-nez v3, :cond_1

    .line 168
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v1, customItems:Ljava/util/List;,"Ljava/util/List<TItem;>;"
    invoke-virtual {p0, v1, p1}, Lcom/android/settings/AppWidgetLoader;->putCustomAppWidgets(Ljava/util/List;Landroid/content/Intent;)V

    .line 170
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 172
    .end local v1           #customItems:Ljava/util/List;,"Ljava/util/List<TItem;>;"
    :cond_1
    return-object v2
.end method

.method putAppWidgetItems(Ljava/util/List;Ljava/util/List;Ljava/util/List;IZ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter "categoryFilter"
    .parameter "ignoreFilter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Ljava/util/List",
            "<TItem;>;IZ)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, this:Lcom/android/settings/AppWidgetLoader;,"Lcom/android/settings/AppWidgetLoader<TItem;>;"
    .local p1, appWidgets:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    .local p2, customExtras:Ljava/util/List;,"Ljava/util/List<Landroid/os/Bundle;>;"
    .local p3, items:Ljava/util/List;,"Ljava/util/List<TItem;>;"
    if-nez p1, :cond_1

    .line 132
    :cond_0
    return-void

    .line 118
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 119
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 120
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetProviderInfo;

    .line 123
    .local v1, info:Landroid/appwidget/AppWidgetProviderInfo;
    if-nez p5, :cond_2

    iget v4, v1, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    and-int/2addr v4, p4

    if-nez v4, :cond_2

    .line 119
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :cond_2
    iget-object v5, p0, Lcom/android/settings/AppWidgetLoader;->mItemConstructor:Lcom/android/settings/AppWidgetLoader$ItemConstructor;

    iget-object v6, p0, Lcom/android/settings/AppWidgetLoader;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_3

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    :goto_2
    invoke-interface {v5, v6, v1, v4}, Lcom/android/settings/AppWidgetLoader$ItemConstructor;->createItem(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/AppWidgetLoader$LabelledItem;

    .line 130
    .local v2, item:Lcom/android/settings/AppWidgetLoader$LabelledItem;,"TItem;"
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 127
    .end local v2           #item:Lcom/android/settings/AppWidgetLoader$LabelledItem;,"TItem;"
    :cond_3
    const/4 v4, 0x0

    goto :goto_2
.end method

.method putCustomAppWidgets(Ljava/util/List;Landroid/content/Intent;)V
    .locals 10
    .parameter
    .parameter "intent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TItem;>;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, this:Lcom/android/settings/AppWidgetLoader;,"Lcom/android/settings/AppWidgetLoader<TItem;>;"
    .local p1, items:Ljava/util/List;,"Ljava/util/List<TItem;>;"
    const/4 v1, 0x0

    .line 59
    .local v1, customInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    const/4 v2, 0x0

    .line 61
    .local v2, customExtras:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    const-string v0, "customInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 62
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 63
    :cond_0
    const-string v0, "AppWidgetAdapter"

    const-string v3, "EXTRA_CUSTOM_INFO not present."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_1
    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/AppWidgetLoader;->putAppWidgetItems(Ljava/util/List;Ljava/util/List;Ljava/util/List;IZ)V

    .line 107
    return-void

    .line 67
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 68
    .local v7, customInfoSize:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v7, :cond_5

    .line 69
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Parcelable;

    .line 70
    .local v9, p:Landroid/os/Parcelable;
    if-eqz v9, :cond_3

    instance-of v0, v9, Landroid/appwidget/AppWidgetProviderInfo;

    if-nez v0, :cond_4

    .line 71
    :cond_3
    const/4 v1, 0x0

    .line 72
    const-string v0, "AppWidgetAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error using EXTRA_CUSTOM_INFO index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 68
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 77
    .end local v9           #p:Landroid/os/Parcelable;
    :cond_5
    const-string v0, "customExtras"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 78
    if-nez v2, :cond_6

    .line 79
    const/4 v1, 0x0

    .line 80
    const-string v0, "AppWidgetAdapter"

    const-string v3, "EXTRA_CUSTOM_INFO without EXTRA_CUSTOM_EXTRAS"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 84
    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 85
    .local v6, customExtrasSize:I
    if-eq v7, v6, :cond_7

    .line 86
    const/4 v1, 0x0

    .line 87
    const/4 v2, 0x0

    .line 88
    const-string v0, "AppWidgetAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "list size mismatch: EXTRA_CUSTOM_INFO: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " EXTRA_CUSTOM_EXTRAS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 94
    :cond_7
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v6, :cond_1

    .line 95
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Parcelable;

    .line 96
    .restart local v9       #p:Landroid/os/Parcelable;
    if-eqz v9, :cond_8

    instance-of v0, v9, Landroid/os/Bundle;

    if-nez v0, :cond_9

    .line 97
    :cond_8
    const/4 v1, 0x0

    .line 98
    const/4 v2, 0x0

    .line 99
    const-string v0, "AppWidgetAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error using EXTRA_CUSTOM_EXTRAS index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 94
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_2
.end method

.method putInstalledAppWidgets(Ljava/util/List;I)V
    .locals 6
    .parameter
    .parameter "categoryFilter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TItem;>;I)V"
        }
    .end annotation

    .prologue
    .line 179
    .local p0, this:Lcom/android/settings/AppWidgetLoader;,"Lcom/android/settings/AppWidgetLoader<TItem;>;"
    .local p1, items:Ljava/util/List;,"Ljava/util/List<TItem;>;"
    iget-object v0, p0, Lcom/android/settings/AppWidgetLoader;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v1

    .line 181
    .local v1, installed:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/AppWidgetLoader;->putAppWidgetItems(Ljava/util/List;Ljava/util/List;Ljava/util/List;IZ)V

    .line 182
    return-void
.end method
