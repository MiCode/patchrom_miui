.class public Landroid/app/SearchManager;
.super Ljava/lang/Object;
.source "SearchManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/SearchManager$OnCancelListener;,
        Landroid/app/SearchManager$OnDismissListener;
    }
.end annotation


# static fields
.field public static final ACTION_KEY:Ljava/lang/String; = "action_key"

.field public static final ACTION_MSG:Ljava/lang/String; = "action_msg"

.field public static final APP_DATA:Ljava/lang/String; = "app_data"

.field public static final CONTEXT_IS_VOICE:Ljava/lang/String; = "android.search.CONTEXT_IS_VOICE"

.field public static final CURSOR_EXTRA_KEY_IN_PROGRESS:Ljava/lang/String; = "in_progress"

.field private static final DBG:Z = false

.field public static final DISABLE_VOICE_SEARCH:Ljava/lang/String; = "android.search.DISABLE_VOICE_SEARCH"

.field public static final EXTRA_DATA_KEY:Ljava/lang/String; = "intent_extra_data_key"

.field public static final EXTRA_NEW_SEARCH:Ljava/lang/String; = "new_search"

.field public static final EXTRA_SELECT_QUERY:Ljava/lang/String; = "select_query"

.field public static final EXTRA_WEB_SEARCH_PENDINGINTENT:Ljava/lang/String; = "web_search_pendingintent"

.field public static final FLAG_QUERY_REFINEMENT:I = 0x1

.field public static final INTENT_ACTION_GLOBAL_SEARCH:Ljava/lang/String; = "android.search.action.GLOBAL_SEARCH"

.field public static final INTENT_ACTION_SEARCHABLES_CHANGED:Ljava/lang/String; = "android.search.action.SEARCHABLES_CHANGED"

.field public static final INTENT_ACTION_SEARCH_SETTINGS:Ljava/lang/String; = "android.search.action.SEARCH_SETTINGS"

.field public static final INTENT_ACTION_SEARCH_SETTINGS_CHANGED:Ljava/lang/String; = "android.search.action.SETTINGS_CHANGED"

.field public static final INTENT_ACTION_WEB_SEARCH_SETTINGS:Ljava/lang/String; = "android.search.action.WEB_SEARCH_SETTINGS"

.field public static final INTENT_GLOBAL_SEARCH_ACTIVITY_CHANGED:Ljava/lang/String; = "android.search.action.GLOBAL_SEARCH_ACTIVITY_CHANGED"

.field public static final MENU_KEY:C = 's'

.field public static final MENU_KEYCODE:I = 0x2f

.field public static final QUERY:Ljava/lang/String; = "query"

.field public static final SEARCH_MODE:Ljava/lang/String; = "search_mode"

.field public static final SHORTCUT_MIME_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.android.search.suggest"

.field public static final SUGGEST_COLUMN_FLAGS:Ljava/lang/String; = "suggest_flags"

.field public static final SUGGEST_COLUMN_FORMAT:Ljava/lang/String; = "suggest_format"

.field public static final SUGGEST_COLUMN_ICON_1:Ljava/lang/String; = "suggest_icon_1"

.field public static final SUGGEST_COLUMN_ICON_2:Ljava/lang/String; = "suggest_icon_2"

.field public static final SUGGEST_COLUMN_INTENT_ACTION:Ljava/lang/String; = "suggest_intent_action"

.field public static final SUGGEST_COLUMN_INTENT_DATA:Ljava/lang/String; = "suggest_intent_data"

.field public static final SUGGEST_COLUMN_INTENT_DATA_ID:Ljava/lang/String; = "suggest_intent_data_id"

.field public static final SUGGEST_COLUMN_INTENT_EXTRA_DATA:Ljava/lang/String; = "suggest_intent_extra_data"

.field public static final SUGGEST_COLUMN_LAST_ACCESS_HINT:Ljava/lang/String; = "suggest_last_access_hint"

.field public static final SUGGEST_COLUMN_QUERY:Ljava/lang/String; = "suggest_intent_query"

