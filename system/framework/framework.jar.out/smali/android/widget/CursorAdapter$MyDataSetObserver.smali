.class Landroid/widget/CursorAdapter$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "CursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/CursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/CursorAdapter;


# direct methods
.method private constructor <init>(Landroid/widget/CursorAdapter;)V
    .locals 0

    .prologue
    .line 467
    iput-object p1, p0, Landroid/widget/CursorAdapter$MyDataSetObserver;->this$0:Landroid/widget/CursorAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/CursorAdapter;Landroid/widget/CursorAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/CursorAdapter;
    .param p2, "x1"    # Landroid/widget/CursorAdapter$1;

    .prologue
    .line 467
    invoke-direct {p0, p1}, Landroid/widget/CursorAdapter$MyDataSetObserver;-><init>(Landroid/widget/CursorAdapter;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 470
    iget-object v0, p0, Landroid/widget/CursorAdapter$MyDataSetObserver;->this$0:Landroid/widget/CursorAdapter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/CursorAdapter;->mDataValid:Z

    .line 471
    iget-object v0, p0, Landroid/widget/CursorAdapter$MyDataSetObserver;->this$0:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 472
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 476
    iget-object v0, p0, Landroid/widget/CursorAdapter$MyDataSetObserver;->this$0:Landroid/widget/CursorAdapter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/CursorAdapter;->mDataValid:Z

    .line 477
    iget-object v0, p0, Landroid/widget/CursorAdapter$MyDataSetObserver;->this$0:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->notifyDataSetInvalidated()V

    .line 478
    return-void
.end method
