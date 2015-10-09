.class public final Landroid/database/sqlite/SQLiteConnection;
.super Ljava/lang/Object;
.source "SQLiteConnection.java"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/sqlite/SQLiteConnection$1;,
        Landroid/database/sqlite/SQLiteConnection$Operation;,
        Landroid/database/sqlite/SQLiteConnection$OperationLog;,
        Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;,
        Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DEBUG:Z = false

.field private static final EMPTY_BYTE_ARRAY:[B

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SQLiteConnection"

.field private static final TRIM_SQL_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private mCancellationSignalAttachCount:I

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

.field private final mConnectionId:I

.field private mConnectionPtr:I

.field private final mIsPrimaryConnection:Z

.field private final mIsReadOnlyConnection:Z

.field private mOnlyAllowReadOnlyOperations:Z

.field private final mPool:Landroid/database/sqlite/SQLiteConnectionPool;

.field private final mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

.field private mPreparedStatementPool:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

.field private final mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    const-class v0, Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/database/sqlite/SQLiteConnection;->$assertionsDisabled:Z

    .line 91
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Landroid/database/sqlite/SQLiteConnection;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 92
    new-array v0, v1, [B

    sput-object v0, Landroid/database/sqlite/SQLiteConnection;->EMPTY_BYTE_ARRAY:[B

    .line 94
    const-string v0, "[\\s]*\\n+[\\s]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/database/sqlite/SQLiteConnection;->TRIM_SQL_PATTERN:Ljava/util/regex/Pattern;

    return-void

    :cond_0
    move v0, v1

    .line 87
    goto :goto_0
.end method

.method private constructor <init>(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/database/sqlite/SQLiteDatabaseConfiguration;IZ)V
    .locals 2
    .param p1, "pool"    # Landroid/database/sqlite/SQLiteConnectionPool;
    .param p2, "configuration"    # Landroid/database/sqlite/SQLiteDatabaseConfiguration;
    .param p3, "connectionId"    # I
    .param p4, "primaryConnection"    # Z

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 107
    new-instance v0, Landroid/database/sqlite/SQLiteConnection$OperationLog;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;-><init>(Landroid/database/sqlite/SQLiteConnection$1;)V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    .line 163
    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnection;->mPool:Landroid/database/sqlite/SQLiteConnectionPool;

    .line 164
    new-instance v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-direct {v0, p2}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;-><init>(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    .line 165
    iput p3, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionId:I

    .line 166
    iput-boolean p4, p0, Landroid/database/sqlite/SQLiteConnection;->mIsPrimaryConnection:Z

    .line 167
    iget v0, p2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    .line 168
    new-instance v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->maxSqlCacheSize:I

    invoke-direct {v0, p0, v1}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;-><init>(Landroid/database/sqlite/SQLiteConnection;I)V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    .line 170
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 171
    return-void

    .line 167
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$200(Landroid/database/sqlite/SQLiteConnection;Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    .locals 0
    .param p0, "x0"    # Landroid/database/sqlite/SQLiteConnection;
    .param p1, "x1"    # Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->finalizePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-static {p0}, Landroid/database/sqlite/SQLiteConnection;->trimSqlForDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()[B
    .locals 1

    .prologue
    .line 87
    sget-object v0, Landroid/database/sqlite/SQLiteConnection;->EMPTY_BYTE_ARRAY:[B

    return-object v0
.end method

.method private acquirePreparedStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .locals 11
    .param p1, "sql"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    .line 877
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .line 878
    .local v8, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    const/4 v7, 0x0

    .line 879
    .local v7, "skipCache":Z
    if-eqz v8, :cond_1

    .line 880
    iget-boolean v0, v8, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mInUse:Z

    if-nez v0, :cond_0

    move-object v9, v8

    .line 908
    .end local v8    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .local v9, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :goto_0
    return-object v9

    .line 886
    .end local v9    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local v8    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :cond_0
    const/4 v7, 0x1

    .line 889
    :cond_1
    iget v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:I

    invoke-static {v0, p1}, Landroid/database/sqlite/SQLiteConnection;->nativePrepareStatement(ILjava/lang/String;)I

    move-result v2

    .line 891
    .local v2, "statementPtr":I
    :try_start_0
    iget v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:I

    invoke-static {v0, v2}, Landroid/database/sqlite/SQLiteConnection;->nativeGetParameterCount(II)I

    move-result v3

    .line 892
    .local v3, "numParameters":I
    invoke-static {p1}, Landroid/database/DatabaseUtils;->getSqlStatementType(Ljava/lang/String;)I

    move-result v4

    .line 893
    .local v4, "type":I
    iget v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:I

    invoke-static {v0, v2}, Landroid/database/sqlite/SQLiteConnection;->nativeIsReadOnly(II)Z

    move-result v5

    .local v5, "readOnly":Z
    move-object v0, p0

    move-object v1, p1

    .line 894
    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteConnection;->obtainPreparedStatement(Ljava/lang/String;IIIZ)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    move-result-object v8

    .line 895
    if-nez v7, :cond_2

    invoke-static {v4}, Landroid/database/sqlite/SQLiteConnection;->isCacheable(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 896
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    invoke-virtual {v0, p1, v8}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    const/4 v0, 0x1

    iput-boolean v0, v8, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mInCache:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 907
    :cond_2
    iput-boolean v10, v8, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mInUse:Z

    move-object v9, v8

    .line 908
    .end local v8    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local v9    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    goto :goto_0

    .line 899
    .end local v3    # "numParameters":I
    .end local v4    # "type":I
    .end local v5    # "readOnly":Z
    .end local v9    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local v8    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :catch_0
    move-exception v6

    .line 902
    .local v6, "ex":Ljava/lang/RuntimeException;
    if-eqz v8, :cond_3

    iget-boolean v0, v8, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mInCache:Z

    if-nez v0, :cond_4

    .line 903
    :cond_3
    iget v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:I

    invoke-static {v0, v2}, Landroid/database/sqlite/SQLiteConnection;->nativeFinalizeStatement(II)V

    .line 905
    :cond_4
    throw v6
.end method

.method private applyBlockGuardPolicy(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    .locals 1
    .param p1, "statement"    # Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .prologue
    .line 1039
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1040
    iget-boolean v0, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mReadOnly:Z

    if-eqz v0, :cond_1

    .line 1041
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 1046
    :cond_0
    :goto_0
    return-void

    .line 1043
    :cond_1
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    goto :goto_0
.end method

.method private attachCancellationSignal(Landroid/os/CancellationSignal;)V
    .locals 2
    .param p1, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .prologue
    const/4 v1, 0x1

    .line 940
    if-eqz p1, :cond_0

    .line 941
    invoke-virtual {p1}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 943
    iget v0, p0, Landroid/database/sqlite/SQLiteConnection;->mCancellationSignalAttachCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteConnection;->mCancellationSignalAttachCount:I

    .line 944
    iget v0, p0, Landroid/database/sqlite/SQLiteConnection;->mCancellationSignalAttachCount:I

    if-ne v0, v1, :cond_0

    .line 946
    iget v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:I

    invoke-static {v0, v1}, Landroid/database/sqlite/SQLiteConnection;->nativeResetCancel(IZ)V

    .line 949
    invoke-virtual {p1, p0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 952
    :cond_0
    return-void
.end method

.method private bindArguments(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V
    .locals 8
    .param p1, "statement"    # Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .param p2, "bindArgs"    # [Ljava/lang/Object;

    .prologue
    .line 980
    if-eqz p2, :cond_0

    array-length v1, p2

    .line 981
    .local v1, "count":I
    :goto_0
    iget v4, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mNumParameters:I

    if-eq v1, v4, :cond_1

    .line 982
    new-instance v4, Landroid/database/sqlite/SQLiteBindOrColumnIndexOutOfRangeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mNumParameters:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bind arguments but "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " were provided."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/database/sqlite/SQLiteBindOrColumnIndexOutOfRangeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 980
    .end local v1    # "count":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 986
    .restart local v1    # "count":I
    :cond_1
    if-nez v1, :cond_3

    .line 1021
    :cond_2
    return-void

    .line 990
    :cond_3
    iget v3, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:I

    .line 991
    .local v3, "statementPtr":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 992
    aget-object v0, p2, v2

    .line 993
    .local v0, "arg":Ljava/lang/Object;
    invoke-static {v0}, Landroid/database/DatabaseUtils;->getTypeOfObject(Ljava/lang/Object;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1010
    :pswitch_0
    instance-of v4, v0, Ljava/lang/Boolean;

    if-eqz v4, :cond_5

    .line 1013
    iget v6, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:I

    add-int/lit8 v7, v2, 0x1

    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "arg":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    const-wide/16 v4, 0x1

    :goto_2
    invoke-static {v6, v3, v7, v4, v5}, Landroid/database/sqlite/SQLiteConnection;->nativeBindLong(IIIJ)V

    .line 991
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 995
    .restart local v0    # "arg":Ljava/lang/Object;
    :pswitch_1
    iget v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:I

    add-int/lit8 v5, v2, 0x1

    invoke-static {v4, v3, v5}, Landroid/database/sqlite/SQLiteConnection;->nativeBindNull(III)V

    goto :goto_3

    .line 998
    :pswitch_2
    iget v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:I

    add-int/lit8 v5, v2, 0x1

    check-cast v0, Ljava/lang/Number;

    .end local v0    # "arg":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-static {v4, v3, v5, v6, v7}, Landroid/database/sqlite/SQLiteConnection;->nativeBindLong(IIIJ)V

    goto :goto_3

    .line 1002
    .restart local v0    # "arg":Ljava/lang/Object;
    :pswitch_3
    iget v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:I

    add-int/lit8 v5, v2, 0x1

    check-cast v0, Ljava/lang/Number;

    .end local v0    # "arg":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    invoke-static {v4, v3, v5, v6, v7}, Landroid/database/sqlite/SQLiteConnection;->nativeBindDouble(IIID)V

    goto :goto_3

    .line 1006
    .restart local v0    # "arg":Ljava/lang/Object;
    :pswitch_4
    iget v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:I

    add-int/lit8 v5, v2, 0x1

    check-cast v0, [B

    .end local v0    # "arg":Ljava/lang/Object;
    check-cast v0, [B

    invoke-static {v4, v3, v5, v0}, Landroid/database/sqlite/SQLiteConnection;->nativeBindBlob(III[B)V

    goto :goto_3

    .line 1013
    :cond_4
    const-wide/16 v4, 0x0

    goto :goto_2

    .line 1016
    .restart local v0    # "arg":Ljava/lang/Object;
    :cond_5
    iget v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:I

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteConnection;->nativeBindString(IIILjava/lang/String;)V

    goto :goto_3

    .line 993
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private static canonicalizeSyncMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 309
    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    const-string p0, "OFF"

    .line 316
    .end local p0    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 311
    .restart local p0    # "value":Ljava/lang/String;
    :cond_1
    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 312
    const-string p0, "NORMAL"

    goto :goto_0

    .line 313
    :cond_2
    const-string v0, "2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    const-string p0, "FULL"

    goto :goto_0
.end method

.method private detachCancellationSignal(Landroid/os/CancellationSignal;)V
    .locals 2
    .param p1, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .prologue
    .line 955
    if-eqz p1, :cond_1

    .line 956
    sget-boolean v0, Landroid/database/sqlite/SQLiteConnection;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroid/database/sqlite/SQLiteConnection;->mCancellationSignalAttachCount:I

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 958
    :cond_0
    iget v0, p0, Landroid/database/sqlite/SQLiteConnection;->mCancellationSignalAttachCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteConnection;->mCancellationSignalAttachCount:I

    .line 959
    iget v0, p0, Landroid/database/sqlite/SQLiteConnection;->mCancellationSignalAttachCount:I

    if-nez v0, :cond_1

    .line 961
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 964
    iget v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/database/sqlite/SQLiteConnection;->nativeResetCancel(IZ)V

    .line 967
    :cond_1
    return-void
.end method

.method private dispose(Z)V
    .locals 4
    .param p1, "finalized"    # Z

    .prologue
    const/4 v3, 0x0

    .line 229
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v1, :cond_1

    .line 230
    if-eqz p1, :cond_0

    .line 231
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 233
    :cond_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    .line 236
    :cond_1
    iget v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:I

    if-eqz v1, :cond_2

    .line 237
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    const-string v2, "close"

    invoke-virtual {v1, v2, v3, v3}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    .line 239
    .local v0, "cookie":I
    :try_start_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->evictAll()V

    .line 240
    iget v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:I

    invoke-static {v1}, Landroid/database/sqlite/SQLiteConnection;->nativeClose(I)V

    .line 241
    const/4 v1, 0x0

    iput v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 246
    .end local v0    # "cookie":I
    :cond_2
    return-void

    .line 243
    .restart local v0    # "cookie":I
    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    throw v1
.end method

.method private finalizePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    .locals 2
    .param p1, "statement"    # Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .prologue
    .line 935
    iget v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:I

    iget v1, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:I

    invoke-static {v0, v1}, Landroid/database/sqlite/SQLiteConnection;->nativeFinalizeStatement(II)V

    .line 936
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->recyclePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 937
    return-void
.end method

.method private getMainDbStatsUnsafe(IJJ)Landroid/database/sqlite/SQLiteDebug$DbStats;
    .locals 10
    .param p1, "lookaside"    # I
    .param p2, "pageCount"    # J
    .param p4, "pageSize"    # J

    .prologue
    .line 1166
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    .line 1167
    .local v1, "label":Ljava/lang/String;
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteConnection;->mIsPrimaryConnection:Z

    if-nez v0, :cond_0

    .line 1168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1170
    :cond_0
    new-instance v0, Landroid/database/sqlite/SQLiteDebug$DbStats;

    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->hitCount()I

    move-result v7

    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->missCount()I

    move-result v8

    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->size()I

    move-result v9

    move-wide v2, p2

    move-wide v4, p4

    move v6, p1

    invoke-direct/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDebug$DbStats;-><init>(Ljava/lang/String;JJIIII)V

    return-object v0
.end method

.method private static isCacheable(I)Z
    .locals 2
    .param p0, "statementType"    # I

    .prologue
    const/4 v0, 0x1

    .line 1031
    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    if-ne p0, v0, :cond_1

    .line 1035
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static native nativeBindBlob(III[B)V
.end method

.method private static native nativeBindDouble(IIID)V
.end method

.method private static native nativeBindLong(IIIJ)V
.end method

.method private static native nativeBindNull(III)V
.end method

.method private static native nativeBindString(IIILjava/lang/String;)V
.end method

.method private static native nativeCancel(I)V
.end method

.method private static native nativeClose(I)V
.end method

.method private static native nativeExecute(II)V
.end method

.method private static native nativeExecuteForBlobFileDescriptor(II)I
.end method

.method private static native nativeExecuteForChangedRowCount(II)I
.end method

.method private static native nativeExecuteForCursorWindow(IIIIIZ)J
.end method

.method private static native nativeExecuteForLastInsertedRowId(II)J
.end method

.method private static native nativeExecuteForLong(II)J
.end method

.method private static native nativeExecuteForString(II)Ljava/lang/String;
.end method

.method private static native nativeFinalizeStatement(II)V
.end method

.method private static native nativeGetColumnCount(II)I
.end method

.method private static native nativeGetColumnName(III)Ljava/lang/String;
.end method

.method private static native nativeGetDbLookaside(I)I
.end method

.method private static native nativeGetParameterCount(II)I
.end method

.method private static native nativeIsReadOnly(II)Z
.end method

.method private static native nativeOpen(Ljava/lang/String;ILjava/lang/String;ZZ)I
.end method

.method private static native nativePrepareStatement(ILjava/lang/String;)I
.end method

.method private static native nativeRegisterCustomFunction(ILandroid/database/sqlite/SQLiteCustomFunction;)V
.end method

.method private static native nativeRegisterLocalizedCollators(ILjava/lang/String;)V
.end method

.method private static native nativeResetCancel(IZ)V
.end method

.method private static native nativeResetStatementAndClearBindings(II)V
.end method

.method private obtainPreparedStatement(Ljava/lang/String;IIIZ)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .locals 3
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "statementPtr"    # I
    .param p3, "numParameters"    # I
    .param p4, "type"    # I
    .param p5, "readOnly"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1183
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementPool:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .line 1184
    .local v0, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    if-eqz v0, :cond_0

    .line 1185
    iget-object v1, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mPoolNext:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    iput-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementPool:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .line 1186
    iput-object v2, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mPoolNext:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .line 1187
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mInCache:Z

    .line 1191
    :goto_0
    iput-object p1, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mSql:Ljava/lang/String;

    .line 1192
    iput p2, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:I

    .line 1193
    iput p3, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mNumParameters:I

    .line 1194
    iput p4, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mType:I

    .line 1195
    iput-boolean p5, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mReadOnly:Z

    .line 1196
    return-object v0

    .line 1189
    :cond_0
    new-instance v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .end local v0    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    invoke-direct {v0, v2}, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;-><init>(Landroid/database/sqlite/SQLiteConnection$1;)V

    .restart local v0    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    goto :goto_0
.end method

.method static open(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/database/sqlite/SQLiteDatabaseConfiguration;IZ)Landroid/database/sqlite/SQLiteConnection;
    .locals 3
    .param p0, "pool"    # Landroid/database/sqlite/SQLiteConnectionPool;
    .param p1, "configuration"    # Landroid/database/sqlite/SQLiteDatabaseConfiguration;
    .param p2, "connectionId"    # I
    .param p3, "primaryConnection"    # Z

    .prologue
    .line 190
    new-instance v0, Landroid/database/sqlite/SQLiteConnection;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteConnection;-><init>(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/database/sqlite/SQLiteDatabaseConfiguration;IZ)V

    .line 193
    .local v0, "connection":Landroid/database/sqlite/SQLiteConnection;
    :try_start_0
    invoke-direct {v0}, Landroid/database/sqlite/SQLiteConnection;->open()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    return-object v0

    .line 195
    :catch_0
    move-exception v1

    .line 196
    .local v1, "ex":Landroid/database/sqlite/SQLiteException;
    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/database/sqlite/SQLiteConnection;->dispose(Z)V

    .line 197
    throw v1
.end method

.method private open()V
    .locals 8

    .prologue
    .line 209
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v3, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v4, v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v5, v5, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    sget-boolean v6, Landroid/database/sqlite/SQLiteDebug;->DEBUG_SQL_STATEMENTS:Z

    sget-boolean v7, Landroid/database/sqlite/SQLiteDebug;->DEBUG_SQL_TIME:Z

    invoke-static {v3, v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteConnection;->nativeOpen(Ljava/lang/String;ILjava/lang/String;ZZ)I

    move-result v3

    iput v3, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:I

    .line 213
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setPageSize()V

    .line 214
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setForeignKeyModeFromConfiguration()V

    .line 215
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setWalModeFromConfiguration()V

    .line 216
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setJournalSizeLimit()V

    .line 217
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setAutoCheckpointInterval()V

    .line 218
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setLocaleFromConfiguration()V

    .line 221
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v3, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customFunctions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 222
    .local v1, "functionCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 223
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v3, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customFunctions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteCustomFunction;

    .line 224
    .local v0, "function":Landroid/database/sqlite/SQLiteCustomFunction;
    iget v3, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:I

    invoke-static {v3, v0}, Landroid/database/sqlite/SQLiteConnection;->nativeRegisterCustomFunction(ILandroid/database/sqlite/SQLiteCustomFunction;)V

    .line 222
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 226
    .end local v0    # "function":Landroid/database/sqlite/SQLiteCustomFunction;
    :cond_0
    return-void
.end method

.method private recyclePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    .locals 1
    .param p1, "statement"    # Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .prologue
    .line 1200
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mSql:Ljava/lang/String;

    .line 1201
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementPool:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    iput-object v0, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mPoolNext:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .line 1202
    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementPool:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .line 1203
    return-void
.end method

.method private releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    .locals 3
    .param p1, "statement"    # Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .prologue
    .line 912
    const/4 v1, 0x0

    iput-boolean v1, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mInUse:Z

    .line 913
    iget-boolean v1, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mInCache:Z

    if-eqz v1, :cond_0

    .line 915
    :try_start_0
    iget v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:I

    iget v2, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:I

    invoke-static {v1, v2}, Landroid/database/sqlite/SQLiteConnection;->nativeResetStatementAndClearBindings(II)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 932
    :goto_0
    return-void

    .line 916
    :catch_0
    move-exception v0

    .line 927
    .local v0, "ex":Landroid/database/sqlite/SQLiteException;
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    iget-object v2, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mSql:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 930
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteException;
    :cond_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->finalizePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    goto :goto_0
.end method

.method private setAutoCheckpointInterval()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 259
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v4

    if-nez v4, :cond_0

    iget-boolean v4, p0, Landroid/database/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    if-nez v4, :cond_0

    .line 260
    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->getWALAutoCheckpoint()I

    move-result v4

    int-to-long v0, v4

    .line 261
    .local v0, "newValue":J
    const-string v4, "PRAGMA wal_autocheckpoint"

    invoke-virtual {p0, v4, v6, v6}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    move-result-wide v2

    .line 262
    .local v2, "value":J
    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    .line 263
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PRAGMA wal_autocheckpoint="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v6, v6}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    .line 266
    .end local v0    # "newValue":J
    .end local v2    # "value":J
    :cond_0
    return-void
.end method

.method private setForeignKeyModeFromConfiguration()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 279
    iget-boolean v4, p0, Landroid/database/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    if-nez v4, :cond_0

    .line 280
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-boolean v4, v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    if-eqz v4, :cond_1

    const-wide/16 v0, 0x1

    .line 281
    .local v0, "newValue":J
    :goto_0
    const-string v4, "PRAGMA foreign_keys"

    invoke-virtual {p0, v4, v6, v6}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    move-result-wide v2

    .line 282
    .local v2, "value":J
    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    .line 283
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PRAGMA foreign_keys="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v6, v6}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 286
    .end local v0    # "newValue":J
    .end local v2    # "value":J
    :cond_0
    return-void

    .line 280
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private setJournalMode(Ljava/lang/String;)V
    .locals 5
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 320
    const-string v2, "PRAGMA journal_mode"

    invoke-virtual {p0, v2, v3, v3}, Landroid/database/sqlite/SQLiteConnection;->executeForString(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)Ljava/lang/String;

    move-result-object v1

    .line 321
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 323
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PRAGMA journal_mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Landroid/database/sqlite/SQLiteConnection;->executeForString(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    .line 352
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 329
    :catch_0
    move-exception v2

    .line 345
    :cond_1
    const-string v2, "SQLiteConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not change the database journal mode of \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v4, v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' from \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' to \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' because the database is locked.  This usually means that "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "there are other open connections to the database which prevents "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "the database from enabling or disabling write-ahead logging mode.  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Proceeding without changing the journal mode."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setJournalSizeLimit()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 269
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v4

    if-nez v4, :cond_0

    iget-boolean v4, p0, Landroid/database/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    if-nez v4, :cond_0

    .line 270
    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->getJournalSizeLimit()I

    move-result v4

    int-to-long v0, v4

    .line 271
    .local v0, "newValue":J
    const-string v4, "PRAGMA journal_size_limit"

    invoke-virtual {p0, v4, v6, v6}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    move-result-wide v2

    .line 272
    .local v2, "value":J
    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    .line 273
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PRAGMA journal_size_limit="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v6, v6}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    .line 276
    .end local v0    # "newValue":J
    .end local v2    # "value":J
    :cond_0
    return-void
.end method

.method private setLocaleFromConfiguration()V
    .locals 8

    .prologue
    .line 355
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v4, v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_1

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v4, v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 361
    .local v1, "newLocale":Ljava/lang/String;
    iget v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:I

    invoke-static {v4, v1}, Landroid/database/sqlite/SQLiteConnection;->nativeRegisterLocalizedCollators(ILjava/lang/String;)V

    .line 365
    iget-boolean v4, p0, Landroid/database/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    if-nez v4, :cond_0

    .line 371
    :try_start_0
    const-string v4, "CREATE TABLE IF NOT EXISTS android_metadata (locale TEXT)"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v6}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 374
    const-string v4, "SELECT locale FROM android_metadata UNION SELECT NULL ORDER BY locale DESC LIMIT 1"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v6}, Landroid/database/sqlite/SQLiteConnection;->executeForString(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)Ljava/lang/String;

    move-result-object v2

    .line 376
    .local v2, "oldLocale":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 381
    :cond_2
    const-string v4, "BEGIN"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v6}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    const/4 v3, 0x0

    .line 384
    .local v3, "success":Z
    :try_start_1
    const-string v4, "DELETE FROM android_metadata"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v6}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 385
    const-string v4, "INSERT INTO android_metadata (locale) VALUES(?)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v6}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 387
    const-string v4, "REINDEX LOCALIZED"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v6}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 388
    const/4 v3, 0x1

    .line 390
    if-eqz v3, :cond_3

    :try_start_2
    const-string v4, "COMMIT"

    :goto_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v6}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 392
    .end local v2    # "oldLocale":Ljava/lang/String;
    .end local v3    # "success":Z
    :catch_0
    move-exception v0

    .line 393
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v4, Landroid/database/sqlite/SQLiteException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to change locale for db \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v6, v6, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' to \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 390
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .restart local v2    # "oldLocale":Ljava/lang/String;
    .restart local v3    # "success":Z
    :cond_3
    :try_start_3
    const-string v4, "ROLLBACK"

    goto :goto_1

    :catchall_0
    move-exception v4

    if-eqz v3, :cond_4

    const-string v5, "COMMIT"

    :goto_2
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v6, v7}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    throw v4

    :cond_4
    const-string v5, "ROLLBACK"
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2
.end method

.method private setPageSize()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 249
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v4

    if-nez v4, :cond_0

    iget-boolean v4, p0, Landroid/database/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    if-nez v4, :cond_0

    .line 250
    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->getDefaultPageSize()I

    move-result v4

    int-to-long v0, v4

    .line 251
    .local v0, "newValue":J
    const-string v4, "PRAGMA page_size"

    invoke-virtual {p0, v4, v6, v6}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    move-result-wide v2

    .line 252
    .local v2, "value":J
    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    .line 253
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PRAGMA page_size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v6, v6}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 256
    .end local v0    # "newValue":J
    .end local v2    # "value":J
    :cond_0
    return-void
.end method

.method private setSyncMode(Ljava/lang/String;)V
    .locals 4
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 301
    const-string v1, "PRAGMA synchronous"

    invoke-virtual {p0, v1, v3, v3}, Landroid/database/sqlite/SQLiteConnection;->executeForString(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/database/sqlite/SQLiteConnection;->canonicalizeSyncMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Landroid/database/sqlite/SQLiteConnection;->canonicalizeSyncMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PRAGMA synchronous="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3, v3}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 306
    :cond_0
    return-void
.end method

.method private setWalModeFromConfiguration()V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    if-nez v0, :cond_0

    .line 290
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v0, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 291
    const-string v0, "WAL"

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteConnection;->setJournalMode(Ljava/lang/String;)V

    .line 292
    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->getWALSyncMode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteConnection;->setSyncMode(Ljava/lang/String;)V

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->getDefaultJournalMode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteConnection;->setJournalMode(Ljava/lang/String;)V

    .line 295
    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->getDefaultSyncMode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteConnection;->setSyncMode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private throwIfStatementForbidden(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    .locals 2
    .param p1, "statement"    # Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .prologue
    .line 1024
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteConnection;->mOnlyAllowReadOnlyOperations:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mReadOnly:Z

    if-nez v0, :cond_0

    .line 1025
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Cannot execute this statement because it might modify the database but the connection is read-only."

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1028
    :cond_0
    return-void
.end method

.method private static trimSqlForDisplay(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "sql"    # Ljava/lang/String;

    .prologue
    .line 1206
    sget-object v0, Landroid/database/sqlite/SQLiteConnection;->TRIM_SQL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method close()V
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteConnection;->dispose(Z)V

    .line 206
    return-void
.end method

.method collectDbStats(Ljava/util/ArrayList;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/sqlite/SQLiteDebug$DbStats;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1112
    .local p1, "dbStatsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteDebug$DbStats;>;"
    move-object/from16 v0, p0

    iget v1, v0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:I

    invoke-static {v1}, Landroid/database/sqlite/SQLiteConnection;->nativeGetDbLookaside(I)I

    move-result v2

    .line 1113
    .local v2, "lookaside":I
    const-wide/16 v3, 0x0

    .line 1114
    .local v3, "pageCount":J
    const-wide/16 v5, 0x0

    .line 1116
    .local v5, "pageSize":J
    :try_start_0
    const-string v1, "PRAGMA page_count;"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v7, v8}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    move-result-wide v3

    .line 1117
    const-string v1, "PRAGMA page_size;"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v7, v8}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-wide v5

    :goto_0
    move-object/from16 v1, p0

    .line 1121
    invoke-direct/range {v1 .. v6}, Landroid/database/sqlite/SQLiteConnection;->getMainDbStatsUnsafe(IJJ)Landroid/database/sqlite/SQLiteDebug$DbStats;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1126
    new-instance v10, Landroid/database/CursorWindow;

    const-string v1, "collectDbStats"

    invoke-direct {v10, v1}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;)V

    .line 1128
    .local v10, "window":Landroid/database/CursorWindow;
    :try_start_1
    const-string v8, "PRAGMA database_list;"

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v14}, Landroid/database/sqlite/SQLiteConnection;->executeForCursorWindow(Ljava/lang/String;[Ljava/lang/Object;Landroid/database/CursorWindow;IIZLandroid/os/CancellationSignal;)I

    .line 1129
    const/16 v21, 0x1

    .local v21, "i":I
    :goto_1
    invoke-virtual {v10}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v1

    move/from16 v0, v21

    if-ge v0, v1, :cond_1

    .line 1130
    const/4 v1, 0x1

    move/from16 v0, v21

    invoke-virtual {v10, v0, v1}, Landroid/database/CursorWindow;->getString(II)Ljava/lang/String;

    move-result-object v22

    .line 1131
    .local v22, "name":Ljava/lang/String;
    const/4 v1, 0x2

    move/from16 v0, v21

    invoke-virtual {v10, v0, v1}, Landroid/database/CursorWindow;->getString(II)Ljava/lang/String;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v23

    .line 1132
    .local v23, "path":Ljava/lang/String;
    const-wide/16 v3, 0x0

    .line 1133
    const-wide/16 v5, 0x0

    .line 1135
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PRAGMA "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ".page_count;"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v7, v8}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    move-result-wide v3

    .line 1136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PRAGMA "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ".page_size;"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v7, v8}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v5

    .line 1140
    :goto_2
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  (attached) "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1141
    .local v12, "label":Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ": "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v23

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1144
    :cond_0
    new-instance v11, Landroid/database/sqlite/SQLiteDebug$DbStats;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-wide v13, v3

    move-wide v15, v5

    invoke-direct/range {v11 .. v20}, Landroid/database/sqlite/SQLiteDebug$DbStats;-><init>(Ljava/lang/String;JJIIII)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1129
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_1

    .line 1149
    .end local v12    # "label":Ljava/lang/String;
    .end local v22    # "name":Ljava/lang/String;
    .end local v23    # "path":Ljava/lang/String;
    :cond_1
    invoke-virtual {v10}, Landroid/database/CursorWindow;->close()V

    .line 1151
    .end local v21    # "i":I
    :goto_3
    return-void

    .line 1146
    :catch_0
    move-exception v1

    .line 1149
    invoke-virtual {v10}, Landroid/database/CursorWindow;->close()V

    goto :goto_3

    :catchall_0
    move-exception v1

    invoke-virtual {v10}, Landroid/database/CursorWindow;->close()V

    throw v1

    .line 1137
    .restart local v21    # "i":I
    .restart local v22    # "name":Ljava/lang/String;
    .restart local v23    # "path":Ljava/lang/String;
    :catch_1
    move-exception v1

    goto :goto_2

    .line 1118
    .end local v10    # "window":Landroid/database/CursorWindow;
    .end local v21    # "i":I
    .end local v22    # "name":Ljava/lang/String;
    .end local v23    # "path":Ljava/lang/String;
    :catch_2
    move-exception v1

    goto/16 :goto_0
.end method

.method collectDbStatsUnsafe(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/sqlite/SQLiteDebug$DbStats;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "dbStatsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteDebug$DbStats;>;"
    const-wide/16 v2, 0x0

    .line 1160
    const/4 v1, 0x0

    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteConnection;->getMainDbStatsUnsafe(IJJ)Landroid/database/sqlite/SQLiteDebug$DbStats;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1161
    return-void
.end method

.method describeCurrentOperationUnsafe()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1102
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->describeCurrentOperation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dump(Landroid/util/Printer;Z)V
    .locals 0
    .param p1, "printer"    # Landroid/util/Printer;
    .param p2, "verbose"    # Z

    .prologue
    .line 1055
    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteConnection;->dumpUnsafe(Landroid/util/Printer;Z)V

    .line 1056
    return-void
.end method

.method dumpUnsafe(Landroid/util/Printer;Z)V
    .locals 2
    .param p1, "printer"    # Landroid/util/Printer;
    .param p2, "verbose"    # Z

    .prologue
    .line 1073
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1074
    if-eqz p2, :cond_0

    .line 1075
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  connectionPtr: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1077
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isPrimaryConnection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/database/sqlite/SQLiteConnection;->mIsPrimaryConnection:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  onlyAllowReadOnlyOperations: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/database/sqlite/SQLiteConnection;->mOnlyAllowReadOnlyOperations:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1080
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->dump(Landroid/util/Printer;Z)V

    .line 1082
    if-eqz p2, :cond_1

    .line 1083
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->dump(Landroid/util/Printer;)V

    .line 1085
    :cond_1
    return-void
.end method

.method public execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V
    .locals 5
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .prologue
    .line 542
    if-nez p1, :cond_0

    .line 543
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "sql must not be null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 546
    :cond_0
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    const-string v4, "execute"

    invoke-virtual {v3, v4, p1, p2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    .line 548
    .local v0, "cookie":I
    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v2

    .line 550
    .local v2, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_start_1
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnection;->throwIfStatementForbidden(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 551
    invoke-direct {p0, v2, p2}, Landroid/database/sqlite/SQLiteConnection;->bindArguments(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    .line 552
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 553
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->attachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 555
    :try_start_2
    iget v3, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:I

    iget v4, v2, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:I

    invoke-static {v3, v4}, Landroid/database/sqlite/SQLiteConnection;->nativeExecute(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 557
    :try_start_3
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 560
    :try_start_4
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 566
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 568
    return-void

    .line 557
    :catchall_0
    move-exception v3

    :try_start_5
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 560
    :catchall_1
    move-exception v3

    :try_start_6
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    throw v3
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 562
    .end local v2    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :catch_0
    move-exception v1

    .line 563
    .local v1, "ex":Ljava/lang/RuntimeException;
    :try_start_7
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v3, v0, v1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 564
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 566
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catchall_2
    move-exception v3

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    throw v3
.end method

.method public executeForBlobFileDescriptor(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .locals 6
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .prologue
    .line 673
    if-nez p1, :cond_0

    .line 674
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "sql must not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 677
    :cond_0
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    const-string v5, "executeForBlobFileDescriptor"

    invoke-virtual {v4, v5, p1, p2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    .line 680
    .local v0, "cookie":I
    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v3

    .line 682
    .local v3, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_start_1
    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteConnection;->throwIfStatementForbidden(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 683
    invoke-direct {p0, v3, p2}, Landroid/database/sqlite/SQLiteConnection;->bindArguments(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    .line 684
    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 685
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->attachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 687
    :try_start_2
    iget v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:I

    iget v5, v3, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:I

    invoke-static {v4, v5}, Landroid/database/sqlite/SQLiteConnection;->nativeExecuteForBlobFileDescriptor(II)I

    move-result v2

    .line 689
    .local v2, "fd":I
    if-ltz v2, :cond_1

    invoke-static {v2}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 691
    :goto_0
    :try_start_3
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 694
    :try_start_4
    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 700
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v5, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    return-object v4

    .line 689
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 691
    .end local v2    # "fd":I
    :catchall_0
    move-exception v4

    :try_start_5
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 694
    :catchall_1
    move-exception v4

    :try_start_6
    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    throw v4
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 696
    .end local v3    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :catch_0
    move-exception v1

    .line 697
    .local v1, "ex":Ljava/lang/RuntimeException;
    :try_start_7
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v4, v0, v1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 698
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 700
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catchall_2
    move-exception v4

    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v5, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    throw v4
.end method

.method public executeForChangedRowCount(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)I
    .locals 8
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .prologue
    .line 719
    if-nez p1, :cond_0

    .line 720
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "sql must not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 723
    :cond_0
    const/4 v0, 0x0

    .line 724
    .local v0, "changedRows":I
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    const-string v5, "executeForChangedRowCount"

    invoke-virtual {v4, v5, p1, p2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v1

    .line 727
    .local v1, "cookie":I
    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v3

    .line 729
    .local v3, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_start_1
    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteConnection;->throwIfStatementForbidden(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 730
    invoke-direct {p0, v3, p2}, Landroid/database/sqlite/SQLiteConnection;->bindArguments(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    .line 731
    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 732
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->attachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 734
    :try_start_2
    iget v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:I

    iget v5, v3, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:I

    invoke-static {v4, v5}, Landroid/database/sqlite/SQLiteConnection;->nativeExecuteForChangedRowCount(II)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    .line 738
    :try_start_3
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 741
    :try_start_4
    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 747
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v4, v1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLog(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 748
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changedRows="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperation(ILjava/lang/String;)V

    :cond_1
    return v0

    .line 738
    :catchall_0
    move-exception v4

    :try_start_5
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 741
    :catchall_1
    move-exception v4

    :try_start_6
    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    throw v4
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 743
    .end local v3    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :catch_0
    move-exception v2

    .line 744
    .local v2, "ex":Ljava/lang/RuntimeException;
    :try_start_7
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v4, v1, v2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 745
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 747
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :catchall_2
    move-exception v4

    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v5, v1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLog(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 748
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "changedRows="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperation(ILjava/lang/String;)V

    :cond_2
    throw v4
.end method

.method public executeForCursorWindow(Ljava/lang/String;[Ljava/lang/Object;Landroid/database/CursorWindow;IIZLandroid/os/CancellationSignal;)I
    .locals 16
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "window"    # Landroid/database/CursorWindow;
    .param p4, "startPos"    # I
    .param p5, "requiredPos"    # I
    .param p6, "countAllRows"    # Z
    .param p7, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .prologue
    .line 823
    if-nez p1, :cond_0

    .line 824
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "sql must not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 826
    :cond_0
    if-nez p3, :cond_1

    .line 827
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "window must not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 830
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/database/CursorWindow;->acquireReference()V

    .line 832
    const/4 v8, -0x1

    .line 833
    .local v8, "actualPos":I
    const/4 v10, -0x1

    .line 834
    .local v10, "countedRows":I
    const/4 v12, -0x1

    .line 835
    .local v12, "filledRows":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    const-string v3, "executeForCursorWindow"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-result v9

    .line 838
    .local v9, "cookie":I
    :try_start_1
    invoke-direct/range {p0 .. p1}, Landroid/database/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v15

    .line 840
    .local v15, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_start_2
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/database/sqlite/SQLiteConnection;->throwIfStatementForbidden(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 841
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v15, v1}, Landroid/database/sqlite/SQLiteConnection;->bindArguments(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    .line 842
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/database/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 843
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteConnection;->attachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 845
    :try_start_3
    move-object/from16 v0, p0

    iget v2, v0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:I

    iget v3, v15, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:I

    move-object/from16 v0, p3

    iget v4, v0, Landroid/database/CursorWindow;->mWindowPtr:I

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-static/range {v2 .. v7}, Landroid/database/sqlite/SQLiteConnection;->nativeExecuteForCursorWindow(IIIIIZ)J

    move-result-wide v13

    .line 848
    .local v13, "result":J
    const/16 v2, 0x20

    shr-long v2, v13, v2

    long-to-int v8, v2

    .line 849
    long-to-int v10, v13

    .line 850
    invoke-virtual/range {p3 .. p3}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v12

    .line 851
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/database/CursorWindow;->setStartPosition(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 854
    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 857
    :try_start_5
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 863
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v9}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLog(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 864
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "window=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', startPos="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", actualPos="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", filledRows="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", countedRows="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v9, v3}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperation(ILjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 872
    :cond_2
    invoke-virtual/range {p3 .. p3}, Landroid/database/CursorWindow;->releaseReference()V

    return v10

    .line 854
    .end local v13    # "result":J
    :catchall_0
    move-exception v2

    :try_start_7
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 857
    :catchall_1
    move-exception v2

    :try_start_8
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    throw v2
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 859
    .end local v15    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :catch_0
    move-exception v11

    .line 860
    .local v11, "ex":Ljava/lang/RuntimeException;
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v9, v11}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 861
    throw v11
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 863
    .end local v11    # "ex":Ljava/lang/RuntimeException;
    :catchall_2
    move-exception v2

    :try_start_a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v3, v9}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLog(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 864
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "window=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\', startPos="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", actualPos="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", filledRows="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", countedRows="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v9, v4}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperation(ILjava/lang/String;)V

    :cond_3
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 872
    .end local v9    # "cookie":I
    :catchall_3
    move-exception v2

    invoke-virtual/range {p3 .. p3}, Landroid/database/CursorWindow;->releaseReference()V

    throw v2
.end method

.method public executeForLastInsertedRowId(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J
    .locals 6
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .prologue
    .line 768
    if-nez p1, :cond_0

    .line 769
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "sql must not be null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 772
    :cond_0
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    const-string v4, "executeForLastInsertedRowId"

    invoke-virtual {v3, v4, p1, p2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    .line 775
    .local v0, "cookie":I
    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v2

    .line 777
    .local v2, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_start_1
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnection;->throwIfStatementForbidden(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 778
    invoke-direct {p0, v2, p2}, Landroid/database/sqlite/SQLiteConnection;->bindArguments(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    .line 779
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 780
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->attachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 782
    :try_start_2
    iget v3, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:I

    iget v4, v2, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:I

    invoke-static {v3, v4}, Landroid/database/sqlite/SQLiteConnection;->nativeExecuteForLastInsertedRowId(II)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v3

    .line 785
    :try_start_3
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 788
    :try_start_4
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 794
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v5, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    return-wide v3

    .line 785
    :catchall_0
    move-exception v3

    :try_start_5
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 788
    :catchall_1
    move-exception v3

    :try_start_6
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    throw v3
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 790
    .end local v2    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :catch_0
    move-exception v1

    .line 791
    .local v1, "ex":Ljava/lang/RuntimeException;
    :try_start_7
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v3, v0, v1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 792
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 794
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catchall_2
    move-exception v3

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    throw v3
.end method

.method public executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J
    .locals 6
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .prologue
    .line 585
    if-nez p1, :cond_0

    .line 586
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "sql must not be null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 589
    :cond_0
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    const-string v4, "executeForLong"

    invoke-virtual {v3, v4, p1, p2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    .line 591
    .local v0, "cookie":I
    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v2

    .line 593
    .local v2, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_start_1
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnection;->throwIfStatementForbidden(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 594
    invoke-direct {p0, v2, p2}, Landroid/database/sqlite/SQLiteConnection;->bindArguments(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    .line 595
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 596
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->attachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 598
    :try_start_2
    iget v3, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:I

    iget v4, v2, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:I

    invoke-static {v3, v4}, Landroid/database/sqlite/SQLiteConnection;->nativeExecuteForLong(II)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v3

    .line 600
    :try_start_3
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 603
    :try_start_4
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 609
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v5, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    return-wide v3

    .line 600
    :catchall_0
    move-exception v3

    :try_start_5
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 603
    :catchall_1
    move-exception v3

    :try_start_6
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    throw v3
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 605
    .end local v2    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :catch_0
    move-exception v1

    .line 606
    .local v1, "ex":Ljava/lang/RuntimeException;
    :try_start_7
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v3, v0, v1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 607
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 609
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catchall_2
    move-exception v3

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    throw v3
.end method

.method public executeForString(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)Ljava/lang/String;
    .locals 5
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .prologue
    .line 628
    if-nez p1, :cond_0

    .line 629
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "sql must not be null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 632
    :cond_0
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    const-string v4, "executeForString"

    invoke-virtual {v3, v4, p1, p2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    .line 634
    .local v0, "cookie":I
    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v2

    .line 636
    .local v2, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_start_1
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnection;->throwIfStatementForbidden(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 637
    invoke-direct {p0, v2, p2}, Landroid/database/sqlite/SQLiteConnection;->bindArguments(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    .line 638
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 639
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->attachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 641
    :try_start_2
    iget v3, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:I

    iget v4, v2, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:I

    invoke-static {v3, v4}, Landroid/database/sqlite/SQLiteConnection;->nativeExecuteForString(II)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 643
    :try_start_3
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 646
    :try_start_4
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 652
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    return-object v3

    .line 643
    :catchall_0
    move-exception v3

    :try_start_5
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 646
    :catchall_1
    move-exception v3

    :try_start_6
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    throw v3
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 648
    .end local v2    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :catch_0
    move-exception v1

    .line 649
    .local v1, "ex":Ljava/lang/RuntimeException;
    :try_start_7
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v3, v0, v1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 650
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 652
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catchall_2
    move-exception v3

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    throw v3
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 176
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mPool:Landroid/database/sqlite/SQLiteConnectionPool;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:I

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mPool:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteConnectionPool;->onConnectionLeaked()V

    .line 180
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteConnection;->dispose(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 184
    return-void

    .line 182
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getConnectionId()I
    .locals 1

    .prologue
    .line 458
    iget v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionId:I

    return v0
.end method

.method isPreparedStatementInCache(Ljava/lang/String;)Z
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;

    .prologue
    .line 450
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrimaryConnection()Z
    .locals 1

    .prologue
    .line 466
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteConnection;->mIsPrimaryConnection:Z

    return v0
.end method

.method public onCancel()V
    .locals 1

    .prologue
    .line 976
    iget v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:I

    invoke-static {v0}, Landroid/database/sqlite/SQLiteConnection;->nativeCancel(I)V

    .line 977
    return-void
.end method

.method public prepare(Ljava/lang/String;Landroid/database/sqlite/SQLiteStatementInfo;)V
    .locals 8
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "outStatementInfo"    # Landroid/database/sqlite/SQLiteStatementInfo;

    .prologue
    .line 494
    if-nez p1, :cond_0

    .line 495
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "sql must not be null."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 498
    :cond_0
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    const-string/jumbo v6, "prepare"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p1, v7}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v1

    .line 500
    .local v1, "cookie":I
    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v4

    .line 502
    .local v4, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    if-eqz p2, :cond_1

    .line 503
    :try_start_1
    iget v5, v4, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mNumParameters:I

    iput v5, p2, Landroid/database/sqlite/SQLiteStatementInfo;->numParameters:I

    .line 504
    iget-boolean v5, v4, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mReadOnly:Z

    iput-boolean v5, p2, Landroid/database/sqlite/SQLiteStatementInfo;->readOnly:Z

    .line 506
    iget v5, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:I

    iget v6, v4, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:I

    invoke-static {v5, v6}, Landroid/database/sqlite/SQLiteConnection;->nativeGetColumnCount(II)I

    move-result v0

    .line 508
    .local v0, "columnCount":I
    if-nez v0, :cond_2

    .line 509
    sget-object v5, Landroid/database/sqlite/SQLiteConnection;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v5, p2, Landroid/database/sqlite/SQLiteStatementInfo;->columnNames:[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 519
    .end local v0    # "columnCount":I
    :cond_1
    :try_start_2
    invoke-direct {p0, v4}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 525
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v5, v1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 527
    return-void

    .line 511
    .restart local v0    # "columnCount":I
    :cond_2
    :try_start_3
    new-array v5, v0, [Ljava/lang/String;

    iput-object v5, p2, Landroid/database/sqlite/SQLiteStatementInfo;->columnNames:[Ljava/lang/String;

    .line 512
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 513
    iget-object v5, p2, Landroid/database/sqlite/SQLiteStatementInfo;->columnNames:[Ljava/lang/String;

    iget v6, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:I

    iget v7, v4, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:I

    invoke-static {v6, v7, v3}, Landroid/database/sqlite/SQLiteConnection;->nativeGetColumnName(III)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 512
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 519
    .end local v0    # "columnCount":I
    .end local v3    # "i":I
    :catchall_0
    move-exception v5

    :try_start_4
    invoke-direct {p0, v4}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    throw v5
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 521
    .end local v4    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :catch_0
    move-exception v2

    .line 522
    .local v2, "ex":Ljava/lang/RuntimeException;
    :try_start_5
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v5, v1, v2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 523
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 525
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :catchall_1
    move-exception v5

    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v6, v1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    throw v5
.end method

.method reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    .locals 10
    .param p1, "configuration"    # Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 400
    iput-boolean v7, p0, Landroid/database/sqlite/SQLiteConnection;->mOnlyAllowReadOnlyOperations:Z

    .line 403
    iget-object v8, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customFunctions:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 404
    .local v2, "functionCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 405
    iget-object v8, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customFunctions:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteCustomFunction;

    .line 406
    .local v1, "function":Landroid/database/sqlite/SQLiteCustomFunction;
    iget-object v8, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v8, v8, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customFunctions:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 407
    iget v8, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:I

    invoke-static {v8, v1}, Landroid/database/sqlite/SQLiteConnection;->nativeRegisterCustomFunction(ILandroid/database/sqlite/SQLiteCustomFunction;)V

    .line 404
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 412
    .end local v1    # "function":Landroid/database/sqlite/SQLiteCustomFunction;
    :cond_1
    iget-boolean v8, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    iget-object v9, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-boolean v9, v9, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    if-eq v8, v9, :cond_5

    move v0, v6

    .line 414
    .local v0, "foreignKeyModeChanged":Z
    :goto_1
    iget v8, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    iget-object v9, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v9, v9, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    xor-int/2addr v8, v9

    const/high16 v9, 0x20000000

    and-int/2addr v8, v9

    if-eqz v8, :cond_6

    move v5, v6

    .line 416
    .local v5, "walModeChanged":Z
    :goto_2
    iget-object v8, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    iget-object v9, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v9, v9, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    move v4, v6

    .line 419
    .local v4, "localeChanged":Z
    :goto_3
    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v6, p1}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->updateParametersFrom(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V

    .line 422
    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    iget v7, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->maxSqlCacheSize:I

    invoke-virtual {v6, v7}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->resize(I)V

    .line 425
    if-eqz v0, :cond_2

    .line 426
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setForeignKeyModeFromConfiguration()V

    .line 430
    :cond_2
    if-eqz v5, :cond_3

    .line 431
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setWalModeFromConfiguration()V

    .line 435
    :cond_3
    if-eqz v4, :cond_4

    .line 436
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setLocaleFromConfiguration()V

    .line 438
    :cond_4
    return-void

    .end local v0    # "foreignKeyModeChanged":Z
    .end local v4    # "localeChanged":Z
    .end local v5    # "walModeChanged":Z
    :cond_5
    move v0, v7

    .line 412
    goto :goto_1

    .restart local v0    # "foreignKeyModeChanged":Z
    :cond_6
    move v5, v7

    .line 414
    goto :goto_2

    .restart local v5    # "walModeChanged":Z
    :cond_7
    move v4, v7

    .line 416
    goto :goto_3
.end method

.method setOnlyAllowReadOnlyOperations(Z)V
    .locals 0
    .param p1, "readOnly"    # Z

    .prologue
    .line 444
    iput-boolean p1, p0, Landroid/database/sqlite/SQLiteConnection;->mOnlyAllowReadOnlyOperations:Z

    .line 445
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SQLiteConnection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
