.class Landroid/widget/CursorTreeAdapter$MyCursorHelper;
.super Ljava/lang/Object;
.source "CursorTreeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/CursorTreeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyCursorHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;,
        Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;
    }
.end annotation


# instance fields
.field private mContentObserver:Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;

.field private mCursor:Landroid/database/Cursor;

.field private mDataSetObserver:Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;

.field private mDataValid:Z

.field private mRowIDColumn:I

.field final synthetic this$0:Landroid/widget/CursorTreeAdapter;


# direct methods
.method constructor <init>(Landroid/widget/CursorTreeAdapter;Landroid/database/Cursor;)V
    .locals 3
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 408
    iput-object p1, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->this$0:Landroid/widget/CursorTreeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    .line 410
    .local v0, "cursorPresent":Z
    :goto_0
    iput-object p2, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    .line 411
    iput-boolean v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mDataValid:Z

    .line 412
    if-eqz v0, :cond_2

    const-string v1, "_id"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    :goto_1
    iput v1, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mRowIDColumn:I

    .line 413
    new-instance v1, Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;

    invoke-direct {v1, p0}, Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;-><init>(Landroid/widget/CursorTreeAdapter$MyCursorHelper;)V

    iput-object v1, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mContentObserver:Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;

    .line 414
    new-instance v1, Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;-><init>(Landroid/widget/CursorTreeAdapter$MyCursorHelper;Landroid/widget/CursorTreeAdapter$1;)V

    iput-object v1, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mDataSetObserver:Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;

    .line 415
    if-eqz v0, :cond_0

    .line 416
    iget-object v1, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mContentObserver:Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;

    invoke-interface {p2, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 417
    iget-object v1, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mDataSetObserver:Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;

    invoke-interface {p2, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 419
    :cond_0
    return-void

    .line 409
    .end local v0    # "cursorPresent":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 412
    .restart local v0    # "cursorPresent":Z
    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method

.method static synthetic access$300(Landroid/widget/CursorTreeAdapter$MyCursorHelper;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    .prologue
    .line 401
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$402(Landroid/widget/CursorTreeAdapter$MyCursorHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/CursorTreeAdapter$MyCursorHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 401
    iput-boolean p1, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mDataValid:Z

    return p1
.end method


# virtual methods
.method changeCursor(Landroid/database/Cursor;Z)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "releaseCursors"    # Z

    .prologue
    .line 454
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    if-ne p1, v0, :cond_0

    .line 471
    :goto_0
    return-void

    .line 456
    :cond_0
    invoke-virtual {p0}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->deactivate()V

    .line 457
    iput-object p1, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    .line 458
    if-eqz p1, :cond_1

    .line 459
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mContentObserver:Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 460
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mDataSetObserver:Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 461
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mRowIDColumn:I

    .line 462
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mDataValid:Z

    .line 464
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->this$0:Landroid/widget/CursorTreeAdapter;

    invoke-virtual {v0, p2}, Landroid/widget/CursorTreeAdapter;->notifyDataSetChanged(Z)V

    goto :goto_0

    .line 466
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mRowIDColumn:I

    .line 467
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mDataValid:Z

    .line 469
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->this$0:Landroid/widget/CursorTreeAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorTreeAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method

.method deactivate()V
    .locals 2

    .prologue
    .line 474
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 482
    :goto_0
    return-void

    .line 478
    :cond_0
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mContentObserver:Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 479
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mDataSetObserver:Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 480
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 481
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    goto :goto_0
.end method

.method getCount()I
    .locals 1

    .prologue
    .line 426
    iget-boolean v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mDataValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 429
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method getId(I)J
    .locals 3
    .param p1, "position"    # I

    .prologue
    const-wide/16 v0, 0x0

    .line 434
    iget-boolean v2, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mDataValid:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    .line 435
    iget-object v2, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 436
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mRowIDColumn:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 441
    :cond_0
    return-wide v0
.end method

.method isValid()Z
    .locals 1

    .prologue
    .line 485
    iget-boolean v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mDataValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method moveTo(I)Landroid/database/Cursor;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 446
    iget-boolean v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mDataValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    .line 449
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
