.class public Landroid/miui/LocaleComparator;
.super Ljava/lang/Object;
.source "LocaleComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final NON_TOP_LOCALE_INDEX:I

.field private static final TOP_LOCALES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    .line 17
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "zh_CN"

    aput-object v1, v0, v2

    const-string v1, "en_US"

    aput-object v1, v0, v3

    const-string v1, "en_GB"

    aput-object v1, v0, v4

    const-string v1, "hi_IN"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "in_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "ms_MY"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "vi_VN"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "zh_TW"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "th_TH"

    aput-object v2, v0, v1

    sput-object v0, Landroid/miui/LocaleComparator;->TOP_LOCALES:[Ljava/lang/String;

    .line 23
    :goto_0
    sget-object v0, Landroid/miui/LocaleComparator;->TOP_LOCALES:[Ljava/lang/String;

    array-length v0, v0

    sput v0, Landroid/miui/LocaleComparator;->NON_TOP_LOCALE_INDEX:I

    return-void

    .line 19
    :cond_0
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "zh_CN"

    aput-object v1, v0, v2

    const-string/jumbo v1, "zh_TW"

    aput-object v1, v0, v3

    const-string v1, "en_US"

    aput-object v1, v0, v4

    sput-object v0, Landroid/miui/LocaleComparator;->TOP_LOCALES:[Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/internal/app/LocalePicker$LocaleInfo;Lcom/android/internal/app/LocalePicker$LocaleInfo;)I
    .locals 3
    .param p1, "lhs"    # Lcom/android/internal/app/LocalePicker$LocaleInfo;
    .param p2, "rhs"    # Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Landroid/miui/LocaleComparator;->findTopLocale(Lcom/android/internal/app/LocalePicker$LocaleInfo;)I

    move-result v0

    .line 37
    .local v0, "lpos":I
    invoke-virtual {p0, p2}, Landroid/miui/LocaleComparator;->findTopLocale(Lcom/android/internal/app/LocalePicker$LocaleInfo;)I

    move-result v1

    .line 38
    .local v1, "rpos":I
    if-ne v0, v1, :cond_0

    invoke-virtual {p1, p2}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->compareTo(Lcom/android/internal/app/LocalePicker$LocaleInfo;)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    sub-int v2, v0, v1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 12
    check-cast p1, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/miui/LocaleComparator;->compare(Lcom/android/internal/app/LocalePicker$LocaleInfo;Lcom/android/internal/app/LocalePicker$LocaleInfo;)I

    move-result v0

    return v0
.end method

.method public findTopLocale(Lcom/android/internal/app/LocalePicker$LocaleInfo;)I
    .locals 3
    .param p1, "localeInfo"    # Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .prologue
    .line 26
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Landroid/miui/LocaleComparator;->TOP_LOCALES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 27
    sget-object v1, Landroid/miui/LocaleComparator;->TOP_LOCALES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 26
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 31
    :cond_1
    sget v0, Landroid/miui/LocaleComparator;->NON_TOP_LOCALE_INDEX:I

    goto :goto_1
.end method
