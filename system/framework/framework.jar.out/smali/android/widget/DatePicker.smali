.class public Landroid/widget/DatePicker;
.super Landroid/widget/FrameLayout;
.source "DatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DatePicker$SavedState;,
        Landroid/widget/DatePicker$OnDateChangedListener;
    }
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "MM/dd/yyyy"

.field private static final DEFAULT_CALENDAR_VIEW_SHOWN:Z = true

.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_SPINNERS_SHOWN:Z = true

.field private static final DEFAULT_START_YEAR:I = 0x76c

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mCalendarView:Landroid/widget/CalendarView;

.field private mCurrentDate:Ljava/util/Calendar;

.field private mCurrentLocale:Ljava/util/Locale;

.field private final mDateFormat:Ljava/text/DateFormat;

.field private final mDaySpinner:Landroid/widget/NumberPicker;

.field private final mDaySpinnerInput:Landroid/widget/EditText;

.field private mIsEnabled:Z

.field private mMaxDate:Ljava/util/Calendar;

.field private mMinDate:Ljava/util/Calendar;

.field private final mMonthSpinner:Landroid/widget/NumberPicker;

.field private final mMonthSpinnerInput:Landroid/widget/EditText;

.field private mNumberOfMonths:I

.field private mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

.field private mShortMonths:[Ljava/lang/String;

.field private final mSpinners:Landroid/widget/LinearLayout;

.field private mTempDate:Ljava/util/Calendar;

.field private final mYearSpinner:Landroid/widget/NumberPicker;

.field private final mYearSpinnerInput:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const-class v0, Landroid/widget/DatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/DatePicker;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 149
    sget v0, Lcom/android/internal/R$attr;->datePickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 150
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 153
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 113
    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string v14, "MM/dd/yyyy"

    invoke-direct {v13, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/DatePicker;->mDateFormat:Ljava/text/DateFormat;

    .line 125
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/DatePicker;->mIsEnabled:Z

    .line 156
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/widget/DatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 158
    sget-object v13, Lcom/android/internal/R$styleable;->DatePicker:[I

    const/4 v14, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v13, v2, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 160
    .local v3, "attributesArray":Landroid/content/res/TypedArray;
    const/4 v13, 0x4

    const/4 v14, 0x1

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 162
    .local v11, "spinnersShown":Z
    const/4 v13, 0x5

    const/4 v14, 0x1

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 164
    .local v4, "calendarViewShown":Z
    const/4 v13, 0x0

    const/16 v14, 0x76c

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    .line 166
    .local v12, "startYear":I
    const/4 v13, 0x1

    const/16 v14, 0x834

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 167
    .local v5, "endYear":I
    const/4 v13, 0x2

    invoke-virtual {v3, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 168
    .local v9, "minDate":Ljava/lang/String;
    const/4 v13, 0x3

    invoke-virtual {v3, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 169
    .local v8, "maxDate":Ljava/lang/String;
    const/4 v13, 0x6

    sget v14, Lcom/android/internal/R$layout;->date_picker:I

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 171
    .local v7, "layoutResourceId":I
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 173
    const-string v13, "layout_inflater"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 175
    .local v6, "inflater":Landroid/view/LayoutInflater;
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v6, v7, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 177
    new-instance v10, Landroid/widget/DatePicker$1;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Landroid/widget/DatePicker$1;-><init>(Landroid/widget/DatePicker;)V

    .line 213
    .local v10, "onChangeListener":Landroid/widget/NumberPicker$OnValueChangeListener;
    sget v13, Lcom/android/internal/R$id;->pickers:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    .line 216
    sget v13, Lcom/android/internal/R$id;->calendar_view:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/CalendarView;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/DatePicker;->mCalendarView:Landroid/widget/CalendarView;

    .line 217
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mCalendarView:Landroid/widget/CalendarView;

    new-instance v14, Landroid/widget/DatePicker$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/DatePicker$2;-><init>(Landroid/widget/DatePicker;)V

    invoke-virtual {v13, v14}, Landroid/widget/CalendarView;->setOnDateChangeListener(Landroid/widget/CalendarView$OnDateChangeListener;)V

    .line 226
    sget v13, Lcom/android/internal/R$id;->day:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/NumberPicker;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    .line 227
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-static {}, Landroid/widget/NumberPicker;->getTwoDigitFormatter()Landroid/widget/NumberPicker$Formatter;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 228
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    const-wide/16 v14, 0x64

    invoke-virtual {v13, v14, v15}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 229
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v13, v10}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    sget v14, Lcom/android/internal/R$id;->numberpicker_input:I

    invoke-virtual {v13, v14}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/DatePicker;->mDaySpinnerInput:Landroid/widget/EditText;

    .line 233
    sget v13, Lcom/android/internal/R$id;->month:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/NumberPicker;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    .line 234
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 235
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/DatePicker;->mNumberOfMonths:I

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v13, v14}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 236
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 237
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    const-wide/16 v14, 0xc8

    invoke-virtual {v13, v14, v15}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 238
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v13, v10}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 239
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    sget v14, Lcom/android/internal/R$id;->numberpicker_input:I

    invoke-virtual {v13, v14}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/DatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    .line 242
    sget v13, Lcom/android/internal/R$id;->year:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/NumberPicker;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/DatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    .line 243
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    const-wide/16 v14, 0x64

    invoke-virtual {v13, v14, v15}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 244
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v13, v10}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 245
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    sget v14, Lcom/android/internal/R$id;->numberpicker_input:I

    invoke-virtual {v13, v14}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/DatePicker;->mYearSpinnerInput:Landroid/widget/EditText;

    .line 249
    if-nez v11, :cond_3

    if-nez v4, :cond_3

    .line 250
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/DatePicker;->setSpinnersShown(Z)V

    .line 257
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v13}, Ljava/util/Calendar;->clear()V

    .line 258
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 259
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v13}, Landroid/widget/DatePicker;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 260
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual {v13, v12, v14, v15}, Ljava/util/Calendar;->set(III)V

    .line 265
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 268
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v13}, Ljava/util/Calendar;->clear()V

    .line 269
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 270
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v13}, Landroid/widget/DatePicker;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 271
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    const/16 v14, 0xb

    const/16 v15, 0x1f

    invoke-virtual {v13, v5, v14, v15}, Ljava/util/Calendar;->set(III)V

    .line 276
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 279
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 280
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/util/Calendar;->get(I)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/16 v16, 0x5

    invoke-virtual/range {v15 .. v16}, Ljava/util/Calendar;->get(I)I

    move-result v15

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v14, v15, v1}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 284
    invoke-direct/range {p0 .. p0}, Landroid/widget/DatePicker;->reorderSpinners()V

    .line 287
    invoke-direct/range {p0 .. p0}, Landroid/widget/DatePicker;->setContentDescriptions()V

    .line 290
    invoke-virtual/range {p0 .. p0}, Landroid/widget/DatePicker;->getImportantForAccessibility()I

    move-result v13

    if-nez v13, :cond_2

    .line 291
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/DatePicker;->setImportantForAccessibility(I)V

    .line 293
    :cond_2
    return-void

    .line 252
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/DatePicker;->setSpinnersShown(Z)V

    .line 253
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/DatePicker;->setCalendarViewShown(Z)V

    goto/16 :goto_0

    .line 263
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual {v13, v12, v14, v15}, Ljava/util/Calendar;->set(III)V

    goto/16 :goto_1

    .line 274
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    const/16 v14, 0xb

    const/16 v15, 0x1f

    invoke-virtual {v13, v5, v14, v15}, Ljava/util/Calendar;->set(III)V

    goto :goto_2
