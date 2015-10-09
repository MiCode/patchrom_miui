.class public Landroid/view/textservice/SpellCheckerSession;
.super Ljava/lang/Object;
.source "SpellCheckerSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textservice/SpellCheckerSession$InternalListener;,
        Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;,
        Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final MSG_ON_GET_SUGGESTION_MULTIPLE:I = 0x1

.field private static final MSG_ON_GET_SUGGESTION_MULTIPLE_FOR_SENTENCE:I = 0x2

.field public static final SERVICE_META_DATA:Ljava/lang/String; = "android.view.textservice.scs"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mInternalListener:Landroid/view/textservice/SpellCheckerSession$InternalListener;

.field private mIsUsed:Z

.field private final mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

.field private mSpellCheckerSessionListener:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;

.field private final mSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

.field private final mSubtype:Landroid/view/textservice/SpellCheckerSubtype;

.field private final mTextServicesManager:Lcom/android/internal/textservice/ITextServicesManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const-class v0, Landroid/view/textservice/SpellCheckerSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/textservice/SpellCheckerSession;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/textservice/SpellCheckerInfo;Lcom/android/internal/textservice/ITextServicesManager;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;Landroid/view/textservice/SpellCheckerSubtype;)V
    .locals 2
    .param p1, "info"    # Landroid/view/textservice/SpellCheckerInfo;
    .param p2, "tsm"    # Lcom/android/internal/textservice/ITextServicesManager;
    .param p3, "listener"    # Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;
    .param p4, "subtype"    # Landroid/view/textservice/SpellCheckerSubtype;

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Landroid/view/textservice/SpellCheckerSession$1;

    invoke-direct {v0, p0}, Landroid/view/textservice/SpellCheckerSession$1;-><init>(Landroid/view/textservice/SpellCheckerSession;)V

    iput-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mHandler:Landroid/os/Handler;

    .line 129
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    if-nez p2, :cond_1

    .line 130
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 132
    :cond_1
    iput-object p1, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    .line 133
    new-instance v0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSession;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    .line 134
    new-instance v0, Landroid/view/textservice/SpellCheckerSession$InternalListener;

    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    invoke-direct {v0, v1}, Landroid/view/textservice/SpellCheckerSession$InternalListener;-><init>(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;)V

    iput-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mInternalListener:Landroid/view/textservice/SpellCheckerSession$InternalListener;

    .line 135
    iput-object p2, p0, Landroid/view/textservice/SpellCheckerSession;->mTextServicesManager:Lcom/android/internal/textservice/ITextServicesManager;

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/textservice/SpellCheckerSession;->mIsUsed:Z

    .line 137
    iput-object p3, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerSessionListener:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;

    .line 138
    iput-object p4, p0, Landroid/view/textservice/SpellCheckerSession;->mSubtype:Landroid/view/textservice/SpellCheckerSubtype;

    .line 139
    return-void
.end method

.method static synthetic access$000(Landroid/view/textservice/SpellCheckerSession;[Landroid/view/textservice/SuggestionsInfo;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/textservice/SpellCheckerSession;
    .param p1, "x1"    # [Landroid/view/textservice/SuggestionsInfo;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Landroid/view/textservice/SpellCheckerSession;->handleOnGetSuggestionsMultiple([Landroid/view/textservice/SuggestionsInfo;)V

    return-void
.end method

.method static synthetic access$100(Landroid/view/textservice/SpellCheckerSession;[Landroid/view/textservice/SentenceSuggestionsInfo;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/textservice/SpellCheckerSession;
    .param p1, "x1"    # [Landroid/view/textservice/SentenceSuggestionsInfo;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Landroid/view/textservice/SpellCheckerSession;->handleOnGetSentenceSuggestionsMultiple([Landroid/view/textservice/SentenceSuggestionsInfo;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Landroid/view/textservice/SpellCheckerSession;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private handleOnGetSentenceSuggestionsMultiple([Landroid/view/textservice/SentenceSuggestionsInfo;)V
    .locals 1
    .param p1, "suggestionInfos"    # [Landroid/view/textservice/SentenceSuggestionsInfo;

    .prologue
    .line 221
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerSessionListener:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;

    invoke-interface {v0, p1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;->onGetSentenceSuggestions([Landroid/view/textservice/SentenceSuggestionsInfo;)V

    .line 222
    return-void
.end method

.method private handleOnGetSuggestionsMultiple([Landroid/view/textservice/SuggestionsInfo;)V
    .locals 1
    .param p1, "suggestionInfos"    # [Landroid/view/textservice/SuggestionsInfo;

    .prologue
    .line 217
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerSessionListener:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;

    invoke-interface {v0, p1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;->onGetSuggestions([Landroid/view/textservice/SuggestionsInfo;)V

    .line 218
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->cancel()V

    .line 162
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/textservice/SpellCheckerSession;->mIsUsed:Z

    .line 171
    :try_start_0
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->close()V

    .line 172
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mTextServicesManager:Lcom/android/internal/textservice/ITextServicesManager;

    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    invoke-interface {v0, v1}, Lcom/android/internal/textservice/ITextServicesManager;->finishSpellCheckerService(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 475
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 476
    iget-boolean v0, p0, Landroid/view/textservice/SpellCheckerSession;->mIsUsed:Z

    if-eqz v0, :cond_0

    .line 477
    sget-object v0, Landroid/view/textservice/SpellCheckerSession;->TAG:Ljava/lang/String;

    const-string v1, "SpellCheckerSession was not finished properly.You should call finishShession() when you finished to use a spell checker."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    invoke-virtual {p0}, Landroid/view/textservice/SpellCheckerSession;->close()V

    .line 481
    :cond_0
    return-void
.end method

.method public getSentenceSuggestions([Landroid/view/textservice/TextInfo;I)V
    .locals 1
    .param p1, "textInfos"    # [Landroid/view/textservice/TextInfo;
    .param p2, "suggestionsLimit"    # I

    .prologue
    .line 184
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    invoke-virtual {v0, p1, p2}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->getSentenceSuggestionsMultiple([Landroid/view/textservice/TextInfo;I)V

    .line 186
    return-void
.end method

.method public getSpellChecker()Landroid/view/textservice/SpellCheckerInfo;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    return-object v0
.end method

.method public getSpellCheckerSessionListener()Lcom/android/internal/textservice/ISpellCheckerSessionListener;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    return-object v0
.end method

.method public getSuggestions(Landroid/view/textservice/TextInfo;I)V
    .locals 2
    .param p1, "textInfo"    # Landroid/view/textservice/TextInfo;
    .param p2, "suggestionsLimit"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 196
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/textservice/TextInfo;

    aput-object p1, v0, v1

    invoke-virtual {p0, v0, p2, v1}, Landroid/view/textservice/SpellCheckerSession;->getSuggestions([Landroid/view/textservice/TextInfo;IZ)V

    .line 197
    return-void
.end method

.method public getSuggestions([Landroid/view/textservice/TextInfo;IZ)V
    .locals 1
    .param p1, "textInfos"    # [Landroid/view/textservice/TextInfo;
    .param p2, "suggestionsLimit"    # I
    .param p3, "sequentialWords"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->getSuggestionsMultiple([Landroid/view/textservice/TextInfo;IZ)V

    .line 214
    return-void
.end method

.method public getTextServicesSessionListener()Lcom/android/internal/textservice/ITextServicesSessionListener;
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mInternalListener:Landroid/view/textservice/SpellCheckerSession$InternalListener;

    return-object v0
.end method

.method public isSessionDisconnected()Z
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession;->mSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->isDisconnected()Z

    move-result v0

    return v0
.end method
