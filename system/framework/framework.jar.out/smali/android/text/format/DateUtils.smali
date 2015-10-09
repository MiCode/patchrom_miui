.class public Landroid/text/format/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# static fields
.field public static final ABBREV_MONTH_FORMAT:Ljava/lang/String; = "%b"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ABBREV_WEEKDAY_FORMAT:Ljava/lang/String; = "%a"

.field public static final DAY_IN_MILLIS:J = 0x5265c00L

.field public static final FORMAT_12HOUR:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_24HOUR:I = 0x80
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_ABBREV_ALL:I = 0x80000

.field public static final FORMAT_ABBREV_MONTH:I = 0x10000

.field public static final FORMAT_ABBREV_RELATIVE:I = 0x40000

.field public static final FORMAT_ABBREV_TIME:I = 0x4000

.field public static final FORMAT_ABBREV_WEEKDAY:I = 0x8000

.field public static final FORMAT_CAP_AMPM:I = 0x100
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_CAP_MIDNIGHT:I = 0x1000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_CAP_NOON:I = 0x400
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_CAP_NOON_MIDNIGHT:I = 0x1400
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_NO_MIDNIGHT:I = 0x800

.field public static final FORMAT_NO_MONTH_DAY:I = 0x20

.field public static final FORMAT_NO_NOON:I = 0x200

.field public static final FORMAT_NO_NOON_MIDNIGHT:I = 0xa00
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_NO_YEAR:I = 0x8

.field public static final FORMAT_NUMERIC_DATE:I = 0x20000

.field public static final FORMAT_SHOW_DATE:I = 0x10

.field public static final FORMAT_SHOW_TIME:I = 0x1

.field public static final FORMAT_SHOW_WEEKDAY:I = 0x2

.field public static final FORMAT_SHOW_YEAR:I = 0x4

.field public static final FORMAT_UTC:I = 0x2000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HOUR_IN_MILLIS:J = 0x36ee80L

.field public static final HOUR_MINUTE_24:Ljava/lang/String; = "%H:%M"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LENGTH_LONG:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LENGTH_MEDIUM:I = 0x14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LENGTH_SHORT:I = 0x1e
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LENGTH_SHORTER:I = 0x28
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LENGTH_SHORTEST:I = 0x32
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MINUTE_IN_MILLIS:J = 0xea60L

.field public static final MONTH_DAY_FORMAT:Ljava/lang/String; = "%-d"

.field public static final MONTH_FORMAT:Ljava/lang/String; = "%B"

.field public static final NUMERIC_MONTH_FORMAT:Ljava/lang/String; = "%m"

.field public static final SECOND_IN_MILLIS:J = 0x3e8L

.field public static final WEEKDAY_FORMAT:Ljava/lang/String; = "%A"

.field public static final WEEK_IN_MILLIS:J = 0x240c8400L

.field public static final YEAR_FORMAT:Ljava/lang/String; = "%Y"

.field public static final YEAR_FORMAT_TWO_DIGITS:Ljava/lang/String; = "%g"

.field public static final YEAR_IN_MILLIS:J = 0x7528ad000L

.field private static sElapsedFormatHMMSS:Ljava/lang/String;

.field private static sElapsedFormatMMSS:Ljava/lang/String;

.field private static sLastConfig:Landroid/content/res/Configuration;

.field private static final sLock:Ljava/lang/Object;

.field private static sNowTime:Landroid/text/format/Time;

.field private static sThenTime:Landroid/text/format/Time;

