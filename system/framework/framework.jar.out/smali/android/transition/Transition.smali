.class public abstract Landroid/transition/Transition;
.super Ljava/lang/Object;
.source "Transition.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/Transition$ArrayListManager;,
        Landroid/transition/Transition$AnimationInfo;,
        Landroid/transition/Transition$TransitionListenerAdapter;,
        Landroid/transition/Transition$TransitionListener;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "Transition"

.field private static sRunningAnimators:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/animation/Animator;",
            "Landroid/transition/Transition$AnimationInfo;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field mCanRemoveViews:Z

.field private mCurrentAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field mDuration:J

.field private mEndValues:Landroid/transition/TransitionValuesMaps;

.field private mEnded:Z

.field mInterpolator:Landroid/animation/TimeInterpolator;

.field mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/transition/Transition$TransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field mNumInstances:I

.field mParent:Landroid/transition/TransitionSet;

.field mPaused:Z

.field mSceneRoot:Landroid/view/ViewGroup;

.field mStartDelay:J

.field private mStartValues:Landroid/transition/TransitionValuesMaps;

.field mTargetChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mTargetExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mTargetIdChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTargetIdExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTargetIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTargetTypeChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field mTargetTypeExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field mTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/transition/Transition;->sRunningAnimators:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/transition/Transition;->mName:Ljava/lang/String;

    .line 99
    iput-wide v3, p0, Landroid/transition/Transition;->mStartDelay:J

    .line 100
    iput-wide v3, p0, Landroid/transition/Transition;->mDuration:J

    .line 101
    iput-object v1, p0, Landroid/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    .line 104
    iput-object v1, p0, Landroid/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    .line 105
    iput-object v1, p0, Landroid/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    .line 106
    iput-object v1, p0, Landroid/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    .line 107
    iput-object v1, p0, Landroid/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    .line 108
    iput-object v1, p0, Landroid/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    .line 109
    iput-object v1, p0, Landroid/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    .line 110
    new-instance v0, Landroid/transition/TransitionValuesMaps;

    invoke-direct {v0}, Landroid/transition/TransitionValuesMaps;-><init>()V

    iput-object v0, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    .line 111
    new-instance v0, Landroid/transition/TransitionValuesMaps;

    invoke-direct {v0}, Landroid/transition/TransitionValuesMaps;-><init>()V

    iput-object v0, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    .line 112
    iput-object v1, p0, Landroid/transition/Transition;->mParent:Landroid/transition/TransitionSet;

    .line 119
    iput-object v1, p0, Landroid/transition/Transition;->mSceneRoot:Landroid/view/ViewGroup;

    .line 127
    iput-boolean v2, p0, Landroid/transition/Transition;->mCanRemoveViews:Z

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    .line 135
    iput v2, p0, Landroid/transition/Transition;->mNumInstances:I

    .line 138
    iput-boolean v2, p0, Landroid/transition/Transition;->mPaused:Z

    .line 142
    iput-boolean v2, p0, Landroid/transition/Transition;->mEnded:Z

    .line 145
    iput-object v1, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    .line 157
    return-void
.end method

