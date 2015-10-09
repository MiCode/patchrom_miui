.class public Landroid/widget/TimePicker;
.super Landroid/widget/FrameLayout;
.source "TimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TimePicker$SavedState;,
        Landroid/widget/TimePicker$OnTimeChangedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final HOURS_IN_HALF_DAY:I = 0xc

.field private static final NO_OP_CHANGE_LISTENER:Landroid/widget/TimePicker$OnTimeChangedListener;


# instance fields
.field private final mAmPmButton:Landroid/widget/Button;

.field private final mAmPmSpinner:Landroid/widget/NumberPicker;

.field private final mAmPmSpinnerInput:Landroid/widget/EditText;

.field private final mAmPmStrings:[Ljava/lang/String;

.field private mCurrentLocale:Ljava/util/Locale;

.field private final mDivider:Landroid/widget/TextView;

.field private mHourFormat:C

.field private final mHourSpinner:Landroid/widget/NumberPicker;

.field private final mHourSpinnerInput:Landroid/widget/EditText;

.field private mHourWithTwoDigit:Z

.field private mIs24HourView:Z

.field private mIsAm:Z

.field private mIsEnabled:Z

.field private final mMinuteSpinner:Landroid/widget/NumberPicker;

.field private final mMinuteSpinnerInput:Landroid/widget/EditText;

.field private mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

.field private mTempCalendar:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Landroid/widget/TimePicker$1;

    invoke-direct {v0}, Landroid/widget/TimePicker$1;-><init>()V

    sput-object v0, Landroid/widget/TimePicker;->NO_OP_CHANGE_LISTENER:Landroid/widget/TimePicker$OnTimeChangedListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 131
    sget v0, Lcom/android/internal/R$attr;->timePickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 135
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/widget/TimePicker;->mIsEnabled:Z

    .line 138
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {p0, v8}, Landroid/widget/TimePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 141
    sget-object v8, Lcom/android/internal/R$styleable;->TimePicker:[I

    const/4 v9, 0x0

    invoke-virtual {p1, p2, v8, p3, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 143
    .local v2, "attributesArray":Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    sget v9, Lcom/android/internal/R$layout;->time_picker:I

    invoke-virtual {v2, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 145
    .local v5, "layoutResourceId":I
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 147
    const-string v8, "layout_inflater"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 149
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const/4 v8, 0x1

    invoke-virtual {v4, v5, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 152
    sget v8, Lcom/android/internal/R$id;->hour:I

    invoke-virtual {p0, v8}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/NumberPicker;

    iput-object v8, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    .line 153
    iget-object v8, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    new-instance v9, Landroid/widget/TimePicker$2;

    invoke-direct {v9, p0}, Landroid/widget/TimePicker$2;-><init>(Landroid/widget/TimePicker;)V

    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 166
    iget-object v8, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    sget v9, Lcom/android/internal/R$id;->numberpicker_input:I

    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Landroid/widget/TimePicker;->mHourSpinnerInput:Landroid/widget/EditText;

    .line 167
    iget-object v8, p0, Landroid/widget/TimePicker;->mHourSpinnerInput:Landroid/widget/EditText;

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 170
    sget v8, Lcom/android/internal/R$id;->divider:I

    invoke-virtual {p0, v8}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Landroid/widget/TimePicker;->mDivider:Landroid/widget/TextView;

    .line 171
    iget-object v8, p0, Landroid/widget/TimePicker;->mDivider:Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 172
    invoke-direct {p0}, Landroid/widget/TimePicker;->setDividerText()V

    .line 176
    :cond_0
    sget v8, Lcom/android/internal/R$id;->minute:I

    invoke-virtual {p0, v8}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/NumberPicker;

    iput-object v8, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    .line 177
    iget-object v8, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 178
    iget-object v8, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const/16 v9, 0x3b

    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 179
    iget-object v8, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const-wide/16 v9, 0x64

    invoke-virtual {v8, v9, v10}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 180
    iget-object v8, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-static {}, Landroid/widget/NumberPicker;->getTwoDigitFormatter()Landroid/widget/NumberPicker$Formatter;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 181
    iget-object v8, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    new-instance v9, Landroid/widget/TimePicker$3;

    invoke-direct {v9, p0}, Landroid/widget/TimePicker$3;-><init>(Landroid/widget/TimePicker;)V

    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 204
    iget-object v8, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    sget v9, Lcom/android/internal/R$id;->numberpicker_input:I

    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Landroid/widget/TimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    .line 205
    iget-object v8, p0, Landroid/widget/TimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 208
    new-instance v8, Ljava/text/DateFormatSymbols;

    invoke-direct {v8}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v8}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Landroid/widget/TimePicker;->mAmPmStrings:[Ljava/lang/String;

    .line 211
    sget v8, Lcom/android/internal/R$id;->amPm:I

    invoke-virtual {p0, v8}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 212
    .local v1, "amPmView":Landroid/view/View;
    instance-of v8, v1, Landroid/widget/Button;

    if-eqz v8, :cond_4

    .line 213
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    .line 214
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/widget/TimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    move-object v8, v1

    .line 215
    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    .line 216
    iget-object v8, p0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    new-instance v9, Landroid/widget/TimePicker$4;

    invoke-direct {v9, p0}, Landroid/widget/TimePicker$4;-><init>(Landroid/widget/TimePicker;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    :goto_0
    invoke-direct {p0}, Landroid/widget/TimePicker;->isAmPmAtStart()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 245
    sget v8, Lcom/android/internal/R$id;->timePickerLayout:I

    invoke-virtual {p0, v8}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 246
    .local v0, "amPmParent":Landroid/view/ViewGroup;
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 247
    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 250
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 251
    .local v6, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v6}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v7

    .line 252
    .local v7, "startMargin":I
    invoke-virtual {v6}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v3

    .line 253
    .local v3, "endMargin":I
    if-eq v7, v3, :cond_1

    .line 254
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 255
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 259
    .end local v0    # "amPmParent":Landroid/view/ViewGroup;
    .end local v3    # "endMargin":I
    .end local v6    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v7    # "startMargin":I
    :cond_1
    invoke-direct {p0}, Landroid/widget/TimePicker;->getHourFormatData()V

    .line 262
    invoke-direct {p0}, Landroid/widget/TimePicker;->updateHourControl()V

    .line 263
    invoke-direct {p0}, Landroid/widget/TimePicker;->updateMinuteControl()V

    .line 264
    invoke-direct {p0}, Landroid/widget/TimePicker;->updateAmPmControl()V

    .line 266
    sget-object v8, Landroid/widget/TimePicker;->NO_OP_CHANGE_LISTENER:Landroid/widget/TimePicker$OnTimeChangedListener;

    invoke-virtual {p0, v8}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    .line 269
    iget-object v8, p0, Landroid/widget/TimePicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 v9, 0xb

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 270
    iget-object v8, p0, Landroid/widget/TimePicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 v9, 0xc

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 272
    invoke-virtual {p0}, Landroid/widget/TimePicker;->isEnabled()Z

    move-result v8

    if-nez v8, :cond_2

    .line 273
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Landroid/widget/TimePicker;->setEnabled(Z)V

    .line 277
    :cond_2
    invoke-direct {p0}, Landroid/widget/TimePicker;->setContentDescriptions()V

    .line 280
    invoke-virtual {p0}, Landroid/widget/TimePicker;->getImportantForAccessibility()I

    move-result v8

    if-nez v8, :cond_3

    .line 281
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Landroid/widget/TimePicker;->setImportantForAccessibility(I)V

    .line 283
    :cond_3
    return-void

    .line 225
    :cond_4
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    move-object v8, v1

    .line 226
    check-cast v8, Landroid/widget/NumberPicker;

    iput-object v8, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    .line 227
    iget-object v8, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 228
    iget-object v8, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 229
    iget-object v8, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    iget-object v9, p0, Landroid/widget/TimePicker;->mAmPmStrings:[Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 230
    iget-object v8, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    new-instance v9, Landroid/widget/TimePicker$5;

    invoke-direct {v9, p0}, Landroid/widget/TimePicker$5;-><init>(Landroid/widget/TimePicker;)V

    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 239
    iget-object v8, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    sget v9, Lcom/android/internal/R$id;->numberpicker_input:I

    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Landroid/widget/TimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    .line 240
    iget-object v8, p0, Landroid/widget/TimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    const/4 v9, 0x6

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setImeOptions(I)V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Landroid/widget/TimePicker;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TimePicker;

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/widget/TimePicker;->updateInputState()V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/TimePicker;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/TimePicker;

    .prologue
    .line 58
    iget-boolean v0, p0, Landroid/widget/TimePicker;->mIsAm:Z

    return v0
.end method

.method static synthetic access$102(Landroid/widget/TimePicker;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/TimePicker;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Landroid/widget/TimePicker;->mIsAm:Z

    return p1
.end method

.method static synthetic access$200(Landroid/widget/TimePicker;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TimePicker;

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/widget/TimePicker;->updateAmPmControl()V

    return-void
.end method

.method static synthetic access$300(Landroid/widget/TimePicker;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TimePicker;

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/widget/TimePicker;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/TimePicker;)Landroid/widget/NumberPicker;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TimePicker;

    .prologue
    .line 58
    iget-object v0, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/TimePicker;)Landroid/widget/NumberPicker;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TimePicker;

    .prologue
    .line 58
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method private getHourFormatData()V
    .locals 7

    .prologue
    .line 286
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 287
    .local v2, "defaultLocale":Ljava/util/Locale;
    iget-boolean v6, p0, Landroid/widget/TimePicker;->mIs24HourView:Z

    if-eqz v6, :cond_2

    const-string v6, "Hm"

    :goto_0
    invoke-static {v2, v6}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "bestDateTimePattern":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    .line 290
    .local v5, "lengthPattern":I
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/widget/TimePicker;->mHourWithTwoDigit:Z

    .line 291
    const/4 v3, 0x0

    .line 294
    .local v3, "hourFormat":C
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v5, :cond_1

    .line 295
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 296
    .local v1, "c":C
    const/16 v6, 0x48

    if-eq v1, v6, :cond_0

    const/16 v6, 0x68

    if-eq v1, v6, :cond_0

    const/16 v6, 0x4b

    if-eq v1, v6, :cond_0

    const/16 v6, 0x6b

    if-ne v1, v6, :cond_3

    .line 297
    :cond_0
    iput-char v1, p0, Landroid/widget/TimePicker;->mHourFormat:C

    .line 298
    add-int/lit8 v6, v4, 0x1

    if-ge v6, v5, :cond_1

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v1, v6, :cond_1

    .line 299
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/widget/TimePicker;->mHourWithTwoDigit:Z

    .line 304
    .end local v1    # "c":C
    :cond_1
    return-void

    .line 287
    .end local v0    # "bestDateTimePattern":Ljava/lang/String;
    .end local v3    # "hourFormat":C
    .end local v4    # "i":I
    .end local v5    # "lengthPattern":I
    :cond_2
    const-string v6, "hm"

    goto :goto_0

    .line 294
    .restart local v0    # "bestDateTimePattern":Ljava/lang/String;
    .restart local v1    # "c":C
    .restart local v3    # "hourFormat":C
    .restart local v4    # "i":I
    .restart local v5    # "lengthPattern":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private isAmPmAtStart()Z
    .locals 3

    .prologue
    .line 307
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 308
    .local v1, "defaultLocale":Ljava/util/Locale;
    const-string v2, "hm"

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "bestDateTimePattern":Ljava/lang/String;
    const-string v2, "a"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method private onTimeChanged()V
    .locals 3

    .prologue
    .line 647
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/TimePicker;->sendAccessibilityEvent(I)V

    .line 648
    iget-object v0, p0, Landroid/widget/TimePicker;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Landroid/widget/TimePicker;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Landroid/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Landroid/widget/TimePicker;II)V

    .line 651
    :cond_0
    return-void
.end method

.method private setContentDescriptions()V
    .locals 3

    .prologue
    .line 655
    iget-object v0, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    sget v1, Lcom/android/internal/R$id;->increment:I

    sget v2, Lcom/android/internal/R$string;->time_picker_increment_minute_button:I

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/TimePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 657
    iget-object v0, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    sget v1, Lcom/android/internal/R$id;->decrement:I

    sget v2, Lcom/android/internal/R$string;->time_picker_decrement_minute_button:I

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/TimePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 660
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    sget v1, Lcom/android/internal/R$id;->increment:I

    sget v2, Lcom/android/internal/R$string;->time_picker_increment_hour_button:I

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/TimePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 662
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    sget v1, Lcom/android/internal/R$id;->decrement:I

    sget v2, Lcom/android/internal/R$string;->time_picker_decrement_hour_button:I

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/TimePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 665
    iget-object v0, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    sget v1, Lcom/android/internal/R$id;->increment:I

    sget v2, Lcom/android/internal/R$string;->time_picker_increment_set_pm_button:I

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/TimePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 668
    iget-object v0, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    sget v1, Lcom/android/internal/R$id;->decrement:I

    sget v2, Lcom/android/internal/R$string;->time_picker_decrement_set_am_button:I

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/TimePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 671
    :cond_0
    return-void
.end method

.method private setCurrentHour(Ljava/lang/Integer;Z)V
    .locals 2
    .param p1, "currentHour"    # Ljava/lang/Integer;
    .param p2, "notifyTimeChanged"    # Z

    .prologue
    const/16 v1, 0xc

    .line 451
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TimePicker;->is24HourView()Z

    move-result v0

    if-nez v0, :cond_3

    .line 456
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, v1, :cond_4

    .line 457
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TimePicker;->mIsAm:Z

    .line 458
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 459
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 467
    :cond_2
    :goto_1
    invoke-direct {p0}, Landroid/widget/TimePicker;->updateAmPmControl()V

    .line 469
    :cond_3
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 470
    if-eqz p2, :cond_0

    .line 471
    invoke-direct {p0}, Landroid/widget/TimePicker;->onTimeChanged()V

    goto :goto_0

    .line 462
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TimePicker;->mIsAm:Z

    .line 463
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    .line 464
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 350
    iget-object v0, p0, Landroid/widget/TimePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    :goto_0
    return-void

    .line 353
    :cond_0
    iput-object p1, p0, Landroid/widget/TimePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 354
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TimePicker;->mTempCalendar:Ljava/util/Calendar;

    goto :goto_0
.end method

.method private setDividerText()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 532
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 533
    .local v1, "defaultLocale":Ljava/util/Locale;
    iget-boolean v6, p0, Landroid/widget/TimePicker;->mIs24HourView:Z

    if-eqz v6, :cond_1

    const-string v5, "Hm"

    .line 534
    .local v5, "skeleton":Ljava/lang/String;
    :goto_0
    invoke-static {v1, v5}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 537
    .local v0, "bestDateTimePattern":Ljava/lang/String;
    const/16 v6, 0x48

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 538
    .local v2, "hourIndex":I
    if-ne v2, v8, :cond_0

    .line 539
    const/16 v6, 0x68

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 541
    :cond_0
    if-ne v2, v8, :cond_2

    .line 543
    const-string v4, ":"

    .line 552
    .local v4, "separatorText":Ljava/lang/String;
    :goto_1
    iget-object v6, p0, Landroid/widget/TimePicker;->mDivider:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 553
    return-void

    .line 533
    .end local v0    # "bestDateTimePattern":Ljava/lang/String;
    .end local v2    # "hourIndex":I
    .end local v4    # "separatorText":Ljava/lang/String;
    .end local v5    # "skeleton":Ljava/lang/String;
    :cond_1
    const-string v5, "hm"

    goto :goto_0

    .line 545
    .restart local v0    # "bestDateTimePattern":Ljava/lang/String;
    .restart local v2    # "hourIndex":I
    .restart local v5    # "skeleton":Ljava/lang/String;
    :cond_2
    const/16 v6, 0x6d

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 546
    .local v3, "minuteIndex":I
    if-ne v3, v8, :cond_3

    .line 547
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "separatorText":Ljava/lang/String;
    goto :goto_1

    .line 549
    .end local v4    # "separatorText":Ljava/lang/String;
    :cond_3
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "separatorText":Ljava/lang/String;
    goto :goto_1
.end method

.method private trySetContentDescription(Landroid/view/View;II)V
    .locals 2
    .param p1, "root"    # Landroid/view/View;
    .param p2, "viewId"    # I
    .param p3, "contDescResId"    # I

    .prologue
    .line 674
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 675
    .local v0, "target":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 676
    iget-object v1, p0, Landroid/widget/TimePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 678
    :cond_0
    return-void
.end method

.method private updateAmPmControl()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 627
    invoke-virtual {p0}, Landroid/widget/TimePicker;->is24HourView()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 628
    iget-object v1, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    if-eqz v1, :cond_0

    .line 629
    iget-object v1, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setVisibility(I)V

    .line 643
    :goto_0
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/widget/TimePicker;->sendAccessibilityEvent(I)V

    .line 644
    return-void

    .line 631
    :cond_0
    iget-object v1, p0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 634
    :cond_1
    iget-boolean v2, p0, Landroid/widget/TimePicker;->mIsAm:Z

    if-eqz v2, :cond_2

    move v0, v1

    .line 635
    .local v0, "index":I
    :goto_1
    iget-object v2, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    if-eqz v2, :cond_3

    .line 636
    iget-object v2, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 637
    iget-object v2, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v1}, Landroid/widget/NumberPicker;->setVisibility(I)V

    goto :goto_0

    .line 634
    .end local v0    # "index":I
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 639
    .restart local v0    # "index":I
    :cond_3
    iget-object v2, p0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    iget-object v3, p0, Landroid/widget/TimePicker;->mAmPmStrings:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 640
    iget-object v2, p0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateHourControl()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 596
    invoke-virtual {p0}, Landroid/widget/TimePicker;->is24HourView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 598
    iget-char v0, p0, Landroid/widget/TimePicker;->mHourFormat:C

    const/16 v1, 0x6b

    if-ne v0, v1, :cond_0

    .line 599
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 600
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 615
    :goto_0
    iget-object v1, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    iget-boolean v0, p0, Landroid/widget/TimePicker;->mHourWithTwoDigit:Z

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/widget/NumberPicker;->getTwoDigitFormatter()Landroid/widget/NumberPicker$Formatter;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 616
    return-void

    .line 602
    :cond_0
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 603
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_0

    .line 607
    :cond_1
    iget-char v0, p0, Landroid/widget/TimePicker;->mHourFormat:C

    const/16 v1, 0x4b

    if-ne v0, v1, :cond_2

    .line 608
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 609
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_0

    .line 611
    :cond_2
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 612
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_0

    .line 615
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateInputState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 686
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 687
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 688
    iget-object v1, p0, Landroid/widget/TimePicker;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 689
    iget-object v1, p0, Landroid/widget/TimePicker;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 690
    invoke-virtual {p0}, Landroid/widget/TimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 699
    :cond_0
    :goto_0
    return-void

    .line 691
    :cond_1
    iget-object v1, p0, Landroid/widget/TimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 692
    iget-object v1, p0, Landroid/widget/TimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 693
    invoke-virtual {p0}, Landroid/widget/TimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 694
    :cond_2
    iget-object v1, p0, Landroid/widget/TimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 695
    iget-object v1, p0, Landroid/widget/TimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 696
    invoke-virtual {p0}, Landroid/widget/TimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private updateMinuteControl()V
    .locals 2

    .prologue
    .line 619
    invoke-virtual {p0}, Landroid/widget/TimePicker;->is24HourView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Landroid/widget/TimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 624
    :goto_0
    return-void

    .line 622
    :cond_0
    iget-object v0, p0, Landroid/widget/TimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 562
    invoke-virtual {p0, p1}, Landroid/widget/TimePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 563
    const/4 v0, 0x1

    return v0
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getCurrentHour()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 432
    iget-object v1, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    .line 433
    .local v0, "currentHour":I
    invoke-virtual {p0}, Landroid/widget/TimePicker;->is24HourView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 434
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 438
    :goto_0
    return-object v1

    .line 435
    :cond_0
    iget-boolean v1, p0, Landroid/widget/TimePicker;->mIsAm:Z

    if-eqz v1, :cond_1

    .line 436
    rem-int/lit8 v1, v0, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 438
    :cond_1
    rem-int/lit8 v1, v0, 0xc

    add-int/lit8 v1, v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public is24HourView()Z
    .locals 1

    .prologue
    .line 502
    iget-boolean v0, p0, Landroid/widget/TimePicker;->mIs24HourView:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 335
    iget-boolean v0, p0, Landroid/widget/TimePicker;->mIsEnabled:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 340
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 341
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Landroid/widget/TimePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 342
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 585
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 586
    const-class v0, Landroid/widget/TimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 587
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 591
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 592
    const-class v0, Landroid/widget/TimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 593
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 568
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 570
    const/4 v0, 0x1

    .line 571
    .local v0, "flags":I
    iget-boolean v2, p0, Landroid/widget/TimePicker;->mIs24HourView:Z

    if-eqz v2, :cond_0

    .line 572
    or-int/lit16 v0, v0, 0x80

    .line 576
    :goto_0
    iget-object v2, p0, Landroid/widget/TimePicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 v3, 0xb

    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 577
    iget-object v2, p0, Landroid/widget/TimePicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 578
    iget-object v2, p0, Landroid/widget/TimePicker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/widget/TimePicker;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 580
    .local v1, "selectedDateUtterance":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 581
    return-void

    .line 574
    .end local v1    # "selectedDateUtterance":Ljava/lang/String;
    :cond_0
    or-int/lit8 v0, v0, 0x40

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 413
    move-object v0, p1

    check-cast v0, Landroid/widget/TimePicker$SavedState;

    .line 414
    .local v0, "ss":Landroid/widget/TimePicker$SavedState;
    invoke-virtual {v0}, Landroid/widget/TimePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 415
    invoke-virtual {v0}, Landroid/widget/TimePicker$SavedState;->getHour()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 416
    invoke-virtual {v0}, Landroid/widget/TimePicker$SavedState;->getMinute()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 417
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 407
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 408
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Landroid/widget/TimePicker$SavedState;

    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/widget/TimePicker$SavedState;-><init>(Landroid/os/Parcelable;IILandroid/widget/TimePicker$1;)V

    return-object v1
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "currentHour"    # Ljava/lang/Integer;

    .prologue
    .line 446
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;Z)V

    .line 447
    return-void
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "currentMinute"    # Ljava/lang/Integer;

    .prologue
    .line 516
    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 521
    :goto_0
    return-void

    .line 519
    :cond_0
    iget-object v0, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 520
    invoke-direct {p0}, Landroid/widget/TimePicker;->onTimeChanged()V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 316
    iget-boolean v0, p0, Landroid/widget/TimePicker;->mIsEnabled:Z

    if-ne v0, p1, :cond_0

    .line 331
    :goto_0
    return-void

    .line 319
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 320
    iget-object v0, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 321
    iget-object v0, p0, Landroid/widget/TimePicker;->mDivider:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Landroid/widget/TimePicker;->mDivider:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 324
    :cond_1
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 325
    iget-object v0, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    if-eqz v0, :cond_2

    .line 326
    iget-object v0, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 330
    :goto_1
    iput-boolean p1, p0, Landroid/widget/TimePicker;->mIsEnabled:Z

    goto :goto_0

    .line 328
    :cond_2
    iget-object v0, p0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "is24HourView"    # Ljava/lang/Boolean;

    .prologue
    .line 481
    iget-boolean v1, p0, Landroid/widget/TimePicker;->mIs24HourView:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 496
    :goto_0
    return-void

    .line 485
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 487
    .local v0, "currentHour":I
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/TimePicker;->mIs24HourView:Z

    .line 488
    invoke-direct {p0}, Landroid/widget/TimePicker;->getHourFormatData()V

    .line 489
    invoke-direct {p0}, Landroid/widget/TimePicker;->updateHourControl()V

    .line 493
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;Z)V

    .line 494
    invoke-direct {p0}, Landroid/widget/TimePicker;->updateMinuteControl()V

    .line 495
    invoke-direct {p0}, Landroid/widget/TimePicker;->updateAmPmControl()V

    goto :goto_0
.end method

.method public setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V
    .locals 0
    .param p1, "onTimeChangedListener"    # Landroid/widget/TimePicker$OnTimeChangedListener;

    .prologue
    .line 425
    iput-object p1, p0, Landroid/widget/TimePicker;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    .line 426
    return-void
.end method
