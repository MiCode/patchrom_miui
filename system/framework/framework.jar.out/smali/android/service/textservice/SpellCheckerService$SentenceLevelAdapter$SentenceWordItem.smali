.class public Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;
.super Ljava/lang/Object;
.source "SpellCheckerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SentenceWordItem"
.end annotation


# instance fields
.field public final mLength:I

.field public final mStart:I

.field public final mTextInfo:Landroid/view/textservice/TextInfo;


# direct methods
.method public constructor <init>(Landroid/view/textservice/TextInfo;II)V
    .locals 1
    .param p1, "ti"    # Landroid/view/textservice/TextInfo;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    iput-object p1, p0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;->mTextInfo:Landroid/view/textservice/TextInfo;

    .line 346
    iput p2, p0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;->mStart:I

    .line 347
    sub-int v0, p3, p2

    iput v0, p0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;->mLength:I

    .line 348
    return-void
.end method
