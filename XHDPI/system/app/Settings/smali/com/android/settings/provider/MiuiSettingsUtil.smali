.class public Lcom/android/settings/provider/MiuiSettingsUtil;
.super Ljava/lang/Object;
.source "MiuiSettingsUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/provider/MiuiSettingsUtil$Item;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final LIMIT:I

.field private static sUpdateCacheMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/provider/MiuiSettingsUtil$Item;",
            ">;"
        }
    .end annotation
.end field

.field public static sUpdateFrequent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "content://miui_settings/miui_settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/provider/MiuiSettingsUtil;->CONTENT_URI:Landroid/net/Uri;

    .line 29
    sget-boolean v0, Lmiui/os/Build;->IS_MITWO:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_MITHREE:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI:Z

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0xa

    :goto_0
    sput v0, Lcom/android/settings/provider/MiuiSettingsUtil;->LIMIT:I

    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/provider/MiuiSettingsUtil;->sUpdateCacheMap:Ljava/util/HashMap;

    return-void

    .line 29
    :cond_1
    const/16 v0, 0x9

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 15
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/settings/provider/MiuiSettingsUtil;->updateCount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public static addToCache(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter "key"
    .parameter "searchKey"
    .parameter "index"

    .prologue
    .line 145
    sget-object v1, Lcom/android/settings/provider/MiuiSettingsUtil;->sUpdateCacheMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/provider/MiuiSettingsUtil$Item;

    .line 146
    .local v0, item:Lcom/android/settings/provider/MiuiSettingsUtil$Item;
    if-nez v0, :cond_0

    .line 147
    new-instance v0, Lcom/android/settings/provider/MiuiSettingsUtil$Item;

    .end local v0           #item:Lcom/android/settings/provider/MiuiSettingsUtil$Item;
    invoke-direct {v0}, Lcom/android/settings/provider/MiuiSettingsUtil$Item;-><init>()V

    .line 148
    .restart local v0       #item:Lcom/android/settings/provider/MiuiSettingsUtil$Item;
    iput-object p0, v0, Lcom/android/settings/provider/MiuiSettingsUtil$Item;->key:Ljava/lang/String;

    .line 149
    iput-object p1, v0, Lcom/android/settings/provider/MiuiSettingsUtil$Item;->searchKey:Ljava/lang/String;

    .line 150
    iput p2, v0, Lcom/android/settings/provider/MiuiSettingsUtil$Item;->index:I

    .line 151
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/settings/provider/MiuiSettingsUtil$Item;->count:I

    .line 153
    :cond_0
    iget v1, v0, Lcom/android/settings/provider/MiuiSettingsUtil$Item;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/settings/provider/MiuiSettingsUtil$Item;->count:I

    .line 154
    sget-object v1, Lcom/android/settings/provider/MiuiSettingsUtil;->sUpdateCacheMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    return-void
.end method

.method public static clearCount(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "key"

    .prologue
    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 91
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/settings/provider/MiuiSettingsUtil;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "key=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 92
    return-void
.end method

.method public static getShowKeys(Landroid/content/Context;)[I
    .locals 1
    .parameter "context"

    .prologue
    .line 64
    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/android/settings/provider/MiuiSettingsUtil;->getShowKeys(Landroid/content/Context;I)[I

    move-result-object v0

    return-object v0
.end method

.method private static getShowKeys(Landroid/content/Context;I)[I
    .locals 13
    .parameter "context"
    .parameter "count"

    .prologue
    const/4 v3, 0x0

    const/4 v12, 0x1

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 69
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v5, "count desc "

    .line 70
    .local v5, sortOrder:Ljava/lang/String;
    sget-object v2, Lcom/android/settings/provider/MiuiSettingsUtil;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "limit"

    sget v11, Lcom/android/settings/provider/MiuiSettingsUtil;->LIMIT:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v4, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "distinct"

    invoke-static {v12}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v4, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 72
    .local v1, limituri:Landroid/net/Uri;
    new-array v2, v12, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v11, "key_index"

    aput-object v11, v2, v4

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 74
    .local v6, c:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 75
    .local v10, indexArr:[I
    if-eqz v6, :cond_1

    .line 76
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    new-array v10, v2, [I

    .line 78
    const/4 v7, 0x0

    .line 80
    .local v7, i:I
    :goto_0
    const-string v2, "key_index"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 81
    .local v9, index:I
    add-int/lit8 v8, v7, 0x1

    .end local v7           #i:I
    .local v8, i:I
    aput v9, v10, v7

    .line 82
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 84
    .end local v8           #i:I
    .end local v9           #index:I
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 86
    :cond_1
    return-object v10

    .restart local v8       #i:I
    .restart local v9       #index:I
    :cond_2
    move v7, v8

    .end local v8           #i:I
    .restart local v7       #i:I
    goto :goto_0
.end method

.method public static saveCache(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 126
    sget-object v1, Lcom/android/settings/provider/MiuiSettingsUtil;->sUpdateCacheMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 142
    :goto_0
    return-void

    .line 129
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v0, updateCacheList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/provider/MiuiSettingsUtil$Item;>;"
    sget-object v1, Lcom/android/settings/provider/MiuiSettingsUtil;->sUpdateCacheMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 131
    sget-object v1, Lcom/android/settings/provider/MiuiSettingsUtil;->sUpdateCacheMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 132
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/settings/provider/MiuiSettingsUtil;->sUpdateFrequent:Z

    .line 134
    new-instance v1, Lcom/android/settings/provider/MiuiSettingsUtil$1;

    invoke-direct {v1, v0, p0}, Lcom/android/settings/provider/MiuiSettingsUtil$1;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/settings/provider/MiuiSettingsUtil$1;->start()V

    goto :goto_0
.end method

.method private static updateCount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 10
    .parameter "context"
    .parameter "key"
    .parameter "searchKey"
    .parameter "index"
    .parameter "count"

    .prologue
    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 96
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/settings/provider/MiuiSettingsUtil;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "count"

    aput-object v4, v2, v3

    const-string v3, "key=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 101
    .local v6, c:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 102
    .local v8, exist:Z
    if-eqz v6, :cond_1

    .line 103
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    const-string v1, "count"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 105
    .local v7, columnIndex:I
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    add-int/2addr p4, v1

    .line 106
    const/4 v8, 0x1

    .line 108
    .end local v7           #columnIndex:I
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 111
    :cond_1
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 112
    .local v9, values:Landroid/content/ContentValues;
    const-string v1, "count"

    add-int/lit8 p4, p4, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 113
    if-eqz v8, :cond_2

    .line 114
    sget-object v1, Lcom/android/settings/provider/MiuiSettingsUtil;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "key=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 121
    :goto_0
    return-void

    .line 116
    :cond_2
    const-string v1, "key"

    invoke-virtual {v9, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v1, "search_key"

    invoke-virtual {v9, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v1, "key_index"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 119
    sget-object v1, Lcom/android/settings/provider/MiuiSettingsUtil;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method
