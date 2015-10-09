.class public final Landroid/database/sqlite/SQLiteCustomFunction;
.super Ljava/lang/Object;
.source "SQLiteCustomFunction.java"


# instance fields
.field public final callback:Landroid/database/sqlite/SQLiteDatabase$CustomFunction;

.field public final name:Ljava/lang/String;

.field public final numArgs:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CustomFunction;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "numArgs"    # I
    .param p3, "callback"    # Landroid/database/sqlite/SQLiteDatabase$CustomFunction;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-nez p1, :cond_0

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "name must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    iput-object p1, p0, Landroid/database/sqlite/SQLiteCustomFunction;->name:Ljava/lang/String;

    .line 44
    iput p2, p0, Landroid/database/sqlite/SQLiteCustomFunction;->numArgs:I

    .line 45
    iput-object p3, p0, Landroid/database/sqlite/SQLiteCustomFunction;->callback:Landroid/database/sqlite/SQLiteDatabase$CustomFunction;

    .line 46
    return-void
.end method

.method private dispatchCallback([Ljava/lang/String;)V
    .locals 1
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    .line 51
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCustomFunction;->callback:Landroid/database/sqlite/SQLiteDatabase$CustomFunction;

    invoke-interface {v0, p1}, Landroid/database/sqlite/SQLiteDatabase$CustomFunction;->callback([Ljava/lang/String;)V

    .line 52
    return-void
.end method
