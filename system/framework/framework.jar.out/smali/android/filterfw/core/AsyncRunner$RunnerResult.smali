.class Landroid/filterfw/core/AsyncRunner$RunnerResult;
.super Ljava/lang/Object;
.source "AsyncRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/filterfw/core/AsyncRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RunnerResult"
.end annotation


# instance fields
.field public exception:Ljava/lang/Exception;

.field public status:I

.field final synthetic this$0:Landroid/filterfw/core/AsyncRunner;


# direct methods
.method private constructor <init>(Landroid/filterfw/core/AsyncRunner;)V
    .locals 1

    .prologue
    .line 46
    iput-object p1, p0, Landroid/filterfw/core/AsyncRunner$RunnerResult;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/filterfw/core/AsyncRunner;Landroid/filterfw/core/AsyncRunner$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/filterfw/core/AsyncRunner;
    .param p2, "x1"    # Landroid/filterfw/core/AsyncRunner$1;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/filterfw/core/AsyncRunner$RunnerResult;-><init>(Landroid/filterfw/core/AsyncRunner;)V

    return-void
.end method
