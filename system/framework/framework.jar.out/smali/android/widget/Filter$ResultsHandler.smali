.class Landroid/widget/Filter$ResultsHandler;
.super Landroid/os/Handler;
.source "Filter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResultsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Filter;


# direct methods
.method private constructor <init>(Landroid/widget/Filter;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Landroid/widget/Filter$ResultsHandler;->this$0:Landroid/widget/Filter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Filter;Landroid/widget/Filter$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Filter;
    .param p2, "x1"    # Landroid/widget/Filter$1;

    .prologue
    .line 267
    invoke-direct {p0, p1}, Landroid/widget/Filter$ResultsHandler;-><init>(Landroid/widget/Filter;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 280
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/widget/Filter$RequestArguments;

    .line 282
    .local v0, "args":Landroid/widget/Filter$RequestArguments;
    iget-object v2, p0, Landroid/widget/Filter$ResultsHandler;->this$0:Landroid/widget/Filter;

    iget-object v3, v0, Landroid/widget/Filter$RequestArguments;->constraint:Ljava/lang/CharSequence;

    iget-object v4, v0, Landroid/widget/Filter$RequestArguments;->results:Landroid/widget/Filter$FilterResults;

    invoke-virtual {v2, v3, v4}, Landroid/widget/Filter;->publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V

    .line 283
    iget-object v2, v0, Landroid/widget/Filter$RequestArguments;->listener:Landroid/widget/Filter$FilterListener;

    if-eqz v2, :cond_0

    .line 284
    iget-object v2, v0, Landroid/widget/Filter$RequestArguments;->results:Landroid/widget/Filter$FilterResults;

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroid/widget/Filter$RequestArguments;->results:Landroid/widget/Filter$FilterResults;

    iget v1, v2, Landroid/widget/Filter$FilterResults;->count:I

    .line 285
    .local v1, "count":I
    :goto_0
    iget-object v2, v0, Landroid/widget/Filter$RequestArguments;->listener:Landroid/widget/Filter$FilterListener;

    invoke-interface {v2, v1}, Landroid/widget/Filter$FilterListener;->onFilterComplete(I)V

    .line 287
    .end local v1    # "count":I
    :cond_0
    return-void

    .line 284
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method
