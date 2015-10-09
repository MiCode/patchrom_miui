.class public abstract Landroid/app/job/JobScheduler;
.super Ljava/lang/Object;
.source "JobScheduler.java"


# static fields
.field public static final RESULT_FAILURE:I = 0x0

.field public static final RESULT_SUCCESS:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract cancel(I)V
.end method

.method public abstract cancelAll()V
.end method

.method public abstract getAllPendingJobs()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract schedule(Landroid/app/job/JobInfo;)I
.end method
