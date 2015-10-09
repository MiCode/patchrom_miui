.class Landroid/test/InstrumentationTestCase$2;
.super Ljava/lang/Object;
.source "InstrumentationTestCase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/test/InstrumentationTestCase;->runTest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/test/InstrumentationTestCase;

.field final synthetic val$exceptions:[Ljava/lang/Throwable;

.field final synthetic val$repetitive:Z

.field final synthetic val$testMethod:Ljava/lang/reflect/Method;

.field final synthetic val$tolerance:I


# direct methods
.method constructor <init>(Landroid/test/InstrumentationTestCase;Ljava/lang/reflect/Method;IZ[Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Landroid/test/InstrumentationTestCase$2;->this$0:Landroid/test/InstrumentationTestCase;

    iput-object p2, p0, Landroid/test/InstrumentationTestCase$2;->val$testMethod:Ljava/lang/reflect/Method;

    iput p3, p0, Landroid/test/InstrumentationTestCase$2;->val$tolerance:I

    iput-boolean p4, p0, Landroid/test/InstrumentationTestCase$2;->val$repetitive:Z

    iput-object p5, p0, Landroid/test/InstrumentationTestCase$2;->val$exceptions:[Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 189
    :try_start_0
    iget-object v1, p0, Landroid/test/InstrumentationTestCase$2;->this$0:Landroid/test/InstrumentationTestCase;

    iget-object v2, p0, Landroid/test/InstrumentationTestCase$2;->val$testMethod:Ljava/lang/reflect/Method;

    iget v3, p0, Landroid/test/InstrumentationTestCase$2;->val$tolerance:I

    iget-boolean v4, p0, Landroid/test/InstrumentationTestCase$2;->val$repetitive:Z

    # invokes: Landroid/test/InstrumentationTestCase;->runMethod(Ljava/lang/reflect/Method;IZ)V
    invoke-static {v1, v2, v3, v4}, Landroid/test/InstrumentationTestCase;->access$000(Landroid/test/InstrumentationTestCase;Ljava/lang/reflect/Method;IZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_0
    return-void

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "throwable":Ljava/lang/Throwable;
    iget-object v1, p0, Landroid/test/InstrumentationTestCase$2;->val$exceptions:[Ljava/lang/Throwable;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    goto :goto_0
.end method