.field public static final SUGGEST_COLUMN_SHORTCUT_ID:Ljava/lang/String; = "suggest_shortcut_id"

.field public static final SUGGEST_COLUMN_SPINNER_WHILE_REFRESHING:Ljava/lang/String; = "suggest_spinner_while_refreshing"

.field public static final SUGGEST_COLUMN_TEXT_1:Ljava/lang/String; = "suggest_text_1"

.field public static final SUGGEST_COLUMN_TEXT_2:Ljava/lang/String; = "suggest_text_2"

.field public static final SUGGEST_COLUMN_TEXT_2_URL:Ljava/lang/String; = "suggest_text_2_url"

.field public static final SUGGEST_MIME_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.android.search.suggest"

.field public static final SUGGEST_NEVER_MAKE_SHORTCUT:Ljava/lang/String; = "_-1"

.field public static final SUGGEST_PARAMETER_LIMIT:Ljava/lang/String; = "limit"

.field public static final SUGGEST_URI_PATH_QUERY:Ljava/lang/String; = "search_suggest_query"

.field public static final SUGGEST_URI_PATH_SHORTCUT:Ljava/lang/String; = "search_suggest_shortcut"

.field private static final TAG:Ljava/lang/String; = "SearchManager"

.field public static final USER_QUERY:Ljava/lang/String; = "user_query"

.field private static mService:Landroid/app/ISearchManager;


# instance fields
.field private mAssociatedPackage:Ljava/lang/String;

.field mCancelListener:Landroid/app/SearchManager$OnCancelListener;

.field private final mContext:Landroid/content/Context;

.field mDismissListener:Landroid/app/SearchManager$OnDismissListener;

.field final mHandler:Landroid/os/Handler;

.field private mSearchDialog:Landroid/app/SearchDialog;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v0, 0x0

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 445
    iput-object v0, p0, Landroid/app/SearchManager;->mDismissListener:Landroid/app/SearchManager$OnDismissListener;

    .line 446
    iput-object v0, p0, Landroid/app/SearchManager;->mCancelListener:Landroid/app/SearchManager$OnCancelListener;

    .line 451
    iput-object p1, p0, Landroid/app/SearchManager;->mContext:Landroid/content/Context;

    .line 452
    iput-object p2, p0, Landroid/app/SearchManager;->mHandler:Landroid/os/Handler;

    .line 453
    const-string/jumbo v0, "search"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ISearchManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ISearchManager;

    move-result-object v0

    sput-object v0, Landroid/app/SearchManager;->mService:Landroid/app/ISearchManager;

    .line 455
    return-void
.end method

.method private ensureSearchDialog()V
    .locals 2

    .prologue
    .line 529
    iget-object v0, p0, Landroid/app/SearchManager;->mSearchDialog:Landroid/app/SearchDialog;

    if-nez v0, :cond_0

    .line 530
    new-instance v0, Landroid/app/SearchDialog;

    iget-object v1, p0, Landroid/app/SearchManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/app/SearchDialog;-><init>(Landroid/content/Context;Landroid/app/SearchManager;)V

    iput-object v0, p0, Landroid/app/SearchManager;->mSearchDialog:Landroid/app/SearchDialog;

    .line 531
    iget-object v0, p0, Landroid/app/SearchManager;->mSearchDialog:Landroid/app/SearchDialog;

    invoke-virtual {v0, p0}, Landroid/app/SearchDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 532
    iget-object v0, p0, Landroid/app/SearchManager;->mSearchDialog:Landroid/app/SearchDialog;

    invoke-virtual {v0, p0}, Landroid/app/SearchDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 534
    :cond_0
    return-void
.end method


