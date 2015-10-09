.class final Landroid/database/sqlite/SQLiteSession$Transaction;
.super Ljava/lang/Object;
.source "SQLiteSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Transaction"
.end annotation


# instance fields
.field public mChildFailed:Z

.field public mListener:Landroid/database/sqlite/SQLiteTransactionListener;

.field public mMarkedSuccessful:Z

.field public mMode:I

.field public mParent:Landroid/database/sqlite/SQLiteSession$Transaction;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 956
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/database/sqlite/SQLiteSession$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/database/sqlite/SQLiteSession$1;

    .prologue
    .line 956
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSession$Transaction;-><init>()V

    return-void
.end method
