.class Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;
.super Landroid/view/AccessibilityIterators$AbstractTextSegmentIterator;
.source "AccessibilityIterators.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/AccessibilityIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharacterTextSegmentIterator"
.end annotation


# static fields
.field private static sInstance:Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;


# instance fields
.field protected mImpl:Ljava/text/BreakIterator;

.field private mLocale:Ljava/util/Locale;


# direct methods
.method private constructor <init>(Ljava/util/Locale;)V
    .locals 0
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 84
    invoke-direct {p0}, Landroid/view/AccessibilityIterators$AbstractTextSegmentIterator;-><init>()V

    .line 85
    iput-object p1, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mLocale:Ljava/util/Locale;

    .line 86
    invoke-virtual {p0, p1}, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->onLocaleChanged(Ljava/util/Locale;)V

    .line 87
    invoke-static {p0}, Landroid/view/ViewRootImpl;->addConfigCallback(Landroid/content/ComponentCallbacks;)V

    .line 88
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Locale;Landroid/view/AccessibilityIterators$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/Locale;
    .param p2, "x1"    # Landroid/view/AccessibilityIterators$1;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;-><init>(Ljava/util/Locale;)V

    return-void
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 78
    sget-object v0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->sInstance:Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;

    invoke-direct {v0, p0}, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;-><init>(Ljava/util/Locale;)V

    sput-object v0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->sInstance:Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;

    .line 81
    :cond_0
    sget-object v0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->sInstance:Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;

    return-object v0
.end method


# virtual methods
.method public following(I)[I
    .locals 6
    .param p1, "offset"    # I

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x0

    .line 98
    iget-object v4, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 99
    .local v2, "textLegth":I
    if-gtz v2, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-object v3

    .line 102
    :cond_1
    if-ge p1, v2, :cond_0

    .line 105
    move v1, p1

    .line 106
    .local v1, "start":I
    if-gez v1, :cond_2

    .line 107
    const/4 v1, 0x0

    .line 109
    :cond_2
    iget-object v4, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v4, v1}, Ljava/text/BreakIterator;->isBoundary(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 110
    iget-object v4, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v4, v1}, Ljava/text/BreakIterator;->following(I)I

    move-result v1

    .line 111
    if-ne v1, v5, :cond_2

    goto :goto_0

    .line 115
    :cond_3
    iget-object v4, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v4, v1}, Ljava/text/BreakIterator;->following(I)I

    move-result v0

    .line 116
    .local v0, "end":I
    if-eq v0, v5, :cond_0

    .line 119
    invoke-virtual {p0, v1, v0}, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->getRange(II)[I

    move-result-object v3

    goto :goto_0
.end method

.method public initialize(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/view/AccessibilityIterators$AbstractTextSegmentIterator;->initialize(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 150
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 151
    .local v0, "locale":Ljava/util/Locale;
    iget-object v1, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    iput-object v0, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mLocale:Ljava/util/Locale;

    .line 153
    invoke-virtual {p0, v0}, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->onLocaleChanged(Ljava/util/Locale;)V

    .line 155
    :cond_0
    return-void
.end method

.method protected onLocaleChanged(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 163
    invoke-static {p1}, Ljava/text/BreakIterator;->getCharacterInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object v0

    iput-object v0, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    .line 164
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 160
    return-void
.end method

.method public preceding(I)[I
    .locals 6
    .param p1, "offset"    # I

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x0

    .line 124
    iget-object v4, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 125
    .local v2, "textLegth":I
    if-gtz v2, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-object v3

    .line 128
    :cond_1
    if-lez p1, :cond_0

    .line 131
    move v0, p1

    .line 132
    .local v0, "end":I
    if-le v0, v2, :cond_2

    .line 133
    move v0, v2

    .line 135
    :cond_2
    iget-object v4, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v4, v0}, Ljava/text/BreakIterator;->isBoundary(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 136
    iget-object v4, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v4, v0}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v0

    .line 137
    if-ne v0, v5, :cond_2

    goto :goto_0

    .line 141
    :cond_3
    iget-object v4, p0, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v4, v0}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v1

    .line 142
    .local v1, "start":I
    if-eq v1, v5, :cond_0

    .line 145
    invoke-virtual {p0, v1, v0}, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->getRange(II)[I

    move-result-object v3

    goto :goto_0
.end method
