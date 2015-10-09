.class Landroid/database/sqlite/SQLiteDatabase$1;
.super Ljava/lang/ThreadLocal;
.source "SQLiteDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Landroid/database/sqlite/SQLiteSession;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Landroid/database/sqlite/SQLiteDatabase$1;->this$0:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Landroid/database/sqlite/SQLiteSession;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase$1;->this$0:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->createSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase$1;->initialValue()Landroid/database/sqlite/SQLiteSession;

    move-result-object v0

    return-object v0
.end method
