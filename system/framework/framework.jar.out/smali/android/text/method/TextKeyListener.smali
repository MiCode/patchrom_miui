.class public Landroid/text/method/TextKeyListener;
.super Landroid/text/method/BaseKeyListener;
.source "TextKeyListener.java"

# interfaces
.implements Landroid/text/SpanWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/TextKeyListener$SettingsObserver;,
        Landroid/text/method/TextKeyListener$NullKeyListener;,
        Landroid/text/method/TextKeyListener$Capitalize;
    }
.end annotation


# static fields
.field static final ACTIVE:Ljava/lang/Object;

.field static final AUTO_CAP:I = 0x1

.field static final AUTO_PERIOD:I = 0x4

.field static final AUTO_TEXT:I = 0x2

.field static final CAPPED:Ljava/lang/Object;

.field static final INHIBIT_REPLACEMENT:Ljava/lang/Object;

.field static final LAST_TYPED:Ljava/lang/Object;

.field static final SHOW_PASSWORD:I = 0x8

.field private static sInstance:[Landroid/text/method/TextKeyListener;


# instance fields
.field private mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

.field private mAutoText:Z

.field private mObserver:Landroid/text/method/TextKeyListener$SettingsObserver;

.field private mPrefs:I

.field private mPrefsInited:Z

.field private mResolver:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/ContentResolver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Landroid/text/method/TextKeyListener$Capitalize;->values()[Landroid/text/method/TextKeyListener$Capitalize;

    move-result-object v0

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Landroid/text/method/TextKeyListener;

    sput-object v0, Landroid/text/method/TextKeyListener;->sInstance:[Landroid/text/method/TextKeyListener;

    .line 45
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    .line 46
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    .line 47
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    .line 48
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/TextKeyListener;->LAST_TYPED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V
    .locals 0
    .param p1, "cap"    # Landroid/text/method/TextKeyListener$Capitalize;
    .param p2, "autotext"    # Z

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/text/method/BaseKeyListener;-><init>()V

    .line 71
    iput-object p1, p0, Landroid/text/method/TextKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    .line 72
    iput-boolean p2, p0, Landroid/text/method/TextKeyListener;->mAutoText:Z

    .line 73
    return-void
.end method

.method static synthetic access$000(Landroid/text/method/TextKeyListener;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Landroid/text/method/TextKeyListener;

    .prologue
    .line 41
    iget-object v0, p0, Landroid/text/method/TextKeyListener;->mResolver:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$102(Landroid/text/method/TextKeyListener;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/text/method/TextKeyListener;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Landroid/text/method/TextKeyListener;->mPrefsInited:Z

    return p1
.end method

.method static synthetic access$200(Landroid/text/method/TextKeyListener;Landroid/content/ContentResolver;)V
    .locals 0
    .param p0, "x0"    # Landroid/text/method/TextKeyListener;
    .param p1, "x1"    # Landroid/content/ContentResolver;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/text/method/TextKeyListener;->updatePrefs(Landroid/content/ContentResolver;)V

    return-void
.end method

.method public static clear(Landroid/text/Editable;)V
    .locals 6
    .param p0, "e"    # Landroid/text/Editable;

    .prologue
    .line 162
    invoke-interface {p0}, Landroid/text/Editable;->clear()V

    .line 163
    sget-object v3, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {p0, v3}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 164
    sget-object v3, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    invoke-interface {p0, v3}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 165
    sget-object v3, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    invoke-interface {p0, v3}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 166
    sget-object v3, Landroid/text/method/TextKeyListener;->LAST_TYPED:Ljava/lang/Object;

    invoke-interface {p0, v3}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 168
    const/4 v3, 0x0

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v4

    const-class v5, Landroid/text/method/QwertyKeyListener$Replaced;

    invoke-interface {p0, v3, v4, v5}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/method/QwertyKeyListener$Replaced;

    .line 170
    .local v2, "repl":[Landroid/text/method/QwertyKeyListener$Replaced;
    array-length v0, v2

    .line 171
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 172
    aget-object v3, v2, v1

    invoke-interface {p0, v3}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 174
    :cond_0
    return-void
.end method

.method public static getInstance()Landroid/text/method/TextKeyListener;
    .locals 2

    .prologue
    .line 98
    const/4 v0, 0x0

    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-static {v0, v1}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;
    .locals 3
    .param p0, "autotext"    # Z
    .param p1, "cap"    # Landroid/text/method/TextKeyListener$Capitalize;

    .prologue
    .line 84
    invoke-virtual {p1}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    move-result v1

    mul-int/lit8 v2, v1, 0x2

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :goto_0
    add-int v0, v2, v1

    .line 86
    .local v0, "off":I
    sget-object v1, Landroid/text/method/TextKeyListener;->sInstance:[Landroid/text/method/TextKeyListener;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 87
    sget-object v1, Landroid/text/method/TextKeyListener;->sInstance:[Landroid/text/method/TextKeyListener;

    new-instance v2, Landroid/text/method/TextKeyListener;

    invoke-direct {v2, p1, p0}, Landroid/text/method/TextKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V

    aput-object v2, v1, v0

    .line 90
    :cond_0
    sget-object v1, Landroid/text/method/TextKeyListener;->sInstance:[Landroid/text/method/TextKeyListener;

    aget-object v1, v1, v0

    return-object v1

    .line 84
    .end local v0    # "off":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getKeyListener(Landroid/view/KeyEvent;)Landroid/text/method/KeyListener;
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 187
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v1

    .line 188
    .local v1, "kmap":Landroid/view/KeyCharacterMap;
    invoke-virtual {v1}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v0

    .line 190
    .local v0, "kind":I
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 191
    iget-boolean v2, p0, Landroid/text/method/TextKeyListener;->mAutoText:Z

    iget-object v3, p0, Landroid/text/method/TextKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-static {v2, v3}, Landroid/text/method/QwertyKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/QwertyKeyListener;

    move-result-object v2

    .line 204
    :goto_0
    return-object v2

    .line 192
    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 193
    iget-boolean v2, p0, Landroid/text/method/TextKeyListener;->mAutoText:Z

    iget-object v3, p0, Landroid/text/method/TextKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-static {v2, v3}, Landroid/text/method/MultiTapKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/MultiTapKeyListener;

    move-result-object v2

    goto :goto_0

    .line 194
    :cond_1
    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 v2, 0x5

    if-ne v0, v2, :cond_3

    .line 201
    :cond_2
    invoke-static {}, Landroid/text/method/QwertyKeyListener;->getInstanceForFullKeyboard()Landroid/text/method/QwertyKeyListener;

    move-result-object v2

    goto :goto_0

    .line 204
    :cond_3
    invoke-static {}, Landroid/text/method/TextKeyListener$NullKeyListener;->getInstance()Landroid/text/method/TextKeyListener$NullKeyListener;

    move-result-object v2

    goto :goto_0
.end method

.method private initPrefs(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 259
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 260
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/text/method/TextKeyListener;->mResolver:Ljava/lang/ref/WeakReference;

    .line 261
    iget-object v1, p0, Landroid/text/method/TextKeyListener;->mObserver:Landroid/text/method/TextKeyListener$SettingsObserver;

    if-nez v1, :cond_0

    .line 262
    new-instance v1, Landroid/text/method/TextKeyListener$SettingsObserver;

    invoke-direct {v1, p0}, Landroid/text/method/TextKeyListener$SettingsObserver;-><init>(Landroid/text/method/TextKeyListener;)V

    iput-object v1, p0, Landroid/text/method/TextKeyListener;->mObserver:Landroid/text/method/TextKeyListener$SettingsObserver;

    .line 263
    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Landroid/text/method/TextKeyListener;->mObserver:Landroid/text/method/TextKeyListener$SettingsObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 266
    :cond_0
    invoke-direct {p0, v0}, Landroid/text/method/TextKeyListener;->updatePrefs(Landroid/content/ContentResolver;)V

    .line 267
    iput-boolean v3, p0, Landroid/text/method/TextKeyListener;->mPrefsInited:Z

    .line 268
    return-void
.end method

.method public static shouldCap(Landroid/text/method/TextKeyListener$Capitalize;Ljava/lang/CharSequence;I)Z
    .locals 3
    .param p0, "cap"    # Landroid/text/method/TextKeyListener$Capitalize;
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "off"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 115
    sget-object v0, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    if-ne p0, v0, :cond_0

    .line 122
    :goto_0
    return v2

    .line 118
    :cond_0
    sget-object v0, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    if-ne p0, v0, :cond_1

    move v2, v1

    .line 119
    goto :goto_0

    .line 122
    :cond_1
    sget-object v0, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    if-ne p0, v0, :cond_2

    const/16 v0, 0x2000

    :goto_1
    invoke-static {p1, p2, v0}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    move v2, v0

    goto :goto_0

    :cond_2
    const/16 v0, 0x4000

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2
.end method

.method private updatePrefs(Landroid/content/ContentResolver;)V
    .locals 7
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 291
    const-string v6, "auto_caps"

    invoke-static {p1, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-lez v6, :cond_1

    move v0, v4

    .line 292
    .local v0, "cap":Z
    :goto_0
    const-string v6, "auto_replace"

    invoke-static {p1, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-lez v6, :cond_2

    move v3, v4

    .line 293
    .local v3, "text":Z
    :goto_1
    const-string v6, "auto_punctuate"

    invoke-static {p1, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-lez v6, :cond_3

    move v1, v4

    .line 294
    .local v1, "period":Z
    :goto_2
    const-string/jumbo v6, "show_password"

    invoke-static {p1, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-lez v6, :cond_4

    move v2, v4

    .line 296
    .local v2, "pw":Z
    :goto_3
    if-eqz v0, :cond_5

    move v6, v4

    :goto_4
    if-eqz v3, :cond_6

    const/4 v4, 0x2

    :goto_5
    or-int/2addr v6, v4

    if-eqz v1, :cond_7

    const/4 v4, 0x4

    :goto_6
    or-int/2addr v4, v6

    if-eqz v2, :cond_0

    const/16 v5, 0x8

    :cond_0
    or-int/2addr v4, v5

    iput v4, p0, Landroid/text/method/TextKeyListener;->mPrefs:I

    .line 300
    return-void

    .end local v0    # "cap":Z
    .end local v1    # "period":Z
    .end local v2    # "pw":Z
    .end local v3    # "text":Z
    :cond_1
    move v0, v5

    .line 291
    goto :goto_0

    .restart local v0    # "cap":Z
    :cond_2
    move v3, v5

    .line 292
    goto :goto_1

    .restart local v3    # "text":Z
    :cond_3
    move v1, v5

    .line 293
    goto :goto_2

    .restart local v1    # "period":Z
    :cond_4
    move v2, v5

    .line 294
    goto :goto_3

    .restart local v2    # "pw":Z
    :cond_5
    move v6, v5

    .line 296
    goto :goto_4

    :cond_6
    move v4, v5

    goto :goto_5

    :cond_7
    move v4, v5

    goto :goto_6
.end method


# virtual methods
.method public getInputType()I
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Landroid/text/method/TextKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    iget-boolean v1, p0, Landroid/text/method/TextKeyListener;->mAutoText:Z

    invoke-static {v0, v1}, Landroid/text/method/TextKeyListener;->makeTextContentType(Landroid/text/method/TextKeyListener$Capitalize;Z)I

    move-result v0

    return v0
.end method

.method getPrefs(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 303
    monitor-enter p0

    .line 304
    :try_start_0
    iget-boolean v0, p0, Landroid/text/method/TextKeyListener;->mPrefsInited:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/text/method/TextKeyListener;->mResolver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 305
    :cond_0
    invoke-direct {p0, p1}, Landroid/text/method/TextKeyListener;->initPrefs(Landroid/content/Context;)V

    .line 307
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    iget v0, p0, Landroid/text/method/TextKeyListener;->mPrefs:I

    return v0

    .line 307
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 134
    invoke-direct {p0, p4}, Landroid/text/method/TextKeyListener;->getKeyListener(Landroid/view/KeyEvent;)Landroid/text/method/KeyListener;

    move-result-object v0

    .line 136
    .local v0, "im":Landroid/text/method/KeyListener;
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 149
    invoke-direct {p0, p3}, Landroid/text/method/TextKeyListener;->getKeyListener(Landroid/view/KeyEvent;)Landroid/text/method/KeyListener;

    move-result-object v0

    .line 151
    .local v0, "im":Landroid/text/method/KeyListener;
    invoke-interface {v0, p1, p2, p3}, Landroid/text/method/KeyListener;->onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 142
    invoke-direct {p0, p4}, Landroid/text/method/TextKeyListener;->getKeyListener(Landroid/view/KeyEvent;)Landroid/text/method/KeyListener;

    move-result-object v0

    .line 144
    .local v0, "im":Landroid/text/method/KeyListener;
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 0
    .param p1, "s"    # Landroid/text/Spannable;
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    .line 176
    return-void
.end method

.method public onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V
    .locals 1
    .param p1, "s"    # Landroid/text/Spannable;
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "st"    # I
    .param p6, "en"    # I

    .prologue
    .line 181
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    if-ne p2, v0, :cond_0

    .line 182
    sget-object v0, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {p1, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 184
    :cond_0
    return-void
.end method

.method public onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 0
    .param p1, "s"    # Landroid/text/Spannable;
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    .line 177
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 246
    iget-object v1, p0, Landroid/text/method/TextKeyListener;->mResolver:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    .line 247
    iget-object v1, p0, Landroid/text/method/TextKeyListener;->mResolver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    .line 248
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 249
    iget-object v1, p0, Landroid/text/method/TextKeyListener;->mObserver:Landroid/text/method/TextKeyListener$SettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 250
    iget-object v1, p0, Landroid/text/method/TextKeyListener;->mResolver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 252
    :cond_0
    iput-object v2, p0, Landroid/text/method/TextKeyListener;->mObserver:Landroid/text/method/TextKeyListener$SettingsObserver;

    .line 253
    iput-object v2, p0, Landroid/text/method/TextKeyListener;->mResolver:Ljava/lang/ref/WeakReference;

    .line 254
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/text/method/TextKeyListener;->mPrefsInited:Z

    .line 256
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    :cond_1
    return-void
.end method