.method static synthetic access$000(Landroid/transition/Transition;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/transition/Transition;

    .prologue
    .line 92
    iget-object v0, p0, Landroid/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    return-object v0
.end method

.method private captureHierarchy(Landroid/view/View;Z)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "start"    # Z

    .prologue
    .line 1077
    if-nez p1, :cond_1

    .line 1159
    :cond_0
    return-void

    .line 1080
    :cond_1
    const/4 v2, 0x0

    .line 1081
    .local v2, "isListViewItem":Z
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    instance-of v10, v10, Landroid/widget/ListView;

    if-eqz v10, :cond_2

    .line 1082
    const/4 v2, 0x1

    .line 1084
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/widget/ListView;

    invoke-virtual {v10}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v10

    invoke-interface {v10}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1088
    :cond_3
    const/4 v1, -0x1

    .line 1089
    .local v1, "id":I
    const-wide/16 v3, -0x1

    .line 1090
    .local v3, "itemId":J
    if-nez v2, :cond_6

    .line 1091
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 1098
    :goto_0
    iget-object v10, p0, Landroid/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    if-eqz v10, :cond_4

    iget-object v10, p0, Landroid/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1101
    :cond_4
    iget-object v10, p0, Landroid/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    if-eqz v10, :cond_5

    iget-object v10, p0, Landroid/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1104
    :cond_5
    iget-object v10, p0, Landroid/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    if-eqz v10, :cond_7

    if-eqz p1, :cond_7

    .line 1105
    iget-object v10, p0, Landroid/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1106
    .local v6, "numTypes":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v6, :cond_7

    .line 1107
    iget-object v10, p0, Landroid/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Class;

    invoke-virtual {v10, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1106
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1093
    .end local v0    # "i":I
    .end local v6    # "numTypes":I
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    .line 1094
    .local v5, "listview":Landroid/widget/ListView;
    invoke-virtual {v5, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v8

    .line 1095
    .local v8, "position":I
    invoke-virtual {v5, v8}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v3

    .line 1096
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/view/View;->setHasTransientState(Z)V

    goto :goto_0

    .line 1112
    .end local v5    # "listview":Landroid/widget/ListView;
    .end local v8    # "position":I
    :cond_7
    new-instance v9, Landroid/transition/TransitionValues;

    invoke-direct {v9}, Landroid/transition/TransitionValues;-><init>()V

    .line 1113
    .local v9, "values":Landroid/transition/TransitionValues;
    iput-object p1, v9, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 1114
    if-eqz p2, :cond_b

    .line 1115
    invoke-virtual {p0, v9}, Landroid/transition/Transition;->captureStartValues(Landroid/transition/TransitionValues;)V

    .line 1119
    :goto_2
    if-eqz p2, :cond_d

    .line 1120
    if-nez v2, :cond_c

    .line 1121
    iget-object v10, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    iget-object v10, v10, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    invoke-virtual {v10, p1, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1122
    if-ltz v1, :cond_8

    .line 1123
    iget-object v10, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    iget-object v10, v10, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    invoke-virtual {v10, v1, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1138
    :cond_8
    :goto_3
    instance-of v10, p1, Landroid/view/ViewGroup;

    if-eqz v10, :cond_0

    .line 1140
    iget-object v10, p0, Landroid/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    if-eqz v10, :cond_9

    iget-object v10, p0, Landroid/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1143
    :cond_9
    iget-object v10, p0, Landroid/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    if-eqz v10, :cond_a

    iget-object v10, p0, Landroid/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1146
    :cond_a
    iget-object v10, p0, Landroid/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    if-eqz v10, :cond_f

    if-eqz p1, :cond_f

    .line 1147
    iget-object v10, p0, Landroid/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1148
    .restart local v6    # "numTypes":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    if-ge v0, v6, :cond_f

    .line 1149
    iget-object v10, p0, Landroid/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Class;

    invoke-virtual {v10, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1148
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1117
    .end local v0    # "i":I
    .end local v6    # "numTypes":I
    :cond_b
    invoke-virtual {p0, v9}, Landroid/transition/Transition;->captureEndValues(Landroid/transition/TransitionValues;)V

    goto :goto_2

    .line 1126
    :cond_c
    iget-object v10, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    iget-object v10, v10, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    invoke-virtual {v10, v3, v4, v9}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_3

    .line 1129
    :cond_d
    if-nez v2, :cond_e

    .line 1130
    iget-object v10, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    iget-object v10, v10, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    invoke-virtual {v10, p1, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1131
    if-ltz v1, :cond_8

    .line 1132
    iget-object v10, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    iget-object v10, v10, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    invoke-virtual {v10, v1, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 1135
    :cond_e
    iget-object v10, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    iget-object v10, v10, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    invoke-virtual {v10, v3, v4, v9}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_3

    :cond_f
    move-object v7, p1

    .line 1154
    check-cast v7, Landroid/view/ViewGroup;

    .line 1155
    .local v7, "parent":Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    if-ge v0, v10, :cond_0

    .line 1156
    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-direct {p0, v10, p2}, Landroid/transition/Transition;->captureHierarchy(Landroid/view/View;Z)V

    .line 1155
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method private excludeId(Ljava/util/ArrayList;IZ)Ljava/util/ArrayList;
    .locals 1
    .param p2, "targetId"    # I
    .param p3, "exclude"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;IZ)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 770
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-lez p2, :cond_0

    .line 771
    if-eqz p3, :cond_1

    .line 772
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/transition/Transition$ArrayListManager;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    .line 777
    :cond_0
    :goto_0
    return-object p1

    .line 774
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/transition/Transition$ArrayListManager;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0
.end method

.method private excludeType(Ljava/util/ArrayList;Ljava/lang/Class;Z)Ljava/util/ArrayList;
    .locals 0
    .param p2, "type"    # Ljava/lang/Class;
    .param p3, "exclude"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class;",
            ">;",
            "Ljava/lang/Class;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .prologue
    .line 905
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class;>;"
    if-eqz p2, :cond_0

    .line 906
    if-eqz p3, :cond_1

    .line 907
    invoke-static {p1, p2}, Landroid/transition/Transition$ArrayListManager;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    .line 912
    :cond_0
    :goto_0
    return-object p1

    .line 909
    :cond_1
    invoke-static {p1, p2}, Landroid/transition/Transition$ArrayListManager;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0
.end method

.method private excludeView(Ljava/util/ArrayList;Landroid/view/View;Z)Ljava/util/ArrayList;
    .locals 0
    .param p2, "target"    # Landroid/view/View;
    .param p3, "exclude"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 837
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p2, :cond_0

    .line 838
    if-eqz p3, :cond_1

    .line 839
    invoke-static {p1, p2}, Landroid/transition/Transition$ArrayListManager;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    .line 844
    :cond_0
    :goto_0
    return-object p1

    .line 841
    :cond_1
    invoke-static {p1, p2}, Landroid/transition/Transition$ArrayListManager;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0
.end method

.method private static getRunningAnimators()Landroid/util/ArrayMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/animation/Animator;",
            "Landroid/transition/Transition$AnimationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 556
    sget-object v1, Landroid/transition/Transition;->sRunningAnimators:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 557
    .local v0, "runningAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    if-nez v0, :cond_0

    .line 558
    new-instance v0, Landroid/util/ArrayMap;

    .end local v0    # "runningAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 559
    .restart local v0    # "runningAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    sget-object v1, Landroid/transition/Transition;->sRunningAnimators:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 561
    :cond_0
    return-object v0
.end method

.method private runAnimator(Landroid/animation/Animator;Landroid/util/ArrayMap;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/Animator;",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/animation/Animator;",
            "Landroid/transition/Transition$AnimationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 592
    .local p2, "runningAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    if-eqz p1, :cond_0

    .line 594
    new-instance v0, Landroid/transition/Transition$1;

    invoke-direct {v0, p0, p2}, Landroid/transition/Transition$1;-><init>(Landroid/transition/Transition;Landroid/util/ArrayMap;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 605
    invoke-virtual {p0, p1}, Landroid/transition/Transition;->animate(Landroid/animation/Animator;)V

    .line 607
    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;
    .locals 1
    .param p1, "listener"    # Landroid/transition/Transition$TransitionListener;

    .prologue
    .line 1436
    iget-object v0, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1437
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 1439
    :cond_0
    iget-object v0, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1440
    return-object p0
.end method

.method public addTarget(I)Landroid/transition/Transition;
    .locals 2
    .param p1, "targetId"    # I

    .prologue
    .line 686
    if-lez p1, :cond_0

    .line 687
    iget-object v0, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 689
    :cond_0
    return-object p0
.end method

.method public addTarget(Landroid/view/View;)Landroid/transition/Transition;
    .locals 1
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 942
    iget-object v0, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 943
    return-object p0
.end method

.method protected animate(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    const-wide/16 v2, 0x0

    .line 1321
    if-nez p1, :cond_0

    .line 1322
    invoke-virtual {p0}, Landroid/transition/Transition;->end()V

    .line 1342
    :goto_0
    return-void

    .line 1324
    :cond_0
    invoke-virtual {p0}, Landroid/transition/Transition;->getDuration()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 1325
    invoke-virtual {p0}, Landroid/transition/Transition;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1327
    :cond_1
    invoke-virtual {p0}, Landroid/transition/Transition;->getStartDelay()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 1328
    invoke-virtual {p0}, Landroid/transition/Transition;->getStartDelay()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1330
    :cond_2
    invoke-virtual {p0}, Landroid/transition/Transition;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1331
    invoke-virtual {p0}, Landroid/transition/Transition;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1333
    :cond_3
    new-instance v0, Landroid/transition/Transition$2;

    invoke-direct {v0, p0}, Landroid/transition/Transition$2;-><init>(Landroid/transition/Transition;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1340
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method protected cancel()V
    .locals 6

    .prologue
    .line 1412
    iget-object v5, p0, Landroid/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1413
    .local v2, "numAnimators":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1414
    iget-object v5, p0, Landroid/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 1415
    .local v0, "animator":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1413
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1417
    .end local v0    # "animator":Landroid/animation/Animator;
    :cond_0
    iget-object v5, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 1418
    iget-object v5, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1420
    .local v4, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition$TransitionListener;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1421
    .local v3, "numListeners":I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_1

    .line 1422
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/transition/Transition$TransitionListener;

    invoke-interface {v5, p0}, Landroid/transition/Transition$TransitionListener;->onTransitionCancel(Landroid/transition/Transition;)V

    .line 1421
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1425
    .end local v3    # "numListeners":I
    .end local v4    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition$TransitionListener;>;"
    :cond_1
    return-void
.end method

.method public abstract captureEndValues(Landroid/transition/TransitionValues;)V
.end method

.method public abstract captureStartValues(Landroid/transition/TransitionValues;)V
.end method

.method captureValues(Landroid/view/ViewGroup;Z)V
    .locals 5
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "start"    # Z

    .prologue
    .line 997
    invoke-virtual {p0, p2}, Landroid/transition/Transition;->clearValues(Z)V

    .line 998
    iget-object v4, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_0

    iget-object v4, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_8

    .line 999
    :cond_0
    iget-object v4, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 1000
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 1001
    iget-object v4, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1002
    .local v1, "id":I
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1003
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 1004
    new-instance v2, Landroid/transition/TransitionValues;

    invoke-direct {v2}, Landroid/transition/TransitionValues;-><init>()V

    .line 1005
    .local v2, "values":Landroid/transition/TransitionValues;
    iput-object v3, v2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 1006
    if-eqz p2, :cond_2

    .line 1007
    invoke-virtual {p0, v2}, Landroid/transition/Transition;->captureStartValues(Landroid/transition/TransitionValues;)V

    .line 1011
    :goto_1
    if-eqz p2, :cond_3

    .line 1012
    iget-object v4, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    iget-object v4, v4, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1013
    if-ltz v1, :cond_1

    .line 1014
    iget-object v4, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    iget-object v4, v4, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1000
    .end local v2    # "values":Landroid/transition/TransitionValues;
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1009
    .restart local v2    # "values":Landroid/transition/TransitionValues;
    :cond_2
    invoke-virtual {p0, v2}, Landroid/transition/Transition;->captureEndValues(Landroid/transition/TransitionValues;)V

    goto :goto_1

    .line 1017
    :cond_3
    iget-object v4, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    iget-object v4, v4, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    if-ltz v1, :cond_1

    .line 1019
    iget-object v4, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    iget-object v4, v4, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 1025
    .end local v0    # "i":I
    .end local v1    # "id":I
    .end local v2    # "values":Landroid/transition/TransitionValues;
    .end local v3    # "view":Landroid/view/View;
    :cond_4
    iget-object v4, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_9

    .line 1026
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v4, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_9

    .line 1027
    iget-object v4, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1028
    .restart local v3    # "view":Landroid/view/View;
    if-eqz v3, :cond_5

    .line 1029
    new-instance v2, Landroid/transition/TransitionValues;

    invoke-direct {v2}, Landroid/transition/TransitionValues;-><init>()V

    .line 1030
    .restart local v2    # "values":Landroid/transition/TransitionValues;
    iput-object v3, v2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 1031
    if-eqz p2, :cond_6

    .line 1032
    invoke-virtual {p0, v2}, Landroid/transition/Transition;->captureStartValues(Landroid/transition/TransitionValues;)V

    .line 1036
    :goto_4
    if-eqz p2, :cond_7

    .line 1037
    iget-object v4, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    iget-object v4, v4, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
    .end local v2    # "values":Landroid/transition/TransitionValues;
    :cond_5
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1034
    .restart local v2    # "values":Landroid/transition/TransitionValues;
    :cond_6
    invoke-virtual {p0, v2}, Landroid/transition/Transition;->captureEndValues(Landroid/transition/TransitionValues;)V

    goto :goto_4

    .line 1039
    :cond_7
    iget-object v4, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    iget-object v4, v4, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 1045
    .end local v0    # "i":I
    .end local v2    # "values":Landroid/transition/TransitionValues;
    .end local v3    # "view":Landroid/view/View;
    :cond_8
    invoke-direct {p0, p1, p2}, Landroid/transition/Transition;->captureHierarchy(Landroid/view/View;Z)V

    .line 1047
    :cond_9
    return-void
.end method

.method clearValues(Z)V
    .locals 1
    .param p1, "start"    # Z

    .prologue
    .line 1055
    if-eqz p1, :cond_0

    .line 1056
    iget-object v0, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1057
    iget-object v0, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1058
    iget-object v0, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1064
    :goto_0
    return-void

    .line 1060
    :cond_0
    iget-object v0, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1061
    iget-object v0, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1062
    iget-object v0, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    goto :goto_0
.end method

.method public clone()Landroid/transition/Transition;
    .locals 3

    .prologue
    .line 1477
    const/4 v1, 0x0

    .line 1479
    .local v1, "clone":Landroid/transition/Transition;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/transition/Transition;

    move-object v1, v0

    .line 1480
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroid/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    .line 1481
    new-instance v2, Landroid/transition/TransitionValuesMaps;

    invoke-direct {v2}, Landroid/transition/TransitionValuesMaps;-><init>()V

    iput-object v2, v1, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    .line 1482
    new-instance v2, Landroid/transition/TransitionValuesMaps;

    invoke-direct {v2}, Landroid/transition/TransitionValuesMaps;-><init>()V

    iput-object v2, v1, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1485
    :goto_0
    return-object v1

    .line 1483
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-virtual {p0}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 313
    const/4 v0, 0x0

    return-object v0
.end method

.method protected createAnimators(Landroid/view/ViewGroup;Landroid/transition/TransitionValuesMaps;Landroid/transition/TransitionValuesMaps;)V
    .locals 40
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValuesMaps;
    .param p3, "endValues"    # Landroid/transition/TransitionValuesMaps;

    .prologue
    .line 332
    new-instance v7, Landroid/util/ArrayMap;

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-direct {v7, v0}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 334
    .local v7, "endCopy":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/transition/TransitionValues;>;"
    new-instance v8, Landroid/util/SparseArray;

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/util/SparseArray;->size()I

    move-result v36

    move/from16 v0, v36

    invoke-direct {v8, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 336
    .local v8, "endIdCopy":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/transition/TransitionValues;>;"
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/util/SparseArray;->size()I

    move-result v36

    move/from16 v0, v36

    if-ge v13, v0, :cond_0

    .line 337
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v16

    .line 338
    .local v16, "id":I
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v36

    move/from16 v0, v16

    move-object/from16 v1, v36

    invoke-virtual {v8, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 336
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 340
    .end local v16    # "id":I
    :cond_0
    new-instance v10, Landroid/util/LongSparseArray;

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/util/LongSparseArray;->size()I

    move-result v36

    move/from16 v0, v36

    invoke-direct {v10, v0}, Landroid/util/LongSparseArray;-><init>(I)V

    .line 342
    .local v10, "endItemIdCopy":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/transition/TransitionValues;>;"
    const/4 v13, 0x0

    :goto_1
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/util/LongSparseArray;->size()I

    move-result v36

    move/from16 v0, v36

    if-ge v13, v0, :cond_1

    .line 343
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v13}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v16

    .line 344
    .local v16, "id":J
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v13}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v36

    move-wide/from16 v0, v16

    move-object/from16 v2, v36

    invoke-virtual {v10, v0, v1, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 342
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 348
    .end local v16    # "id":J
    :cond_1
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 349
    .local v33, "startValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/TransitionValues;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 350
    .local v12, "endValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/TransitionValues;>;"
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_2
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/view/View;

    .line 351
    .local v34, "view":Landroid/view/View;
    const/16 v31, 0x0

    .line 352
    .local v31, "start":Landroid/transition/TransitionValues;
    const/4 v6, 0x0

    .line 353
    .local v6, "end":Landroid/transition/TransitionValues;
    const/16 v20, 0x0

    .line 354
    .local v20, "isInListView":Z
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v36

    move-object/from16 v0, v36

    instance-of v0, v0, Landroid/widget/ListView;

    move/from16 v36, v0

    if-eqz v36, :cond_3

    .line 355
    const/16 v20, 0x1

    .line 357
    :cond_3
    if-nez v20, :cond_9

    .line 358
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getId()I

    move-result v16

    .line 359
    .local v16, "id":I
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    if-eqz v36, :cond_5

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/transition/TransitionValues;

    move-object/from16 v31, v36

    .line 361
    :goto_3
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    if-eqz v36, :cond_6

    .line 362
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "end":Landroid/transition/TransitionValues;
    check-cast v6, Landroid/transition/TransitionValues;

    .line 363
    .restart local v6    # "end":Landroid/transition/TransitionValues;
    move-object/from16 v0, v34

    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    :cond_4
    :goto_4
    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 377
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v36, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Landroid/transition/Transition;->isValidTarget(Landroid/view/View;J)Z

    move-result v36

    if-eqz v36, :cond_2

    .line 378
    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 359
    :cond_5
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/transition/TransitionValues;

    move-object/from16 v31, v36

    goto :goto_3

    .line 364
    :cond_6
    const/16 v36, -0x1

    move/from16 v0, v16

    move/from16 v1, v36

    if-eq v0, v1, :cond_4

    .line 365
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "end":Landroid/transition/TransitionValues;
    check-cast v6, Landroid/transition/TransitionValues;

    .line 366
    .restart local v6    # "end":Landroid/transition/TransitionValues;
    const/16 v29, 0x0

    .line 367
    .local v29, "removeView":Landroid/view/View;
    invoke-virtual {v7}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_8

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/view/View;

    .line 368
    .local v35, "viewToRemove":Landroid/view/View;
    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getId()I

    move-result v36

    move/from16 v0, v36

    move/from16 v1, v16

    if-ne v0, v1, :cond_7

    .line 369
    move-object/from16 v29, v35

    goto :goto_5

    .line 372
    .end local v35    # "viewToRemove":Landroid/view/View;
    :cond_8
    if-eqz v29, :cond_4

    .line 373
    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 382
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v16    # "id":I
    .end local v29    # "removeView":Landroid/view/View;
    :cond_9
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v26

    check-cast v26, Landroid/widget/ListView;

    .line 383
    .local v26, "parent":Landroid/widget/ListView;
    invoke-virtual/range {v26 .. v26}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v36

    if-eqz v36, :cond_2

    .line 384
    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v27

    .line 385
    .local v27, "position":I
    invoke-virtual/range {v26 .. v27}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v21

    .line 386
    .local v21, "itemId":J
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v31

    .end local v31    # "start":Landroid/transition/TransitionValues;
    check-cast v31, Landroid/transition/TransitionValues;

    .line 387
    .restart local v31    # "start":Landroid/transition/TransitionValues;
    move-wide/from16 v0, v21

    invoke-virtual {v10, v0, v1}, Landroid/util/LongSparseArray;->remove(J)V

    .line 389
    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 394
    .end local v6    # "end":Landroid/transition/TransitionValues;
    .end local v20    # "isInListView":Z
    .end local v21    # "itemId":J
    .end local v26    # "parent":Landroid/widget/ListView;
    .end local v27    # "position":I
    .end local v31    # "start":Landroid/transition/TransitionValues;
    .end local v34    # "view":Landroid/view/View;
    :cond_a
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/util/LongSparseArray;->size()I

    move-result v32

    .line 395
    .local v32, "startItemIdCopySize":I
    const/4 v13, 0x0

    :goto_6
    move/from16 v0, v32

    if-ge v13, v0, :cond_c

    .line 396
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v13}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v16

    .line 397
    .local v16, "id":J
    const/16 v36, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/transition/Transition;->isValidTarget(Landroid/view/View;J)Z

    move-result v36

    if-eqz v36, :cond_b

    .line 398
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/transition/TransitionValues;

    .line 399
    .restart local v31    # "start":Landroid/transition/TransitionValues;
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/transition/TransitionValues;

    .line 400
    .restart local v6    # "end":Landroid/transition/TransitionValues;
    move-wide/from16 v0, v16

    invoke-virtual {v10, v0, v1}, Landroid/util/LongSparseArray;->remove(J)V

    .line 401
    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    .end local v6    # "end":Landroid/transition/TransitionValues;
    .end local v31    # "start":Landroid/transition/TransitionValues;
    :cond_b
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 406
    .end local v16    # "id":J
    :cond_c
    invoke-virtual {v7}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_d
    :goto_7
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_f

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/view/View;

    .line 407
    .restart local v34    # "view":Landroid/view/View;
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getId()I

    move-result v16

    .line 408
    .local v16, "id":I
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v36, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Landroid/transition/Transition;->isValidTarget(Landroid/view/View;J)Z

    move-result v36

    if-eqz v36, :cond_d

    .line 409
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    if-eqz v36, :cond_e

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/transition/TransitionValues;

    move-object/from16 v31, v36

    .line 411
    .restart local v31    # "start":Landroid/transition/TransitionValues;
    :goto_8
    move-object/from16 v0, v34

    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/transition/TransitionValues;

    .line 412
    .restart local v6    # "end":Landroid/transition/TransitionValues;
    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 413
    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 409
    .end local v6    # "end":Landroid/transition/TransitionValues;
    .end local v31    # "start":Landroid/transition/TransitionValues;
    :cond_e
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/transition/TransitionValues;

    move-object/from16 v31, v36

    goto :goto_8

    .line 417
    .end local v16    # "id":I
    .end local v34    # "view":Landroid/view/View;
    :cond_f
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v9

    .line 418
    .local v9, "endIdCopySize":I
    const/4 v13, 0x0

    :goto_9
    if-ge v13, v9, :cond_11

    .line 419
    invoke-virtual {v8, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v16

    .line 420
    .restart local v16    # "id":I
    const/16 v36, 0x0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-wide/from16 v2, v37

    invoke-virtual {v0, v1, v2, v3}, Landroid/transition/Transition;->isValidTarget(Landroid/view/View;J)Z

    move-result v36

    if-eqz v36, :cond_10

    .line 421
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/transition/TransitionValues;

    .line 422
    .restart local v31    # "start":Landroid/transition/TransitionValues;
    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/transition/TransitionValues;

    .line 423
    .restart local v6    # "end":Landroid/transition/TransitionValues;
    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    .end local v6    # "end":Landroid/transition/TransitionValues;
    .end local v31    # "start":Landroid/transition/TransitionValues;
    :cond_10
    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    .line 427
    .end local v16    # "id":I
    :cond_11
    invoke-virtual {v10}, Landroid/util/LongSparseArray;->size()I

    move-result v11

    .line 428
    .local v11, "endItemIdCopySize":I
    const/4 v13, 0x0

    :goto_a
    if-ge v13, v11, :cond_12

    .line 429
    invoke-virtual {v10, v13}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v16

    .line 431
    .local v16, "id":J
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/transition/TransitionValues;

    .line 432
    .restart local v31    # "start":Landroid/transition/TransitionValues;
    move-wide/from16 v0, v16

    invoke-virtual {v10, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/transition/TransitionValues;

    .line 433
    .restart local v6    # "end":Landroid/transition/TransitionValues;
    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    add-int/lit8 v13, v13, 0x1

    goto :goto_a

    .line 436
    .end local v6    # "end":Landroid/transition/TransitionValues;
    .end local v16    # "id":J
    .end local v31    # "start":Landroid/transition/TransitionValues;
    :cond_12
    invoke-static {}, Landroid/transition/Transition;->getRunningAnimators()Landroid/util/ArrayMap;

    move-result-object v30

    .line 437
    .local v30, "runningAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    const/4 v13, 0x0

    :goto_b
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v36

    move/from16 v0, v36

    if-ge v13, v0, :cond_1d

    .line 438
    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/transition/TransitionValues;

    .line 439
    .restart local v31    # "start":Landroid/transition/TransitionValues;
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/transition/TransitionValues;

    .line 441
    .restart local v6    # "end":Landroid/transition/TransitionValues;
    if-nez v31, :cond_13

    if-eqz v6, :cond_19

    .line 442
    :cond_13
    if-eqz v31, :cond_14

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Landroid/transition/TransitionValues;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_19

    .line 462
    :cond_14
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2, v6}, Landroid/transition/Transition;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v5

    .line 463
    .local v5, "animator":Landroid/animation/Animator;
    if-eqz v5, :cond_19

    .line 465
    const/16 v34, 0x0

    .line 466
    .restart local v34    # "view":Landroid/view/View;
    const/16 v19, 0x0

    .line 467
    .local v19, "infoValues":Landroid/transition/TransitionValues;
    if-eqz v6, :cond_1b

    .line 468
    iget-object v0, v6, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    move-object/from16 v34, v0

    .line 469
    invoke-virtual/range {p0 .. p0}, Landroid/transition/Transition;->getTransitionProperties()[Ljava/lang/String;

    move-result-object v28

    .line 470
    .local v28, "properties":[Ljava/lang/String;
    if-eqz v34, :cond_18

    if-eqz v28, :cond_18

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v36, v0

    if-lez v36, :cond_18

    .line 471
    new-instance v19, Landroid/transition/TransitionValues;

    .end local v19    # "infoValues":Landroid/transition/TransitionValues;
    invoke-direct/range {v19 .. v19}, Landroid/transition/TransitionValues;-><init>()V

    .line 472
    .restart local v19    # "infoValues":Landroid/transition/TransitionValues;
    move-object/from16 v0, v34

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 473
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/transition/TransitionValues;

    .line 474
    .local v24, "newValues":Landroid/transition/TransitionValues;
    if-eqz v24, :cond_15

    .line 475
    const/16 v23, 0x0

    .local v23, "j":I
    :goto_c
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v36, v0

    move/from16 v0, v23

    move/from16 v1, v36

    if-ge v0, v1, :cond_15

    .line 476
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v36, v0

    aget-object v37, v28, v23

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v38, v0

    aget-object v39, v28, v23

    invoke-interface/range {v38 .. v39}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    invoke-interface/range {v36 .. v38}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    add-int/lit8 v23, v23, 0x1

    goto :goto_c

    .line 480
    .end local v23    # "j":I
    :cond_15
    invoke-virtual/range {v30 .. v30}, Landroid/util/ArrayMap;->size()I

    move-result v25

    .line 481
    .local v25, "numExistingAnims":I
    const/16 v23, 0x0

    .restart local v23    # "j":I
    :goto_d
    move/from16 v0, v23

    move/from16 v1, v25

    if-ge v0, v1, :cond_18

    .line 482
    move-object/from16 v0, v30

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    .line 483
    .local v4, "anim":Landroid/animation/Animator;
    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/transition/Transition$AnimationInfo;

    .line 484
    .local v18, "info":Landroid/transition/Transition$AnimationInfo;
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/transition/Transition$AnimationInfo;->values:Landroid/transition/TransitionValues;

    move-object/from16 v36, v0

    if-eqz v36, :cond_1a

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/transition/Transition$AnimationInfo;->view:Landroid/view/View;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    if-ne v0, v1, :cond_1a

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/transition/Transition$AnimationInfo;->name:Ljava/lang/String;

    move-object/from16 v36, v0

    if-nez v36, :cond_16

    invoke-virtual/range {p0 .. p0}, Landroid/transition/Transition;->getName()Ljava/lang/String;

    move-result-object v36

    if-eqz v36, :cond_17

    :cond_16
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/transition/Transition$AnimationInfo;->name:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {p0 .. p0}, Landroid/transition/Transition;->getName()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_1a

    .line 487
    :cond_17
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/transition/Transition$AnimationInfo;->values:Landroid/transition/TransitionValues;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/transition/TransitionValues;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_1a

    .line 489
    const/4 v5, 0x0

    .line 498
    .end local v4    # "anim":Landroid/animation/Animator;
    .end local v18    # "info":Landroid/transition/Transition$AnimationInfo;
    .end local v23    # "j":I
    .end local v24    # "newValues":Landroid/transition/TransitionValues;
    .end local v25    # "numExistingAnims":I
    .end local v28    # "properties":[Ljava/lang/String;
    :cond_18
    :goto_e
    if-eqz v5, :cond_19

    .line 499
    new-instance v18, Landroid/transition/Transition$AnimationInfo;

    invoke-virtual/range {p0 .. p0}, Landroid/transition/Transition;->getName()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    move-object/from16 v2, v36

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Landroid/transition/Transition$AnimationInfo;-><init>(Landroid/view/View;Ljava/lang/String;Landroid/transition/TransitionValues;)V

    .line 500
    .restart local v18    # "info":Landroid/transition/Transition$AnimationInfo;
    move-object/from16 v0, v30

    move-object/from16 v1, v18

    invoke-virtual {v0, v5, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    .end local v5    # "animator":Landroid/animation/Animator;
    .end local v18    # "info":Landroid/transition/Transition$AnimationInfo;
    .end local v19    # "infoValues":Landroid/transition/TransitionValues;
    .end local v34    # "view":Landroid/view/View;
    :cond_19
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_b

    .line 481
    .restart local v4    # "anim":Landroid/animation/Animator;
    .restart local v5    # "animator":Landroid/animation/Animator;
    .restart local v18    # "info":Landroid/transition/Transition$AnimationInfo;
    .restart local v19    # "infoValues":Landroid/transition/TransitionValues;
    .restart local v23    # "j":I
    .restart local v24    # "newValues":Landroid/transition/TransitionValues;
    .restart local v25    # "numExistingAnims":I
    .restart local v28    # "properties":[Ljava/lang/String;
    .restart local v34    # "view":Landroid/view/View;
    :cond_1a
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_d

    .line 496
    .end local v4    # "anim":Landroid/animation/Animator;
    .end local v18    # "info":Landroid/transition/Transition$AnimationInfo;
    .end local v23    # "j":I
    .end local v24    # "newValues":Landroid/transition/TransitionValues;
    .end local v25    # "numExistingAnims":I
    .end local v28    # "properties":[Ljava/lang/String;
    :cond_1b
    if-eqz v31, :cond_1c

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    move-object/from16 v34, v0

    :goto_f
    goto :goto_e

    :cond_1c
    const/16 v34, 0x0

    goto :goto_f

    .line 507
    .end local v5    # "animator":Landroid/animation/Animator;
    .end local v6    # "end":Landroid/transition/TransitionValues;
    .end local v19    # "infoValues":Landroid/transition/TransitionValues;
    .end local v31    # "start":Landroid/transition/TransitionValues;
    .end local v34    # "view":Landroid/view/View;
    :cond_1d
    return-void
.end method

.method protected end()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1378
    iget v5, p0, Landroid/transition/Transition;->mNumInstances:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Landroid/transition/Transition;->mNumInstances:I

    .line 1379
    iget v5, p0, Landroid/transition/Transition;->mNumInstances:I

    if-nez v5, :cond_5

    .line 1380
    iget-object v5, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 1381
    iget-object v5, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1383
    .local v2, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition$TransitionListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1384
    .local v1, "numListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1385
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/transition/Transition$TransitionListener;

    invoke-interface {v5, p0}, Landroid/transition/Transition$TransitionListener;->onTransitionEnd(Landroid/transition/Transition;)V

    .line 1384
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1388
    .end local v0    # "i":I
    .end local v1    # "numListeners":I
    .end local v2    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition$TransitionListener;>;"
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v5, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    iget-object v5, v5, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    invoke-virtual {v5}, Landroid/util/LongSparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 1389
    iget-object v5, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    iget-object v5, v5, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/transition/TransitionValues;

    .line 1390
    .local v3, "tv":Landroid/transition/TransitionValues;
    iget-object v4, v3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 1391
    .local v4, "v":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->hasTransientState()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1392
    invoke-virtual {v4, v6}, Landroid/view/View;->setHasTransientState(Z)V

    .line 1388
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1395
    .end local v3    # "tv":Landroid/transition/TransitionValues;
    .end local v4    # "v":Landroid/view/View;
    :cond_2
    const/4 v0, 0x0

    :goto_2
    iget-object v5, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    iget-object v5, v5, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    invoke-virtual {v5}, Landroid/util/LongSparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 1396
    iget-object v5, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    iget-object v5, v5, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/transition/TransitionValues;

    .line 1397
    .restart local v3    # "tv":Landroid/transition/TransitionValues;
    iget-object v4, v3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 1398
    .restart local v4    # "v":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->hasTransientState()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1399
    invoke-virtual {v4, v6}, Landroid/view/View;->setHasTransientState(Z)V

    .line 1395
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1402
    .end local v3    # "tv":Landroid/transition/TransitionValues;
    .end local v4    # "v":Landroid/view/View;
    :cond_4
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/transition/Transition;->mEnded:Z

    .line 1404
    .end local v0    # "i":I
    :cond_5
    return-void
.end method

.method public excludeChildren(IZ)Landroid/transition/Transition;
    .locals 1
    .param p1, "targetId"    # I
    .param p2, "exclude"    # Z

    .prologue
    .line 761
    iget-object v0, p0, Landroid/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroid/transition/Transition;->excludeId(Ljava/util/ArrayList;IZ)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    .line 762
    return-object p0
.end method

.method public excludeChildren(Landroid/view/View;Z)Landroid/transition/Transition;
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "exclude"    # Z

    .prologue
    .line 828
    iget-object v0, p0, Landroid/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroid/transition/Transition;->excludeView(Ljava/util/ArrayList;Landroid/view/View;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    .line 829
    return-object p0
.end method

.method public excludeChildren(Ljava/lang/Class;Z)Landroid/transition/Transition;
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "exclude"    # Z

    .prologue
    .line 896
    iget-object v0, p0, Landroid/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroid/transition/Transition;->excludeType(Ljava/util/ArrayList;Ljava/lang/Class;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    .line 897
    return-object p0
.end method

.method public excludeTarget(IZ)Landroid/transition/Transition;
    .locals 1
    .param p1, "targetId"    # I
    .param p2, "exclude"    # Z

    .prologue
    .line 731
    iget-object v0, p0, Landroid/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroid/transition/Transition;->excludeId(Ljava/util/ArrayList;IZ)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    .line 732
    return-object p0
.end method

.method public excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "exclude"    # Z

    .prologue
    .line 802
    iget-object v0, p0, Landroid/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroid/transition/Transition;->excludeView(Ljava/util/ArrayList;Landroid/view/View;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    .line 803
    return-object p0
.end method

.method public excludeTarget(Ljava/lang/Class;Z)Landroid/transition/Transition;
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "exclude"    # Z

    .prologue
    .line 869
    iget-object v0, p0, Landroid/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroid/transition/Transition;->excludeType(Ljava/util/ArrayList;Ljava/lang/Class;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    .line 870
    return-object p0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 183
    iget-wide v0, p0, Landroid/transition/Transition;->mDuration:J

    return-wide v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Landroid/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1501
    iget-object v0, p0, Landroid/transition/Transition;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getStartDelay()J
    .locals 2

    .prologue
    .line 210
    iget-wide v0, p0, Landroid/transition/Transition;->mStartDelay:J

    return-wide v0
.end method

.method public getTargetIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 973
    iget-object v0, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTargets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 986
    iget-object v0, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "start"    # Z

    .prologue
    .line 1168
    iget-object v7, p0, Landroid/transition/Transition;->mParent:Landroid/transition/TransitionSet;

    if-eqz v7, :cond_1

    .line 1169
    iget-object v7, p0, Landroid/transition/Transition;->mParent:Landroid/transition/TransitionSet;

    invoke-virtual {v7, p1, p2}, Landroid/transition/TransitionSet;->getTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v5

    .line 1187
    :cond_0
    :goto_0
    return-object v5

    .line 1171
    :cond_1
    if-eqz p2, :cond_3

    iget-object v6, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    .line 1172
    .local v6, "valuesMaps":Landroid/transition/TransitionValuesMaps;
    :goto_1
    iget-object v7, v6, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    invoke-virtual {v7, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/transition/TransitionValues;

    .line 1173
    .local v5, "values":Landroid/transition/TransitionValues;
    if-nez v5, :cond_0

    .line 1174
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1175
    .local v0, "id":I
    if-ltz v0, :cond_2

    .line 1176
    iget-object v7, v6, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "values":Landroid/transition/TransitionValues;
    check-cast v5, Landroid/transition/TransitionValues;

    .line 1178
    .restart local v5    # "values":Landroid/transition/TransitionValues;
    :cond_2
    if-nez v5, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    instance-of v7, v7, Landroid/widget/ListView;

    if-eqz v7, :cond_0

    .line 1179
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 1180
    .local v3, "listview":Landroid/widget/ListView;
    invoke-virtual {v3, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v4

    .line 1181
    .local v4, "position":I
    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v1

    .line 1182
    .local v1, "itemId":J
    iget-object v7, v6, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "values":Landroid/transition/TransitionValues;
    check-cast v5, Landroid/transition/TransitionValues;

    .restart local v5    # "values":Landroid/transition/TransitionValues;
    goto :goto_0

    .line 1171
    .end local v0    # "id":I
    .end local v1    # "itemId":J
    .end local v3    # "listview":Landroid/widget/ListView;
    .end local v4    # "position":I
    .end local v5    # "values":Landroid/transition/TransitionValues;
    .end local v6    # "valuesMaps":Landroid/transition/TransitionValuesMaps;
    :cond_3
    iget-object v6, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    goto :goto_1
.end method

.method isValidTarget(Landroid/view/View;J)Z
    .locals 8
    .param p1, "target"    # Landroid/view/View;
    .param p2, "targetId"    # J

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 520
    iget-object v3, p0, Landroid/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 552
    :goto_0
    return v3

    .line 523
    :cond_0
    iget-object v3, p0, Landroid/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    .line 524
    goto :goto_0

    .line 526
    :cond_1
    iget-object v3, p0, Landroid/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    if-eqz p1, :cond_3

    .line 527
    iget-object v3, p0, Landroid/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 528
    .local v1, "numTypes":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 529
    iget-object v3, p0, Landroid/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 530
    .local v2, "type":Ljava/lang/Class;
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    .line 531
    goto :goto_0

    .line 528
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 535
    .end local v0    # "i":I
    .end local v1    # "numTypes":I
    .end local v2    # "type":Ljava/lang/Class;
    :cond_3
    iget-object v3, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_4

    move v3, v5

    .line 536
    goto :goto_0

    .line 538
    :cond_4
    iget-object v3, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 539
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v3, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 540
    iget-object v3, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v6, v3

    cmp-long v3, v6, p2

    if-nez v3, :cond_5

    move v3, v5

    .line 541
    goto :goto_0

    .line 539
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 545
    .end local v0    # "i":I
    :cond_6
    if-eqz p1, :cond_8

    iget-object v3, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_8

    .line 546
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v3, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_8

    .line 547
    iget-object v3, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_7

    move v3, v5

    .line 548
    goto/16 :goto_0

    .line 546
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .end local v0    # "i":I
    :cond_8
    move v3, v4

    .line 552
    goto/16 :goto_0
.end method

.method public pause()V
    .locals 7

    .prologue
    .line 1198
    iget-boolean v6, p0, Landroid/transition/Transition;->mEnded:Z

    if-nez v6, :cond_2

    .line 1199
    invoke-static {}, Landroid/transition/Transition;->getRunningAnimators()Landroid/util/ArrayMap;

    move-result-object v4

    .line 1200
    .local v4, "runningAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 1201
    .local v3, "numOldAnims":I
    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1202
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 1203
    .local v0, "anim":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->pause()V

    .line 1201
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1205
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_0
    iget-object v6, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 1206
    iget-object v6, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 1208
    .local v5, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition$TransitionListener;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1209
    .local v2, "numListeners":I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    .line 1210
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/transition/Transition$TransitionListener;

    invoke-interface {v6, p0}, Landroid/transition/Transition$TransitionListener;->onTransitionPause(Landroid/transition/Transition;)V

    .line 1209
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1213
    .end local v2    # "numListeners":I
    .end local v5    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition$TransitionListener;>;"
    :cond_1
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/transition/Transition;->mPaused:Z

    .line 1215
    .end local v1    # "i":I
    .end local v3    # "numOldAnims":I
    .end local v4    # "runningAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    :cond_2
    return-void
.end method

.method playTransition(Landroid/view/ViewGroup;)V
    .locals 19
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .prologue
    .line 1252
    invoke-static {}, Landroid/transition/Transition;->getRunningAnimators()Landroid/util/ArrayMap;

    move-result-object v16

    .line 1253
    .local v16, "runningAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    invoke-virtual/range {v16 .. v16}, Landroid/util/ArrayMap;->size()I

    move-result v11

    .line 1254
    .local v11, "numOldAnims":I
    add-int/lit8 v6, v11, -0x1

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_7

    .line 1255
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    .line 1256
    .local v4, "anim":Landroid/animation/Animator;
    if-eqz v4, :cond_4

    .line 1257
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/transition/Transition$AnimationInfo;

    .line 1258
    .local v12, "oldInfo":Landroid/transition/Transition$AnimationInfo;
    if-eqz v12, :cond_4

    iget-object v0, v12, Landroid/transition/Transition$AnimationInfo;->view:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    iget-object v0, v12, Landroid/transition/Transition$AnimationInfo;->view:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 1260
    const/4 v5, 0x0

    .line 1261
    .local v5, "cancel":Z
    iget-object v14, v12, Landroid/transition/Transition$AnimationInfo;->values:Landroid/transition/TransitionValues;

    .line 1262
    .local v14, "oldValues":Landroid/transition/TransitionValues;
    iget-object v15, v12, Landroid/transition/Transition$AnimationInfo;->view:Landroid/view/View;

    .line 1263
    .local v15, "oldView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/transition/TransitionValues;

    move-object/from16 v10, v17

    .line 1265
    .local v10, "newValues":Landroid/transition/TransitionValues;
    :goto_1
    if-nez v10, :cond_0

    .line 1266
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    invoke-virtual {v15}, Landroid/view/View;->getId()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "newValues":Landroid/transition/TransitionValues;
    check-cast v10, Landroid/transition/TransitionValues;

    .line 1268
    .restart local v10    # "newValues":Landroid/transition/TransitionValues;
    :cond_0
    if-eqz v14, :cond_2

    .line 1271
    if-eqz v10, :cond_2

    .line 1272
    iget-object v0, v14, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1273
    .local v8, "key":Ljava/lang/String;
    iget-object v0, v14, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 1274
    .local v13, "oldValue":Ljava/lang/Object;
    iget-object v0, v10, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 1275
    .local v9, "newValue":Ljava/lang/Object;
    if-eqz v13, :cond_1

    if-eqz v9, :cond_1

    invoke-virtual {v13, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 1277
    const/4 v5, 0x1

    .line 1288
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "newValue":Ljava/lang/Object;
    .end local v13    # "oldValue":Ljava/lang/Object;
    :cond_2
    if-eqz v5, :cond_4

    .line 1289
    invoke-virtual {v4}, Landroid/animation/Animator;->isRunning()Z

    move-result v17

    if-nez v17, :cond_3

    invoke-virtual {v4}, Landroid/animation/Animator;->isStarted()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 1293
    :cond_3
    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    .line 1254
    .end local v5    # "cancel":Z
    .end local v10    # "newValues":Landroid/transition/TransitionValues;
    .end local v12    # "oldInfo":Landroid/transition/Transition$AnimationInfo;
    .end local v14    # "oldValues":Landroid/transition/TransitionValues;
    .end local v15    # "oldView":Landroid/view/View;
    :cond_4
    :goto_2
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_0

    .line 1263
    .restart local v5    # "cancel":Z
    .restart local v12    # "oldInfo":Landroid/transition/Transition$AnimationInfo;
    .restart local v14    # "oldValues":Landroid/transition/TransitionValues;
    .restart local v15    # "oldView":Landroid/view/View;
    :cond_5
    const/4 v10, 0x0

    goto :goto_1

    .line 1298
    .restart local v10    # "newValues":Landroid/transition/TransitionValues;
    :cond_6
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1305
    .end local v4    # "anim":Landroid/animation/Animator;
    .end local v5    # "cancel":Z
    .end local v10    # "newValues":Landroid/transition/TransitionValues;
    .end local v12    # "oldInfo":Landroid/transition/Transition$AnimationInfo;
    .end local v14    # "oldValues":Landroid/transition/TransitionValues;
    .end local v15    # "oldView":Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/transition/Transition;->createAnimators(Landroid/view/ViewGroup;Landroid/transition/TransitionValuesMaps;Landroid/transition/TransitionValuesMaps;)V

    .line 1306
    invoke-virtual/range {p0 .. p0}, Landroid/transition/Transition;->runAnimators()V

    .line 1307
    return-void
.end method

.method public removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;
    .locals 1
    .param p1, "listener"    # Landroid/transition/Transition$TransitionListener;

    .prologue
    .line 1451
    iget-object v0, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1458
    :cond_0
    :goto_0
    return-object p0

    .line 1454
    :cond_1
    iget-object v0, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1455
    iget-object v0, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1456
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public removeTarget(I)Landroid/transition/Transition;
    .locals 1
    .param p1, "targetId"    # I

    .prologue
    .line 703
    if-lez p1, :cond_0

    .line 704
    iget-object v0, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 706
    :cond_0
    return-object p0
.end method

.method public removeTarget(Landroid/view/View;)Landroid/transition/Transition;
    .locals 1
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 957
    if-eqz p1, :cond_0

    .line 958
    iget-object v0, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 960
    :cond_0
    return-object p0
.end method

.method public resume()V
    .locals 7

    .prologue
    .line 1225
    iget-boolean v6, p0, Landroid/transition/Transition;->mPaused:Z

    if-eqz v6, :cond_2

    .line 1226
    iget-boolean v6, p0, Landroid/transition/Transition;->mEnded:Z

    if-nez v6, :cond_1

    .line 1227
    invoke-static {}, Landroid/transition/Transition;->getRunningAnimators()Landroid/util/ArrayMap;

    move-result-object v4

    .line 1228
    .local v4, "runningAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 1229
    .local v3, "numOldAnims":I
    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1230
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 1231
    .local v0, "anim":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->resume()V

    .line 1229
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1233
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_0
    iget-object v6, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 1234
    iget-object v6, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 1236
    .local v5, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition$TransitionListener;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1237
    .local v2, "numListeners":I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    .line 1238
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/transition/Transition$TransitionListener;

    invoke-interface {v6, p0}, Landroid/transition/Transition$TransitionListener;->onTransitionResume(Landroid/transition/Transition;)V

    .line 1237
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1242
    .end local v1    # "i":I
    .end local v2    # "numListeners":I
    .end local v3    # "numOldAnims":I
    .end local v4    # "runningAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    .end local v5    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition$TransitionListener;>;"
    :cond_1
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/transition/Transition;->mPaused:Z

    .line 1244
    :cond_2
    return-void
.end method

.method protected runAnimators()V
    .locals 4

    .prologue
    .line 574
    invoke-virtual {p0}, Landroid/transition/Transition;->start()V

    .line 575
    invoke-static {}, Landroid/transition/Transition;->getRunningAnimators()Landroid/util/ArrayMap;

    move-result-object v2

    .line 577
    .local v2, "runningAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    iget-object v3, p0, Landroid/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 581
    .local v0, "anim":Landroid/animation/Animator;
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 582
    invoke-virtual {p0}, Landroid/transition/Transition;->start()V

    .line 583
    invoke-direct {p0, v0, v2}, Landroid/transition/Transition;->runAnimator(Landroid/animation/Animator;Landroid/util/ArrayMap;)V

    goto :goto_0

    .line 586
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_1
    iget-object v3, p0, Landroid/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 587
    invoke-virtual {p0}, Landroid/transition/Transition;->end()V

    .line 588
    return-void
.end method

.method setCanRemoveViews(Z)V
    .locals 0
    .param p1, "canRemoveViews"    # Z

    .prologue
    .line 1467
    iput-boolean p1, p0, Landroid/transition/Transition;->mCanRemoveViews:Z

    .line 1468
    return-void
.end method

.method public setDuration(J)Landroid/transition/Transition;
    .locals 0
    .param p1, "duration"    # J

    .prologue
    .line 170
    iput-wide p1, p0, Landroid/transition/Transition;->mDuration:J

    .line 171
    return-object p0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;
    .locals 0
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 224
    iput-object p1, p0, Landroid/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 225
    return-object p0
.end method

.method setSceneRoot(Landroid/view/ViewGroup;)Landroid/transition/Transition;
    .locals 0
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .prologue
    .line 1462
    iput-object p1, p0, Landroid/transition/Transition;->mSceneRoot:Landroid/view/ViewGroup;

    .line 1463
    return-object p0
.end method

.method public setStartDelay(J)Landroid/transition/Transition;
    .locals 0
    .param p1, "startDelay"    # J

    .prologue
    .line 197
    iput-wide p1, p0, Landroid/transition/Transition;->mStartDelay:J

    .line 198
    return-object p0
.end method

.method protected start()V
    .locals 4

    .prologue
    .line 1352
    iget v3, p0, Landroid/transition/Transition;->mNumInstances:I

    if-nez v3, :cond_1

    .line 1353
    iget-object v3, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1354
    iget-object v3, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1356
    .local v2, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition$TransitionListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1357
    .local v1, "numListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1358
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/transition/Transition$TransitionListener;

    invoke-interface {v3, p0}, Landroid/transition/Transition$TransitionListener;->onTransitionStart(Landroid/transition/Transition;)V

    .line 1357
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1361
    .end local v0    # "i":I
    .end local v1    # "numListeners":I
    .end local v2    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition$TransitionListener;>;"
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/transition/Transition;->mEnded:Z

    .line 1363
    :cond_1
    iget v3, p0, Landroid/transition/Transition;->mNumInstances:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/transition/Transition;->mNumInstances:I

    .line 1364
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1472
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/transition/Transition;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "indent"    # Ljava/lang/String;

    .prologue
    const-wide/16 v5, -0x1

    .line 1505
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1507
    .local v1, "result":Ljava/lang/String;
    iget-wide v2, p0, Landroid/transition/Transition;->mDuration:J

    cmp-long v2, v2, v5

    if-eqz v2, :cond_0

    .line 1508
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "dur("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Landroid/transition/Transition;->mDuration:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1510
    :cond_0
    iget-wide v2, p0, Landroid/transition/Transition;->mStartDelay:J

    cmp-long v2, v2, v5

    if-eqz v2, :cond_1

    .line 1511
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "dly("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Landroid/transition/Transition;->mStartDelay:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1513
    :cond_1
    iget-object v2, p0, Landroid/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    if-eqz v2, :cond_2

    .line 1514
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "interp("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1516
    :cond_2
    iget-object v2, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_3

    iget-object v2, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 1517
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "tgts("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1518
    iget-object v2, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 1519
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 1520
    if-lez v0, :cond_4

    .line 1521
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1523
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1519
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1526
    .end local v0    # "i":I
    :cond_5
    iget-object v2, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 1527
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v2, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 1528
    if-lez v0, :cond_6

    .line 1529
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1531
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1527
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1534
    .end local v0    # "i":I
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1536
    :cond_8
    return-object v1
.end method
