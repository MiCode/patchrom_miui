.class final Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;
.super Landroid/util/LruCache;
.source "SQLiteConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PreparedStatementCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Landroid/database/sqlite/SQLiteConnection$PreparedStatement;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/database/sqlite/SQLiteConnection;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteConnection;I)V
    .locals 0
    .param p2, "size"    # I

    .prologue
    .line 1251
    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->this$0:Landroid/database/sqlite/SQLiteConnection;

    .line 1252
    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    .line 1253
    return-void
.end method


# virtual methods
.method public dump(Landroid/util/Printer;)V
    .locals 8
    .param p1, "printer"    # Landroid/util/Printer;

    .prologue
    .line 1265
    const-string v6, "  Prepared statement cache:"

    invoke-interface {p1, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1266
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    .line 1267
    .local v0, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/database/sqlite/SQLiteConnection$PreparedStatement;>;"
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1268
    const/4 v2, 0x0

    .line 1269
    .local v2, "i":I
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1270
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/database/sqlite/SQLiteConnection$PreparedStatement;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .line 1271
    .local v5, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    iget-boolean v6, v5, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mInCache:Z

    if-eqz v6, :cond_0

    .line 1272
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1273
    .local v4, "sql":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": statementPtr=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", numParameters="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mNumParameters:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", readOnly="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, v5, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mReadOnly:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", sql=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    # invokes: Landroid/database/sqlite/SQLiteConnection;->trimSqlForDisplay(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4}, Landroid/database/sqlite/SQLiteConnection;->access$300(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1280
    .end local v4    # "sql":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 1281
    goto :goto_0

    .line 1283
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/database/sqlite/SQLiteConnection$PreparedStatement;>;"
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :cond_1
    const-string v6, "    <none>"

    invoke-interface {p1, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1285
    :cond_2
    return-void
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Z
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Ljava/lang/Object;

    .prologue
    .line 1249
    check-cast p2, Ljava/lang/String;

    .end local p2    # "x1":Ljava/lang/Object;
    check-cast p3, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .end local p3    # "x2":Ljava/lang/Object;
    check-cast p4, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .end local p4    # "x3":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->entryRemoved(ZLjava/lang/String;Landroid/database/sqlite/SQLiteConnection$PreparedStatement;Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    return-void
.end method

.method protected entryRemoved(ZLjava/lang/String;Landroid/database/sqlite/SQLiteConnection$PreparedStatement;Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    .locals 1
    .param p1, "evicted"    # Z
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "oldValue"    # Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .param p4, "newValue"    # Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .prologue
    .line 1258
    const/4 v0, 0x0

    iput-boolean v0, p3, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mInCache:Z

    .line 1259
    iget-boolean v0, p3, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mInUse:Z

    if-nez v0, :cond_0

    .line 1260
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->this$0:Landroid/database/sqlite/SQLiteConnection;

    # invokes: Landroid/database/sqlite/SQLiteConnection;->finalizePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    invoke-static {v0, p3}, Landroid/database/sqlite/SQLiteConnection;->access$200(Landroid/database/sqlite/SQLiteConnection;Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 1262
    :cond_0
    return-void
.end method
