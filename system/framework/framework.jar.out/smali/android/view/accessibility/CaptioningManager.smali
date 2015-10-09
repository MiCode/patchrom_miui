.class public Landroid/view/accessibility/CaptioningManager;
.super Ljava/lang/Object;
.source "CaptioningManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;,
        Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENABLED:I = 0x0

.field private static final DEFAULT_FONT_SCALE:F = 1.0f

.field private static final DEFAULT_PRESET:I


# instance fields
.field private final mContentObserver:Landroid/database/ContentObserver;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mHandler:Landroid/os/Handler;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mStyleChangedRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mHandler:Landroid/os/Handler;

    .line 216
    new-instance v0, Landroid/view/accessibility/CaptioningManager$1;

    iget-object v1, p0, Landroid/view/accessibility/CaptioningManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Landroid/view/accessibility/CaptioningManager$1;-><init>(Landroid/view/accessibility/CaptioningManager;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mContentObserver:Landroid/database/ContentObserver;

    .line 241
    new-instance v0, Landroid/view/accessibility/CaptioningManager$2;

    invoke-direct {v0, p0}, Landroid/view/accessibility/CaptioningManager$2;-><init>(Landroid/view/accessibility/CaptioningManager;)V

    iput-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mStyleChangedRunnable:Ljava/lang/Runnable;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 66
    return-void
.end method

.method static synthetic access$000(Landroid/view/accessibility/CaptioningManager;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/accessibility/CaptioningManager;

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/view/accessibility/CaptioningManager;->notifyEnabledChanged()V

    return-void
.end method

.method static synthetic access$100(Landroid/view/accessibility/CaptioningManager;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/accessibility/CaptioningManager;

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/view/accessibility/CaptioningManager;->notifyLocaleChanged()V

    return-void
.end method

.method static synthetic access$200(Landroid/view/accessibility/CaptioningManager;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/accessibility/CaptioningManager;

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/view/accessibility/CaptioningManager;->notifyFontScaleChanged()V

    return-void
.end method

.method static synthetic access$300(Landroid/view/accessibility/CaptioningManager;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Landroid/view/accessibility/CaptioningManager;

    .prologue
    .line 43
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mStyleChangedRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Landroid/view/accessibility/CaptioningManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/view/accessibility/CaptioningManager;

    .prologue
    .line 43
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Landroid/view/accessibility/CaptioningManager;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/accessibility/CaptioningManager;

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/view/accessibility/CaptioningManager;->notifyUserStyleChanged()V

    return-void
.end method

.method private notifyEnabledChanged()V
    .locals 5

    .prologue
    .line 181
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v0

    .line 182
    .local v0, "enabled":Z
    iget-object v4, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 183
    :try_start_0
    iget-object v3, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    .line 184
    .local v2, "listener":Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;
    invoke-virtual {v2, v0}, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;->onEnabledChanged(Z)V

    goto :goto_0

    .line 186
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    return-void
.end method

.method private notifyFontScaleChanged()V
    .locals 5

    .prologue
    .line 208
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v0

    .line 209
    .local v0, "fontScale":F
    iget-object v4, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 210
    :try_start_0
    iget-object v3, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    .line 211
    .local v2, "listener":Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;
    invoke-virtual {v2, v0}, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;->onFontScaleChanged(F)V

    goto :goto_0

    .line 213
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    return-void
.end method

.method private notifyLocaleChanged()V
    .locals 5

    .prologue
    .line 199
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object v2

    .line 200
    .local v2, "locale":Ljava/util/Locale;
    iget-object v4, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 201
    :try_start_0
    iget-object v3, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    .line 202
    .local v1, "listener":Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;
    invoke-virtual {v1, v2}, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;->onLocaleChanged(Ljava/util/Locale;)V

    goto :goto_0

    .line 204
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    return-void
.end method

.method private notifyUserStyleChanged()V
    .locals 5

    .prologue
    .line 190
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v2

    .line 191
    .local v2, "userStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    iget-object v4, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 192
    :try_start_0
    iget-object v3, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    .line 193
    .local v1, "listener":Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;
    invoke-virtual {v1, v2}, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;->onUserStyleChanged(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V

    goto :goto_0

    .line 195
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    return-void
.end method

.method private registerObserver(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 161
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/view/accessibility/CaptioningManager;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 162
    return-void
.end method


# virtual methods
.method public addCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    .prologue
    .line 144
    iget-object v1, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 145
    :try_start_0
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    const-string v0, "accessibility_captioning_enabled"

    invoke-direct {p0, v0}, Landroid/view/accessibility/CaptioningManager;->registerObserver(Ljava/lang/String;)V

    .line 147
    const-string v0, "accessibility_captioning_foreground_color"

    invoke-direct {p0, v0}, Landroid/view/accessibility/CaptioningManager;->registerObserver(Ljava/lang/String;)V

    .line 148
    const-string v0, "accessibility_captioning_background_color"

    invoke-direct {p0, v0}, Landroid/view/accessibility/CaptioningManager;->registerObserver(Ljava/lang/String;)V

    .line 149
    const-string v0, "accessibility_captioning_edge_type"

    invoke-direct {p0, v0}, Landroid/view/accessibility/CaptioningManager;->registerObserver(Ljava/lang/String;)V

    .line 150
    const-string v0, "accessibility_captioning_edge_color"

    invoke-direct {p0, v0}, Landroid/view/accessibility/CaptioningManager;->registerObserver(Ljava/lang/String;)V

    .line 151
    const-string v0, "accessibility_captioning_typeface"

    invoke-direct {p0, v0}, Landroid/view/accessibility/CaptioningManager;->registerObserver(Ljava/lang/String;)V

    .line 152
    const-string v0, "accessibility_captioning_font_scale"

    invoke-direct {p0, v0}, Landroid/view/accessibility/CaptioningManager;->registerObserver(Ljava/lang/String;)V

    .line 153
    const-string v0, "accessibility_captioning_locale"

    invoke-direct {p0, v0}, Landroid/view/accessibility/CaptioningManager;->registerObserver(Ljava/lang/String;)V

    .line 156
    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    monitor-exit v1

    .line 158
    return-void

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getFontScale()F
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "accessibility_captioning_font_scale"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public final getLocale()Ljava/util/Locale;
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 90
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getRawLocale()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "rawLocale":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 92
    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "splitLocale":[Ljava/lang/String;
    array-length v2, v1

    packed-switch v2, :pswitch_data_0

    .line 103
    .end local v1    # "splitLocale":[Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 95
    .restart local v1    # "splitLocale":[Ljava/lang/String;
    :pswitch_0
    new-instance v2, Ljava/util/Locale;

    aget-object v3, v1, v3

    aget-object v4, v1, v4

    const/4 v5, 0x2

    aget-object v5, v1, v5

    invoke-direct {v2, v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :pswitch_1
    new-instance v2, Ljava/util/Locale;

    aget-object v3, v1, v3

    aget-object v4, v1, v4

    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :pswitch_2
    new-instance v2, Ljava/util/Locale;

    aget-object v3, v1, v3

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getRawLocale()Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "accessibility_captioning_locale"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawUserStyle()I
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "accessibility_captioning_preset"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .locals 2

    .prologue
    .line 129
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getRawUserStyle()I

    move-result v0

    .line 130
    .local v0, "preset":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 131
    iget-object v1, p0, Landroid/view/accessibility/CaptioningManager;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getCustomStyle(Landroid/content/ContentResolver;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v1

    .line 134
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->PRESETS:[Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    aget-object v1, v1, v0

    goto :goto_0
.end method

.method public final isEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 72
    iget-object v2, p0, Landroid/view/accessibility/CaptioningManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "accessibility_captioning_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public removeCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    .prologue
    .line 171
    iget-object v1, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 172
    :try_start_0
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 174
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/view/accessibility/CaptioningManager;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 177
    :cond_0
    monitor-exit v1

    .line 178
    return-void

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
