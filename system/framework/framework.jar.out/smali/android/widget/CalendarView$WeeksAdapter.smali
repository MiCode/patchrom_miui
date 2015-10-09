.class Landroid/widget/CalendarView$WeeksAdapter;
.super Landroid/widget/BaseAdapter;
.source "CalendarView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/CalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WeeksAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/CalendarView$WeeksAdapter$CalendarGestureListener;
    }
.end annotation


# instance fields
.field private mFocusedMonth:I

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private final mSelectedDate:Ljava/util/Calendar;

.field private mSelectedWeek:I

.field private mTotalWeekCount:I

.field final synthetic this$0:Landroid/widget/CalendarView;


# direct methods
.method public constructor <init>(Landroid/widget/CalendarView;)V
    .locals 3

    .prologue
    .line 1347
    iput-object p1, p0, Landroid/widget/CalendarView$WeeksAdapter;->this$0:Landroid/widget/CalendarView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1338
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CalendarView$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    .line 1348
    new-instance v0, Landroid/view/GestureDetector;

    # getter for: Landroid/widget/CalendarView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/widget/CalendarView;->access$1400(Landroid/widget/CalendarView;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/widget/CalendarView$WeeksAdapter$CalendarGestureListener;

    invoke-direct {v2, p0}, Landroid/widget/CalendarView$WeeksAdapter$CalendarGestureListener;-><init>(Landroid/widget/CalendarView$WeeksAdapter;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Landroid/widget/CalendarView$WeeksAdapter;->mGestureDetector:Landroid/view/GestureDetector;

    .line 1349
    invoke-direct {p0}, Landroid/widget/CalendarView$WeeksAdapter;->init()V

    .line 1350
    return-void
.end method

.method static synthetic access$400(Landroid/widget/CalendarView$WeeksAdapter;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarView$WeeksAdapter;

    .prologue
    .line 1337
    iget-object v0, p0, Landroid/widget/CalendarView$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/CalendarView$WeeksAdapter;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/CalendarView$WeeksAdapter;

    .prologue
    .line 1337
    invoke-direct {p0}, Landroid/widget/CalendarView$WeeksAdapter;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x7

    .line 1356
    iget-object v0, p0, Landroid/widget/CalendarView$WeeksAdapter;->this$0:Landroid/widget/CalendarView;

    iget-object v1, p0, Landroid/widget/CalendarView$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    # invokes: Landroid/widget/CalendarView;->getWeeksSinceMinDate(Ljava/util/Calendar;)I
    invoke-static {v0, v1}, Landroid/widget/CalendarView;->access$1500(Landroid/widget/CalendarView;Ljava/util/Calendar;)I

    move-result v0

    iput v0, p0, Landroid/widget/CalendarView$WeeksAdapter;->mSelectedWeek:I

    .line 1357
    iget-object v0, p0, Landroid/widget/CalendarView$WeeksAdapter;->this$0:Landroid/widget/CalendarView;

    iget-object v1, p0, Landroid/widget/CalendarView$WeeksAdapter;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;
    invoke-static {v1}, Landroid/widget/CalendarView;->access$1600(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v1

    # invokes: Landroid/widget/CalendarView;->getWeeksSinceMinDate(Ljava/util/Calendar;)I
    invoke-static {v0, v1}, Landroid/widget/CalendarView;->access$1500(Landroid/widget/CalendarView;Ljava/util/Calendar;)I

    move-result v0

    iput v0, p0, Landroid/widget/CalendarView$WeeksAdapter;->mTotalWeekCount:I

    .line 1358
    iget-object v0, p0, Landroid/widget/CalendarView$WeeksAdapter;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;
    invoke-static {v0}, Landroid/widget/CalendarView;->access$1700(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/CalendarView$WeeksAdapter;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mFirstDayOfWeek:I
    invoke-static {v1}, Landroid/widget/CalendarView;->access$1800(Landroid/widget/CalendarView;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/CalendarView$WeeksAdapter;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;
    invoke-static {v0}, Landroid/widget/CalendarView;->access$1600(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/CalendarView$WeeksAdapter;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mFirstDayOfWeek:I
    invoke-static {v1}, Landroid/widget/CalendarView;->access$1800(Landroid/widget/CalendarView;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1360
    :cond_0
    iget v0, p0, Landroid/widget/CalendarView$WeeksAdapter;->mTotalWeekCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/CalendarView$WeeksAdapter;->mTotalWeekCount:I

    .line 1362
    :cond_1
    invoke-virtual {p0}, Landroid/widget/CalendarView$WeeksAdapter;->notifyDataSetChanged()V

    .line 1363
    return-void
.end method

.method private onDateTapped(Ljava/util/Calendar;)V
    .locals 1
    .param p1, "day"    # Ljava/util/Calendar;

    .prologue
    .line 1463
    invoke-virtual {p0, p1}, Landroid/widget/CalendarView$WeeksAdapter;->setSelectedDay(Ljava/util/Calendar;)V

    .line 1464
    iget-object v0, p0, Landroid/widget/CalendarView$WeeksAdapter;->this$0:Landroid/widget/CalendarView;

    # invokes: Landroid/widget/CalendarView;->setMonthDisplayed(Ljava/util/Calendar;)V
    invoke-static {v0, p1}, Landroid/widget/CalendarView;->access$2200(Landroid/widget/CalendarView;Ljava/util/Calendar;)V

    .line 1465
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1390
    iget v0, p0, Landroid/widget/CalendarView$WeeksAdapter;->mTotalWeekCount:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1395
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1400
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelectedDay()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 1385
    iget-object v0, p0, Landroid/widget/CalendarView$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, -0x2

    .line 1405
    const/4 v2, 0x0

    .line 1406
    .local v2, "weekView":Landroid/widget/CalendarView$WeekView;
    if-eqz p2, :cond_0

    move-object v2, p2

    .line 1407
    check-cast v2, Landroid/widget/CalendarView$WeekView;

    .line 1418
    :goto_0
    iget v3, p0, Landroid/widget/CalendarView$WeeksAdapter;->mSelectedWeek:I

    if-ne v3, p1, :cond_1

    iget-object v3, p0, Landroid/widget/CalendarView$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1420
    .local v1, "selectedWeekDay":I
    :goto_1
    iget v3, p0, Landroid/widget/CalendarView$WeeksAdapter;->mFocusedMonth:I

    invoke-virtual {v2, p1, v1, v3}, Landroid/widget/CalendarView$WeekView;->init(III)V

    .line 1422
    return-object v2

    .line 1409
    .end local v1    # "selectedWeekDay":I
    :cond_0
    new-instance v2, Landroid/widget/CalendarView$WeekView;

    .end local v2    # "weekView":Landroid/widget/CalendarView$WeekView;
    iget-object v3, p0, Landroid/widget/CalendarView$WeeksAdapter;->this$0:Landroid/widget/CalendarView;

    iget-object v4, p0, Landroid/widget/CalendarView$WeeksAdapter;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/widget/CalendarView;->access$1900(Landroid/widget/CalendarView;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/widget/CalendarView$WeekView;-><init>(Landroid/widget/CalendarView;Landroid/content/Context;)V

    .line 1410
    .restart local v2    # "weekView":Landroid/widget/CalendarView$WeekView;
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 1413
    .local v0, "params":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v2, v0}, Landroid/widget/CalendarView$WeekView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1414
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CalendarView$WeekView;->setClickable(Z)V

    .line 1415
    invoke-virtual {v2, p0}, Landroid/widget/CalendarView$WeekView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 1418
    .end local v0    # "params":Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 1440
    iget-object v2, p0, Landroid/widget/CalendarView$WeeksAdapter;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Landroid/widget/CalendarView;->access$2000(Landroid/widget/CalendarView;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/CalendarView$WeeksAdapter;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 1441
    check-cast v0, Landroid/widget/CalendarView$WeekView;

    .line 1443
    .local v0, "weekView":Landroid/widget/CalendarView$WeekView;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Landroid/widget/CalendarView$WeeksAdapter;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView;->access$2100(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/CalendarView$WeekView;->getDayFromLocation(FLjava/util/Calendar;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1454
    .end local v0    # "weekView":Landroid/widget/CalendarView$WeekView;
    :cond_0
    :goto_0
    return v1

    .line 1448
    .restart local v0    # "weekView":Landroid/widget/CalendarView$WeekView;
    :cond_1
    iget-object v2, p0, Landroid/widget/CalendarView$WeeksAdapter;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v2}, Landroid/widget/CalendarView;->access$2100(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/CalendarView$WeeksAdapter;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView;->access$1700(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/widget/CalendarView$WeeksAdapter;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v2}, Landroid/widget/CalendarView;->access$2100(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/CalendarView$WeeksAdapter;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/CalendarView;->access$1600(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1451
    iget-object v2, p0, Landroid/widget/CalendarView$WeeksAdapter;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v2}, Landroid/widget/CalendarView;->access$2100(Landroid/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/widget/CalendarView$WeeksAdapter;->onDateTapped(Ljava/util/Calendar;)V

    goto :goto_0

    .line 1454
    .end local v0    # "weekView":Landroid/widget/CalendarView$WeekView;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFocusMonth(I)V
    .locals 1
    .param p1, "month"    # I

    .prologue
    .line 1431
    iget v0, p0, Landroid/widget/CalendarView$WeeksAdapter;->mFocusedMonth:I

    if-ne v0, p1, :cond_0

    .line 1436
    :goto_0
    return-void

    .line 1434
    :cond_0
    iput p1, p0, Landroid/widget/CalendarView$WeeksAdapter;->mFocusedMonth:I

    .line 1435
    invoke-virtual {p0}, Landroid/widget/CalendarView$WeeksAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public setSelectedDay(Ljava/util/Calendar;)V
    .locals 4
    .param p1, "selectedDay"    # Ljava/util/Calendar;

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    .line 1371
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/CalendarView$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/CalendarView$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1379
    :goto_0
    return-void

    .line 1375
    :cond_0
    iget-object v0, p0, Landroid/widget/CalendarView$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1376
    iget-object v0, p0, Landroid/widget/CalendarView$WeeksAdapter;->this$0:Landroid/widget/CalendarView;

    iget-object v1, p0, Landroid/widget/CalendarView$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    # invokes: Landroid/widget/CalendarView;->getWeeksSinceMinDate(Ljava/util/Calendar;)I
    invoke-static {v0, v1}, Landroid/widget/CalendarView;->access$1500(Landroid/widget/CalendarView;Ljava/util/Calendar;)I

    move-result v0

    iput v0, p0, Landroid/widget/CalendarView$WeeksAdapter;->mSelectedWeek:I

    .line 1377
    iget-object v0, p0, Landroid/widget/CalendarView$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Landroid/widget/CalendarView$WeeksAdapter;->mFocusedMonth:I

    .line 1378
    invoke-virtual {p0}, Landroid/widget/CalendarView$WeeksAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
