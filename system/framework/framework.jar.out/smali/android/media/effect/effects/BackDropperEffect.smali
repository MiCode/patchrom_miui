.class public Landroid/media/effect/effects/BackDropperEffect;
.super Landroid/media/effect/FilterGraphEffect;
.source "BackDropperEffect.java"


# static fields
.field private static final mGraphDefinition:Ljava/lang/String; = "@import android.filterpacks.base;\n@import android.filterpacks.videoproc;\n@import android.filterpacks.videosrc;\n\n@filter GLTextureSource foreground {\n  texId = 0;\n  width = 0;\n  height = 0;\n  repeatFrame = true;\n}\n\n@filter MediaSource background {\n  sourceUrl = \"no_file_specified\";\n  waitForNewFrame = false;\n  sourceIsUrl = true;\n}\n\n@filter BackDropperFilter replacer {\n  autowbToggle = 1;\n}\n\n@filter GLTextureTarget output {\n  texId = 0;\n}\n\n@connect foreground[frame]  => replacer[video];\n@connect background[video]  => replacer[background];\n@connect replacer[video]    => output[frame];\n"


# instance fields
.field private mEffectListener:Landroid/media/effect/EffectUpdateListener;

.field private mLearningListener:Landroid/filterpacks/videoproc/BackDropperFilter$LearningDoneListener;


# direct methods
.method public constructor <init>(Landroid/media/effect/EffectContext;Ljava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/media/effect/EffectContext;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 83
    const-string v3, "@import android.filterpacks.base;\n@import android.filterpacks.videoproc;\n@import android.filterpacks.videosrc;\n\n@filter GLTextureSource foreground {\n  texId = 0;\n  width = 0;\n  height = 0;\n  repeatFrame = true;\n}\n\n@filter MediaSource background {\n  sourceUrl = \"no_file_specified\";\n  waitForNewFrame = false;\n  sourceIsUrl = true;\n}\n\n@filter BackDropperFilter replacer {\n  autowbToggle = 1;\n}\n\n@filter GLTextureTarget output {\n  texId = 0;\n}\n\n@connect foreground[frame]  => replacer[video];\n@connect background[video]  => replacer[background];\n@connect replacer[video]    => output[frame];\n"

    const-string v4, "foreground"

    const-string/jumbo v5, "output"

    const-class v6, Landroid/filterfw/core/OneShotScheduler;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/media/effect/FilterGraphEffect;-><init>(Landroid/media/effect/EffectContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/effect/effects/BackDropperEffect;->mEffectListener:Landroid/media/effect/EffectUpdateListener;

    .line 74
    new-instance v0, Landroid/media/effect/effects/BackDropperEffect$1;

    invoke-direct {v0, p0}, Landroid/media/effect/effects/BackDropperEffect$1;-><init>(Landroid/media/effect/effects/BackDropperEffect;)V

    iput-object v0, p0, Landroid/media/effect/effects/BackDropperEffect;->mLearningListener:Landroid/filterpacks/videoproc/BackDropperFilter$LearningDoneListener;

    .line 85
    iget-object v0, p0, Landroid/media/effect/effects/BackDropperEffect;->mGraph:Landroid/filterfw/core/FilterGraph;

    const-string/jumbo v1, "replacer"

    invoke-virtual {v0, v1}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v7

    .line 86
    .local v7, "replacer":Landroid/filterfw/core/Filter;
    const-string v0, "learningDoneListener"

    iget-object v1, p0, Landroid/media/effect/effects/BackDropperEffect;->mLearningListener:Landroid/filterpacks/videoproc/BackDropperFilter$LearningDoneListener;

    invoke-virtual {v7, v0, v1}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    return-void
.end method

.method static synthetic access$000(Landroid/media/effect/effects/BackDropperEffect;)Landroid/media/effect/EffectUpdateListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/effect/effects/BackDropperEffect;

    .prologue
    .line 41
    iget-object v0, p0, Landroid/media/effect/effects/BackDropperEffect;->mEffectListener:Landroid/media/effect/EffectUpdateListener;

    return-object v0
.end method


# virtual methods
.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "parameterKey"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 91
    const-string/jumbo v1, "source"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    iget-object v1, p0, Landroid/media/effect/effects/BackDropperEffect;->mGraph:Landroid/filterfw/core/FilterGraph;

    const-string v2, "background"

    invoke-virtual {v1, v2}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v0

    .line 93
    .local v0, "background":Landroid/filterfw/core/Filter;
    const-string/jumbo v1, "sourceUrl"

    invoke-virtual {v0, v1, p2}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 98
    .end local v0    # "background":Landroid/filterfw/core/Filter;
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    const-string v1, "context"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Landroid/media/effect/effects/BackDropperEffect;->mGraph:Landroid/filterfw/core/FilterGraph;

    const-string v2, "background"

    invoke-virtual {v1, v2}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v0

    .line 96
    .restart local v0    # "background":Landroid/filterfw/core/Filter;
    const-string v1, "context"

    invoke-virtual {v0, v1, p2}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setUpdateListener(Landroid/media/effect/EffectUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/effect/EffectUpdateListener;

    .prologue
    .line 102
    iput-object p1, p0, Landroid/media/effect/effects/BackDropperEffect;->mEffectListener:Landroid/media/effect/EffectUpdateListener;

    .line 103
    return-void
.end method
