.class Landroid/widget/RemoteViews$SetPendingIntentTemplate$1;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$SetPendingIntentTemplate;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/RemoteViews$SetPendingIntentTemplate;

.field final synthetic val$handler:Landroid/widget/RemoteViews$OnClickHandler;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews$SetPendingIntentTemplate;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 0

    .prologue
    .line 465
    iput-object p1, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate$1;->this$1:Landroid/widget/RemoteViews$SetPendingIntentTemplate;

    iput-object p2, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate$1;->val$handler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 469
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    instance-of v7, p2, Landroid/view/ViewGroup;

    if-eqz v7, :cond_1

    move-object v6, p2

    .line 470
    check-cast v6, Landroid/view/ViewGroup;

    .line 474
    .local v6, "vg":Landroid/view/ViewGroup;
    instance-of v7, p1, Landroid/widget/AdapterViewAnimator;

    if-eqz v7, :cond_0

    .line 475
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .end local v6    # "vg":Landroid/view/ViewGroup;
    check-cast v6, Landroid/view/ViewGroup;

    .line 477
    .restart local v6    # "vg":Landroid/view/ViewGroup;
    :cond_0
    if-nez v6, :cond_2

    .line 496
    .end local v6    # "vg":Landroid/view/ViewGroup;
    :cond_1
    :goto_0
    return-void

    .line 479
    .restart local v6    # "vg":Landroid/view/ViewGroup;
    :cond_2
    const/4 v1, 0x0

    .line 480
    .local v1, "fillInIntent":Landroid/content/Intent;
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 481
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 482
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    sget v8, Lcom/android/internal/R$id;->fillInIntent:I

    invoke-virtual {v7, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    .line 483
    .local v5, "tag":Ljava/lang/Object;
    instance-of v7, v5, Landroid/content/Intent;

    if-eqz v7, :cond_4

    move-object v1, v5

    .line 484
    check-cast v1, Landroid/content/Intent;

    .line 488
    .end local v5    # "tag":Ljava/lang/Object;
    :cond_3
    if-eqz v1, :cond_1

    .line 490
    # invokes: Landroid/widget/RemoteViews;->getSourceBounds(Landroid/view/View;)Landroid/graphics/Rect;
    invoke-static {p2}, Landroid/widget/RemoteViews;->access$200(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    .line 492
    .local v4, "rect":Landroid/graphics/Rect;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 493
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 494
    iget-object v7, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate$1;->val$handler:Landroid/widget/RemoteViews$OnClickHandler;

    iget-object v8, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate$1;->this$1:Landroid/widget/RemoteViews$SetPendingIntentTemplate;

    iget-object v8, v8, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->pendingIntentTemplate:Landroid/app/PendingIntent;

    invoke-virtual {v7, p2, v8, v1}, Landroid/widget/RemoteViews$OnClickHandler;->onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    goto :goto_0

    .line 481
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "rect":Landroid/graphics/Rect;
    .restart local v5    # "tag":Ljava/lang/Object;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
