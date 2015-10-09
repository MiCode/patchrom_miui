.class public Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;
.super Ljava/lang/Object;
.source "SpellCheckerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SentenceTextInfoParams"
.end annotation


# instance fields
.field final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;",
            ">;"
        }
    .end annotation
.end field

.field final mOriginalTextInfo:Landroid/view/textservice/TextInfo;

.field final mSize:I


# direct methods
.method public constructor <init>(Landroid/view/textservice/TextInfo;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "ti"    # Landroid/view/textservice/TextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/textservice/TextInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 358
    .local p2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    iput-object p1, p0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;->mOriginalTextInfo:Landroid/view/textservice/TextInfo;

    .line 360
    iput-object p2, p0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;->mItems:Ljava/util/ArrayList;

    .line 361
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;->mSize:I

    .line 362
    return-void
.end method
