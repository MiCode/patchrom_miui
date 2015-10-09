.class Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;
.super Landroid/database/ContentObserver;
.source "CursorTreeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/CursorTreeAdapter$MyCursorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyContentObserver"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/CursorTreeAdapter$MyCursorHelper;


# direct methods
.method public constructor <init>(Landroid/widget/CursorTreeAdapter$MyCursorHelper;)V
    .locals 1

    .prologue
    .line 489
    iput-object p1, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;->this$1:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    .line 490
    iget-object v0, p1, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->this$0:Landroid/widget/CursorTreeAdapter;

    # getter for: Landroid/widget/CursorTreeAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/widget/CursorTreeAdapter;->access$100(Landroid/widget/CursorTreeAdapter;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 491
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 495
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 500
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;->this$1:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    iget-object v0, v0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->this$0:Landroid/widget/CursorTreeAdapter;

    # getter for: Landroid/widget/CursorTreeAdapter;->mAutoRequery:Z
    invoke-static {v0}, Landroid/widget/CursorTreeAdapter;->access$200(Landroid/widget/CursorTreeAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;->this$1:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    # getter for: Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->access$300(Landroid/widget/CursorTreeAdapter$MyCursorHelper;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;->this$1:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    iget-object v1, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;->this$1:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    # getter for: Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->access$300(Landroid/widget/CursorTreeAdapter$MyCursorHelper;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->requery()Z

    move-result v1

    # setter for: Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mDataValid:Z
    invoke-static {v0, v1}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->access$402(Landroid/widget/CursorTreeAdapter$MyCursorHelper;Z)Z

    .line 505
    :cond_0
    return-void
.end method
