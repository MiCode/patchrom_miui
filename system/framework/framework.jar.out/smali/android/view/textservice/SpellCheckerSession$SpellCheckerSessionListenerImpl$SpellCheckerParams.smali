.class Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;
.super Ljava/lang/Object;
.source "SpellCheckerSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpellCheckerParams"
.end annotation


# instance fields
.field public final mSequentialWords:Z

.field public mSession:Lcom/android/internal/textservice/ISpellCheckerSession;

.field public final mSuggestionsLimit:I

.field public final mTextInfos:[Landroid/view/textservice/TextInfo;

.field public final mWhat:I


# direct methods
.method public constructor <init>(I[Landroid/view/textservice/TextInfo;IZ)V
    .locals 0
    .param p1, "what"    # I
    .param p2, "textInfos"    # [Landroid/view/textservice/TextInfo;
    .param p3, "suggestionsLimit"    # I
    .param p4, "sequentialWords"    # Z

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iput p1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mWhat:I

    .line 252
    iput-object p2, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mTextInfos:[Landroid/view/textservice/TextInfo;

    .line 253
    iput p3, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mSuggestionsLimit:I

    .line 254
    iput-boolean p4, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mSequentialWords:Z

    .line 255
    return-void
.end method
