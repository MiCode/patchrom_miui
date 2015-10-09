.class Landroid/widget/CalendarView$1;
.super Landroid/database/DataSetObserver;
.source "CalendarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/CalendarView;->setUpAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/CalendarView;


# direct methods
.method constructor <init>(Landroid/widget/CalendarView;)V
    .locals 0

    .prologue
    .line 1007
    iput-object p1, p0, Landroid/widget/CalendarView$1;->this$0:Landroid/widget/CalendarView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 6

    .prologue
    .line 1010
    iget-object v1, p0, Landroid/widget/CalendarView$1;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;
    invoke-static {v1}, Landroid/widget/CalendarView;->access$600(Landroid/widget/CalendarView;)Landroid/widget/CalendarView$OnDateChangeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1011
    iget-object v1, p0, Landroid/widget/CalendarView$1;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;
    invoke-static {v1}, Landroid/widget/CalendarView;->access$700(Landroid/widget/CalendarView;)Landroid/widget/CalendarView$WeeksAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CalendarView$WeeksAdapter;->getSelectedDay()Ljava/util/Calendar;

    move-result-object v0

    .line 1012
    .local v0, "selectedDay":Ljava/util/Calendar;
    iget-object v1, p0, Landroid/widget/CalendarView$1;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;
    invoke-static {v1}, Landroid/widget/CalendarView;->access$600(Landroid/widget/CalendarView;)Landroid/widget/CalendarView$OnDateChangeListener;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/CalendarView$1;->this$0:Landroid/widget/CalendarView;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/widget/CalendarView$OnDateChangeListener;->onSelectedDayChange(Landroid/widget/CalendarView;III)V

    .line 1017
    .end local v0    # "selectedDay":Ljava/util/Calendar;
    :cond_0
    return-void
.end method
