.class final Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
.super Ljava/lang/Object;
.source "SQLiteConnectionPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteConnectionPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConnectionWaiter"
.end annotation


# instance fields
.field public mAssignedConnection:Landroid/database/sqlite/SQLiteConnection;

.field public mConnectionFlags:I

.field public mException:Ljava/lang/RuntimeException;

.field public mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

.field public mNonce:I

.field public mPriority:I

.field public mSql:Ljava/lang/String;

.field public mStartTime:J

.field public mThread:Ljava/lang/Thread;

.field public mWantPrimaryConnection:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1060
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/database/sqlite/SQLiteConnectionPool$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/database/sqlite/SQLiteConnectionPool$1;

    .prologue
    .line 1060
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;-><init>()V

    return-void
.end method
