.class Landroid/test/InstrumentationTestCase$1;
.super Ljava/lang/Object;
.source "InstrumentationTestCase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/test/InstrumentationTestCase;->runTestOnUiThread(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/test/InstrumentationTestCase;

.field final synthetic val$exceptions:[Ljava/lang/Throwable;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/test/InstrumentationTestCase;Ljava/lang/Runnable;[Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Landroid/test/InstrumentationTestCase$1;->this$0:Landroid/test/InstrumentationTestCase;

    iput-object p2, p0, Landroid/test/InstrumentationTestCase$1;->val$r:Ljava/lang/Runnable;

    iput-object p3, p0, Landroid/test/InstrumentationTestCase$1;->val$exceptions:[Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 138
    :try_start_0
    iget-object v1, p0, Landroid/test/InstrumentationTestCase$1;->val$r:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "throwable":Ljava/lang/Throwable;
    iget-object v1, p0, Landroid/test/InstrumentationTestCase$1;->val$exceptions:[Ljava/lang/Throwable;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    goto :goto_0
.end method
