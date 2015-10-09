.class Landroid/database/MergeCursor$1;
.super Landroid/database/DataSetObserver;
.source "MergeCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/MergeCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/database/MergeCursor;


# direct methods
.method constructor <init>(Landroid/database/MergeCursor;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Landroid/database/MergeCursor$1;->this$0:Landroid/database/MergeCursor;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Landroid/database/MergeCursor$1;->this$0:Landroid/database/MergeCursor;

    const/4 v1, -0x1

    iput v1, v0, Landroid/database/MergeCursor;->mPos:I

    .line 34
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Landroid/database/MergeCursor$1;->this$0:Landroid/database/MergeCursor;

    const/4 v1, -0x1

    iput v1, v0, Landroid/database/MergeCursor;->mPos:I

    .line 39
    return-void
.end method
