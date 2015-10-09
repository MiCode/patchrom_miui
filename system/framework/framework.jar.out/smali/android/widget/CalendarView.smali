.class public Landroid/widget/CalendarView;
.super Landroid/widget/FrameLayout;
.source "CalendarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/CalendarView$WeekView;,
        Landroid/widget/CalendarView$WeeksAdapter;,
        Landroid/widget/CalendarView$ScrollStateRunnable;,
        Landroid/widget/CalendarView$OnDateChangeListener;
    }
.end annotation


# static fields
.field private static final ADJUSTMENT_SCROLL_DURATION:I = 0x1f4

.field private static final DATE_FORMAT:Ljava/lang/String; = "MM/dd/yyyy"

.field private static final DAYS_PER_WEEK:I = 0x7

.field private static final DEFAULT_DATE_TEXT_SIZE:I = 0xe

.field private static final DEFAULT_MAX_DATE:Ljava/lang/String; = "01/01/2100"

.field private static final DEFAULT_MIN_DATE:Ljava/lang/String; = "01/01/1900"

.field private static final DEFAULT_SHOWN_WEEK_COUNT:I = 0x6

.field private static final DEFAULT_SHOW_WEEK_NUMBER:Z = true

.field private static final DEFAULT_WEEK_DAY_TEXT_APPEARANCE_RES_ID:I = -0x1

.field private static final GOTO_SCROLL_DURATION:I = 0x3e8

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MILLIS_IN_DAY:J = 0x5265c00L

.field private static final MILLIS_IN_WEEK:J = 0x240c8400L

.field private static final SCROLL_CHANGE_DELAY:I = 0x28

.field private static final SCROLL_HYST_WEEKS:I = 0x2

.field private static final UNSCALED_BOTTOM_BUFFER:I = 0x14

.field private static final UNSCALED_LIST_SCROLL_TOP_OFFSET:I = 0x2

.field private static final UNSCALED_SELECTED_DATE_VERTICAL_BAR_WIDTH:I = 0x6

.field private static final UNSCALED_WEEK_MIN_VISIBLE_HEIGHT:I = 0xc

.field private static final UNSCALED_WEEK_SEPARATOR_LINE_WIDTH:I = 0x1


# instance fields
.field private mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

.field private mBottomBuffer:I

.field private mCurrentLocale:Ljava/util/Locale;

.field private mCurrentMonthDisplayed:I

.field private mCurrentScrollState:I

.field private final mDateFormat:Ljava/text/DateFormat;

.field private mDateTextAppearanceResId:I

.field private mDateTextSize:I

