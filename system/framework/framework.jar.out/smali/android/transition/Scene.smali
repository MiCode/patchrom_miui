.class public final Landroid/transition/Scene;
.super Ljava/lang/Object;
.source "Scene.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field mEnterAction:Ljava/lang/Runnable;

.field mExitAction:Ljava/lang/Runnable;

.field private mLayout:Landroid/view/ViewGroup;

.field private mLayoutId:I

.field private mSceneRoot:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Landroid/transition/Scene;->mLayoutId:I

    .line 83
    iput-object p1, p0, Landroid/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    .line 84
    return-void
.end method

.method private constructor <init>(Landroid/view/ViewGroup;ILandroid/content/Context;)V
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "layoutId"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Landroid/transition/Scene;->mLayoutId:I

    .line 102
    iput-object p3, p0, Landroid/transition/Scene;->mContext:Landroid/content/Context;

    .line 103
    iput-object p1, p0, Landroid/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    .line 104
    iput p2, p0, Landroid/transition/Scene;->mLayoutId:I

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "layout"    # Landroid/view/ViewGroup;

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Landroid/transition/Scene;->mLayoutId:I

    .line 118
    iput-object p1, p0, Landroid/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    .line 119
    iput-object p2, p0, Landroid/transition/Scene;->mLayout:Landroid/view/ViewGroup;

    .line 120
    return-void
.end method

.method static getCurrentScene(Landroid/view/View;)Landroid/transition/Scene;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 200
    sget v0, Lcom/android/internal/R$id;->current_scene:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/transition/Scene;

    return-object v0
.end method

.method public static getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/transition/Scene;
    .locals 4
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p1, "layoutId"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    sget v3, Lcom/android/internal/R$id;->scene_layoutid_cache:I

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 58
    .local v2, "scenes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/transition/Scene;>;"
    if-nez v2, :cond_0

    .line 59
    new-instance v2, Landroid/util/SparseArray;

    .end local v2    # "scenes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/transition/Scene;>;"
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 60
    .restart local v2    # "scenes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/transition/Scene;>;"
    sget v3, Lcom/android/internal/R$id;->scene_layoutid_cache:I

    invoke-virtual {p0, v3, v2}, Landroid/view/ViewGroup;->setTagInternal(ILjava/lang/Object;)V

    .line 62
    :cond_0
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/transition/Scene;

    .line 63
    .local v0, "scene":Landroid/transition/Scene;
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 68
    .end local v0    # "scene":Landroid/transition/Scene;
    .local v1, "scene":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 66
    .end local v1    # "scene":Ljava/lang/Object;
    .restart local v0    # "scene":Landroid/transition/Scene;
    :cond_1
    new-instance v0, Landroid/transition/Scene;

    .end local v0    # "scene":Landroid/transition/Scene;
    invoke-direct {v0, p0, p1, p2}, Landroid/transition/Scene;-><init>(Landroid/view/ViewGroup;ILandroid/content/Context;)V

    .line 67
    .restart local v0    # "scene":Landroid/transition/Scene;
    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v1, v0

    .line 68
    .restart local v1    # "scene":Ljava/lang/Object;
    goto :goto_0
.end method

.method static setCurrentScene(Landroid/view/View;Landroid/transition/Scene;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "scene"    # Landroid/transition/Scene;

    .prologue
    .line 189
    sget v0, Lcom/android/internal/R$id;->current_scene:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 190
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 161
    iget v0, p0, Landroid/transition/Scene;->mLayoutId:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Landroid/transition/Scene;->mLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 163
    :cond_0
    invoke-virtual {p0}, Landroid/transition/Scene;->getSceneRoot()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 165
    iget v0, p0, Landroid/transition/Scene;->mLayoutId:I

    if-lez v0, :cond_3

    .line 166
    iget-object v0, p0, Landroid/transition/Scene;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Landroid/transition/Scene;->mLayoutId:I

    iget-object v2, p0, Landroid/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 173
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/transition/Scene;->mEnterAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 174
    iget-object v0, p0, Landroid/transition/Scene;->mEnterAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 177
    :cond_2
    iget-object v0, p0, Landroid/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-static {v0, p0}, Landroid/transition/Scene;->setCurrentScene(Landroid/view/View;Landroid/transition/Scene;)V

    .line 178
    return-void

    .line 168
    :cond_3
    iget-object v0, p0, Landroid/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/transition/Scene;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public exit()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Landroid/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/transition/Scene;->getCurrentScene(Landroid/view/View;)Landroid/transition/Scene;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 142
    iget-object v0, p0, Landroid/transition/Scene;->mExitAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Landroid/transition/Scene;->mExitAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 146
    :cond_0
    return-void
.end method

.method public getSceneRoot()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Landroid/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    return-object v0
.end method

.method isCreatedFromLayoutResource()Z
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Landroid/transition/Scene;->mLayoutId:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEnterAction(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 222
    iput-object p1, p0, Landroid/transition/Scene;->mEnterAction:Ljava/lang/Runnable;

    .line 223
    return-void
.end method

.method public setExitAction(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 243
    iput-object p1, p0, Landroid/transition/Scene;->mExitAction:Ljava/lang/Runnable;

    .line 244
    return-void
.end method