# virtual methods
.method public getAssistIntent(Landroid/content/Context;Z)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inclContext"    # Z

    .prologue
    .line 850
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;ZI)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getAssistIntent(Landroid/content/Context;ZI)Landroid/content/Intent;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inclContext"    # Z
    .param p3, "userHandle"    # I

    .prologue
    const/4 v5, 0x0

    .line 861
    :try_start_0
    sget-object v6, Landroid/app/SearchManager;->mService:Landroid/app/ISearchManager;

    if-nez v6, :cond_1

    move-object v3, v5

    .line 880
    :cond_0
    :goto_0
    return-object v3

    .line 864
    :cond_1
    sget-object v6, Landroid/app/SearchManager;->mService:Landroid/app/ISearchManager;

    invoke-interface {v6, p3}, Landroid/app/ISearchManager;->getAssistIntent(I)Landroid/content/ComponentName;

    move-result-object v1

    .line 865
    .local v1, "comp":Landroid/content/ComponentName;
    if-nez v1, :cond_2

    move-object v3, v5

    .line 866
    goto :goto_0

    .line 868
    :cond_2
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.ASSIST"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 869
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 870
    if-eqz p2, :cond_0

    .line 871
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 872
    .local v0, "am":Landroid/app/IActivityManager;
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/app/IActivityManager;->getAssistContextExtras(I)Landroid/os/Bundle;

    move-result-object v2

    .line 873
    .local v2, "extras":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 874
    invoke-virtual {v3, v2}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 878
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v1    # "comp":Landroid/content/ComponentName;
    .end local v2    # "extras":Landroid/os/Bundle;
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v4

    .line 879
    .local v4, "re":Landroid/os/RemoteException;
    const-string v6, "SearchManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getAssistIntent() failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v5

    .line 880
    goto :goto_0
.end method

