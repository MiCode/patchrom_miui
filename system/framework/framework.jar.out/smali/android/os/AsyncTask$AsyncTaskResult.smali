.class Landroid/os/AsyncTask$AsyncTaskResult;
.super Ljava/lang/Object;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncTaskResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field

.field final mTask:Landroid/os/AsyncTask;


# direct methods
.method varargs constructor <init>(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "task"    # Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask;",
            "[TData;)V"
        }
    .end annotation

    .prologue
    .line 663
    .local p0, "this":Landroid/os/AsyncTask$AsyncTaskResult;, "Landroid/os/AsyncTask$AsyncTaskResult<TData;>;"
    .local p2, "data":[Ljava/lang/Object;, "[TData;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 664
    iput-object p1, p0, Landroid/os/AsyncTask$AsyncTaskResult;->mTask:Landroid/os/AsyncTask;

    .line 665
    iput-object p2, p0, Landroid/os/AsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    .line 666
    return-void
.end method