.field public static final sameMonthTable:[I

.field public static final sameYearTable:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/format/DateUtils;->sLock:Ljava/lang/Object;

    .line 118
    sput-object v1, Landroid/text/format/DateUtils;->sameYearTable:[I

    .line 121
    sput-object v1, Landroid/text/format/DateUtils;->sameMonthTable:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "startMillis"    # J
    .param p3, "endMillis"    # J
    .param p5, "flags"    # I

    .prologue
    .line 627
    new-instance v1, Ljava/util/Formatter;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .local v1, "f":Ljava/util/Formatter;
    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    .line 628
    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "formatter"    # Ljava/util/Formatter;
    .param p2, "startMillis"    # J
    .param p4, "endMillis"    # J
    .param p6, "flags"    # I

    .prologue
    .line 651
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    return-object v0
.end method

.method public static formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "formatter"    # Ljava/util/Formatter;
    .param p2, "startMillis"    # J
    .param p4, "endMillis"    # J
    .param p6, "flags"    # I
    .param p7, "timeZone"    # Ljava/lang/String;

    .prologue
    .line 822
    and-int/lit16 v2, p6, 0xc1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 823
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x80

    :goto_0
    or-int/2addr p6, v2

    .line 826
    :cond_0
    invoke-static/range {p2 .. p7}, Llibcore/icu/DateIntervalFormat;->formatDateRange(JJILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 828
    .local v1, "range":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Ljava/util/Formatter;->out()Ljava/lang/Appendable;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 832
    return-object p1

    .line 823
    .end local v1    # "range":Ljava/lang/String;
    :cond_1
    const/16 v2, 0x40

    goto :goto_0

    .line 829
    .restart local v1    # "range":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 830
    .local v0, "impossible":Ljava/io/IOException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public static formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "millis"    # J
    .param p3, "flags"    # I

    .prologue
    .line 878
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    move v5, p3

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDuration(J)Ljava/lang/CharSequence;
    .locals 12
    .param p0, "millis"    # J

    .prologue
    const-wide/32 v10, 0x36ee80

    const-wide/32 v6, 0xea60

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 484
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 485
    .local v2, "res":Landroid/content/res/Resources;
    cmp-long v4, p0, v10

    if-ltz v4, :cond_0

    .line 486
    const-wide/32 v4, 0x1b7740

    add-long/2addr v4, p0

    div-long/2addr v4, v10

    long-to-int v0, v4

    .line 487
    .local v0, "hours":I
    sget v4, Lcom/android/internal/R$plurals;->duration_hours:I

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v2, v4, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 495
    .end local v0    # "hours":I
    :goto_0
    return-object v4

    .line 489
    :cond_0
    cmp-long v4, p0, v6

    if-ltz v4, :cond_1

    .line 490
    const-wide/16 v4, 0x7530

    add-long/2addr v4, p0

    div-long/2addr v4, v6

    long-to-int v1, v4

    .line 491
    .local v1, "minutes":I
    sget v4, Lcom/android/internal/R$plurals;->duration_minutes:I

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v2, v4, v1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 494
    .end local v1    # "minutes":I
    :cond_1
    const-wide/16 v4, 0x1f4

    add-long/2addr v4, p0

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v3, v4

    .line 495
    .local v3, "seconds":I
    sget v4, Lcom/android/internal/R$plurals;->duration_seconds:I

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v2, v4, v3, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static formatElapsedTime(J)Ljava/lang/String;
    .locals 1
    .param p0, "elapsedSeconds"    # J

    .prologue
    .line 506
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;
    .locals 12
    .param p0, "recycle"    # Ljava/lang/StringBuilder;
    .param p1, "elapsedSeconds"    # J

    .prologue
    .line 519
    const-wide/16 v1, 0x0

    .line 520
    .local v1, "hours":J
    const-wide/16 v3, 0x0

    .line 521
    .local v3, "minutes":J
    const-wide/16 v6, 0x0

    .line 522
    .local v6, "seconds":J
    const-wide/16 v8, 0xe10

    cmp-long v8, p1, v8

    if-ltz v8, :cond_0

    .line 523
    const-wide/16 v8, 0xe10

    div-long v1, p1, v8

    .line 524
    const-wide/16 v8, 0xe10

    mul-long/2addr v8, v1

    sub-long/2addr p1, v8

    .line 526
    :cond_0
    const-wide/16 v8, 0x3c

    cmp-long v8, p1, v8

    if-ltz v8, :cond_1

    .line 527
    const-wide/16 v8, 0x3c

    div-long v3, p1, v8

    .line 528
    const-wide/16 v8, 0x3c

    mul-long/2addr v8, v3

    sub-long/2addr p1, v8

    .line 530
    :cond_1
    move-wide v6, p1

    .line 534
    move-object v5, p0

    .line 535
    .local v5, "sb":Ljava/lang/StringBuilder;
    if-nez v5, :cond_2

    .line 536
    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5    # "sb":Ljava/lang/StringBuilder;
    const/16 v8, 0x8

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 543
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    :goto_0
    new-instance v0, Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v0, v5, v8}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 544
    .local v0, "f":Ljava/util/Formatter;
    invoke-static {}, Landroid/text/format/DateUtils;->initFormatStrings()V

    .line 545
    const-wide/16 v8, 0x0

    cmp-long v8, v1, v8

    if-lez v8, :cond_3

    .line 546
    sget-object v8, Landroid/text/format/DateUtils;->sElapsedFormatHMMSS:Ljava/lang/String;

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v0, v8, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v8

    .line 548
    :goto_1
    return-object v8

    .line 538
    .end local v0    # "f":Ljava/util/Formatter;
    :cond_2
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 548
    .restart local v0    # "f":Ljava/util/Formatter;
    :cond_3
    sget-object v8, Landroid/text/format/DateUtils;->sElapsedFormatMMSS:Ljava/lang/String;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v0, v8, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1
.end method

.method public static final formatSameDayTime(JJII)Ljava/lang/CharSequence;
    .locals 8
    .param p0, "then"    # J
    .param p2, "now"    # J
    .param p4, "dateStyle"    # I
    .param p5, "timeStyle"    # I

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 571
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    .line 572
    .local v2, "thenCal":Ljava/util/Calendar;
    invoke-virtual {v2, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 573
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 574
    .local v3, "thenDate":Ljava/util/Date;
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 575
    .local v1, "nowCal":Ljava/util/Calendar;
    invoke-virtual {v1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 579
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 582
    invoke-static {p5}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    .line 586
    .local v0, "f":Ljava/text/DateFormat;
    :goto_0
    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 584
    .end local v0    # "f":Ljava/text/DateFormat;
    :cond_0
    invoke-static {p4}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    .restart local v0    # "f":Ljava/text/DateFormat;
    goto :goto_0
.end method

.method public static getAMPMString(I)Ljava/lang/String;
    .locals 2
    .param p0, "ampm"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 215
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    iget-object v0, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    add-int/lit8 v1, p0, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getDayOfWeekString(II)Ljava/lang/String;
    .locals 3
    .param p0, "dayOfWeek"    # I
    .param p1, "abbrev"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 193
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .line 195
    .local v0, "d":Llibcore/icu/LocaleData;
    sparse-switch p1, :sswitch_data_0

    .line 201
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    .line 203
    .local v1, "names":[Ljava/lang/String;
    :goto_0
    aget-object v2, v1, p0

    return-object v2

    .line 196
    .end local v1    # "names":[Ljava/lang/String;
    :sswitch_0
    iget-object v1, v0, Llibcore/icu/LocaleData;->longWeekdayNames:[Ljava/lang/String;

    .restart local v1    # "names":[Ljava/lang/String;
    goto :goto_0

    .line 197
    .end local v1    # "names":[Ljava/lang/String;
    :sswitch_1
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    .restart local v1    # "names":[Ljava/lang/String;
    goto :goto_0

    .line 198
    .end local v1    # "names":[Ljava/lang/String;
    :sswitch_2
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    .restart local v1    # "names":[Ljava/lang/String;
    goto :goto_0

    .line 199
    .end local v1    # "names":[Ljava/lang/String;
    :sswitch_3
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    .restart local v1    # "names":[Ljava/lang/String;
    goto :goto_0

    .line 200
    .end local v1    # "names":[Ljava/lang/String;
    :sswitch_4
    iget-object v1, v0, Llibcore/icu/LocaleData;->tinyWeekdayNames:[Ljava/lang/String;

    .restart local v1    # "names":[Ljava/lang/String;
    goto :goto_0

    .line 195
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x28 -> :sswitch_3
        0x32 -> :sswitch_4
    .end sparse-switch
.end method

.method public static getMonthString(II)Ljava/lang/String;
    .locals 3
    .param p0, "month"    # I
    .param p1, "abbrev"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 231
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .line 233
    .local v0, "d":Llibcore/icu/LocaleData;
    sparse-switch p1, :sswitch_data_0

    .line 239
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    .line 241
    .local v1, "names":[Ljava/lang/String;
    :goto_0
    aget-object v2, v1, p0

    return-object v2

    .line 234
    .end local v1    # "names":[Ljava/lang/String;
    :sswitch_0
    iget-object v1, v0, Llibcore/icu/LocaleData;->longMonthNames:[Ljava/lang/String;

    .restart local v1    # "names":[Ljava/lang/String;
    goto :goto_0

    .line 235
    .end local v1    # "names":[Ljava/lang/String;
    :sswitch_1
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    .restart local v1    # "names":[Ljava/lang/String;
    goto :goto_0

    .line 236
    .end local v1    # "names":[Ljava/lang/String;
    :sswitch_2
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    .restart local v1    # "names":[Ljava/lang/String;
    goto :goto_0

    .line 237
    .end local v1    # "names":[Ljava/lang/String;
    :sswitch_3
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    .restart local v1    # "names":[Ljava/lang/String;
    goto :goto_0

    .line 238
    .end local v1    # "names":[Ljava/lang/String;
    :sswitch_4
    iget-object v1, v0, Llibcore/icu/LocaleData;->tinyMonthNames:[Ljava/lang/String;

    .restart local v1    # "names":[Ljava/lang/String;
    goto :goto_0

    .line 233
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x28 -> :sswitch_3
        0x32 -> :sswitch_4
    .end sparse-switch
.end method

.method public static getRelativeDateTimeString(Landroid/content/Context;JJJI)Ljava/lang/CharSequence;
    .locals 19
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "time"    # J
    .param p3, "minResolution"    # J
    .param p5, "transitionResolution"    # J
    .param p7, "flags"    # I

    .prologue
    .line 383
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v15

    .line 385
    .local v15, "r":Landroid/content/res/Resources;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 386
    .local v13, "now":J
    sub-long v3, v13, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    .line 391
    .local v11, "duration":J
    const-wide/32 v3, 0x240c8400

    cmp-long v3, p5, v3

    if-lez v3, :cond_1

    .line 392
    const-wide/32 p5, 0x240c8400

    .line 397
    :cond_0
    :goto_0
    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p1

    invoke-static/range {v3 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v18

    .line 400
    .local v18, "timeClause":Ljava/lang/CharSequence;
    cmp-long v3, v11, p5

    if-gez v3, :cond_2

    move-wide/from16 v3, p1

    move-wide v5, v13

    move-wide/from16 v7, p3

    move/from16 v9, p7

    .line 401
    invoke-static/range {v3 .. v9}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v16

    .line 402
    .local v16, "relativeClause":Ljava/lang/CharSequence;
    sget v3, Lcom/android/internal/R$string;->relative_time:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v16, v4, v5

    const/4 v5, 0x1

    aput-object v18, v4, v5

    invoke-virtual {v15, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 408
    .end local v16    # "relativeClause":Ljava/lang/CharSequence;
    .local v17, "result":Ljava/lang/String;
    :goto_1
    return-object v17

    .line 393
    .end local v17    # "result":Ljava/lang/String;
    .end local v18    # "timeClause":Ljava/lang/CharSequence;
    :cond_1
    const-wide/32 v3, 0x5265c00

    cmp-long v3, p5, v3

    if-gez v3, :cond_0

    .line 394
    const-wide/32 p5, 0x5265c00

    goto :goto_0

    .line 404
    .restart local v18    # "timeClause":Ljava/lang/CharSequence;
    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    move-result-object v10

    .line 405
    .local v10, "dateClause":Ljava/lang/CharSequence;
    sget v3, Lcom/android/internal/R$string;->date_time:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v10, v4, v5

    const/4 v5, 0x1

    aput-object v18, v4, v5

    invoke-virtual {v15, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .restart local v17    # "result":Ljava/lang/String;
    goto :goto_1
.end method

.method private static final getRelativeDayString(Landroid/content/res/Resources;JJ)Ljava/lang/String;
    .locals 14
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "day"    # J
    .param p3, "today"    # J

    .prologue
    .line 421
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget-object v6, v11, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 422
    .local v6, "locale":Ljava/util/Locale;
    if-nez v6, :cond_0

    .line 423
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    .line 427
    :cond_0
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    .line 428
    .local v10, "startTime":Landroid/text/format/Time;
    move-wide v0, p1

    invoke-virtual {v10, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 429
    iget-wide v11, v10, Landroid/text/format/Time;->gmtoff:J

    move-wide v0, p1

    invoke-static {v0, v1, v11, v12}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v9

    .line 431
    .local v9, "startDay":I
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 432
    .local v3, "currentTime":Landroid/text/format/Time;
    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 433
    iget-wide v11, v3, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v0, p3

    invoke-static {v0, v1, v11, v12}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    .line 435
    .local v2, "currentDay":I
    sub-int v11, v2, v9

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 436
    .local v4, "days":I
    cmp-long v11, p3, p1

    if-lez v11, :cond_1

    const/4 v7, 0x1

    .line 439
    .local v7, "past":Z
    :goto_0
    const/4 v11, 0x1

    if-ne v4, v11, :cond_3

    .line 440
    if-eqz v7, :cond_2

    .line 441
    invoke-static {v6}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v11

    iget-object v11, v11, Llibcore/icu/LocaleData;->yesterday:Ljava/lang/String;

    .line 457
    :goto_1
    return-object v11

    .line 436
    .end local v7    # "past":Z
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 443
    .restart local v7    # "past":Z
    :cond_2
    invoke-static {v6}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v11

    iget-object v11, v11, Llibcore/icu/LocaleData;->tomorrow:Ljava/lang/String;

    goto :goto_1

    .line 445
    :cond_3
    if-nez v4, :cond_4

    .line 446
    invoke-static {v6}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v11

    iget-object v11, v11, Llibcore/icu/LocaleData;->today:Ljava/lang/String;

    goto :goto_1

    .line 450
    :cond_4
    if-eqz v7, :cond_5

    .line 451
    sget v8, Lcom/android/internal/R$plurals;->num_days_ago:I

    .line 456
    .local v8, "resId":I
    :goto_2
    invoke-virtual {p0, v8, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v5

    .line 457
    .local v5, "format":Ljava/lang/String;
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v5, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    .line 453
    .end local v5    # "format":Ljava/lang/String;
    .end local v8    # "resId":I
    :cond_5
    sget v8, Lcom/android/internal/R$plurals;->in_num_days:I

    .restart local v8    # "resId":I
    goto :goto_2
.end method

.method public static getRelativeTimeSpanString(J)Ljava/lang/CharSequence;
    .locals 6
    .param p0, "startTime"    # J

    .prologue
    .line 251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    move-wide v0, p0

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;
    .locals 7
    .param p0, "time"    # J
    .param p2, "now"    # J
    .param p4, "minResolution"    # J

    .prologue
    .line 267
    const v6, 0x10014

    .local v6, "flags":I
    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    .line 268
    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;
    .locals 20
    .param p0, "time"    # J
    .param p2, "now"    # J
    .param p4, "minResolution"    # J
    .param p6, "flags"    # I

    .prologue
    .line 293
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v18

    .line 294
    .local v18, "r":Landroid/content/res/Resources;
    const/high16 v5, 0xc0000

    and-int v5, v5, p6

    if-eqz v5, :cond_0

    const/4 v11, 0x1

    .line 296
    .local v11, "abbrevRelative":Z
    :goto_0
    cmp-long v5, p2, p0

    if-ltz v5, :cond_1

    const/16 v17, 0x1

    .line 297
    .local v17, "past":Z
    :goto_1
    sub-long v5, p2, p0

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    .line 301
    .local v14, "duration":J
    const-wide/32 v5, 0xea60

    cmp-long v5, v14, v5

    if-gez v5, :cond_5

    const-wide/32 v5, 0xea60

    cmp-long v5, p4, v5

    if-gez v5, :cond_5

    .line 302
    const-wide/16 v5, 0x3e8

    div-long v12, v14, v5

    .line 303
    .local v12, "count":J
    if-eqz v17, :cond_3

    .line 304
    if-eqz v11, :cond_2

    .line 305
    sget v19, Lcom/android/internal/R$plurals;->abbrev_num_seconds_ago:I

    .line 354
    .local v19, "resId":I
    :goto_2
    long-to-int v5, v12

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v16

    .line 355
    .local v16, "format":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v16

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .end local v12    # "count":J
    .end local v16    # "format":Ljava/lang/String;
    .end local v19    # "resId":I
    :goto_3
    return-object v5

    .line 294
    .end local v11    # "abbrevRelative":Z
    .end local v14    # "duration":J
    .end local v17    # "past":Z
    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    .line 296
    .restart local v11    # "abbrevRelative":Z
    :cond_1
    const/16 v17, 0x0

    goto :goto_1

    .line 307
    .restart local v12    # "count":J
    .restart local v14    # "duration":J
    .restart local v17    # "past":Z
    :cond_2
    sget v19, Lcom/android/internal/R$plurals;->num_seconds_ago:I

    .restart local v19    # "resId":I
    goto :goto_2

    .line 310
    .end local v19    # "resId":I
    :cond_3
    if-eqz v11, :cond_4

    .line 311
    sget v19, Lcom/android/internal/R$plurals;->abbrev_in_num_seconds:I

    .restart local v19    # "resId":I
    goto :goto_2

    .line 313
    .end local v19    # "resId":I
    :cond_4
    sget v19, Lcom/android/internal/R$plurals;->in_num_seconds:I

    .restart local v19    # "resId":I
    goto :goto_2

    .line 316
    .end local v12    # "count":J
    .end local v19    # "resId":I
    :cond_5
    const-wide/32 v5, 0x36ee80

    cmp-long v5, v14, v5

    if-gez v5, :cond_9

    const-wide/32 v5, 0x36ee80

    cmp-long v5, p4, v5

    if-gez v5, :cond_9

    .line 317
    const-wide/32 v5, 0xea60

    div-long v12, v14, v5

    .line 318
    .restart local v12    # "count":J
    if-eqz v17, :cond_7

    .line 319
    if-eqz v11, :cond_6

    .line 320
    sget v19, Lcom/android/internal/R$plurals;->abbrev_num_minutes_ago:I

    .restart local v19    # "resId":I
    goto :goto_2

    .line 322
    .end local v19    # "resId":I
    :cond_6
    sget v19, Lcom/android/internal/R$plurals;->num_minutes_ago:I

    .restart local v19    # "resId":I
    goto :goto_2

    .line 325
    .end local v19    # "resId":I
    :cond_7
    if-eqz v11, :cond_8

    .line 326
    sget v19, Lcom/android/internal/R$plurals;->abbrev_in_num_minutes:I

    .restart local v19    # "resId":I
    goto :goto_2

    .line 328
    .end local v19    # "resId":I
    :cond_8
    sget v19, Lcom/android/internal/R$plurals;->in_num_minutes:I

    .restart local v19    # "resId":I
    goto :goto_2

    .line 331
    .end local v12    # "count":J
    .end local v19    # "resId":I
    :cond_9
    const-wide/32 v5, 0x5265c00

    cmp-long v5, v14, v5

    if-gez v5, :cond_d

    const-wide/32 v5, 0x5265c00

    cmp-long v5, p4, v5

    if-gez v5, :cond_d

    .line 332
    const-wide/32 v5, 0x36ee80

    div-long v12, v14, v5

    .line 333
    .restart local v12    # "count":J
    if-eqz v17, :cond_b

    .line 334
    if-eqz v11, :cond_a

    .line 335
    sget v19, Lcom/android/internal/R$plurals;->abbrev_num_hours_ago:I

    .restart local v19    # "resId":I
    goto :goto_2

    .line 337
    .end local v19    # "resId":I
    :cond_a
    sget v19, Lcom/android/internal/R$plurals;->num_hours_ago:I

    .restart local v19    # "resId":I
    goto :goto_2

    .line 340
    .end local v19    # "resId":I
    :cond_b
    if-eqz v11, :cond_c

    .line 341
    sget v19, Lcom/android/internal/R$plurals;->abbrev_in_num_hours:I

    .restart local v19    # "resId":I
    goto :goto_2

    .line 343
    .end local v19    # "resId":I
    :cond_c
    sget v19, Lcom/android/internal/R$plurals;->in_num_hours:I

    .restart local v19    # "resId":I
    goto :goto_2

    .line 346
    .end local v12    # "count":J
    .end local v19    # "resId":I
    :cond_d
    const-wide/32 v5, 0x240c8400

    cmp-long v5, v14, v5

    if-gez v5, :cond_e

    const-wide/32 v5, 0x240c8400

    cmp-long v5, p4, v5

    if-gez v5, :cond_e

    .line 347
    move-object/from16 v0, v18

    move-wide/from16 v1, p0

    move-wide/from16 v3, p2

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/format/DateUtils;->getRelativeDayString(Landroid/content/res/Resources;JJ)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 351
    :cond_e
    const/4 v5, 0x0

    move-wide/from16 v6, p0

    move-wide/from16 v8, p0

    move/from16 v10, p6

    invoke-static/range {v5 .. v10}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v5

    goto :goto_3
.end method

.method public static getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "millis"    # J

    .prologue
    .line 949
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;
    .locals 16
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "millis"    # J
    .param p3, "withPreposition"    # Z

    .prologue
    .line 899
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 900
    .local v8, "now":J
    sub-long v2, v8, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    .line 902
    .local v13, "span":J
    const-class v15, Landroid/text/format/DateUtils;

    monitor-enter v15

    .line 903
    :try_start_0
    sget-object v2, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    if-nez v2, :cond_0

    .line 904
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    sput-object v2, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    .line 907
    :cond_0
    sget-object v2, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    if-nez v2, :cond_1

    .line 908
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    sput-object v2, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    .line 911
    :cond_1
    sget-object v2, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    invoke-virtual {v2, v8, v9}, Landroid/text/format/Time;->set(J)V

    .line 912
    sget-object v2, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 915
    const-wide/32 v2, 0x5265c00

    cmp-long v2, v13, v2

    if-gez v2, :cond_3

    sget-object v2, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->weekDay:I

    sget-object v3, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->weekDay:I

    if-ne v2, v3, :cond_3

    .line 917
    const/4 v7, 0x1

    .local v7, "flags":I
    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p1

    .line 918
    invoke-static/range {v2 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v12

    .line 919
    .local v12, "result":Ljava/lang/String;
    sget v10, Lcom/android/internal/R$string;->preposition_for_time:I

    .line 933
    .local v10, "prepositionId":I
    :goto_0
    if-eqz p3, :cond_2

    .line 934
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 935
    .local v11, "res":Landroid/content/res/Resources;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v12, v2, v3

    invoke-virtual {v11, v10, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 937
    .end local v11    # "res":Landroid/content/res/Resources;
    :cond_2
    monitor-exit v15

    .line 938
    return-object v12

    .line 920
    .end local v7    # "flags":I
    .end local v10    # "prepositionId":I
    .end local v12    # "result":Ljava/lang/String;
    :cond_3
    sget-object v2, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->year:I

    sget-object v3, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->year:I

    if-eq v2, v3, :cond_4

    .line 922
    const v7, 0x20014

    .restart local v7    # "flags":I
    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p1

    .line 923
    invoke-static/range {v2 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v12

    .line 926
    .restart local v12    # "result":Ljava/lang/String;
    sget v10, Lcom/android/internal/R$string;->preposition_for_date:I

    .line 927
    .restart local v10    # "prepositionId":I
    goto :goto_0

    .line 929
    .end local v7    # "flags":I
    .end local v10    # "prepositionId":I
    .end local v12    # "result":Ljava/lang/String;
    :cond_4
    const v7, 0x10010

    .restart local v7    # "flags":I
    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p1

    .line 930
    invoke-static/range {v2 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v12

    .line 931
    .restart local v12    # "result":Ljava/lang/String;
    sget v10, Lcom/android/internal/R$string;->preposition_for_date:I

    .restart local v10    # "prepositionId":I
    goto :goto_0

    .line 937
    .end local v7    # "flags":I
    .end local v10    # "prepositionId":I
    .end local v12    # "result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static initFormatStrings()V
    .locals 2

    .prologue
    .line 461
    sget-object v1, Landroid/text/format/DateUtils;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 462
    :try_start_0
    invoke-static {}, Landroid/text/format/DateUtils;->initFormatStringsLocked()V

    .line 463
    monitor-exit v1

    .line 464
    return-void

    .line 463
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static initFormatStringsLocked()V
    .locals 3

    .prologue
    .line 467
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 468
    .local v1, "r":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 469
    .local v0, "cfg":Landroid/content/res/Configuration;
    sget-object v2, Landroid/text/format/DateUtils;->sLastConfig:Landroid/content/res/Configuration;

    if-eqz v2, :cond_0

    sget-object v2, Landroid/text/format/DateUtils;->sLastConfig:Landroid/content/res/Configuration;

    invoke-virtual {v2, v0}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 470
    :cond_0
    sput-object v0, Landroid/text/format/DateUtils;->sLastConfig:Landroid/content/res/Configuration;

    .line 471
    sget v2, Lcom/android/internal/R$string;->elapsed_time_short_format_mm_ss:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/text/format/DateUtils;->sElapsedFormatMMSS:Ljava/lang/String;

    .line 472
    sget v2, Lcom/android/internal/R$string;->elapsed_time_short_format_h_mm_ss:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/text/format/DateUtils;->sElapsedFormatHMMSS:Ljava/lang/String;

    .line 474
    :cond_1
    return-void
.end method

.method public static isToday(J)Z
    .locals 6
    .param p0, "when"    # J

    .prologue
    .line 593
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 594
    .local v3, "time":Landroid/text/format/Time;
    invoke-virtual {v3, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 596
    iget v2, v3, Landroid/text/format/Time;->year:I

    .line 597
    .local v2, "thenYear":I
    iget v0, v3, Landroid/text/format/Time;->month:I

    .line 598
    .local v0, "thenMonth":I
    iget v1, v3, Landroid/text/format/Time;->monthDay:I

    .line 600
    .local v1, "thenMonthDay":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 601
    iget v4, v3, Landroid/text/format/Time;->year:I

    if-ne v2, v4, :cond_0

    iget v4, v3, Landroid/text/format/Time;->month:I

    if-ne v0, v4, :cond_0

    iget v4, v3, Landroid/text/format/Time;->monthDay:I

    if-ne v1, v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
