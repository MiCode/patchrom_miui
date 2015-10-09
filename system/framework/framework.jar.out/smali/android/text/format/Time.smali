.class public Landroid/text/format/Time;
.super Ljava/lang/Object;
.source "Time.java"


# static fields
.field private static final DAYS_PER_MONTH:[I

.field public static final EPOCH_JULIAN_DAY:I = 0x253d8c

.field public static final FRIDAY:I = 0x5

.field public static final HOUR:I = 0x3

.field public static final MINUTE:I = 0x2

.field public static final MONDAY:I = 0x1

.field public static final MONDAY_BEFORE_JULIAN_EPOCH:I = 0x253d89

.field public static final MONTH:I = 0x5

.field public static final MONTH_DAY:I = 0x4

.field public static final SATURDAY:I = 0x6

.field public static final SECOND:I = 0x1

.field public static final SUNDAY:I = 0x0

.field public static final THURSDAY:I = 0x4

.field public static final TIMEZONE_UTC:Ljava/lang/String; = "UTC"

.field public static final TUESDAY:I = 0x2

.field public static final WEDNESDAY:I = 0x3

.field public static final WEEK_DAY:I = 0x7

.field public static final WEEK_NUM:I = 0x9

.field public static final YEAR:I = 0x6

.field public static final YEAR_DAY:I = 0x8

.field private static final Y_M_D:Ljava/lang/String; = "%Y-%m-%d"

.field private static final Y_M_D_T_H_M_S_000:Ljava/lang/String; = "%Y-%m-%dT%H:%M:%S.000"

.field private static final Y_M_D_T_H_M_S_000_Z:Ljava/lang/String; = "%Y-%m-%dT%H:%M:%S.000Z"

.field private static sAm:Ljava/lang/String;

.field private static sDateCommand:Ljava/lang/String;

.field private static sDateOnlyFormat:Ljava/lang/String;

.field private static sDateTimeFormat:Ljava/lang/String;

.field private static sLocale:Ljava/util/Locale;

.field private static sLongMonths:[Ljava/lang/String;

.field private static sLongStandaloneMonths:[Ljava/lang/String;

.field private static sLongWeekdays:[Ljava/lang/String;

.field private static sPm:Ljava/lang/String;

.field private static sShortMonths:[Ljava/lang/String;

.field private static sShortWeekdays:[Ljava/lang/String;

.field private static final sThursdayOffset:[I

.field private static sTimeOnlyFormat:Ljava/lang/String;

.field private static sZeroDigit:C


# instance fields
.field public allDay:Z

.field public gmtoff:J

.field public hour:I

.field public isDst:I

.field public minute:I

.field public month:I

.field public monthDay:I

.field public second:I

.field public timezone:Ljava/lang/String;

.field public weekDay:I

.field public year:I

.field public yearDay:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 157
    const-string v0, "%a %b %e %H:%M:%S %Z %Y"

    sput-object v0, Landroid/text/format/Time;->sDateCommand:Ljava/lang/String;

    .line 220
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/text/format/Time;->DAYS_PER_MONTH:[I

    .line 639
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/text/format/Time;->sThursdayOffset:[I

    return-void

    .line 220
    :array_0
    .array-data 4
        0x1f
        0x1c
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
    .end array-data

    .line 639
    :array_1
    .array-data 4
        -0x3
        0x3
        0x2
        0x1
        0x0
        -0x1
        -0x2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 182
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public constructor <init>(Landroid/text/format/Time;)V
    .locals 0
    .param p1, "other"    # Landroid/text/format/Time;

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    invoke-virtual {p0, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 193
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "timezone"    # Ljava/lang/String;

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    if-nez p1, :cond_0

    .line 167
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "timezone is null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    iput-object p1, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 170
    const/16 v0, 0x7b2

    iput v0, p0, Landroid/text/format/Time;->year:I

    .line 171
    const/4 v0, 0x1

    iput v0, p0, Landroid/text/format/Time;->monthDay:I

    .line 174
    const/4 v0, -0x1

    iput v0, p0, Landroid/text/format/Time;->isDst:I

    .line 175
    return-void
.end method

.method public static compare(Landroid/text/format/Time;Landroid/text/format/Time;)I
    .locals 2
    .param p0, "a"    # Landroid/text/format/Time;
    .param p1, "b"    # Landroid/text/format/Time;

    .prologue
    .line 302
    if-nez p0, :cond_0

    .line 303
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "a == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_0
    if-nez p1, :cond_1

    .line 305
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "b == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_1
    invoke-static {p0, p1}, Landroid/text/format/Time;->nativeCompare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v0

    return v0
.end method

.method private native format1(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static getCurrentTimezone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 477
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJulianDay(JJ)I
    .locals 8
    .param p0, "millis"    # J
    .param p2, "gmtoff"    # J

    .prologue
    .line 733
    const-wide/16 v4, 0x3e8

    mul-long v2, p2, v4

    .line 734
    .local v2, "offsetMillis":J
    add-long v4, p0, v2

    const-wide/32 v6, 0x5265c00

    div-long v0, v4, v6

    .line 735
    .local v0, "julianDay":J
    long-to-int v4, v0

    const v5, 0x253d8c    # 3.419992E-39f

    add-int/2addr v4, v5

    return v4
.end method

.method public static getJulianMondayFromWeeksSinceEpoch(I)I
    .locals 2
    .param p0, "week"    # I

    .prologue
    .line 811
    const v0, 0x253d89

    mul-int/lit8 v1, p0, 0x7

    add-int/2addr v0, v1

    return v0
.end method

.method public static getWeeksSinceEpochFromJulianDay(II)I
    .locals 3
    .param p0, "julianDay"    # I
    .param p1, "firstDayOfWeek"    # I

    .prologue
    .line 792
    rsub-int/lit8 v0, p1, 0x4

    .line 793
    .local v0, "diff":I
    if-gez v0, :cond_0

    .line 794
    add-int/lit8 v0, v0, 0x7

    .line 796
    :cond_0
    const v2, 0x253d8c    # 3.419992E-39f

    sub-int v1, v2, v0

    .line 797
    .local v1, "refDay":I
    sub-int v2, p0, v1

    div-int/lit8 v2, v2, 0x7

    return v2
.end method

.method public static isEpoch(Landroid/text/format/Time;)Z
    .locals 5
    .param p0, "time"    # Landroid/text/format/Time;

    .prologue
    const/4 v2, 0x1

    .line 712
    invoke-virtual {p0, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .line 713
    .local v0, "millis":J
    const-wide/16 v3, 0x0

    invoke-static {v0, v1, v3, v4}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v3

    const v4, 0x253d8c    # 3.419992E-39f

    if-ne v3, v4, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private localizeDigits(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 357
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 358
    .local v2, "length":I
    sget-char v5, Landroid/text/format/Time;->sZeroDigit:C

    add-int/lit8 v3, v5, -0x30

    .line 359
    .local v3, "offsetToLocalizedDigits":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 360
    .local v4, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 361
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 362
    .local v0, "ch":C
    const/16 v5, 0x30

    if-lt v0, v5, :cond_0

    const/16 v5, 0x39

    if-gt v0, v5, :cond_0

    .line 363
    add-int v5, v0, v3

    int-to-char v0, v5

    .line 365
    :cond_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 360
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 367
    .end local v0    # "ch":C
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static native nativeCompare(Landroid/text/format/Time;Landroid/text/format/Time;)I
.end method

.method private native nativeParse(Ljava/lang/String;)Z
.end method

.method private native nativeParse3339(Ljava/lang/String;)Z
.end method


# virtual methods
.method public after(Landroid/text/format/Time;)Z
    .locals 1
    .param p1, "that"    # Landroid/text/format/Time;

    .prologue
    .line 631
    invoke-static {p0, p1}, Landroid/text/format/Time;->compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public before(Landroid/text/format/Time;)Z
    .locals 1
    .param p1, "that"    # Landroid/text/format/Time;

    .prologue
    .line 619
    invoke-static {p0, p1}, Landroid/text/format/Time;->compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clear(Ljava/lang/String;)V
    .locals 2
    .param p1, "timezone"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 271
    if-nez p1, :cond_0

    .line 272
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "timezone is null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_0
    iput-object p1, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 275
    iput-boolean v0, p0, Landroid/text/format/Time;->allDay:Z

    .line 276
    iput v0, p0, Landroid/text/format/Time;->second:I

    .line 277
    iput v0, p0, Landroid/text/format/Time;->minute:I

    .line 278
    iput v0, p0, Landroid/text/format/Time;->hour:I

    .line 279
    iput v0, p0, Landroid/text/format/Time;->monthDay:I

    .line 280
    iput v0, p0, Landroid/text/format/Time;->month:I

    .line 281
    iput v0, p0, Landroid/text/format/Time;->year:I

    .line 282
    iput v0, p0, Landroid/text/format/Time;->weekDay:I

    .line 283
    iput v0, p0, Landroid/text/format/Time;->yearDay:I

    .line 284
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/text/format/Time;->gmtoff:J

    .line 285
    const/4 v0, -0x1

    iput v0, p0, Landroid/text/format/Time;->isDst:I

    .line 286
    return-void
.end method

.method public format(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 321
    const-class v5, Landroid/text/format/Time;

    monitor-enter v5

    .line 322
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 324
    .local v0, "locale":Ljava/util/Locale;
    sget-object v4, Landroid/text/format/Time;->sLocale:Ljava/util/Locale;

    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    sget-object v4, Landroid/text/format/Time;->sLocale:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 325
    :cond_0
    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v1

    .line 327
    .local v1, "localeData":Llibcore/icu/LocaleData;
    iget-object v4, v1, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v4, v4, v6

    sput-object v4, Landroid/text/format/Time;->sAm:Ljava/lang/String;

    .line 328
    iget-object v4, v1, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v4, v4, v6

    sput-object v4, Landroid/text/format/Time;->sPm:Ljava/lang/String;

    .line 329
    iget-char v4, v1, Llibcore/icu/LocaleData;->zeroDigit:C

    sput-char v4, Landroid/text/format/Time;->sZeroDigit:C

    .line 331
    iget-object v4, v1, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    sput-object v4, Landroid/text/format/Time;->sShortMonths:[Ljava/lang/String;

    .line 332
    iget-object v4, v1, Llibcore/icu/LocaleData;->longMonthNames:[Ljava/lang/String;

    sput-object v4, Landroid/text/format/Time;->sLongMonths:[Ljava/lang/String;

    .line 333
    iget-object v4, v1, Llibcore/icu/LocaleData;->longStandAloneMonthNames:[Ljava/lang/String;

    sput-object v4, Landroid/text/format/Time;->sLongStandaloneMonths:[Ljava/lang/String;

    .line 334
    iget-object v4, v1, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    sput-object v4, Landroid/text/format/Time;->sShortWeekdays:[Ljava/lang/String;

    .line 335
    iget-object v4, v1, Llibcore/icu/LocaleData;->longWeekdayNames:[Ljava/lang/String;

    sput-object v4, Landroid/text/format/Time;->sLongWeekdays:[Ljava/lang/String;

    .line 337
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 338
    .local v2, "r":Landroid/content/res/Resources;
    sget v4, Lcom/android/internal/R$string;->time_of_day:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Landroid/text/format/Time;->sTimeOnlyFormat:Ljava/lang/String;

    .line 339
    sget v4, Lcom/android/internal/R$string;->month_day_year:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Landroid/text/format/Time;->sDateOnlyFormat:Ljava/lang/String;

    .line 340
    sget v4, Lcom/android/internal/R$string;->date_and_time:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Landroid/text/format/Time;->sDateTimeFormat:Ljava/lang/String;

    .line 342
    sput-object v0, Landroid/text/format/Time;->sLocale:Ljava/util/Locale;

    .line 345
    .end local v1    # "localeData":Llibcore/icu/LocaleData;
    .end local v2    # "r":Landroid/content/res/Resources;
    :cond_1
    invoke-direct {p0, p1}, Landroid/text/format/Time;->format1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 346
    .local v3, "result":Ljava/lang/String;
    sget-char v4, Landroid/text/format/Time;->sZeroDigit:C

    const/16 v6, 0x30

    if-eq v4, v6, :cond_2

    .line 347
    invoke-direct {p0, v3}, Landroid/text/format/Time;->localizeDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 349
    :cond_2
    monitor-exit v5

    return-object v3

    .line 350
    .end local v0    # "locale":Ljava/util/Locale;
    .end local v3    # "result":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public native format2445()Ljava/lang/String;
.end method

.method public format3339(Z)Ljava/lang/String;
    .locals 10
    .param p1, "allDay"    # Z

    .prologue
    .line 689
    if-eqz p1, :cond_0

    .line 690
    const-string v5, "%Y-%m-%d"

    invoke-virtual {p0, v5}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 700
    :goto_0
    return-object v5

    .line 691
    :cond_0
    const-string v5, "UTC"

    iget-object v6, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 692
    const-string v5, "%Y-%m-%dT%H:%M:%S.000Z"

    invoke-virtual {p0, v5}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 694
    :cond_1
    const-string v5, "%Y-%m-%dT%H:%M:%S.000"

    invoke-virtual {p0, v5}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 695
    .local v0, "base":Ljava/lang/String;
    iget-wide v5, p0, Landroid/text/format/Time;->gmtoff:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-gez v5, :cond_2

    const-string v4, "-"

    .line 696
    .local v4, "sign":Ljava/lang/String;
    :goto_1
    iget-wide v5, p0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    long-to-int v3, v5

    .line 697
    .local v3, "offset":I
    rem-int/lit16 v5, v3, 0xe10

    div-int/lit8 v2, v5, 0x3c

    .line 698
    .local v2, "minutes":I
    div-int/lit16 v1, v3, 0xe10

    .line 700
    .local v1, "hours":I
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%s%s%02d:%02d"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    const/4 v8, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 695
    .end local v1    # "hours":I
    .end local v2    # "minutes":I
    .end local v3    # "offset":I
    .end local v4    # "sign":Ljava/lang/String;
    :cond_2
    const-string v4, "+"

    goto :goto_1
.end method

.method public getActualMaximum(I)I
    .locals 5
    .param p1, "field"    # I

    .prologue
    const/16 v0, 0x3b

    const/16 v2, 0x1c

    .line 231
    packed-switch p1, :pswitch_data_0

    .line 261
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad field="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    move v2, v0

    .line 256
    :cond_0
    :goto_0
    return v2

    :pswitch_1
    move v2, v0

    .line 235
    goto :goto_0

    .line 237
    :pswitch_2
    const/16 v2, 0x17

    goto :goto_0

    .line 239
    :pswitch_3
    sget-object v3, Landroid/text/format/Time;->DAYS_PER_MONTH:[I

    iget v4, p0, Landroid/text/format/Time;->month:I

    aget v0, v3, v4

    .line 240
    .local v0, "n":I
    if-eq v0, v2, :cond_1

    move v2, v0

    .line 241
    goto :goto_0

    .line 243
    :cond_1
    iget v1, p0, Landroid/text/format/Time;->year:I

    .line 244
    .local v1, "y":I
    rem-int/lit8 v3, v1, 0x4

    if-nez v3, :cond_0

    rem-int/lit8 v3, v1, 0x64

    if-nez v3, :cond_2

    rem-int/lit16 v3, v1, 0x190

    if-nez v3, :cond_0

    :cond_2
    const/16 v2, 0x1d

    goto :goto_0

    .line 248
    .end local v0    # "n":I
    .end local v1    # "y":I
    :pswitch_4
    const/16 v2, 0xb

    goto :goto_0

    .line 250
    :pswitch_5
    const/16 v2, 0x7f5

    goto :goto_0

    .line 252
    :pswitch_6
    const/4 v2, 0x6

    goto :goto_0

    .line 254
    :pswitch_7
    iget v1, p0, Landroid/text/format/Time;->year:I

    .line 256
    .restart local v1    # "y":I
    rem-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_4

    rem-int/lit8 v2, v1, 0x64

    if-nez v2, :cond_3

    rem-int/lit16 v2, v1, 0x190

    if-nez v2, :cond_4

    :cond_3
    const/16 v2, 0x16d

    goto :goto_0

    :cond_4
    const/16 v2, 0x16c

    goto :goto_0

    .line 259
    .end local v1    # "y":I
    :pswitch_8
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "WEEK_NUM not implemented"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 231
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public getWeekNumber()I
    .locals 5

    .prologue
    .line 663
    iget v2, p0, Landroid/text/format/Time;->yearDay:I

    sget-object v3, Landroid/text/format/Time;->sThursdayOffset:[I

    iget v4, p0, Landroid/text/format/Time;->weekDay:I

    aget v3, v3, v4

    add-int v0, v2, v3

    .line 666
    .local v0, "closestThursday":I
    if-ltz v0, :cond_0

    const/16 v2, 0x16c

    if-gt v0, v2, :cond_0

    .line 667
    div-int/lit8 v2, v0, 0x7

    add-int/lit8 v2, v2, 0x1

    .line 674
    :goto_0
    return v2

    .line 671
    :cond_0
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1, p0}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 672
    .local v1, "temp":Landroid/text/format/Time;
    iget v2, v1, Landroid/text/format/Time;->monthDay:I

    sget-object v3, Landroid/text/format/Time;->sThursdayOffset:[I

    iget v4, p0, Landroid/text/format/Time;->weekDay:I

    aget v3, v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Landroid/text/format/Time;->monthDay:I

    .line 673
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 674
    iget v2, v1, Landroid/text/format/Time;->yearDay:I

    div-int/lit8 v2, v2, 0x7

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public native normalize(Z)J
.end method

.method public parse(Ljava/lang/String;)Z
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 414
    if-nez p1, :cond_0

    .line 415
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "time string is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 417
    :cond_0
    invoke-direct {p0, p1}, Landroid/text/format/Time;->nativeParse(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 418
    const-string v0, "UTC"

    iput-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 419
    const/4 v0, 0x1

    .line 421
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parse3339(Ljava/lang/String;)Z
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 461
    if-nez p1, :cond_0

    .line 462
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "time string is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 464
    :cond_0
    invoke-direct {p0, p1}, Landroid/text/format/Time;->nativeParse3339(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 465
    const-string v0, "UTC"

    iput-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 466
    const/4 v0, 0x1

    .line 468
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(III)V
    .locals 2
    .param p1, "monthDay"    # I
    .param p2, "month"    # I
    .param p3, "year"    # I

    .prologue
    const/4 v1, 0x0

    .line 598
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/text/format/Time;->allDay:Z

    .line 599
    iput v1, p0, Landroid/text/format/Time;->second:I

    .line 600
    iput v1, p0, Landroid/text/format/Time;->minute:I

    .line 601
    iput v1, p0, Landroid/text/format/Time;->hour:I

    .line 602
    iput p1, p0, Landroid/text/format/Time;->monthDay:I

    .line 603
    iput p2, p0, Landroid/text/format/Time;->month:I

    .line 604
    iput p3, p0, Landroid/text/format/Time;->year:I

    .line 605
    iput v1, p0, Landroid/text/format/Time;->weekDay:I

    .line 606
    iput v1, p0, Landroid/text/format/Time;->yearDay:I

    .line 607
    const/4 v0, -0x1

    iput v0, p0, Landroid/text/format/Time;->isDst:I

    .line 608
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/text/format/Time;->gmtoff:J

    .line 609
    return-void
.end method

.method public set(IIIIII)V
    .locals 2
    .param p1, "second"    # I
    .param p2, "minute"    # I
    .param p3, "hour"    # I
    .param p4, "monthDay"    # I
    .param p5, "month"    # I
    .param p6, "year"    # I

    .prologue
    const/4 v0, 0x0

    .line 575
    iput-boolean v0, p0, Landroid/text/format/Time;->allDay:Z

    .line 576
    iput p1, p0, Landroid/text/format/Time;->second:I

    .line 577
    iput p2, p0, Landroid/text/format/Time;->minute:I

    .line 578
    iput p3, p0, Landroid/text/format/Time;->hour:I

    .line 579
    iput p4, p0, Landroid/text/format/Time;->monthDay:I

    .line 580
    iput p5, p0, Landroid/text/format/Time;->month:I

    .line 581
    iput p6, p0, Landroid/text/format/Time;->year:I

    .line 582
    iput v0, p0, Landroid/text/format/Time;->weekDay:I

    .line 583
    iput v0, p0, Landroid/text/format/Time;->yearDay:I

    .line 584
    const/4 v0, -0x1

    iput v0, p0, Landroid/text/format/Time;->isDst:I

    .line 585
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/text/format/Time;->gmtoff:J

    .line 586
    return-void
.end method

.method public native set(J)V
.end method

.method public set(Landroid/text/format/Time;)V
    .locals 2
    .param p1, "that"    # Landroid/text/format/Time;

    .prologue
    .line 556
    iget-object v0, p1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    iput-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 557
    iget-boolean v0, p1, Landroid/text/format/Time;->allDay:Z

    iput-boolean v0, p0, Landroid/text/format/Time;->allDay:Z

    .line 558
    iget v0, p1, Landroid/text/format/Time;->second:I

    iput v0, p0, Landroid/text/format/Time;->second:I

    .line 559
    iget v0, p1, Landroid/text/format/Time;->minute:I

    iput v0, p0, Landroid/text/format/Time;->minute:I

    .line 560
    iget v0, p1, Landroid/text/format/Time;->hour:I

    iput v0, p0, Landroid/text/format/Time;->hour:I

    .line 561
    iget v0, p1, Landroid/text/format/Time;->monthDay:I

    iput v0, p0, Landroid/text/format/Time;->monthDay:I

    .line 562
    iget v0, p1, Landroid/text/format/Time;->month:I

    iput v0, p0, Landroid/text/format/Time;->month:I

    .line 563
    iget v0, p1, Landroid/text/format/Time;->year:I

    iput v0, p0, Landroid/text/format/Time;->year:I

    .line 564
    iget v0, p1, Landroid/text/format/Time;->weekDay:I

    iput v0, p0, Landroid/text/format/Time;->weekDay:I

    .line 565
    iget v0, p1, Landroid/text/format/Time;->yearDay:I

    iput v0, p0, Landroid/text/format/Time;->yearDay:I

    .line 566
    iget v0, p1, Landroid/text/format/Time;->isDst:I

    iput v0, p0, Landroid/text/format/Time;->isDst:I

    .line 567
    iget-wide v0, p1, Landroid/text/format/Time;->gmtoff:J

    iput-wide v0, p0, Landroid/text/format/Time;->gmtoff:J

    .line 568
    return-void
.end method

.method public setJulianDay(I)J
    .locals 9
    .param p1, "julianDay"    # I

    .prologue
    const/4 v8, 0x0

    .line 762
    const v4, 0x253d8c    # 3.419992E-39f

    sub-int v4, p1, v4

    int-to-long v4, v4

    const-wide/32 v6, 0x5265c00

    mul-long v2, v4, v6

    .line 763
    .local v2, "millis":J
    invoke-virtual {p0, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 767
    iget-wide v4, p0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 768
    .local v0, "approximateDay":I
    sub-int v1, p1, v0

    .line 769
    .local v1, "diff":I
    iget v4, p0, Landroid/text/format/Time;->monthDay:I

    add-int/2addr v4, v1

    iput v4, p0, Landroid/text/format/Time;->monthDay:I

    .line 772
    iput v8, p0, Landroid/text/format/Time;->hour:I

    .line 773
    iput v8, p0, Landroid/text/format/Time;->minute:I

    .line 774
    iput v8, p0, Landroid/text/format/Time;->second:I

    .line 775
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    .line 776
    return-wide v2
.end method

.method public native setToNow()V
.end method

.method public native switchTimezone(Ljava/lang/String;)V
.end method

.method public native toMillis(Z)J
.end method

.method public native toString()Ljava/lang/String;
.end method