.end method

.method static synthetic access$000(Landroid/widget/DatePicker;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/DatePicker;

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateInputState()V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/DatePicker;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Landroid/widget/DatePicker;

    .prologue
    .line 75
    iget-object v0, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/DatePicker;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Landroid/widget/DatePicker;

    .prologue
    .line 75
    iget-object v0, p0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/DatePicker;)Landroid/widget/NumberPicker;
    .locals 1
    .param p0, "x0"    # Landroid/widget/DatePicker;

    .prologue
    .line 75
    iget-object v0, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/DatePicker;)Landroid/widget/NumberPicker;
    .locals 1
    .param p0, "x0"    # Landroid/widget/DatePicker;

    .prologue
    .line 75
    iget-object v0, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/DatePicker;)Landroid/widget/NumberPicker;
    .locals 1
    .param p0, "x0"    # Landroid/widget/DatePicker;

    .prologue
    .line 75
    iget-object v0, p0, Landroid/widget/DatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$600(Landroid/widget/DatePicker;III)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/DatePicker;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/DatePicker;->setDate(III)V

    return-void
.end method

.method static synthetic access$700(Landroid/widget/DatePicker;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/DatePicker;

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateSpinners()V

    return-void
.end method

.method static synthetic access$800(Landroid/widget/DatePicker;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/DatePicker;

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateCalendarView()V

    return-void
.end method

.method static synthetic access$900(Landroid/widget/DatePicker;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/DatePicker;

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/widget/DatePicker;->notifyDateChanged()V

    return-void
.end method

.method private getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 3
    .param p1, "oldCalendar"    # Ljava/util/Calendar;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 511
    if-nez p1, :cond_0

    .line 512
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 517
    :goto_0
    return-object v2

    .line 514
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 515
    .local v0, "currentTimeMillis":J
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 516
    .local v2, "newCalendar":Ljava/util/Calendar;
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method private isNewDate(III)Z
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    const/4 v0, 0x1

    .line 626
    iget-object v1, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, p3, :cond_0

    iget-object v1, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v1, p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyDateChanged()V
    .locals 4

    .prologue
    .line 721
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/DatePicker;->sendAccessibilityEvent(I)V

    .line 722
    iget-object v0, p0, Landroid/widget/DatePicker;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Landroid/widget/DatePicker;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    invoke-virtual {p0}, Landroid/widget/DatePicker;->getYear()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/DatePicker;->getMonth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/widget/DatePicker$OnDateChangedListener;->onDateChanged(Landroid/widget/DatePicker;III)V

    .line 725
    :cond_0
    return-void
.end method

.method private parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z
    .locals 4
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "outDate"    # Ljava/util/Calendar;

    .prologue
    .line 617
    :try_start_0
    iget-object v1, p0, Landroid/widget/DatePicker;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 618
    const/4 v1, 0x1

    .line 621
    :goto_0
    return v1

    .line 619
    :catch_0
    move-exception v0

    .line 620
    .local v0, "e":Ljava/text/ParseException;
    sget-object v1, Landroid/widget/DatePicker;->LOG_TAG:Ljava/lang/String;

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

    .line 621
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private reorderSpinners()V
    .locals 6

    .prologue
    .line 527
    iget-object v4, p0, Landroid/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 530
    const-string/jumbo v4, "yyyyMMMdd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Llibcore/icu/ICU;->getBestDateTimePattern(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 531
    .local v2, "pattern":Ljava/lang/String;
    invoke-static {v2}, Llibcore/icu/ICU;->getDateFormatOrder(Ljava/lang/String;)[C

    move-result-object v1

    .line 532
    .local v1, "order":[C
    array-length v3, v1

    .line 533
    .local v3, "spinnerCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 534
    aget-char v4, v1, v0

    sparse-switch v4, :sswitch_data_0

    .line 548
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-static {v1}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 536
    :sswitch_0
    iget-object v4, p0, Landroid/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v5, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 537
    iget-object v4, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v4, v3, v0}, Landroid/widget/DatePicker;->setImeOptions(Landroid/widget/NumberPicker;II)V

    .line 533
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 540
    :sswitch_1
    iget-object v4, p0, Landroid/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v5, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 541
    iget-object v4, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v4, v3, v0}, Landroid/widget/DatePicker;->setImeOptions(Landroid/widget/NumberPicker;II)V

    goto :goto_1

    .line 544
    :sswitch_2
    iget-object v4, p0, Landroid/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v5, p0, Landroid/widget/DatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 545
    iget-object v4, p0, Landroid/widget/DatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v4, v3, v0}, Landroid/widget/DatePicker;->setImeOptions(Landroid/widget/NumberPicker;II)V

    goto :goto_1

    .line 551
    :cond_0
    return-void

    .line 534
    nop

    :sswitch_data_0
    .sparse-switch
        0x4d -> :sswitch_1
        0x64 -> :sswitch_0
        0x79 -> :sswitch_2
    .end sparse-switch
.end method

.method private setContentDescriptions()V
    .locals 3

    .prologue
    .line 747
    iget-object v0, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    sget v1, Lcom/android/internal/R$id;->increment:I

    sget v2, Lcom/android/internal/R$string;->date_picker_increment_day_button:I

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/DatePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 749
    iget-object v0, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    sget v1, Lcom/android/internal/R$id;->decrement:I

    sget v2, Lcom/android/internal/R$string;->date_picker_decrement_day_button:I

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/DatePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 752
    iget-object v0, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    sget v1, Lcom/android/internal/R$id;->increment:I

    sget v2, Lcom/android/internal/R$string;->date_picker_increment_month_button:I

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/DatePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 754
    iget-object v0, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    sget v1, Lcom/android/internal/R$id;->decrement:I

    sget v2, Lcom/android/internal/R$string;->date_picker_decrement_month_button:I

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/DatePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 757
    iget-object v0, p0, Landroid/widget/DatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    sget v1, Lcom/android/internal/R$id;->increment:I

    sget v2, Lcom/android/internal/R$string;->date_picker_increment_year_button:I

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/DatePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 759
    iget-object v0, p0, Landroid/widget/DatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    sget v1, Lcom/android/internal/R$id;->decrement:I

    sget v2, Lcom/android/internal/R$string;->date_picker_decrement_year_button:I

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/DatePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 761
    return-void
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 6
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 472
    iget-object v1, p0, Landroid/widget/DatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 494
    :cond_0
    return-void

    .line 476
    :cond_1
    iput-object p1, p0, Landroid/widget/DatePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 478
    iget-object v1, p0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Landroid/widget/DatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    .line 479
    iget-object v1, p0, Landroid/widget/DatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Landroid/widget/DatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/DatePicker;->mMinDate:Ljava/util/Calendar;

    .line 480
    iget-object v1, p0, Landroid/widget/DatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Landroid/widget/DatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/DatePicker;->mMaxDate:Ljava/util/Calendar;

    .line 481
    iget-object v1, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Landroid/widget/DatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    .line 483
    iget-object v1, p0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/DatePicker;->mNumberOfMonths:I

    .line 484
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    .line 486
    invoke-direct {p0}, Landroid/widget/DatePicker;->usingNumericMonths()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 489
    iget v1, p0, Landroid/widget/DatePicker;->mNumberOfMonths:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    .line 490
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/widget/DatePicker;->mNumberOfMonths:I

    if-ge v0, v1, :cond_0

    .line 491
    iget-object v1, p0, Landroid/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    const-string v2, "%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/lit8 v5, v0, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 490
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setDate(III)V
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 632
    iget-object v0, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    .line 633
    iget-object v0, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 634
    iget-object v0, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 638
    :cond_0
    :goto_0
    return-void

    .line 635
    :cond_1
    iget-object v0, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method private setImeOptions(Landroid/widget/NumberPicker;II)V
    .locals 3
    .param p1, "spinner"    # Landroid/widget/NumberPicker;
    .param p2, "spinnerCount"    # I
    .param p3, "spinnerIndex"    # I

    .prologue
    .line 736
    add-int/lit8 v2, p2, -0x1

    if-ge p3, v2, :cond_0

    .line 737
    const/4 v0, 0x5

    .line 741
    .local v0, "imeOptions":I
    :goto_0
    sget v2, Lcom/android/internal/R$id;->numberpicker_input:I

    invoke-virtual {p1, v2}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 742
    .local v1, "input":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 743
    return-void

    .line 739
    .end local v0    # "imeOptions":I
    .end local v1    # "input":Landroid/widget/TextView;
    :cond_0
    const/4 v0, 0x6

    .restart local v0    # "imeOptions":I
    goto :goto_0
.end method

.method private trySetContentDescription(Landroid/view/View;II)V
    .locals 2
    .param p1, "root"    # Landroid/view/View;
    .param p2, "viewId"    # I
    .param p3, "contDescResId"    # I

    .prologue
    .line 764
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 765
    .local v0, "target":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 766
    iget-object v1, p0, Landroid/widget/DatePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 768
    :cond_0
    return-void
.end method

.method private updateCalendarView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 693
    iget-object v0, p0, Landroid/widget/DatePicker;->mCalendarView:Landroid/widget/CalendarView;

    iget-object v1, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/CalendarView;->setDate(JZZ)V

    .line 694
    return-void
.end method

.method private updateInputState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 776
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 777
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 778
    iget-object v1, p0, Landroid/widget/DatePicker;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 779
    iget-object v1, p0, Landroid/widget/DatePicker;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 780
    invoke-virtual {p0}, Landroid/widget/DatePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 789
    :cond_0
    :goto_0
    return-void

    .line 781
    :cond_1
    iget-object v1, p0, Landroid/widget/DatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 782
    iget-object v1, p0, Landroid/widget/DatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 783
    invoke-virtual {p0}, Landroid/widget/DatePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 784
    :cond_2
    iget-object v1, p0, Landroid/widget/DatePicker;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 785
    iget-object v1, p0, Landroid/widget/DatePicker;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 786
    invoke-virtual {p0}, Landroid/widget/DatePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private updateSpinners()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 642
    iget-object v1, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v2, p0, Landroid/widget/DatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 643
    iget-object v1, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 644
    iget-object v1, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 645
    iget-object v1, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v4}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 646
    iget-object v1, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 647
    iget-object v1, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 648
    iget-object v1, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 649
    iget-object v1, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v4}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 670
    :goto_0
    iget-object v1, p0, Landroid/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    iget-object v2, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getMinValue()I

    move-result v2

    iget-object v3, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 672
    .local v0, "displayedValues":[Ljava/lang/String;
    iget-object v1, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v0}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 675
    iget-object v1, p0, Landroid/widget/DatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 676
    iget-object v1, p0, Landroid/widget/DatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 677
    iget-object v1, p0, Landroid/widget/DatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v4}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 680
    iget-object v1, p0, Landroid/widget/DatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 681
    iget-object v1, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 682
    iget-object v1, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 684
    invoke-direct {p0}, Landroid/widget/DatePicker;->usingNumericMonths()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 685
    iget-object v1, p0, Landroid/widget/DatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 687
    :cond_0
    return-void

    .line 650
    .end local v0    # "displayedValues":[Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v2, p0, Landroid/widget/DatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 651
    iget-object v1, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 652
    iget-object v1, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 653
    iget-object v1, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v4}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 654
    iget-object v1, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 655
    iget-object v1, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 656
    iget-object v1, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 657
    iget-object v1, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v4}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    goto/16 :goto_0

    .line 659
    :cond_2
    iget-object v1, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v5}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 660
    iget-object v1, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 661
    iget-object v1, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v5}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 662
    iget-object v1, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 663
    iget-object v1, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v4}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 664
    iget-object v1, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 665
    iget-object v1, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v5}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    goto/16 :goto_0
