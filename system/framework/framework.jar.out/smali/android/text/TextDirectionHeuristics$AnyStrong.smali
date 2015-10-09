.class Landroid/text/TextDirectionHeuristics$AnyStrong;
.super Ljava/lang/Object;
.source "TextDirectionHeuristics.java"

# interfaces
.implements Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/TextDirectionHeuristics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnyStrong"
.end annotation


# static fields
.field public static final INSTANCE_LTR:Landroid/text/TextDirectionHeuristics$AnyStrong;

.field public static final INSTANCE_RTL:Landroid/text/TextDirectionHeuristics$AnyStrong;


# instance fields
.field private final mLookForRtl:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 241
    new-instance v0, Landroid/text/TextDirectionHeuristics$AnyStrong;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextDirectionHeuristics$AnyStrong;-><init>(Z)V

    sput-object v0, Landroid/text/TextDirectionHeuristics$AnyStrong;->INSTANCE_RTL:Landroid/text/TextDirectionHeuristics$AnyStrong;

    .line 242
    new-instance v0, Landroid/text/TextDirectionHeuristics$AnyStrong;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/text/TextDirectionHeuristics$AnyStrong;-><init>(Z)V

    sput-object v0, Landroid/text/TextDirectionHeuristics$AnyStrong;->INSTANCE_LTR:Landroid/text/TextDirectionHeuristics$AnyStrong;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0
    .param p1, "lookForRtl"    # Z

    .prologue
    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iput-boolean p1, p0, Landroid/text/TextDirectionHeuristics$AnyStrong;->mLookForRtl:Z

    .line 239
    return-void
.end method


# virtual methods
.method public checkRtl(Ljava/lang/CharSequence;II)I
    .locals 6
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 212
    const/4 v1, 0x0

    .line 213
    .local v1, "haveUnlookedFor":Z
    move v2, p2

    .local v2, "i":I
    add-int v0, p2, p3

    .local v0, "e":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 214
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v5

    # invokes: Landroid/text/TextDirectionHeuristics;->isRtlText(I)I
    invoke-static {v5}, Landroid/text/TextDirectionHeuristics;->access$200(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 213
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 216
    :pswitch_0
    iget-boolean v5, p0, Landroid/text/TextDirectionHeuristics$AnyStrong;->mLookForRtl:Z

    if-eqz v5, :cond_1

    move v3, v4

    .line 234
    :cond_0
    :goto_2
    return v3

    .line 219
    :cond_1
    const/4 v1, 0x1

    .line 220
    goto :goto_1

    .line 222
    :pswitch_1
    iget-boolean v5, p0, Landroid/text/TextDirectionHeuristics$AnyStrong;->mLookForRtl:Z

    if-eqz v5, :cond_0

    .line 225
    const/4 v1, 0x1

    .line 226
    goto :goto_1

    .line 231
    :cond_2
    if-eqz v1, :cond_3

    .line 232
    iget-boolean v5, p0, Landroid/text/TextDirectionHeuristics$AnyStrong;->mLookForRtl:Z

    if-nez v5, :cond_0

    move v3, v4

    goto :goto_2

    .line 234
    :cond_3
    const/4 v3, 0x2

    goto :goto_2

    .line 214
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
