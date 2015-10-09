.class public Landroid/transition/TransitionManager;
.super Ljava/lang/Object;
.source "TransitionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/TransitionManager$MultiListener;
    }
.end annotation


# static fields
.field private static LOG_TAG:Ljava/lang/String;

.field private static sDefaultTransition:Landroid/transition/Transition;

.field private static sPendingTransitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static sRunningTransitions:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/transition/Transition;",
            ">;>;>;>;"
        }
    .end annotation
.end field


# instance fields
.field mScenePairTransitions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/transition/Scene;",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/transition/Scene;",
            "Landroid/transition/Transition;",
            ">;>;"
        }
    .end annotation
.end field

.field mSceneTransitions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/transition/Scene;",
            "Landroid/transition/Transition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-string v0, "TransitionManager"

    sput-object v0, Landroid/transition/TransitionManager;->LOG_TAG:Ljava/lang/String;

    .line 68
    new-instance v0, Landroid/transition/AutoTransition;

    invoke-direct {v0}, Landroid/transition/AutoTransition;-><init>()V

    sput-object v0, Landroid/transition/TransitionManager;->sDefaultTransition:Landroid/transition/Transition;

    .line 74
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/transition/TransitionManager;->sRunningTransitions:Ljava/lang/ThreadLocal;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/transition/TransitionManager;->mSceneTransitions:Landroid/util/ArrayMap;

    .line 71
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/transition/TransitionManager;->mScenePairTransitions:Landroid/util/ArrayMap;

    .line 63
    return-void
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Landroid/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100()Landroid/util/ArrayMap;
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Landroid/transition/TransitionManager;->getRunningTransitions()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public static beginDelayedTransition(Landroid/view/ViewGroup;)V
    .locals 1
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;

    .prologue
    .line 373
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 374
    return-void
.end method