.end method

.method private usingNumericMonths()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 501
    iget-object v0, p0, Landroid/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 387
    invoke-virtual {p0, p1}, Landroid/widget/DatePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 388
    const/4 v0, 0x1

    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 573
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/widget/DatePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 574
    return-void
.end method

.method public getCalendarView()Landroid/widget/CalendarView;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Landroid/widget/DatePicker;->mCalendarView:Landroid/widget/CalendarView;

    return-object v0
.end method

.method public getCalendarViewShown()Z
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Landroid/widget/DatePicker;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0}, Landroid/widget/CalendarView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDayOfMonth()I
    .locals 2

    .prologue
    .line 714
    iget-object v0, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMaxDate()J
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Landroid/widget/DatePicker;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0}, Landroid/widget/CalendarView;->getMaxDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Landroid/widget/DatePicker;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0}, Landroid/widget/CalendarView;->getMinDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMonth()I
    .locals 2

    .prologue
    .line 707
    iget-object v0, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getSpinnersShown()Z
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Landroid/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 2

    .prologue
    .line 700
    iget-object v0, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V
    .locals 0
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "onDateChangedListener"    # Landroid/widget/DatePicker$OnDateChangedListener;

    .prologue
    .line 603
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/DatePicker;->setDate(III)V

    .line 604
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateSpinners()V

    .line 605
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateCalendarView()V

    .line 606
    iput-object p4, p0, Landroid/widget/DatePicker;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    .line 607
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 382
    iget-boolean v0, p0, Landroid/widget/DatePicker;->mIsEnabled:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 415
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 416
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Landroid/widget/DatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 417
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 403
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 404
    const-class v0, Landroid/widget/DatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 405
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 409
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 410
    const-class v0, Landroid/widget/DatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 411
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 393
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 395
    const/16 v0, 0x14

    .line 396
    .local v0, "flags":I
    iget-object v2, p0, Landroid/widget/DatePicker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    const/16 v5, 0x14

    invoke-static {v2, v3, v4, v5}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 398
    .local v1, "selectedDateUtterance":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 399
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 584
    move-object v0, p1

    check-cast v0, Landroid/widget/DatePicker$SavedState;

    .line 585
    .local v0, "ss":Landroid/widget/DatePicker$SavedState;
    invoke-virtual {v0}, Landroid/widget/DatePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 586
    # getter for: Landroid/widget/DatePicker$SavedState;->mYear:I
    invoke-static {v0}, Landroid/widget/DatePicker$SavedState;->access$1100(Landroid/widget/DatePicker$SavedState;)I

    move-result v1

    # getter for: Landroid/widget/DatePicker$SavedState;->mMonth:I
    invoke-static {v0}, Landroid/widget/DatePicker$SavedState;->access$1200(Landroid/widget/DatePicker$SavedState;)I

    move-result v2

    # getter for: Landroid/widget/DatePicker$SavedState;->mDay:I
    invoke-static {v0}, Landroid/widget/DatePicker$SavedState;->access$1300(Landroid/widget/DatePicker$SavedState;)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Landroid/widget/DatePicker;->setDate(III)V

    .line 587
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateSpinners()V

    .line 588
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateCalendarView()V

    .line 589
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 578
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 579
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/widget/DatePicker$SavedState;

    invoke-virtual {p0}, Landroid/widget/DatePicker;->getYear()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/DatePicker;->getMonth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/widget/DatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIILandroid/widget/DatePicker$1;)V

    return-object v0