.method public getGlobalSearchActivities()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 583
    :try_start_0
    sget-object v1, Landroid/app/SearchManager;->mService:Landroid/app/ISearchManager;

    invoke-interface {v1}, Landroid/app/ISearchManager;->getGlobalSearchActivities()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 586
    :goto_0
    return-object v1

    .line 584
    :catch_0
    move-exception v0

    .line 585
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "SearchManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGlobalSearchActivities() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getGlobalSearchActivity()Landroid/content/ComponentName;
    .locals 4

    .prologue
    .line 595
    :try_start_0
    sget-object v1, Landroid/app/SearchManager;->mService:Landroid/app/ISearchManager;

    invoke-interface {v1}, Landroid/app/ISearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 598
    :goto_0
    return-object v1

    .line 596
    :catch_0
    move-exception v0

    .line 597
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "SearchManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGlobalSearchActivity() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;
    .locals 4
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 751
    :try_start_0
    sget-object v1, Landroid/app/SearchManager;->mService:Landroid/app/ISearchManager;

    invoke-interface {v1, p1}, Landroid/app/ISearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 754
    :goto_0
    return-object v1

    .line 752
    :catch_0
    move-exception v0

    .line 753
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "SearchManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSearchableInfo() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSearchablesInGlobalSearch()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 836
    :try_start_0
    sget-object v1, Landroid/app/SearchManager;->mService:Landroid/app/ISearchManager;

    invoke-interface {v1}, Landroid/app/ISearchManager;->getSearchablesInGlobalSearch()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 839
    :goto_0
    return-object v1

    .line 837
    :catch_0
    move-exception v0

    .line 838
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SearchManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSearchablesInGlobalSearch() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSuggestions(Landroid/app/SearchableInfo;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "searchable"    # Landroid/app/SearchableInfo;
    .param p2, "query"    # Ljava/lang/String;

    .prologue
    .line 768
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/SearchManager;->getSuggestions(Landroid/app/SearchableInfo;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestions(Landroid/app/SearchableInfo;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 9
    .param p1, "searchable"    # Landroid/app/SearchableInfo;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "limit"    # I

    .prologue
    const/4 v2, 0x0

    .line 783
    if-nez p1, :cond_1

    .line 824
    :cond_0
    :goto_0
    return-object v2

    .line 787
    :cond_1
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v6

    .line 788
    .local v6, "authority":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 792
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v5, "content"

    invoke-virtual {v0, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v5, ""

    invoke-virtual {v0, v5}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v5, ""

    invoke-virtual {v0, v5}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    .line 799
    .local v8, "uriBuilder":Landroid/net/Uri$Builder;
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestPath()Ljava/lang/String;

    move-result-object v7

    .line 800
    .local v7, "contentPath":Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 801
    invoke-virtual {v8, v7}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 805
    :cond_2
    const-string/jumbo v0, "search_suggest_query"

    invoke-virtual {v8, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 808
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestSelection()Ljava/lang/String;

    move-result-object v3

    .line 810
    .local v3, "selection":Ljava/lang/String;
    const/4 v4, 0x0

    .line 811
    .local v4, "selArgs":[Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 812
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .end local v4    # "selArgs":[Ljava/lang/String;
    const/4 v0, 0x0

    aput-object p2, v4, v0

    .line 817
    .restart local v4    # "selArgs":[Ljava/lang/String;
    :goto_1
    if-lez p3, :cond_3

    .line 818
    const-string v0, "limit"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v0, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 821
    :cond_3
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 824
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Landroid/app/SearchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_0

    .line 814
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_4
    invoke-virtual {v8, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1
.end method

.method public getWebSearchActivity()Landroid/content/ComponentName;
    .locals 4

    .prologue
    .line 613
    :try_start_0
    sget-object v1, Landroid/app/SearchManager;->mService:Landroid/app/ISearchManager;

    invoke-interface {v1}, Landroid/app/ISearchManager;->getWebSearchActivity()Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 616
    :goto_0
    return-object v1

    .line 614
    :catch_0
    move-exception v0

    .line 615
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "SearchManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWebSearchActivity() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Landroid/app/SearchManager;->mSearchDialog:Landroid/app/SearchDialog;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/app/SearchManager;->mSearchDialog:Landroid/app/SearchDialog;

    invoke-virtual {v0}, Landroid/app/SearchDialog;->isShowing()Z

    move-result v0

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 727
    iget-object v0, p0, Landroid/app/SearchManager;->mCancelListener:Landroid/app/SearchManager$OnCancelListener;

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, p0, Landroid/app/SearchManager;->mCancelListener:Landroid/app/SearchManager$OnCancelListener;

    invoke-interface {v0}, Landroid/app/SearchManager$OnCancelListener;->onCancel()V

    .line 730
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 737
    iget-object v0, p0, Landroid/app/SearchManager;->mDismissListener:Landroid/app/SearchManager$OnDismissListener;

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Landroid/app/SearchManager;->mDismissListener:Landroid/app/SearchManager$OnDismissListener;

    invoke-interface {v0}, Landroid/app/SearchManager$OnDismissListener;->onDismiss()V

    .line 740
    :cond_0
    return-void
.end method

.method public setOnCancelListener(Landroid/app/SearchManager$OnCancelListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/app/SearchManager$OnCancelListener;

    .prologue
    .line 719
    iput-object p1, p0, Landroid/app/SearchManager;->mCancelListener:Landroid/app/SearchManager$OnCancelListener;

    .line 720
    return-void
.end method

.method public setOnDismissListener(Landroid/app/SearchManager$OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/app/SearchManager$OnDismissListener;

    .prologue
    .line 710
    iput-object p1, p0, Landroid/app/SearchManager;->mDismissListener:Landroid/app/SearchManager$OnDismissListener;

    .line 711
    return-void
.end method

.method startGlobalSearch(Ljava/lang/String;ZLandroid/os/Bundle;Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "initialQuery"    # Ljava/lang/String;
    .param p2, "selectInitialQuery"    # Z
    .param p3, "appSearchData"    # Landroid/os/Bundle;
    .param p4, "sourceBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 541
    invoke-virtual {p0}, Landroid/app/SearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v2

    .line 542
    .local v2, "globalSearchActivity":Landroid/content/ComponentName;
    if-nez v2, :cond_0

    .line 543
    const-string v4, "SearchManager"

    const-string v5, "No global search activity found."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :goto_0
    return-void

    .line 546
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.search.action.GLOBAL_SEARCH"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 547
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 548
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 550
    if-nez p3, :cond_4

    .line 551
    new-instance p3, Landroid/os/Bundle;

    .end local p3    # "appSearchData":Landroid/os/Bundle;
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 556
    .restart local p3    # "appSearchData":Landroid/os/Bundle;
    :goto_1
    const-string/jumbo v4, "source"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 557
    const-string/jumbo v4, "source"

    iget-object v5, p0, Landroid/app/SearchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    :cond_1
    const-string v4, "app_data"

    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 560
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 561
    const-string/jumbo v4, "query"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 563
    :cond_2
    if-eqz p2, :cond_3

    .line 564
    const-string/jumbo v4, "select_query"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 566
    :cond_3
    invoke-virtual {v3, p4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 569
    :try_start_0
    iget-object v4, p0, Landroid/app/SearchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 570
    :catch_0
    move-exception v1

    .line 571
    .local v1, "ex":Landroid/content/ActivityNotFoundException;
    const-string v4, "SearchManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Global search activity not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 553
    .end local v1    # "ex":Landroid/content/ActivityNotFoundException;
    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .end local p3    # "appSearchData":Landroid/os/Bundle;
    .local v0, "appSearchData":Landroid/os/Bundle;
    move-object p3, v0

    .end local v0    # "appSearchData":Landroid/os/Bundle;
    .restart local p3    # "appSearchData":Landroid/os/Bundle;
    goto :goto_1
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V
    .locals 7
    .param p1, "initialQuery"    # Ljava/lang/String;
    .param p2, "selectInitialQuery"    # Z
    .param p3, "launchActivity"    # Landroid/content/ComponentName;
    .param p4, "appSearchData"    # Landroid/os/Bundle;
    .param p5, "globalSearch"    # Z

    .prologue
    .line 502
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;ZLandroid/graphics/Rect;)V

    .line 504
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;ZLandroid/graphics/Rect;)V
    .locals 1
    .param p1, "initialQuery"    # Ljava/lang/String;
    .param p2, "selectInitialQuery"    # Z
    .param p3, "launchActivity"    # Landroid/content/ComponentName;
    .param p4, "appSearchData"    # Landroid/os/Bundle;
    .param p5, "globalSearch"    # Z
    .param p6, "sourceBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 518
    if-eqz p5, :cond_0

    .line 519
    invoke-virtual {p0, p1, p2, p4, p6}, Landroid/app/SearchManager;->startGlobalSearch(Ljava/lang/String;ZLandroid/os/Bundle;Landroid/graphics/Rect;)V

    .line 526
    :goto_0
    return-void

    .line 523
    :cond_0
    invoke-direct {p0}, Landroid/app/SearchManager;->ensureSearchDialog()V

    .line 525
    iget-object v0, p0, Landroid/app/SearchManager;->mSearchDialog:Landroid/app/SearchDialog;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/SearchDialog;->show(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;)Z

    goto :goto_0
.end method

.method public stopSearch()V
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Landroid/app/SearchManager;->mSearchDialog:Landroid/app/SearchDialog;

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Landroid/app/SearchManager;->mSearchDialog:Landroid/app/SearchDialog;

    invoke-virtual {v0}, Landroid/app/SearchDialog;->cancel()V

    .line 663
    :cond_0
    return-void
.end method

.method public triggerSearch(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "launchActivity"    # Landroid/content/ComponentName;
    .param p3, "appSearchData"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 636
    iget-object v0, p0, Landroid/app/SearchManager;->mAssociatedPackage:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 637
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invoking app search on a different package not associated with this search manager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 640
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_2

    .line 641
    :cond_1
    const-string v0, "SearchManager"

    const-string/jumbo v1, "triggerSearch called with empty query, ignoring."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    :goto_0
    return-void

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, v2

    .line 644
    invoke-virtual/range {v0 .. v5}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    .line 645
    iget-object v0, p0, Landroid/app/SearchManager;->mSearchDialog:Landroid/app/SearchDialog;

    invoke-virtual {v0}, Landroid/app/SearchDialog;->launchQuerySearch()V

    goto :goto_0
.end method