.method public static beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V
    .locals 2
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 400
    sget-object v1, Landroid/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLaidOut()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 405
    sget-object v1, Landroid/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    if-nez p1, :cond_0

    .line 407
    sget-object p1, Landroid/transition/TransitionManager;->sDefaultTransition:Landroid/transition/Transition;

    .line 409
    :cond_0
    invoke-virtual {p1}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object v0

    .line 410
    .local v0, "transitionClone":Landroid/transition/Transition;
    invoke-static {p0, v0}, Landroid/transition/TransitionManager;->sceneChangeSetup(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 411
    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/transition/Scene;->setCurrentScene(Landroid/view/View;Landroid/transition/Scene;)V

    .line 412
    invoke-static {p0, v0}, Landroid/transition/TransitionManager;->sceneChangeRunTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 414
    .end local v0    # "transitionClone":Landroid/transition/Transition;
    :cond_1
    return-void
.end method

.method private static changeScene(Landroid/transition/Scene;Landroid/transition/Transition;)V
    .locals 4
    .param p0, "scene"    # Landroid/transition/Scene;
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 181
    invoke-virtual {p0}, Landroid/transition/Scene;->getSceneRoot()Landroid/view/ViewGroup;

    move-result-object v1

    .line 183
    .local v1, "sceneRoot":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object v2

    .line 184
    .local v2, "transitionClone":Landroid/transition/Transition;
    invoke-virtual {v2, v1}, Landroid/transition/Transition;->setSceneRoot(Landroid/view/ViewGroup;)Landroid/transition/Transition;

    .line 186
    invoke-static {v1}, Landroid/transition/Scene;->getCurrentScene(Landroid/view/View;)Landroid/transition/Scene;

    move-result-object v0

    .line 187
    .local v0, "oldScene":Landroid/transition/Scene;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/transition/Scene;->isCreatedFromLayoutResource()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 188
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/transition/Transition;->setCanRemoveViews(Z)V

    .line 191
    :cond_0
    invoke-static {v1, v2}, Landroid/transition/TransitionManager;->sceneChangeSetup(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 193
    invoke-virtual {p0}, Landroid/transition/Scene;->enter()V

    .line 195
    invoke-static {v1, v2}, Landroid/transition/TransitionManager;->sceneChangeRunTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 196
    return-void
.end method

.method public static getDefaultTransition()Landroid/transition/Transition;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Landroid/transition/TransitionManager;->sDefaultTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method private static getRunningTransitions()Landroid/util/ArrayMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/transition/Transition;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 199
    sget-object v2, Landroid/transition/TransitionManager;->sRunningTransitions:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 201
    .local v0, "runningTransitions":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/util/ArrayMap<Landroid/view/ViewGroup;Ljava/util/ArrayList<Landroid/transition/Transition;>;>;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 202
    :cond_0
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 204
    .local v1, "transitions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/ViewGroup;Ljava/util/ArrayList<Landroid/transition/Transition;>;>;"
    new-instance v0, Ljava/lang/ref/WeakReference;

    .end local v0    # "runningTransitions":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/util/ArrayMap<Landroid/view/ViewGroup;Ljava/util/ArrayList<Landroid/transition/Transition;>;>;>;"
    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 206
    .restart local v0    # "runningTransitions":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/util/ArrayMap<Landroid/view/ViewGroup;Ljava/util/ArrayList<Landroid/transition/Transition;>;>;>;"
    sget-object v2, Landroid/transition/TransitionManager;->sRunningTransitions:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 208
    .end local v1    # "transitions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/ViewGroup;Ljava/util/ArrayList<Landroid/transition/Transition;>;>;"
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    return-object v2
.end method

.method private getTransition(Landroid/transition/Scene;)Landroid/transition/Transition;
    .locals 5
    .param p1, "scene"    # Landroid/transition/Scene;

    .prologue
    .line 150
    const/4 v3, 0x0

    .line 151
    .local v3, "transition":Landroid/transition/Transition;
    invoke-virtual {p1}, Landroid/transition/Scene;->getSceneRoot()Landroid/view/ViewGroup;

    move-result-object v1

    .line 152
    .local v1, "sceneRoot":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 154
    invoke-static {v1}, Landroid/transition/Scene;->getCurrentScene(Landroid/view/View;)Landroid/transition/Scene;

    move-result-object v0

    .line 155
    .local v0, "currScene":Landroid/transition/Scene;
    if-eqz v0, :cond_0

    .line 156
    iget-object v4, p0, Landroid/transition/TransitionManager;->mScenePairTransitions:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 157
    .local v2, "sceneTransitionMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/transition/Scene;Landroid/transition/Transition;>;"
    if-eqz v2, :cond_0

    .line 158
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "transition":Landroid/transition/Transition;
    check-cast v3, Landroid/transition/Transition;

    .line 159
    .restart local v3    # "transition":Landroid/transition/Transition;
    if-eqz v3, :cond_0

    move-object v4, v3

    .line 166
    .end local v0    # "currScene":Landroid/transition/Scene;
    .end local v2    # "sceneTransitionMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/transition/Scene;Landroid/transition/Transition;>;"
    :goto_0
    return-object v4

    .line 165
    :cond_0
    iget-object v4, p0, Landroid/transition/TransitionManager;->mSceneTransitions:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "transition":Landroid/transition/Transition;
    check-cast v3, Landroid/transition/Transition;

    .line 166
    .restart local v3    # "transition":Landroid/transition/Transition;
    if-eqz v3, :cond_1

    move-object v4, v3

    goto :goto_0

    :cond_1
    sget-object v4, Landroid/transition/TransitionManager;->sDefaultTransition:Landroid/transition/Transition;

    goto :goto_0
.end method

.method public static go(Landroid/transition/Scene;)V
    .locals 1
    .param p0, "scene"    # Landroid/transition/Scene;

    .prologue
    .line 342
    sget-object v0, Landroid/transition/TransitionManager;->sDefaultTransition:Landroid/transition/Transition;

    invoke-static {p0, v0}, Landroid/transition/TransitionManager;->changeScene(Landroid/transition/Scene;Landroid/transition/Transition;)V

    .line 343
    return-void
.end method

.method public static go(Landroid/transition/Scene;Landroid/transition/Transition;)V
    .locals 0
    .param p0, "scene"    # Landroid/transition/Scene;
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 360
    invoke-static {p0, p1}, Landroid/transition/TransitionManager;->changeScene(Landroid/transition/Scene;Landroid/transition/Transition;)V

    .line 361
    return-void
.end method

.method private static sceneChangeRunTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V
    .locals 2
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 213
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 214
    new-instance v0, Landroid/transition/TransitionManager$MultiListener;

    invoke-direct {v0, p1, p0}, Landroid/transition/TransitionManager$MultiListener;-><init>(Landroid/transition/Transition;Landroid/view/ViewGroup;)V

    .line 215
    .local v0, "listener":Landroid/transition/TransitionManager$MultiListener;
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 216
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 218
    .end local v0    # "listener":Landroid/transition/TransitionManager$MultiListener;
    :cond_0
    return-void
.end method

.method private static sceneChangeSetup(Landroid/view/ViewGroup;Landroid/transition/Transition;)V
    .locals 5
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 301
    invoke-static {}, Landroid/transition/TransitionManager;->getRunningTransitions()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 303
    .local v3, "runningTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 304
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/transition/Transition;

    .line 305
    .local v2, "runningTransition":Landroid/transition/Transition;
    invoke-virtual {v2}, Landroid/transition/Transition;->pause()V

    goto :goto_0

    .line 309
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "runningTransition":Landroid/transition/Transition;
    :cond_0
    if-eqz p1, :cond_1

    .line 310
    const/4 v4, 0x1

    invoke-virtual {p1, p0, v4}, Landroid/transition/Transition;->captureValues(Landroid/view/ViewGroup;Z)V

    .line 314
    :cond_1
    invoke-static {p0}, Landroid/transition/Scene;->getCurrentScene(Landroid/view/View;)Landroid/transition/Scene;

    move-result-object v1

    .line 315
    .local v1, "previousScene":Landroid/transition/Scene;
    if-eqz v1, :cond_2

    .line 316
    invoke-virtual {v1}, Landroid/transition/Scene;->exit()V

    .line 318
    :cond_2
    return-void
.end method


# virtual methods
.method public setDefaultTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 89
    sput-object p1, Landroid/transition/TransitionManager;->sDefaultTransition:Landroid/transition/Transition;

    .line 90
    return-void
.end method

.method public setTransition(Landroid/transition/Scene;Landroid/transition/Scene;Landroid/transition/Transition;)V
    .locals 2
    .param p1, "fromScene"    # Landroid/transition/Scene;
    .param p2, "toScene"    # Landroid/transition/Scene;
    .param p3, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 131
    iget-object v1, p0, Landroid/transition/TransitionManager;->mScenePairTransitions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 132
    .local v0, "sceneTransitionMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/transition/Scene;Landroid/transition/Transition;>;"
    if-nez v0, :cond_0

    .line 133
    new-instance v0, Landroid/util/ArrayMap;

    .end local v0    # "sceneTransitionMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/transition/Scene;Landroid/transition/Transition;>;"
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 134
    .restart local v0    # "sceneTransitionMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/transition/Scene;Landroid/transition/Transition;>;"
    iget-object v1, p0, Landroid/transition/TransitionManager;->mScenePairTransitions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :cond_0
    invoke-virtual {v0, p1, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    return-void
.end method

.method public setTransition(Landroid/transition/Scene;Landroid/transition/Transition;)V
    .locals 1
    .param p1, "scene"    # Landroid/transition/Scene;
    .param p2, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 115
    iget-object v0, p0, Landroid/transition/TransitionManager;->mSceneTransitions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    return-void
.end method

.method public transitionTo(Landroid/transition/Scene;)V
    .locals 1
    .param p1, "scene"    # Landroid/transition/Scene;

    .prologue
    .line 331
    invoke-direct {p0, p1}, Landroid/transition/TransitionManager;->getTransition(Landroid/transition/Scene;)Landroid/transition/Transition;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/transition/TransitionManager;->changeScene(Landroid/transition/Scene;Landroid/transition/Transition;)V

    .line 333
    return-void
.end method