.end method

.method public setCalendarViewShown(Z)V
    .locals 2
    .param p1, "shown"    # Z

    .prologue
    .line 445
    iget-object v1, p0, Landroid/widget/DatePicker;->mCalendarView:Landroid/widget/CalendarView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CalendarView;->setVisibility(I)V

    .line 446
    return-void

    .line 445
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 369
    iget-boolean v0, p0, Landroid/widget/DatePicker;->mIsEnabled:Z

    if-ne v0, p1, :cond_0

    .line 378
    :goto_0
    return-void

    .line 372
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 373
    iget-object v0, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 374
    iget-object v0, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 375
    iget-object v0, p0, Landroid/widget/DatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 376
    iget-object v0, p0, Landroid/widget/DatePicker;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1}, Landroid/widget/CalendarView;->setEnabled(Z)V

    .line 377
    iput-boolean p1, p0, Landroid/widget/DatePicker;->mIsEnabled:Z

    goto :goto_0
.end method

.method public setMaxDate(J)V
    .locals 4
    .param p1, "maxDate"    # J

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    .line 353
    iget-object v0, p0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 354
    iget-object v0, p0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/DatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/DatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 365
    :goto_0
    return-void

    .line 358
    :cond_0
    iget-object v0, p0, Landroid/widget/DatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 359
    iget-object v0, p0, Landroid/widget/DatePicker;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/CalendarView;->setMaxDate(J)V

    .line 360
    iget-object v0, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 362
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateCalendarView()V

    .line 364
    :cond_1
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateSpinners()V

    goto :goto_0
.end method

.method public setMinDate(J)V
    .locals 4
    .param p1, "minDate"    # J

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    .line 317
    iget-object v0, p0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 318
    iget-object v0, p0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/DatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/DatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 329
    :goto_0
    return-void

    .line 322
    :cond_0
    iget-object v0, p0, Landroid/widget/DatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 323
    iget-object v0, p0, Landroid/widget/DatePicker;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/CalendarView;->setMinDate(J)V

    .line 324
    iget-object v0, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 326
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateCalendarView()V

    .line 328
    :cond_1
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateSpinners()V

    goto :goto_0
.end method

.method public setSpinnersShown(Z)V
    .locals 2
    .param p1, "shown"    # Z

    .prologue
    .line 463
    iget-object v1, p0, Landroid/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 464
    return-void

    .line 463
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public updateDate(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 561
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/DatePicker;->isNewDate(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 568
    :goto_0
    return-void

    .line 564
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/DatePicker;->setDate(III)V

    .line 565
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateSpinners()V

    .line 566
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateCalendarView()V

    .line 567
    invoke-direct {p0}, Landroid/widget/DatePicker;->notifyDateChanged()V

    goto :goto_0
.end method
