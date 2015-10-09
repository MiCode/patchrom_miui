.class public Landroid/webkit/DateSorter;
.super Ljava/lang/Object;
.source "DateSorter.java"


# static fields
.field public static final DAY_COUNT:I = 0x5

.field private static final LOGTAG:Ljava/lang/String; = "webkit"

.field private static final NUM_DAYS_AGO:I = 0x7


# instance fields
.field private mBins:[J

.field private mLabels:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v13, 0x7

    const/4 v9, 0x6

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v6, 0x4

    new-array v6, v6, [J

    iput-object v6, p0, Landroid/webkit/DateSorter;->mBins:[J

    .line 45
    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 55
    .local v5, "resources":Landroid/content/res/Resources;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 56
    .local v0, "c":Ljava/util/Calendar;
    invoke-direct {p0, v0}, Landroid/webkit/DateSorter;->beginningOfDay(Ljava/util/Calendar;)V

    .line 59
    iget-object v6, p0, Landroid/webkit/DateSorter;->mBins:[J

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    aput-wide v7, v6, v10

    .line 60
    const/4 v6, -0x1

    invoke-virtual {v0, v9, v6}, Ljava/util/Calendar;->add(II)V

    .line 61
    iget-object v6, p0, Landroid/webkit/DateSorter;->mBins:[J

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    aput-wide v7, v6, v11

    .line 62
    const/4 v6, -0x6

    invoke-virtual {v0, v9, v6}, Ljava/util/Calendar;->add(II)V

    .line 63
    iget-object v6, p0, Landroid/webkit/DateSorter;->mBins:[J

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    aput-wide v7, v6, v12

    .line 64
    invoke-virtual {v0, v9, v13}, Ljava/util/Calendar;->add(II)V

    .line 65
    const/4 v6, -0x1

    invoke-virtual {v0, v12, v6}, Ljava/util/Calendar;->add(II)V

    .line 66
    iget-object v6, p0, Landroid/webkit/DateSorter;->mBins:[J

    const/4 v7, 0x3

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    aput-wide v8, v6, v7

    .line 69
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v2, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 70
    .local v2, "locale":Ljava/util/Locale;
    if-nez v2, :cond_0

    .line 71
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 73
    :cond_0
    invoke-static {v2}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v3

    .line 74
    .local v3, "localeData":Llibcore/icu/LocaleData;
    iget-object v6, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    iget-object v7, v3, Llibcore/icu/LocaleData;->today:Ljava/lang/String;

    aput-object v7, v6, v10

    .line 75
    iget-object v6, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    iget-object v7, v3, Llibcore/icu/LocaleData;->yesterday:Ljava/lang/String;

    aput-object v7, v6, v11

    .line 77
    sget v4, Lcom/android/internal/R$plurals;->last_num_days:I

    .line 78
    .local v4, "resId":I
    invoke-virtual {v5, v4, v13}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "format":Ljava/lang/String;
    iget-object v6, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v12

    .line 81
    iget-object v6, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    const/4 v7, 0x3

    sget v8, Lcom/android/internal/R$string;->last_month:I

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 82
    iget-object v6, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    const/4 v7, 0x4

    sget v8, Lcom/android/internal/R$string;->older:I

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 83
    return-void
.end method

.method private beginningOfDay(Ljava/util/Calendar;)V
    .locals 2
    .param p1, "c"    # Ljava/util/Calendar;

    .prologue
    const/4 v1, 0x0

    .line 127
    const/16 v0, 0xb

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 128
    const/16 v0, 0xc

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 129
    const/16 v0, 0xd

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 130
    const/16 v0, 0xe

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 131
    return-void
.end method


# virtual methods
.method public getBoundary(I)J
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 114
    const/4 v0, 0x4

    .line 116
    .local v0, "lastDay":I
    if-ltz p1, :cond_0

    if-le p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 119
    :cond_1
    if-ne p1, v0, :cond_2

    const-wide/high16 v1, -0x8000000000000000L

    .line 120
    :goto_0
    return-wide v1

    :cond_2
    iget-object v1, p0, Landroid/webkit/DateSorter;->mBins:[J

    aget-wide v1, v1, p1

    goto :goto_0
.end method

.method public getIndex(J)I
    .locals 4
    .param p1, "time"    # J

    .prologue
    .line 92
    const/4 v1, 0x4

    .line 93
    .local v1, "lastDay":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 94
    iget-object v2, p0, Landroid/webkit/DateSorter;->mBins:[J

    aget-wide v2, v2, v0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    .line 96
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 93
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 96
    goto :goto_1
.end method

.method public getLabel(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 104
    if-ltz p1, :cond_0

    const/4 v0, 0x5

    if-lt p1, v0, :cond_1

    :cond_0
    const-string v0, ""

    .line 105
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method