.field private mDayLabels:[Ljava/lang/String;

.field private mDayNamesHeader:Landroid/view/ViewGroup;

.field private mDaysPerWeek:I

.field private mFirstDayOfMonth:Ljava/util/Calendar;

.field private mFirstDayOfWeek:I

.field private mFocusedMonthDateColor:I

.field private mFriction:F

.field private mIsScrollingUp:Z

.field private mListScrollTopOffset:I

.field private mListView:Landroid/widget/ListView;

.field private mMaxDate:Ljava/util/Calendar;

.field private mMinDate:Ljava/util/Calendar;

.field private mMonthName:Landroid/widget/TextView;

.field private mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

.field private mPreviousScrollPosition:J

.field private mPreviousScrollState:I

.field private mScrollStateChangedRunnable:Landroid/widget/CalendarView$ScrollStateRunnable;

.field private mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

.field private final mSelectedDateVerticalBarWidth:I

.field private mSelectedWeekBackgroundColor:I

.field private mShowWeekNumber:Z

.field private mShownWeekCount:I

.field private mTempDate:Ljava/util/Calendar;

.field private mUnfocusedMonthDateColor:I

.field private mVelocityScale:F

.field private mWeekDayTextAppearanceResId:I

.field private mWeekMinVisibleHeight:I

.field private mWeekNumberColor:I

.field private mWeekSeparatorLineColor:I

.field private final mWeekSeperatorLineWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const-class v0, Landroid/widget/CalendarView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/CalendarView;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 329
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/CalendarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 330
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 333
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CalendarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 334
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 337
    const/4 v6, 0x0

    invoke-direct {p0, p1, p2, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 180
    const/4 v6, 0x2

    iput v6, p0, Landroid/widget/CalendarView;->mListScrollTopOffset:I

    .line 185
    const/16 v6, 0xc

    iput v6, p0, Landroid/widget/CalendarView;->mWeekMinVisibleHeight:I

    .line 190
    const/16 v6, 0x14

    iput v6, p0, Landroid/widget/CalendarView;->mBottomBuffer:I

    .line 205
    const/4 v6, 0x7

    iput v6, p0, Landroid/widget/CalendarView;->mDaysPerWeek:I

    .line 210
    const v6, 0x3d4ccccd    # 0.05f

    iput v6, p0, Landroid/widget/CalendarView;->mFriction:F

    .line 215
    const v6, 0x3eaa7efa    # 0.333f

    iput v6, p0, Landroid/widget/CalendarView;->mVelocityScale:F

    .line 250
    const/4 v6, -0x1

    iput v6, p0, Landroid/widget/CalendarView;->mCurrentMonthDisplayed:I

    .line 260
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/widget/CalendarView;->mIsScrollingUp:Z

    .line 265
    const/4 v6, 0x0

    iput v6, p0, Landroid/widget/CalendarView;->mPreviousScrollState:I

    .line 270
    const/4 v6, 0x0

    iput v6, p0, Landroid/widget/CalendarView;->mCurrentScrollState:I

    .line 280
    new-instance v6, Landroid/widget/CalendarView$ScrollStateRunnable;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Landroid/widget/CalendarView$ScrollStateRunnable;-><init>(Landroid/widget/CalendarView;Landroid/widget/CalendarView$1;)V

    iput-object v6, p0, Landroid/widget/CalendarView;->mScrollStateChangedRunnable:Landroid/widget/CalendarView$ScrollStateRunnable;

    .line 305
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "MM/dd/yyyy"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Landroid/widget/CalendarView;->mDateFormat:Ljava/text/DateFormat;

    .line 340
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/widget/CalendarView;->setCurrentLocale(Ljava/util/Locale;)V

    .line 342
    sget-object v6, Lcom/android/internal/R$styleable;->CalendarView:[I

    sget v7, Lcom/android/internal/R$attr;->calendarViewStyle:I

    const/4 v8, 0x0

    invoke-virtual {p1, p2, v6, v7, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 344
    .local v0, "attributesArray":Landroid/content/res/TypedArray;
    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Landroid/widget/CalendarView;->mShowWeekNumber:Z

    .line 346
    const/4 v6, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-static {v7}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v7

    iget-object v7, v7, Llibcore/icu/LocaleData;->firstDayOfWeek:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Landroid/widget/CalendarView;->mFirstDayOfWeek:I

    .line 348
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 349
    .local v5, "minDate":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v5, v6}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 350
    :cond_0
    const-string v6, "01/01/1900"

    iget-object v7, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v6, v7}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    .line 352
    :cond_1
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 353
    .local v4, "maxDate":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v4, v6}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 354
    :cond_2
    const-string v6, "01/01/2100"

    iget-object v7, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v6, v7}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    .line 356
    :cond_3
    iget-object v6, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    iget-object v7, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 357
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Max date cannot be before min date."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 359
    :cond_4
    const/4 v6, 0x4

    const/4 v7, 0x6

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Landroid/widget/CalendarView;->mShownWeekCount:I

    .line 361
    const/4 v6, 0x5

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Landroid/widget/CalendarView;->mSelectedWeekBackgroundColor:I

    .line 363
    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Landroid/widget/CalendarView;->mFocusedMonthDateColor:I

    .line 365
    const/4 v6, 0x7

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Landroid/widget/CalendarView;->mUnfocusedMonthDateColor:I

    .line 367
    const/16 v6, 0x9

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Landroid/widget/CalendarView;->mWeekSeparatorLineColor:I

    .line 369
    const/16 v6, 0x8

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Landroid/widget/CalendarView;->mWeekNumberColor:I

    .line 370
    const/16 v6, 0xa

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/CalendarView;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    .line 373
    const/16 v6, 0xc

    sget v7, Lcom/android/internal/R$style;->TextAppearance_Small:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/widget/CalendarView;->mDateTextAppearanceResId:I

    .line 375
    invoke-direct {p0}, Landroid/widget/CalendarView;->updateDateTextSize()V

    .line 377
    const/16 v6, 0xb

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/widget/CalendarView;->mWeekDayTextAppearanceResId:I

    .line 380
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 382
    invoke-virtual {p0}, Landroid/widget/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 383
    .local v2, "displayMetrics":Landroid/util/DisplayMetrics;
    const/4 v6, 0x1

    const/high16 v7, 0x41400000    # 12.0f

    invoke-static {v6, v7, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Landroid/widget/CalendarView;->mWeekMinVisibleHeight:I

    .line 385
    const/4 v6, 0x1

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v6, v7, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Landroid/widget/CalendarView;->mListScrollTopOffset:I

    .line 387
    const/4 v6, 0x1

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-static {v6, v7, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Landroid/widget/CalendarView;->mBottomBuffer:I

    .line 389
    const/4 v6, 0x1

    const/high16 v7, 0x40c00000    # 6.0f

    invoke-static {v6, v7, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Landroid/widget/CalendarView;->mSelectedDateVerticalBarWidth:I

    .line 391
    const/4 v6, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v6, v7, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Landroid/widget/CalendarView;->mWeekSeperatorLineWidth:I

    .line 394
    const-string v6, "layout_inflater"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 396
    .local v3, "layoutInflater":Landroid/view/LayoutInflater;
    sget v6, Lcom/android/internal/R$layout;->calendar_view:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 397
    .local v1, "content":Landroid/view/View;
    invoke-virtual {p0, v1}, Landroid/widget/CalendarView;->addView(Landroid/view/View;)V

    .line 399
    sget v6, Lcom/android/internal/R$id;->list:I

    invoke-virtual {p0, v6}, Landroid/widget/CalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    iput-object v6, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    .line 400
    sget v6, Lcom/android/internal/R$id;->day_names:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Landroid/widget/CalendarView;->mDayNamesHeader:Landroid/view/ViewGroup;

    .line 401
    sget v6, Lcom/android/internal/R$id;->month_name:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Landroid/widget/CalendarView;->mMonthName:Landroid/widget/TextView;

    .line 403
    invoke-direct {p0}, Landroid/widget/CalendarView;->setUpHeader()V

    .line 404
    invoke-direct {p0}, Landroid/widget/CalendarView;->setUpListView()V

    .line 405
    invoke-direct {p0}, Landroid/widget/CalendarView;->setUpAdapter()V

    .line 408
    iget-object v6, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 409
    iget-object v6, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    iget-object v7, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 410
    iget-object v6, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-direct {p0, v6, v7, v8, v9}, Landroid/widget/CalendarView;->goTo(Ljava/util/Calendar;ZZZ)V

    .line 417
    :goto_0
    invoke-virtual {p0}, Landroid/widget/CalendarView;->invalidate()V

    .line 418
    return-void

    .line 411
    :cond_5
    iget-object v6, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    iget-object v7, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 412
    iget-object v6, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-direct {p0, v6, v7, v8, v9}, Landroid/widget/CalendarView;->goTo(Ljava/util/Calendar;ZZZ)V

    goto :goto_0

    .line 414
    :cond_6
    iget-object v6, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-direct {p0, v6, v7, v8, v9}, Landroid/widget/CalendarView;->goTo(Ljava/util/Calendar;ZZZ)V

    goto :goto_0
.end method

.method static synthetic access$1002(Landroid/widget/CalendarView;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/CalendarView;
    .param p1, "x1"    # I

    .prologue
    .line 76
    iput p1, p0, Landroid/widget/CalendarView;->mCurrentScrollState:I

    return p1
.end method

.method static synthetic access$1100(Landroid/widget/CalendarView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarView;

    .prologue
    .line 76
    iget v0, p0, Landroid/widget/CalendarView;->mPreviousScrollState:I

    return v0
.end method

.method static synthetic access$1102(Landroid/widget/CalendarView;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/CalendarView;
    .param p1, "x1"    # I

    .prologue
    .line 76
    iput p1, p0, Landroid/widget/CalendarView;->mPreviousScrollState:I

    return p1
.end method

.method static synthetic access$1200(Landroid/widget/CalendarView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarView;

    .prologue
    .line 76
    iget v0, p0, Landroid/widget/CalendarView;->mListScrollTopOffset:I

    return v0
.end method

.method static synthetic access$1300(Landroid/widget/CalendarView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarView;

    .prologue
    .line 76
    iget-boolean v0, p0, Landroid/widget/CalendarView;->mIsScrollingUp:Z

    return v0
.end method

.method static synthetic access$1400(Landroid/widget/CalendarView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarView;

    .prologue
    .line 76
    iget-object v0, p0, Landroid/widget/CalendarView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/widget/CalendarView;Ljava/util/Calendar;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarView;
    .param p1, "x1"    # Ljava/util/Calendar;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Landroid/widget/CalendarView;->getWeeksSinceMinDate(Ljava/util/Calendar;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Landroid/widget/CalendarView;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarView;

    .prologue
    .line 76
    iget-object v0, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/widget/CalendarView;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarView;

    .prologue
    .line 76
    iget-object v0, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/widget/CalendarView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarView;

    .prologue
    .line 76
    iget v0, p0, Landroid/widget/CalendarView;->mFirstDayOfWeek:I

    return v0
.end method

.method static synthetic access$1900(Landroid/widget/CalendarView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarView;

    .prologue
    .line 76
    iget-object v0, p0, Landroid/widget/CalendarView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/widget/CalendarView;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarView;

    .prologue
    .line 76
    iget-object v0, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/widget/CalendarView;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarView;

    .prologue
    .line 76
    iget-object v0, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/widget/CalendarView;Ljava/util/Calendar;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/CalendarView;
    .param p1, "x1"    # Ljava/util/Calendar;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Landroid/widget/CalendarView;->setMonthDisplayed(Ljava/util/Calendar;)V

    return-void
.end method

.method static synthetic access$2300(Landroid/widget/CalendarView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarView;

    .prologue
    .line 76
    iget-boolean v0, p0, Landroid/widget/CalendarView;->mShowWeekNumber:Z

    return v0
.end method

.method static synthetic access$2400(Landroid/widget/CalendarView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarView;

    .prologue
    .line 76
    iget v0, p0, Landroid/widget/CalendarView;->mDaysPerWeek:I

    return v0
.end method

.method static synthetic access$2500(Landroid/widget/CalendarView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarView;

    .prologue
    .line 76
    iget v0, p0, Landroid/widget/CalendarView;->mDateTextSize:I

    return v0
.end method

.method static synthetic access$2600(Landroid/widget/CalendarView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarView;

    .prologue
    .line 76
    iget v0, p0, Landroid/widget/CalendarView;->mSelectedWeekBackgroundColor:I

    return v0
.end method

.method static synthetic access$2700(Landroid/widget/CalendarView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarView;

    .prologue
    .line 76
    iget v0, p0, Landroid/widget/CalendarView;->mWeekSeperatorLineWidth:I

    return v0
.end method

.method static synthetic access$2800(Landroid/widget/CalendarView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarView;

    .prologue
    .line 76
    iget v0, p0, Landroid/widget/CalendarView;->mFocusedMonthDateColor:I

    return v0
.end method

.method static synthetic access$2900(Landroid/widget/CalendarView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarView;

    .prologue
    .line 76
    iget v0, p0, Landroid/widget/CalendarView;->mUnfocusedMonthDateColor:I

    return v0
.end method

.method static synthetic access$3000(Landroid/widget/CalendarView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarView;

    .prologue
    .line 76
    iget v0, p0, Landroid/widget/CalendarView;->mWeekNumberColor:I

    return v0
.end method

.method static synthetic access$3100(Landroid/widget/CalendarView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarView;

    .prologue
    .line 76
    iget v0, p0, Landroid/widget/CalendarView;->mWeekSeparatorLineColor:I

    return v0
.end method

.method static synthetic access$3200(Landroid/widget/CalendarView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarView;

    .prologue
    .line 76
    iget v0, p0, Landroid/widget/CalendarView;->mSelectedDateVerticalBarWidth:I

    return v0
.end method

.method static synthetic access$3300(Landroid/widget/CalendarView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarView;

    .prologue
    .line 76
    iget-object v0, p0, Landroid/widget/CalendarView;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$3400(Landroid/widget/CalendarView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarView;

    .prologue
    .line 76
    iget v0, p0, Landroid/widget/CalendarView;->mShownWeekCount:I

    return v0
.end method

.method static synthetic access$600(Landroid/widget/CalendarView;)Landroid/widget/CalendarView$OnDateChangeListener;
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarView;

    .prologue
    .line 76
    iget-object v0, p0, Landroid/widget/CalendarView;->mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/CalendarView;)Landroid/widget/CalendarView$WeeksAdapter;
    .locals 1
    .param p0, "x0"    # Landroid/widget/CalendarView;

    .prologue
    .line 76
    iget-object v0, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    return-object v0
.end method

.method static synthetic access$800(Landroid/widget/CalendarView;Landroid/widget/AbsListView;I)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/CalendarView;
    .param p1, "x1"    # Landroid/widget/AbsListView;
    .param p2, "x2"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/CalendarView;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    return-void
.end method

.method static synthetic access$900(Landroid/widget/CalendarView;Landroid/widget/AbsListView;III)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/CalendarView;
    .param p1, "x1"    # Landroid/widget/AbsListView;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/CalendarView;->onScroll(Landroid/widget/AbsListView;III)V

    return-void
.end method

.method private getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 3
    .param p1, "oldCalendar"    # Ljava/util/Calendar;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 982
    if-nez p1, :cond_0

    .line 983
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 988
    :goto_0
    return-object v2

    .line 985
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 986
    .local v0, "currentTimeMillis":J
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 987
    .local v2, "newCalendar":Ljava/util/Calendar;
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method private getWeeksSinceMinDate(Ljava/util/Calendar;)I
    .locals 11
    .param p1, "date"    # Ljava/util/Calendar;

    .prologue
    .line 1271
    iget-object v6, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1, v6}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1272
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fromDate: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " does not precede toDate: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1275
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v8

    int-to-long v8, v8

    add-long v2, v6, v8

    .line 1277
    .local v2, "endTimeMillis":J
    iget-object v6, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    iget-object v8, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v8

    iget-object v9, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v8

    int-to-long v8, v8

    add-long v4, v6, v8

    .line 1279
    .local v4, "startTimeMillis":J
    iget-object v6, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iget v7, p0, Landroid/widget/CalendarView;->mFirstDayOfWeek:I

    sub-int/2addr v6, v7

    int-to-long v6, v6

    const-wide/32 v8, 0x5265c00

    mul-long v0, v6, v8

    .line 1281
    .local v0, "dayOffsetMillis":J
    sub-long v6, v2, v4

    add-long/2addr v6, v0

    const-wide/32 v8, 0x240c8400

    div-long/2addr v6, v8

    long-to-int v6, v6

    return v6
.end method

.method private goTo(Ljava/util/Calendar;ZZZ)V
    .locals 8
    .param p1, "date"    # Ljava/util/Calendar;
    .param p2, "animate"    # Z
    .param p3, "setSelected"    # Z
    .param p4, "forceScroll"    # Z

    .prologue
    const/4 v7, 0x0

    .line 1104
    iget-object v4, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1105
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Time not between "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1109
    :cond_1
    iget-object v4, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 1110
    .local v1, "firstFullyVisiblePosition":I
    iget-object v4, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1111
    .local v0, "firstChild":Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    if-gez v4, :cond_2

    .line 1112
    add-int/lit8 v1, v1, 0x1

    .line 1114
    :cond_2
    iget v4, p0, Landroid/widget/CalendarView;->mShownWeekCount:I

    add-int/2addr v4, v1

    add-int/lit8 v2, v4, -0x1

    .line 1115
    .local v2, "lastFullyVisiblePosition":I
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, p0, Landroid/widget/CalendarView;->mBottomBuffer:I

    if-le v4, v5, :cond_3

    .line 1116
    add-int/lit8 v2, v2, -0x1

    .line 1118
    :cond_3
    if-eqz p3, :cond_4

    .line 1119
    iget-object v4, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    invoke-virtual {v4, p1}, Landroid/widget/CalendarView$WeeksAdapter;->setSelectedDay(Ljava/util/Calendar;)V

    .line 1122
    :cond_4
    invoke-direct {p0, p1}, Landroid/widget/CalendarView;->getWeeksSinceMinDate(Ljava/util/Calendar;)I

    move-result v3

    .line 1126
    .local v3, "position":I
    if-lt v3, v1, :cond_5

    if-gt v3, v2, :cond_5

    if-eqz p4, :cond_9

    .line 1128
    :cond_5
    iget-object v4, p0, Landroid/widget/CalendarView;->mFirstDayOfMonth:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1129
    iget-object v4, p0, Landroid/widget/CalendarView;->mFirstDayOfMonth:Ljava/util/Calendar;

    const/4 v5, 0x5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 1131
    iget-object v4, p0, Landroid/widget/CalendarView;->mFirstDayOfMonth:Ljava/util/Calendar;

    invoke-direct {p0, v4}, Landroid/widget/CalendarView;->setMonthDisplayed(Ljava/util/Calendar;)V

    .line 1134
    iget-object v4, p0, Landroid/widget/CalendarView;->mFirstDayOfMonth:Ljava/util/Calendar;

    iget-object v5, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1135
    const/4 v3, 0x0

    .line 1140
    :goto_0
    const/4 v4, 0x2

    iput v4, p0, Landroid/widget/CalendarView;->mPreviousScrollState:I

    .line 1141
    if-eqz p2, :cond_8

    .line 1142
    iget-object v4, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    iget v5, p0, Landroid/widget/CalendarView;->mListScrollTopOffset:I

    const/16 v6, 0x3e8

    invoke-virtual {v4, v3, v5, v6}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(III)V

    .line 1153
    :cond_6
    :goto_1
    return-void

    .line 1137
    :cond_7
    iget-object v4, p0, Landroid/widget/CalendarView;->mFirstDayOfMonth:Ljava/util/Calendar;

    invoke-direct {p0, v4}, Landroid/widget/CalendarView;->getWeeksSinceMinDate(Ljava/util/Calendar;)I

    move-result v3

    goto :goto_0

    .line 1145
    :cond_8
    iget-object v4, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    iget v5, p0, Landroid/widget/CalendarView;->mListScrollTopOffset:I

    invoke-virtual {v4, v3, v5}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 1147
    iget-object v4, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-direct {p0, v4, v7}, Landroid/widget/CalendarView;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    goto :goto_1

    .line 1149
    :cond_9
    if-eqz p3, :cond_6

    .line 1151
    invoke-direct {p0, p1}, Landroid/widget/CalendarView;->setMonthDisplayed(Ljava/util/Calendar;)V

    goto :goto_1
.end method

.method private invalidateAllWeekViews()V
    .locals 4

    .prologue
    .line 950
    iget-object v3, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 951
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 952
    iget-object v3, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 953
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 951
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 955
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 3
    .param p1, "firstDate"    # Ljava/util/Calendar;
    .param p2, "secondDate"    # Ljava/util/Calendar;

    .prologue
    const/4 v2, 0x6

    const/4 v0, 0x1

    .line 997
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onScroll(Landroid/widget/AbsListView;III)V
    .locals 9
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 1185
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CalendarView$WeekView;

    .line 1186
    .local v0, "child":Landroid/widget/CalendarView$WeekView;
    if-nez v0, :cond_1

    .line 1247
    :cond_0
    :goto_0
    return-void

    .line 1191
    :cond_1
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v7

    invoke-virtual {v0}, Landroid/widget/CalendarView$WeekView;->getHeight()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-virtual {v0}, Landroid/widget/CalendarView$WeekView;->getBottom()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-long v1, v7

    .line 1194
    .local v1, "currScroll":J
    iget-wide v7, p0, Landroid/widget/CalendarView;->mPreviousScrollPosition:J

    cmp-long v7, v1, v7

    if-gez v7, :cond_6

    .line 1195
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/CalendarView;->mIsScrollingUp:Z

    .line 1206
    :goto_1
    invoke-virtual {v0}, Landroid/widget/CalendarView$WeekView;->getBottom()I

    move-result v7

    iget v8, p0, Landroid/widget/CalendarView;->mWeekMinVisibleHeight:I

    if-ge v7, v8, :cond_7

    const/4 v6, 0x1

    .line 1207
    .local v6, "offset":I
    :goto_2
    iget-boolean v7, p0, Landroid/widget/CalendarView;->mIsScrollingUp:Z

    if-eqz v7, :cond_8

    .line 1208
    add-int/lit8 v7, v6, 0x2

    invoke-virtual {p1, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "child":Landroid/widget/CalendarView$WeekView;
    check-cast v0, Landroid/widget/CalendarView$WeekView;

    .line 1213
    .restart local v0    # "child":Landroid/widget/CalendarView$WeekView;
    :cond_2
    :goto_3
    if-eqz v0, :cond_5

    .line 1216
    iget-boolean v7, p0, Landroid/widget/CalendarView;->mIsScrollingUp:Z

    if-eqz v7, :cond_9

    .line 1217
    invoke-virtual {v0}, Landroid/widget/CalendarView$WeekView;->getMonthOfFirstWeekDay()I

    move-result v4

    .line 1224
    .local v4, "month":I
    :goto_4
    iget v7, p0, Landroid/widget/CalendarView;->mCurrentMonthDisplayed:I

    const/16 v8, 0xb

    if-ne v7, v8, :cond_a

    if-nez v4, :cond_a

    .line 1225
    const/4 v5, 0x1

    .line 1234
    .local v5, "monthDiff":I
    :goto_5
    iget-boolean v7, p0, Landroid/widget/CalendarView;->mIsScrollingUp:Z

    if-nez v7, :cond_3

    if-gtz v5, :cond_4

    :cond_3
    iget-boolean v7, p0, Landroid/widget/CalendarView;->mIsScrollingUp:Z

    if-eqz v7, :cond_5

    if-gez v5, :cond_5

    .line 1235
    :cond_4
    invoke-virtual {v0}, Landroid/widget/CalendarView$WeekView;->getFirstDay()Ljava/util/Calendar;

    move-result-object v3

    .line 1236
    .local v3, "firstDay":Ljava/util/Calendar;
    iget-boolean v7, p0, Landroid/widget/CalendarView;->mIsScrollingUp:Z

    if-eqz v7, :cond_c

    .line 1237
    const/4 v7, 0x5

    const/4 v8, -0x7

    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->add(II)V

    .line 1241
    :goto_6
    invoke-direct {p0, v3}, Landroid/widget/CalendarView;->setMonthDisplayed(Ljava/util/Calendar;)V

    .line 1245
    .end local v3    # "firstDay":Ljava/util/Calendar;
    .end local v4    # "month":I
    .end local v5    # "monthDiff":I
    :cond_5
    iput-wide v1, p0, Landroid/widget/CalendarView;->mPreviousScrollPosition:J

    .line 1246
    iget v7, p0, Landroid/widget/CalendarView;->mCurrentScrollState:I

    iput v7, p0, Landroid/widget/CalendarView;->mPreviousScrollState:I

    goto :goto_0

    .line 1196
    .end local v6    # "offset":I
    :cond_6
    iget-wide v7, p0, Landroid/widget/CalendarView;->mPreviousScrollPosition:J

    cmp-long v7, v1, v7

    if-lez v7, :cond_0

    .line 1197
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/CalendarView;->mIsScrollingUp:Z

    goto :goto_1

    .line 1206
    :cond_7
    const/4 v6, 0x0

    goto :goto_2

    .line 1209
    .restart local v6    # "offset":I
    :cond_8
    if-eqz v6, :cond_2

    .line 1210
    invoke-virtual {p1, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "child":Landroid/widget/CalendarView$WeekView;
    check-cast v0, Landroid/widget/CalendarView$WeekView;

    .restart local v0    # "child":Landroid/widget/CalendarView$WeekView;
    goto :goto_3

    .line 1219
    :cond_9
    invoke-virtual {v0}, Landroid/widget/CalendarView$WeekView;->getMonthOfLastWeekDay()I

    move-result v4

    .restart local v4    # "month":I
    goto :goto_4

    .line 1226
    :cond_a
    iget v7, p0, Landroid/widget/CalendarView;->mCurrentMonthDisplayed:I

    if-nez v7, :cond_b

    const/16 v7, 0xb

    if-ne v4, v7, :cond_b

    .line 1227
    const/4 v5, -0x1

    .restart local v5    # "monthDiff":I
    goto :goto_5

    .line 1229
    .end local v5    # "monthDiff":I
    :cond_b
    iget v7, p0, Landroid/widget/CalendarView;->mCurrentMonthDisplayed:I

    sub-int v5, v4, v7

    .restart local v5    # "monthDiff":I
    goto :goto_5

    .line 1239
    .restart local v3    # "firstDay":Ljava/util/Calendar;
    :cond_c
    const/4 v7, 0x5

    const/4 v8, 0x7

    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->add(II)V

    goto :goto_6
.end method

.method private onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 1176
    iget-object v0, p0, Landroid/widget/CalendarView;->mScrollStateChangedRunnable:Landroid/widget/CalendarView$ScrollStateRunnable;

    invoke-virtual {v0, p1, p2}, Landroid/widget/CalendarView$ScrollStateRunnable;->doScrollStateChange(Landroid/widget/AbsListView;I)V

    .line 1177
    return-void
.end method

.method private parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z
    .locals 4
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "outDate"    # Ljava/util/Calendar;

    .prologue
    .line 1163
    :try_start_0
    iget-object v1, p0, Landroid/widget/CalendarView;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1164
    const/4 v1, 0x1

    .line 1167
    :goto_0
    return v1

    .line 1165
    :catch_0
    move-exception v0

    .line 1166
    .local v0, "e":Ljava/text/ParseException;
    sget-object v1, Landroid/widget/CalendarView;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Date: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not in format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MM/dd/yyyy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 963
    iget-object v0, p0, Landroid/widget/CalendarView;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 973
    :goto_0
    return-void

    .line 967
    :cond_0
    iput-object p1, p0, Landroid/widget/CalendarView;->mCurrentLocale:Ljava/util/Locale;

    .line 969
    iget-object v0, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Landroid/widget/CalendarView;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    .line 970
    iget-object v0, p0, Landroid/widget/CalendarView;->mFirstDayOfMonth:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Landroid/widget/CalendarView;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CalendarView;->mFirstDayOfMonth:Ljava/util/Calendar;

    .line 971
    iget-object v0, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Landroid/widget/CalendarView;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    .line 972
    iget-object v0, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Landroid/widget/CalendarView;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    goto :goto_0
.end method

.method private setMonthDisplayed(Ljava/util/Calendar;)V
    .locals 8
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 1256
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Landroid/widget/CalendarView;->mCurrentMonthDisplayed:I

    .line 1257
    iget-object v0, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    iget v3, p0, Landroid/widget/CalendarView;->mCurrentMonthDisplayed:I

    invoke-virtual {v0, v3}, Landroid/widget/CalendarView$WeeksAdapter;->setFocusMonth(I)V

    .line 1258
    const/16 v6, 0x34

    .line 1260
    .local v6, "flags":I
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 1261
    .local v1, "millis":J
    iget-object v0, p0, Landroid/widget/CalendarView;->mContext:Landroid/content/Context;

    const/16 v5, 0x34

    move-wide v3, v1

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v7

    .line 1262
    .local v7, "newMonthName":Ljava/lang/String;
    iget-object v0, p0, Landroid/widget/CalendarView;->mMonthName:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1263
    iget-object v0, p0, Landroid/widget/CalendarView;->mMonthName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 1264
    return-void
.end method

.method private setUpAdapter()V
    .locals 2

    .prologue
    .line 1005
    iget-object v0, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    if-nez v0, :cond_0

    .line 1006
    new-instance v0, Landroid/widget/CalendarView$WeeksAdapter;

    invoke-direct {v0, p0}, Landroid/widget/CalendarView$WeeksAdapter;-><init>(Landroid/widget/CalendarView;)V

    iput-object v0, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    .line 1007
    iget-object v0, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    new-instance v1, Landroid/widget/CalendarView$1;

    invoke-direct {v1, p0}, Landroid/widget/CalendarView$1;-><init>(Landroid/widget/CalendarView;)V

    invoke-virtual {v0, v1}, Landroid/widget/CalendarView$WeeksAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1019
    iget-object v0, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1023
    :cond_0
    iget-object v0, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    invoke-virtual {v0}, Landroid/widget/CalendarView$WeeksAdapter;->notifyDataSetChanged()V

    .line 1024
    return-void
.end method

.method private setUpHeader()V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 1030
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v6}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v6

    iget-object v5, v6, Llibcore/icu/LocaleData;->tinyWeekdayNames:[Ljava/lang/String;

    .line 1031
    .local v5, "tinyWeekdayNames":[Ljava/lang/String;
    iget v6, p0, Landroid/widget/CalendarView;->mDaysPerWeek:I

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Landroid/widget/CalendarView;->mDayLabels:[Ljava/lang/String;

    .line 1032
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v6, p0, Landroid/widget/CalendarView;->mDaysPerWeek:I

    if-ge v2, v6, :cond_1

    .line 1033
    iget v6, p0, Landroid/widget/CalendarView;->mFirstDayOfWeek:I

    add-int v3, v2, v6

    .line 1034
    .local v3, "j":I
    const/4 v6, 0x7

    if-le v3, v6, :cond_0

    add-int/lit8 v0, v3, -0x7

    .line 1035
    .local v0, "calendarDay":I
    :goto_1
    iget-object v6, p0, Landroid/widget/CalendarView;->mDayLabels:[Ljava/lang/String;

    aget-object v7, v5, v0

    aput-object v7, v6, v2

    .line 1032
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "calendarDay":I
    :cond_0
    move v0, v3

    .line 1034
    goto :goto_1

    .line 1038
    .end local v3    # "j":I
    :cond_1
    iget-object v6, p0, Landroid/widget/CalendarView;->mDayNamesHeader:Landroid/view/ViewGroup;

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1039
    .local v4, "label":Landroid/widget/TextView;
    iget-boolean v6, p0, Landroid/widget/CalendarView;->mShowWeekNumber:Z

    if-eqz v6, :cond_3

    .line 1040
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1045
    :goto_2
    iget-object v6, p0, Landroid/widget/CalendarView;->mDayNamesHeader:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1046
    .local v1, "count":I
    const/4 v2, 0x0

    :goto_3
    add-int/lit8 v6, v1, -0x1

    if-ge v2, v6, :cond_5

    .line 1047
    iget-object v6, p0, Landroid/widget/CalendarView;->mDayNamesHeader:Landroid/view/ViewGroup;

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "label":Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 1048
    .restart local v4    # "label":Landroid/widget/TextView;
    iget v6, p0, Landroid/widget/CalendarView;->mWeekDayTextAppearanceResId:I

    const/4 v7, -0x1

    if-le v6, v7, :cond_2

    .line 1049
    iget-object v6, p0, Landroid/widget/CalendarView;->mContext:Landroid/content/Context;

    iget v7, p0, Landroid/widget/CalendarView;->mWeekDayTextAppearanceResId:I

    invoke-virtual {v4, v6, v7}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1051
    :cond_2
    iget v6, p0, Landroid/widget/CalendarView;->mDaysPerWeek:I

    if-ge v2, v6, :cond_4

    .line 1052
    iget-object v6, p0, Landroid/widget/CalendarView;->mDayLabels:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1053
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1046
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1042
    .end local v1    # "count":I
    :cond_3
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 1055
    .restart local v1    # "count":I
    :cond_4
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 1058
    :cond_5
    iget-object v6, p0, Landroid/widget/CalendarView;->mDayNamesHeader:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->invalidate()V

    .line 1059
    return-void
.end method

.method private setUpListView()V
    .locals 2

    .prologue
    .line 1066
    iget-object v0, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1067
    iget-object v0, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 1068
    iget-object v0, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 1069
    iget-object v0, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/CalendarView$2;

    invoke-direct {v1, p0}, Landroid/widget/CalendarView$2;-><init>(Landroid/widget/CalendarView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1082
    iget-object v0, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    iget v1, p0, Landroid/widget/CalendarView;->mFriction:F

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFriction(F)V

    .line 1083
    iget-object v0, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    iget v1, p0, Landroid/widget/CalendarView;->mVelocityScale:F

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVelocityScale(F)V

    .line 1084
    return-void
.end method

.method private updateDateTextSize()V
    .locals 4

    .prologue
    .line 939
    iget-object v1, p0, Landroid/widget/CalendarView;->mContext:Landroid/content/Context;

    iget v2, p0, Landroid/widget/CalendarView;->mDateTextAppearanceResId:I

    sget-object v3, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 941
    .local v0, "dateTextAppearance":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/CalendarView;->mDateTextSize:I

    .line 943
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 944
    return-void
.end method


# virtual methods
.method public getDate()J
    .locals 2

    .prologue
    .line 896
    iget-object v0, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    # getter for: Landroid/widget/CalendarView$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;
    invoke-static {v0}, Landroid/widget/CalendarView$WeeksAdapter;->access$400(Landroid/widget/CalendarView$WeeksAdapter;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDateTextAppearance()I
    .locals 1

    .prologue
    .line 682
    iget v0, p0, Landroid/widget/CalendarView;->mDateTextAppearanceResId:I

    return v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    .prologue
    .line 853
    iget v0, p0, Landroid/widget/CalendarView;->mFirstDayOfWeek:I

    return v0
.end method

.method public getFocusedMonthDateColor()I
    .locals 1

    .prologue
    .line 504
    iget v0, p0, Landroid/widget/CalendarView;->mFocusedMonthDateColor:I

    return v0
.end method

.method public getMaxDate()J
    .locals 2

    .prologue
    .line 778
    iget-object v0, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    .prologue
    .line 726
    iget-object v0, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedDateVerticalBar()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Landroid/widget/CalendarView;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSelectedWeekBackgroundColor()I
    .locals 1

    .prologue
    .line 473
    iget v0, p0, Landroid/widget/CalendarView;->mSelectedWeekBackgroundColor:I

    return v0
.end method

.method public getShowWeekNumber()Z
    .locals 1

    .prologue
    .line 834
    iget-boolean v0, p0, Landroid/widget/CalendarView;->mShowWeekNumber:Z

    return v0
.end method

.method public getShownWeekCount()I
    .locals 1

    .prologue
    .line 442
    iget v0, p0, Landroid/widget/CalendarView;->mShownWeekCount:I

    return v0
.end method

.method public getUnfocusedMonthDateColor()I
    .locals 1

    .prologue
    .line 535
    iget v0, p0, Landroid/widget/CalendarView;->mFocusedMonthDateColor:I

    return v0
.end method

.method public getWeekDayTextAppearance()I
    .locals 1

    .prologue
    .line 656
    iget v0, p0, Landroid/widget/CalendarView;->mWeekDayTextAppearanceResId:I

    return v0
.end method

.method public getWeekNumberColor()I
    .locals 1

    .prologue
    .line 562
    iget v0, p0, Landroid/widget/CalendarView;->mWeekNumberColor:I

    return v0
.end method

.method public getWeekSeparatorLineColor()I
    .locals 1

    .prologue
    .line 587
    iget v0, p0, Landroid/widget/CalendarView;->mWeekSeparatorLineColor:I

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->isEnabled()Z

    move-result v0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 697
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 698
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Landroid/widget/CalendarView;->setCurrentLocale(Ljava/util/Locale;)V

    .line 699
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 703
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 704
    const-class v0, Landroid/widget/CalendarView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 705
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 709
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 710
    const-class v0, Landroid/widget/CalendarView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 711
    return-void
.end method

.method public setDate(J)V
    .locals 1
    .param p1, "date"    # J

    .prologue
    const/4 v0, 0x0

    .line 913
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/widget/CalendarView;->setDate(JZZ)V

    .line 914
    return-void
.end method

.method public setDate(JZZ)V
    .locals 2
    .param p1, "date"    # J
    .param p3, "animate"    # Z
    .param p4, "center"    # Z

    .prologue
    .line 931
    iget-object v0, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 932
    iget-object v0, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    # getter for: Landroid/widget/CalendarView$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;
    invoke-static {v1}, Landroid/widget/CalendarView$WeeksAdapter;->access$400(Landroid/widget/CalendarView$WeeksAdapter;)Ljava/util/Calendar;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/widget/CalendarView;->isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 936
    :goto_0
    return-void

    .line 935
    :cond_0
    iget-object v0, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p3, v1, p4}, Landroid/widget/CalendarView;->goTo(Ljava/util/Calendar;ZZZ)V

    goto :goto_0
.end method

.method public setDateTextAppearance(I)V
    .locals 1
    .param p1, "resourceId"    # I

    .prologue
    .line 667
    iget v0, p0, Landroid/widget/CalendarView;->mDateTextAppearanceResId:I

    if-eq v0, p1, :cond_0

    .line 668
    iput p1, p0, Landroid/widget/CalendarView;->mDateTextAppearanceResId:I

    .line 669
    invoke-direct {p0}, Landroid/widget/CalendarView;->updateDateTextSize()V

    .line 670
    invoke-direct {p0}, Landroid/widget/CalendarView;->invalidateAllWeekViews()V

    .line 672
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 687
    iget-object v0, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 688
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1
    .param p1, "firstDayOfWeek"    # I

    .prologue
    .line 872
    iget v0, p0, Landroid/widget/CalendarView;->mFirstDayOfWeek:I

    if-ne v0, p1, :cond_0

    .line 878
    :goto_0
    return-void

    .line 875
    :cond_0
    iput p1, p0, Landroid/widget/CalendarView;->mFirstDayOfWeek:I

    .line 876
    iget-object v0, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    # invokes: Landroid/widget/CalendarView$WeeksAdapter;->init()V
    invoke-static {v0}, Landroid/widget/CalendarView$WeeksAdapter;->access$500(Landroid/widget/CalendarView$WeeksAdapter;)V

    .line 877
    invoke-direct {p0}, Landroid/widget/CalendarView;->setUpHeader()V

    goto :goto_0
.end method

.method public setFocusedMonthDateColor(I)V
    .locals 4
    .param p1, "color"    # I

    .prologue
    .line 484
    iget v3, p0, Landroid/widget/CalendarView;->mFocusedMonthDateColor:I

    if-eq v3, p1, :cond_1

    .line 485
    iput p1, p0, Landroid/widget/CalendarView;->mFocusedMonthDateColor:I

    .line 486
    iget-object v3, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 487
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 488
    iget-object v3, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CalendarView$WeekView;

    .line 489
    .local v2, "weekView":Landroid/widget/CalendarView$WeekView;
    # getter for: Landroid/widget/CalendarView$WeekView;->mHasFocusedDay:Z
    invoke-static {v2}, Landroid/widget/CalendarView$WeekView;->access$200(Landroid/widget/CalendarView$WeekView;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 490
    invoke-virtual {v2}, Landroid/widget/CalendarView$WeekView;->invalidate()V

    .line 487
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 494
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    .end local v2    # "weekView":Landroid/widget/CalendarView$WeekView;
    :cond_1
    return-void
.end method

.method public setMaxDate(J)V
    .locals 4
    .param p1, "maxDate"    # J

    .prologue
    const/4 v3, 0x0

    .line 791
    iget-object v1, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 792
    iget-object v1, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    iget-object v2, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, v2}, Landroid/widget/CalendarView;->isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 808
    :goto_0
    return-void

    .line 795
    :cond_0
    iget-object v1, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 797
    iget-object v1, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    # invokes: Landroid/widget/CalendarView$WeeksAdapter;->init()V
    invoke-static {v1}, Landroid/widget/CalendarView$WeeksAdapter;->access$500(Landroid/widget/CalendarView$WeeksAdapter;)V

    .line 798
    iget-object v1, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    # getter for: Landroid/widget/CalendarView$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;
    invoke-static {v1}, Landroid/widget/CalendarView$WeeksAdapter;->access$400(Landroid/widget/CalendarView$WeeksAdapter;)Ljava/util/Calendar;

    move-result-object v0

    .line 799
    .local v0, "date":Ljava/util/Calendar;
    iget-object v1, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 800
    iget-object v1, p0, Landroid/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroid/widget/CalendarView;->setDate(J)V

    goto :goto_0

    .line 806
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v0, v3, v1, v3}, Landroid/widget/CalendarView;->goTo(Ljava/util/Calendar;ZZZ)V

    goto :goto_0
.end method

.method public setMinDate(J)V
    .locals 4
    .param p1, "minDate"    # J

    .prologue
    const/4 v3, 0x0

    .line 739
    iget-object v1, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 740
    iget-object v1, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    iget-object v2, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, v2}, Landroid/widget/CalendarView;->isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 763
    :goto_0
    return-void

    .line 743
    :cond_0
    iget-object v1, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 748
    iget-object v1, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    # getter for: Landroid/widget/CalendarView$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;
    invoke-static {v1}, Landroid/widget/CalendarView$WeeksAdapter;->access$400(Landroid/widget/CalendarView$WeeksAdapter;)Ljava/util/Calendar;

    move-result-object v0

    .line 749
    .local v0, "date":Ljava/util/Calendar;
    iget-object v1, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 750
    iget-object v1, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    iget-object v2, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Landroid/widget/CalendarView$WeeksAdapter;->setSelectedDay(Ljava/util/Calendar;)V

    .line 753
    :cond_1
    iget-object v1, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    # invokes: Landroid/widget/CalendarView$WeeksAdapter;->init()V
    invoke-static {v1}, Landroid/widget/CalendarView$WeeksAdapter;->access$500(Landroid/widget/CalendarView$WeeksAdapter;)V

    .line 754
    iget-object v1, p0, Landroid/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 755
    iget-object v1, p0, Landroid/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroid/widget/CalendarView;->setDate(J)V

    goto :goto_0

    .line 761
    :cond_2
    const/4 v1, 0x1

    invoke-direct {p0, v0, v3, v1, v3}, Landroid/widget/CalendarView;->goTo(Ljava/util/Calendar;ZZZ)V

    goto :goto_0
.end method

.method public setOnDateChangeListener(Landroid/widget/CalendarView$OnDateChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/CalendarView$OnDateChangeListener;

    .prologue
    .line 886
    iput-object p1, p0, Landroid/widget/CalendarView;->mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

    .line 887
    return-void
.end method

.method public setSelectedDateVerticalBar(I)V
    .locals 2
    .param p1, "resourceId"    # I

    .prologue
    .line 599
    invoke-virtual {p0}, Landroid/widget/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 600
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Landroid/widget/CalendarView;->setSelectedDateVerticalBar(Landroid/graphics/drawable/Drawable;)V

    .line 601
    return-void
.end method

.method public setSelectedDateVerticalBar(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 612
    iget-object v3, p0, Landroid/widget/CalendarView;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    if-eq v3, p1, :cond_1

    .line 613
    iput-object p1, p0, Landroid/widget/CalendarView;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    .line 614
    iget-object v3, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 615
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 616
    iget-object v3, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CalendarView$WeekView;

    .line 617
    .local v2, "weekView":Landroid/widget/CalendarView$WeekView;
    # getter for: Landroid/widget/CalendarView$WeekView;->mHasSelectedDay:Z
    invoke-static {v2}, Landroid/widget/CalendarView$WeekView;->access$100(Landroid/widget/CalendarView$WeekView;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 618
    invoke-virtual {v2}, Landroid/widget/CalendarView$WeekView;->invalidate()V

    .line 615
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 622
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    .end local v2    # "weekView":Landroid/widget/CalendarView$WeekView;
    :cond_1
    return-void
.end method

.method public setSelectedWeekBackgroundColor(I)V
    .locals 4
    .param p1, "color"    # I

    .prologue
    .line 453
    iget v3, p0, Landroid/widget/CalendarView;->mSelectedWeekBackgroundColor:I

    if-eq v3, p1, :cond_1

    .line 454
    iput p1, p0, Landroid/widget/CalendarView;->mSelectedWeekBackgroundColor:I

    .line 455
    iget-object v3, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 456
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 457
    iget-object v3, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CalendarView$WeekView;

    .line 458
    .local v2, "weekView":Landroid/widget/CalendarView$WeekView;
    # getter for: Landroid/widget/CalendarView$WeekView;->mHasSelectedDay:Z
    invoke-static {v2}, Landroid/widget/CalendarView$WeekView;->access$100(Landroid/widget/CalendarView$WeekView;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 459
    invoke-virtual {v2}, Landroid/widget/CalendarView$WeekView;->invalidate()V

    .line 456
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 463
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    .end local v2    # "weekView":Landroid/widget/CalendarView$WeekView;
    :cond_1
    return-void
.end method

.method public setShowWeekNumber(Z)V
    .locals 1
    .param p1, "showWeekNumber"    # Z

    .prologue
    .line 818
    iget-boolean v0, p0, Landroid/widget/CalendarView;->mShowWeekNumber:Z

    if-ne v0, p1, :cond_0

    .line 824
    :goto_0
    return-void

    .line 821
    :cond_0
    iput-boolean p1, p0, Landroid/widget/CalendarView;->mShowWeekNumber:Z

    .line 822
    iget-object v0, p0, Landroid/widget/CalendarView;->mAdapter:Landroid/widget/CalendarView$WeeksAdapter;

    invoke-virtual {v0}, Landroid/widget/CalendarView$WeeksAdapter;->notifyDataSetChanged()V

    .line 823
    invoke-direct {p0}, Landroid/widget/CalendarView;->setUpHeader()V

    goto :goto_0
.end method

.method public setShownWeekCount(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 428
    iget v0, p0, Landroid/widget/CalendarView;->mShownWeekCount:I

    if-eq v0, p1, :cond_0

    .line 429
    iput p1, p0, Landroid/widget/CalendarView;->mShownWeekCount:I

    .line 430
    invoke-virtual {p0}, Landroid/widget/CalendarView;->invalidate()V

    .line 432
    :cond_0
    return-void
.end method

.method public setUnfocusedMonthDateColor(I)V
    .locals 4
    .param p1, "color"    # I

    .prologue
    .line 515
    iget v3, p0, Landroid/widget/CalendarView;->mUnfocusedMonthDateColor:I

    if-eq v3, p1, :cond_1

    .line 516
    iput p1, p0, Landroid/widget/CalendarView;->mUnfocusedMonthDateColor:I

    .line 517
    iget-object v3, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 518
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 519
    iget-object v3, p0, Landroid/widget/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CalendarView$WeekView;

    .line 520
    .local v2, "weekView":Landroid/widget/CalendarView$WeekView;
    # getter for: Landroid/widget/CalendarView$WeekView;->mHasUnfocusedDay:Z
    invoke-static {v2}, Landroid/widget/CalendarView$WeekView;->access$300(Landroid/widget/CalendarView$WeekView;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 521
    invoke-virtual {v2}, Landroid/widget/CalendarView$WeekView;->invalidate()V

    .line 518
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 525
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    .end local v2    # "weekView":Landroid/widget/CalendarView$WeekView;
    :cond_1
    return-void
.end method

.method public setWeekDayTextAppearance(I)V
    .locals 1
    .param p1, "resourceId"    # I

    .prologue
    .line 642
    iget v0, p0, Landroid/widget/CalendarView;->mWeekDayTextAppearanceResId:I

    if-eq v0, p1, :cond_0

    .line 643
    iput p1, p0, Landroid/widget/CalendarView;->mWeekDayTextAppearanceResId:I

    .line 644
    invoke-direct {p0}, Landroid/widget/CalendarView;->setUpHeader()V

    .line 646
    :cond_0
    return-void
.end method

.method public setWeekNumberColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 546
    iget v0, p0, Landroid/widget/CalendarView;->mWeekNumberColor:I

    if-eq v0, p1, :cond_0

    .line 547
    iput p1, p0, Landroid/widget/CalendarView;->mWeekNumberColor:I

    .line 548
    iget-boolean v0, p0, Landroid/widget/CalendarView;->mShowWeekNumber:Z

    if-eqz v0, :cond_0

    .line 549
    invoke-direct {p0}, Landroid/widget/CalendarView;->invalidateAllWeekViews()V

    .line 552
    :cond_0
    return-void
.end method

.method public setWeekSeparatorLineColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 573
    iget v0, p0, Landroid/widget/CalendarView;->mWeekSeparatorLineColor:I

    if-eq v0, p1, :cond_0

    .line 574
    iput p1, p0, Landroid/widget/CalendarView;->mWeekSeparatorLineColor:I

    .line 575
    invoke-direct {p0}, Landroid/widget/CalendarView;->invalidateAllWeekViews()V

    .line 577
    :cond_0
    return-void
.end method
